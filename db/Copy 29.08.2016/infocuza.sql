-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 29, 2016 at 04:29 
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `infocuza`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user`, `password`) VALUES
('georgeiosif@live.com', '$2y$12$am/37DLayfhglYyRQQgFFe1E6DybJcvJ95kXaWJzJSxdsrpiynovW'),
('educational@infoeducatie.ro', '$2y$12$mzVf8sfjXIMGYI/OYqklMedBJ6hvFvDYmGUPbiVId/xJmTwL4uHY.'),
('infoeducatie@infoeducatie.ro', '$2y$12$wtN6fNaHWsbc7r6x1yPWAOdeboqGnUo6trXNEg2nvoIcMzhjkvxle'),
('georgeiosif@hotmail.com', '$2y$12$jIkr91M6T/3nhQCaf1mSnuIcmnCMLeKh6wZ1F5kCn9wJo4pq6xowW');

-- --------------------------------------------------------

--
-- Table structure for table `background`
--

CREATE TABLE `background` (
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `background`
--

INSERT INTO `background` (`type`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `lectii`
--

CREATE TABLE `lectii` (
  `id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `lang` text NOT NULL,
  `nume_sectiune_1` text NOT NULL,
  `nume_sectiune_2` text NOT NULL,
  `nume_sectiune_3` text NOT NULL,
  `nume_sectiune_4` text NOT NULL,
  `nume_sectiune_5` text NOT NULL,
  `introducere` longtext NOT NULL,
  `sectiune_1` longtext NOT NULL,
  `sectiune_2` longtext NOT NULL,
  `sectiune_3` longtext NOT NULL,
  `sectiune_4` longtext NOT NULL,
  `sectiune_5` longtext NOT NULL,
  `aplicare` longtext NOT NULL,
  `exercitii` longtext NOT NULL,
  `felicitari` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lectii`
--

INSERT INTO `lectii` (`id`, `lang`, `nume_sectiune_1`, `nume_sectiune_2`, `nume_sectiune_3`, `nume_sectiune_4`, `nume_sectiune_5`, `introducere`, `sectiune_1`, `sectiune_2`, `sectiune_3`, `sectiune_4`, `sectiune_5`, `aplicare`, `exercitii`, `felicitari`) VALUES
(000001, 'CPP', 'Citirea si afisarea', 'Parcurgerea string', 'Biblioteca string.h', 'Biblioteca stdlib.h', '', '<p>Cu sirurile de caractere ne-am intalnit inca de la instructiunea COUT, cand afisam mesaje de genul "Variabila este egala cu: ". Acestea sunt exemple de constante sir de caractere. Termenul englezesc pentru sir de caractere este <strong>STRING</strong>. Daca lucram cu string-uri trebuie sa declaram utilizarea bibliotecii(colectie de functii specializate).</p><p><code>#include string.h;</code></p><p>Declararea se aseamana cu declararea unui vector.</p><p><code>char sir[50]; //maxim 50 de caractere</code></p>', '<p>Exista mai multe metode pentru citirea unui string:</p><ul class="with"><li><code>cin.getline(sir, 50);</code></li><li><code>cin &gt;&gt; sir;</code></li></ul><blockquote>Sfat: Se recomanda folosirea <strong>cin.getline</strong> deoarece se citeste string-ul pana la intalnirea ENTER, in timp ce <strong>cout</strong> citeste pana la intalnirea SPACE.</blockquote><p>Afisarea se realizeaza astfel:<br> <code>cout &lt;&lt; string;</code></p>', '<p>Pentru ca numarul de caractere nu este stabilit la citire, putem folosi o functie specifica pentru a determina lungimea string-ului, functia <strong>STRLEN</strong> (string length). Deoarece primul caracter din cele n se gaseste in pozitia 0, deducem ca ultimul se va gasi in pozitia n-1.</p><p><code>n = strlen(sir); </code><br><code>for (int i=0; i&lt;n; i++){</code><br><code>//prelucrare sir</code><br><code>}</code></p>', '<ul class="with"><li><strong>unsigned int strlen(char *sir);</strong><br>Efect: returneaza numarul de caractere al unui sir de caractere, fara a lua in considerare caracterul nul de la sfarsitul sirului</li><li><strong>char *strcpy(char *dest,char *sursa);</strong><br>Efect: copiaza sirul de la adresa sursa la adresa destinatie. Copierea se termina la intalnirea caracterului nul. Functia returneaza adresa sirului destinatie. Simuleaza operatia de atribuire a=b</li><li><strong>char *strncpy(char *dest,char *sursa,unsigned int n);</strong><br>Efect: copiaza primii n octeti din sirul de la adresa sursa la adresa destinatie, fara a adauga caracterul nul. Functia returneaza adresa sirului destinatie. Sirul sursa ramane nemodificat</li><li><strong>char *strcat(char *dest,char *sursa);</strong><br>Efect: adauga sirului de la adresa destinatie, inaintea caracterului nul sirul de la adresa sursa. Sirul de la adresa sursa ramane nemodificat. Operatia se numeste concatenare. La adresa destinatie vom avea sirul destinatie urmat de sirul sursa. Sirul destinatie are lungimea egala cu suma lungimilor sirurilor</li></ul>', '<ul class="with"><li><strong>int atoi(char *s)</strong><br>Efect: transforma un sir de carcatere intr-un intreg (int)</li><li><strong>long atol(char *s)</strong><br>Efect: transforma un sir de carcatere intr-un intreg (long)</li></ul>', '<p>&nbsp;<br></p>', '<p>Sirurile de caractere au o mare aplicabilitate in viata reala, fiind implementati de obicei cu ajutorul programarii dinamice. Cu ajutorul acestora se poate realizeaza interconexiunea dintre masina si om.</p>', '<p>Fie o propozitie memorata intr-un sir de caractere <strong>sir</strong>:</p><ul class="with"><li>cate cifre, litere mici, litere mari si semne speciale sunt in propozitie;</li><li>de cate ori apare caracterul SPACE;</li><li>afisarea tuturor prefixelor al primului cuvant din propozitie.</li></ul>', '<p>In acesta lectie ai invatat:</p><ul class="with"><li>ce sunt string-urile;</li><li>cum se declara, citesc si scriu acestea;</li><li>cum sa folosesti functii importante din diferite biblioteci;</li></ul><p>Multumim urmatorilor editori pentru furnizarea informatiilor:</p><ul class="with"><li>profesor Mihai Chelariu, cu ajutorul website-ului personal;</li><li>editura LS-INFOMAT, cu ajutorul cartii "Fundamentele programarii";</li><li>profesori Paun Roxana si Balajel Ana Maria.</li></ul>'),
(000001, 'PAS', 'Citirea si afisarea', 'Parcurgerea string', 'Functii specifice', 'Proceduri specifice', '', '<p>Cu sirurile de caractere ne-am intalnit inca de la instructiunea WRITE, cand afisam mesaje de genul "Variabila este egala cu: ". Acestea sunt exemple de constante sir de caractere. Termenul englezesc pentru sir de caractere este <strong>STRING</strong>. Limbajul Pascal nu necesita utilizarea unei biblioteci speciale pentru implementarea sirurilor de caractere</p><p>Declararea se aseamana cu declararea unui vector.</p><p><code>var sir:string; //maxim 250 de caractere</code></p>', '<p>Citirea se face cu ajutorul <strong>READ</strong>:</p><p><code>read(sir);</code></p><p>Afisarea se face cu ajutorul <strong>WRITE</strong>:</p><p><code>write(sir);</code></p>', '<p>Pentru ca numarul de caractere nu este stabilit la citire, putem folosi o functie specifica pentru a determina lungimea string-ului, functia <strong>LENGTH</strong> (string length). Deoarece primul caracter din cele n se gaseste in pozitia 0, deducem ca ultimul se va gasi in pozitia n-1.</p><p><code>n:=length(sir); </code><br><code>for i:=1 to n do begin</code><br><code>//prelucrare sir</code><br><code>end</code></p>', '<ul class="with"><li><strong>LENGTH(sir)</strong><br>Efect: returneaza lungimea unui sir de caractere</li><li><strong>ORD si CHR</strong><br>Efect: ORD(caracter) returneaza codul ASCII al caracterului. CHR(numar) returneaza caracterul corespunzator codului ASCII<blockquote>Sfat: Relatia de legatura intre codul ASCII al caracterelor mari si codul ASCII al caracterelor mici: Cod ASCII(caracter mare) + 32 = Cod ASCII(caracter mic)</blockquote></li><li><strong>POS(sir1, sir2)</strong><br>Efect: verifica daca sirul 1 se situeaza in sirul 2 si returneaza pozitia de inceput in sirul 2 daca exista sau 0 daca sirul 1 nu se afla in sirul 2.</li><li><strong>COPY(sir, poz, nr)</strong><br>Efect: extrage un subsir al primului sir, incepand de la pozitia poz si avand un numar nr de caractere.</li></ul>', '<ul class="with"><li><strong>DELETE(sir, poz, nr)</strong><br>Efect: sterge din primul sir incepand cu pozitia poz, un numar nr de caractere</li><li><strong>INSERT(subsir, sir, poz)</strong><br>Efect: insereaza subsirul dat in sirul sir incepand din pozitia poz.</li><li><strong>STR(numar, sir)</strong><br>Efect:Transforma variabila "numar" intr-un sir de caractere.</li><li><strong>VAL(sir, numar, eroare)</strong><br>Efect: Incearca sa transforme sirul de caractere "sir" intr-un numar real.<blockquote>Daca reuseste atunci parametrul eroare va avea valoarea 0, daca nu reuseste valoarea parametrului "numar" = 0, "eroare" va avea pozitia de unde incepe nereusita.</blockquote></li></ul>', '<p>&nbsp;<br></p>', '<p>Sirurile de caractere au o mare aplicabilitate in viata reala. Cu ajutorul acestora se poate realizeaza interconexiunea dintre masina si om.</p>', '<p>Fie o propozitie memorata intr-un sir de caractere <strong>sir</strong>:</p><ul class="with"><li>cate cifre, litere mici, litere mari si semne speciale sunt in propozitie;</li><li>de cate ori apare caracterul SPACE;</li><li>afisarea tuturor prefixelor al primului cuvant din propozitie.</li></ul>', '<p>In acesta lectie ai invatat:</p><ul class="with"><li>ce sunt string-urile;</li><li>cum se declara, citesc si scriu acestea;</li><li>cum sa folosesti functii importante din diferite biblioteci;</li></ul><p>Multumim urmatorilor editori pentru furnizarea informatiilor:</p><ul class="with"><li>profesor Mihai Chelariu, cu ajutorul website-ului personal;</li><li>editura LS-INFOMAT, cu ajutorul cartii "Fundamentele programarii";</li><li>profesori Paun Roxana si Balajel Ana Maria.</li></ul>');

-- --------------------------------------------------------

--
-- Table structure for table `materiale`
--

CREATE TABLE `materiale` (
  `id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `date` date NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `views` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `tip` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `materiale`
