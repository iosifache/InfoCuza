<html>
<head>

	<!-- Title -->
	<title>InfoCuza</title>

	<!-- Meta tags -->
	<meta charset="UTF-8">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

	<!-- Stylesheets -->
	<link href="css/basic.css" rel="stylesheet" type="text/css">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,200,600,700,900" rel="stylesheet" type="text/css">

    <!-- Favicon -->
    <link href="image/favicon.ico" rel="shortcut icon" type="image/x-icon">

	<!-- Share infos -->
	<link href="" rel="image_src" type="image/jpeg">
	<meta content="" property="og:image">
	<meta content="" property="og:title">
	<meta content="" property="og:description">

</head>
<body>

	<!-- Loading -->
    <div class="loading-background" id="loading">
        <i class="fa fa-5x fa-spinner fa-spin"></i>
    </div>

    <!-- Header -->
	<div class="grid">
	    <div class="header">
	        <ul>
				<a href="#" id="category-all"><li class="bold">Toate tutorialele</li></a>
				<li class="bold">Tip:</li>
	            <a href="#" id="type-tutorial"><li class="bold swich">Tutorial</li></a>
	            <a href="#" id="type-quiz"><li class="bold swich">Quiz</li></a>
				<li class="bold">Materii:</li>
	            <a href="#" id="category-info"><li class="bold swich">Informatica</li></a>
	            <a href="#" id="category-tic"><li class="bold swich">TIC</li></a>
	        </ul>
			<p>
				<i class="ultra-bold">Info</i>
				<i class="normal">Cuza</i>
			</p>
	    </div>
	</div>

	<?php
		// Connect
		$conn = mysqli_connect("localhost", "root", "", "info-cuza");
		mysqli_select_db($conn, "General");
		$query = "SELECT * FROM General";
		$result = mysqli_query($conn, $query);

		// Print cards
		print("<div class='grid'>");
		while($row = mysqli_fetch_array($result)){
			print("<div class='col-1-2 card' data-category='" . $row['materie'] . "' data-type='" . $row['tip'] . "'>");
			if ($row['tip']==1){
				$link = 'tutorial.php?id=' . $row['id'];
			}
			else{
				$link = 'quiz.php?id=' . $row['id'];
			}
			print("<a href='" . $link . "'>");
			print("<div class='card-pattern' id='random'>");
			print("<i class='fa fa-circle fa-5x'></i>");
			if ($row['tip']==1){
				print("<p class='bold'>" . $row['titlu'] . "</p>");
			}
			else{
				print("<p class='bold'>" . "Quiz: " . $row['titlu'] . "</p>");
			}
			print("</div>");
			print("</a>");
			print("<p>" . $row['descriere'] . "</p>");
			print("<div class='card-tuts'>");
			print("<i class='fa fa-th'></i>");
			if ($row['materie']==1){
				print("Informatica: " . $row['timp'] . " minute");
			}
			else{
				print("TIC: " . $row['timp'] . " minute");
			}
			print("</div>");
			print("</div>");
		}
		print("</div>");
		mysqli_close($conn);
	?>

	<!-- Footer -->
	<div class="grid">
		<div class="footer">
			<p>InfoCuza este cea mai buna metoda de a stapani</p>
			<img src="image/forta.png">
		</div>
	</div>

	<!-- External JS Script -->
	<script src="javascript/jquery-2.2.0.min.js" language="JavaScript" type="text/javascript"></script>
	<script src="javascript/generate.index.js"></script>

</body>
</html>