--

INSERT INTO `materiale` (`id`, `date`, `title`, `description`, `views`, `likes`, `tip`) VALUES
(000001, '2016-06-01', 'Siruri de caractere', 'Sirurile de caractere reprezinta, practic, un vector ce retine codul ASCII al fiecarui caracter. Aceasta structura este una dintre cele mai folosite si utile in domeniul informaticii.', 1368, 110, 'Lectie'),
(000002, '2015-06-05', 'Siruri de caractere', 'Sirurile de caractere reprezinta, practic, un vector ce retine codul ASCII al fiecarui caracter. Aceasta structura este una dintre cele mai folosite si utile in domeniul informaticii.', 1697, 125, 'Test'),
(000003, '2016-06-10', 'Backtracking', 'Aceasta metoda se aplica problemelor in care solutia se poate reprezenta sub forma unui vector. Pentru fiecare sunt date anumite relatii intre componentele vectorului numite conditii interne.', 0, 0, 'Test'),
(000004, '2015-06-15', 'Metoda Greedy', 'Algoritmii Greedy sunt in general simpli si sunt folositi la probleme de optimizare deoarece determina o singura solutie, asigurand un optim local, dar nu intotdeauna si global.', 0, 0, 'Lectie'),
(000005, '2016-08-25', 'Adunare', 'Problema problema este destinata incepatorilor absoluti, reprezentand o metoda de a obtine suma a doua numere.', 80, 2, 'Problema');

-- --------------------------------------------------------

--
-- Table structure for table `probleme`
--

CREATE TABLE `probleme` (
  `id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `descriereProblema` text NOT NULL,
  `descriereInput` text NOT NULL,
  `descriereOutput` text NOT NULL,
  `precizari` text NOT NULL,
  `teste` text NOT NULL,
  `restrictieTimp` int(11) NOT NULL,
  `restrictieSpatiu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `probleme`
--

INSERT INTO `probleme` (`id`, `descriereProblema`, `descriereInput`, `descriereOutput`, `precizari`, `teste`, `restrictieTimp`, `restrictieSpatiu`) VALUES
(000005, 'Aceasta problema reprezinta o simpla adunare.', '<p>Datele de intrare se citesc astfel:</p><ul class="with"><li>pe prima linie un numar intreg <code>a</code></li><li>pe a doua linie un numar intreg <code>b</code></li></ul>', '<p>Datele de iesire se tiparesc astfel:</p><ul class="with"><li>pe prima linie: suma celor doua numere</li></ul>', '<p>Sunt prezente urmatoarele restrictii: <b>o secunda</b> ca timp de executare si <b>4MB</b> ca spatiu de stocare.</p>', 'a:3:{i:0;a:2:{s:5:"input";s:3:"1 2";s:6:"output";s:1:"3";}i:1;a:2:{s:5:"input";s:4:"20 6";s:6:"output";s:2:"26";}i:2;a:2:{s:5:"input";s:9:"1184 1816";s:6:"output";s:4:"3000";}}', 1, 4048);

-- --------------------------------------------------------

--
-- Table structure for table `teste`
--

CREATE TABLE `teste` (
  `id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `lang` text NOT NULL,
  `intrebare_1` longtext NOT NULL,
  `raspuns_1` longtext NOT NULL,
  `intrebare_2` longtext NOT NULL,
  `raspuns_2` longtext NOT NULL,
  `intrebare_3` longtext NOT NULL,
  `raspuns_3` longtext NOT NULL,
  `intrebare_4` longtext NOT NULL,
  `raspuns_4` longtext NOT NULL,
  `intrebare_5` longtext NOT NULL,
  `raspuns_5` longtext NOT NULL,
  `output_1` longtext NOT NULL,
  `code_output_1` longtext NOT NULL,
  `output_2` longtext NOT NULL,
  `code_output_2` longtext NOT NULL,
  `output_3` longtext NOT NULL,
  `code_output_3` longtext NOT NULL,
  `drag_enunt` longtext NOT NULL,
  `drag_code` longtext NOT NULL,
  `drag_var` longtext NOT NULL,
  `correct` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teste`
--

INSERT INTO `teste` (`id`, `lang`, `intrebare_1`, `raspuns_1`, `intrebare_2`, `raspuns_2`, `intrebare_3`, `raspuns_3`, `intrebare_4`, `raspuns_4`, `intrebare_5`, `raspuns_5`, `output_1`, `code_output_1`, `output_2`, `code_output_2`, `output_3`, `code_output_3`, `drag_enunt`, `drag_code`, `drag_var`, `correct`) VALUES
(000002, 'CPP', 'Ce reprezinta sirurile de caractere(string-uri)?', 'a:3:{i:0;s:46:"vectori ce retin codul ASCII ale caracterelor;";i:1;s:38:"tip de date, independent de celelalte;";i:2;s:47:"vector ce retine codul UNICODE al caracterelor.";}', 'Ce biblioteca este necesara a fi utilizata cand se folosesc string-urile?', 'a:3:{i:0;s:9:"string.h;";i:1;s:11:"iostream.h;";i:2;s:7:"math.h.";}', 'Citirea si scrierea string-urilor se face cu:', 'a:3:{i:0;s:17:"readln si writeln";i:1;s:14:"cin si writeln";i:2;s:11:"cin si cout";}', 'La ce este folosita functia strlen?', 'a:3:{i:0;s:25:"copierea dintr-un string;";i:1;s:29:"aflarea lungimii unui string;";i:2;s:29:"concatenarea unor string-uri.";}', 'La ce este folosita functia strcpy?', 'a:3:{i:0;s:25:"copierea dintr-un string;";i:1;s:29:"concatenarea unor string-uri;";i:2;s:29:"aflarea lungimii unui string.";}', 'Ce se va afisa in urma executarii urmatoarei secvente de instructiuni?', '<p><code>a = "Primavara";</code><br> <code>for (int i=l;i&lt;=3;i++) strcpy(a+1,a+2);</code><br> <code>cout &lt;&lt; a;</code><br></p>', 'Ce se va afisa in urma executarii urmatoarei secvente de instructiuni?', '<p><code>x = "Mama";</code><br> <code>y = "Macara";</code><br> <code>if (strcmp(x,y)&gt;0) then cout &lt;&lt; y</code><br> <code>else if (x=y) then cout &lt;&lt; "Incorect"</code><br> <code>else cout &lt;&lt; x;</code><br></p>', 'Ce se va afisa in urma executarii urmatoarei secvente de instructiuni?', '<p><code>s = "MacarA";</code><br> <code>for (i=0; i&lt;strlen(s)/2; i++){</code><br> <code>char x = s[i];</code><br> <code>s[i] = s[strlen(s)-i-1];</code><br> <code>s[strlen(s)-i-1] = x;</code><br> <code>}</code><br> <code>cout &lt;&lt; s;</code><br></p>', 'Sa se afiseze toate prefixele unui cuvant.', '<p><code>#include &lt;iostream.h&gt; </code> <code>#include &lt;string.h&gt;</code><code>int main(){</code> <code>string cuv;</code> <code>int n,i;</code> <code>cout &lt;&lt; "Cuvantul este:";</code> <code>cin &gt;&gt; cuv;</code> <code class="droppable1 ui-droppable"></code> <code>for (i=0; i&lt;=n; i++){</code> <code class="droppable2 ui-droppable"></code> <code>cin &gt;&gt; endl;</code> <code>}</code></p>', '<p><code class="ui-draggable ui-draggable-handle">n:=length(cuv);</code> <code class="ui-draggable ui-draggable-handle">n = strlen(cuv);</code> <code class="ui-draggable ui-draggable-handle">writeln(copy(cuv,1,i));</code> <code class="ui-draggable ui-draggable-handle">cout &lt;&lt; strcpy(cuv,n,i);</code></p>', '["1","1","3","2","1","Pavara","Mama","AracaM","n = strlen(cuv);","cout << strcpy(cuv,n,i);"]'),
(000002, 'PAS', 'Ce reprezinta sirurile de caractere(string-uri)?', 'a:3:{i:0;s:46:"vectori ce retin codul ASCII ale caracterelor;";i:1;s:38:"tip de date, independent de celelalte;";i:2;s:47:"vector ce retine codul UNICODE al caracterelor.";}', 'Ce biblioteca este necesara a fi utilizata cand se folosesc string-urile?', 'a:3:{i:0;s:71:"limbajul Pascal nu necesita o biblioteca pentru a implemeta string-uri;";i:1;s:10:"iostream.h";i:2;s:8:"string.h";}', 'Citirea si scrierea string-urilor se face cu:', 'a:3:{i:0;s:17:"readln si writeln";i:1;s:14:"cin si writeln";i:2;s:11:"cin si cout";}', 'La ce este folosita functia length()?', 'a:3:{i:0;s:29:"concatenarea unor string-uri;";i:1;s:25:"copierea dintr-un string;";i:2;s:29:"aflarea lungimii unui string.";}', 'La ce este folosita functia copy()?', 'a:3:{i:0;s:25:"copierea dintr-un string;";i:1;s:29:"concatenarea unor string-uri;";i:2;s:29:"aflarea lungimii unui string.";}', 'Ce se va afisa in urma executarii urmatoarei secvente de instructiuni?', '<p><code>s:="Primavara";</code><br> <code>for i:=1 to 3 do</code><br> <code>delete(s,2,1);</code><br> <code>writeln(a);</code><br></p>', 'Ce se va afisa in urma executarii urmatoarei secvente de instructiuni?', '<p><code>x:="Mama";</code><br> <code>y:="Macara";</code><br> <code>if (x&gt;y) then writeln(x)</code><br> <code>else if (x=y) then writeln("Incorect")</code><br> <code>else writeln(y);</code><br></p>', 'Ce se va afisa in urma executarii urmatoarei secvente de instructiuni?', '<p><code>s:="MacarA";</code><br> <code>x:="";</code><br> <code>for i:=1 to 6 do begin</code><br> <code>x:=s[i];</code><br> <code>s[i]:=s[7-i];</code><br> <code>s[7-i]:=x;</code><br> <code>end;</code><br> <code>writeln(s);</code><br></p>', 'Sa se afiseze toate prefixee unui cuvant.', '<p><code>var cuv:string;</code> <code>n,i:integer;</code> <code>begin</code> <code>write("Cuvantul este: ");</code> <code>readln(cuv);</code> <code class="droppable1 ui-droppable"></code> <code>for i:= 1 to n do</code> <code class="droppable2 ui-droppable"></code> <code>readln;</code> <code>end.</code></p>', '<p><code class="ui-draggable ui-draggable-handle">n:=length(cuv);</code> <code class="ui-draggable ui-draggable-handle">n:=cuv.lenght();</code> <code class="ui-draggable ui-draggable-handle">writeln(copy(cuv,1,i));</code> <code class="ui-draggable ui-draggable-handle">writeln(delete(cuv,1,i);</code></p>', '["1","1","1","3","1","Pavara","Mama","AracaM","n:=length(cuv);","writeln(copy(cuv,1,i));"]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `materiale`
--
ALTER TABLE `materiale`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `materiale`
--
ALTER TABLE `materiale`
  MODIFY `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
