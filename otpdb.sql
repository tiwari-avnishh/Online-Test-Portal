-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 19, 2024 at 06:10 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `otpdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admininfo`
--

DROP TABLE IF EXISTS `admininfo`;
CREATE TABLE IF NOT EXISTS `admininfo` (
  `userid` varchar(100) NOT NULL,
  `name` varchar(60) NOT NULL,
  `password` varchar(35) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admininfo`
--

INSERT INTO `admininfo` (`userid`, `name`, `password`) VALUES
('999', 'Avnish Tiwari', '9999');

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

DROP TABLE IF EXISTS `enquiries`;
CREATE TABLE IF NOT EXISTS `enquiries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contactno` varchar(15) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `enquirytext` varchar(1000) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `posteddate` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `contactno`, `emailaddress`, `enquirytext`, `gender`, `name`, `posteddate`) VALUES
(10, '346', 'avnisht701@gmail.com', 'sdverhd', 'male', 'Avnish Tiwari', 'Tue Sep 10 16:53:55 IST 2024'),
(12, '456', 'avnisht701@gmail.com', 'srgydfcfsa', 'male', 'Avnish Tiwari', 'Tue Sep 10 16:55:30 IST 2024'),
(14, '43534534534', 'avnisht701@gmail.com', 'wefew', 'female', 'Avnish Tiwari', 'Tue Sep 10 17:03:53 IST 2024'),
(15, '235', '98@gnail.com', 'sdgvsd', 'male', 'asf', 'Tue Sep 10 17:04:54 IST 2024'),
(16, '567467', '98@gnail.com', 'asefbaer', 'male', 'asf', 'Sun Sep 15 11:50:13 IST 2024'),
(17, '8765684899', 'avnisht701@gmail.com', 'hello guys', 'male', 'avnish tiwari', 'Tue Sep 17 08:04:58 IST 2024'),
(18, '8765684899', 'avnisht701@gmail.com', 'hello\r\n', 'male', 'Avnish Tiwari12345', 'Tue Sep 17 11:37:51 IST 2024'),
(19, '8765684899', 'avnisht701@gmail.com', 'hello bhaiye', 'male', 'Avnish Tiwari', 'Tue Sep 17 11:38:45 IST 2024'),
(20, '8765684899', 'avnisht701@gmail.com', 'hello', 'male', 'Avnish Tiwari', 'Tue Sep 17 11:40:04 IST 2024'),
(21, '8765684899', '98@gnail.com', 'hegdfgvsdasdefghj', 'male', '234', 'Tue Sep 17 11:41:30 IST 2024'),
(22, '8765684899', 'avnisht701@gmail.com', 'wesgzdfxhcgnvbm\r\n', 'male', 'Avnish Tiwari12345', 'Tue Sep 17 11:42:46 IST 2024'),
(23, '7271805315', 'avnisht701@gmail.com', 'hello', 'male', 'Avnish Tiwari', 'Tue Sep 17 13:00:49 IST 2024'),
(24, '8953270696', 'absk1901mff@gmail.com', 'hello', 'male', 'abhishek tiwari', 'Tue Sep 17 16:50:57 IST 2024'),
(25, '23464567', 'avnisht701@gmail.com', 'sfhrthr\r\nfyuk\r\n\r\n\r\n\r\n', 'male', 'kjdhbgjskerh', 'Tue Sep 17 16:53:02 IST 2024'),
(26, '8840492738', 'prakhar@gmail.com', 'hdsbfueirfbwuesdh', 'female', 'prakhar shrivasstava', 'Wed Sep 18 15:18:20 IST 2024'),
(27, '8765684899', '98@gmail.com', 'uyguyguyi', 'male', 'Avnish Tiwari', 'Wed Sep 18 15:19:04 IST 2024');

-- --------------------------------------------------------

--
-- Table structure for table `qbs`
--

DROP TABLE IF EXISTS `qbs`;
CREATE TABLE IF NOT EXISTS `qbs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `a` varchar(2000) NOT NULL,
  `b` varchar(2000) NOT NULL,
  `c` varchar(2000) NOT NULL,
  `correct` varchar(5) NOT NULL,
  `d` varchar(2000) NOT NULL,
  `question` varchar(2000) NOT NULL,
  `year` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=465 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `qbs`
--

INSERT INTO `qbs` (`id`, `a`, `b`, `c`, `correct`, `d`, `question`, `year`) VALUES
(2, 'ytfvytdu', 'itfuytdur', 'iuyfbyudt', 'D', 'iytdvuyd', 'asdjhfgvbjfvjwe', '2nd Year'),
(3, '$', '” ”', '#', 'C', '&', 'The C-preprocessors are specified\r\nwith _________ symbol', '1st year'),
(4, 'True or False', 'Yes or No', '0 or 1', 'C', 'None of the mentioned', 'What is the result of logical or relational expression in C?', '1st year'),
(5, 'Implicit Conversion', 'Explicit Conversion', 'Implicit and Explicit Conversion', 'C', 'None of the mentioned', 'Which of the following typecasting is valid in C language?', '1st year'),
(6, 'for', 'while', 'do-while', 'D', 'all of the mentioned', ' What is an example of iteration in C?', '1st year'),
(7, 'To write output to the screen', 'To read input from the user', 'To read input from a file', 'B', 'To write output to a file', ' What is the purpose of the scanf function in C?', '1st year'),
(8, ' ±11', '±6', '±12', 'C', '±3', 'The values of k for which the equation\r\n4x2+kx+9=0\r\nhas real and equal roots are:', '1st year'),
(9, '5 units', '7 units', '4 units', 'A', '10 units', 'The distance of the point (4, 7) from the x-axis is:', '1st year'),
(10, '240', '40', '750', 'D', '480', 'A girl calculates that the probability of her winning the first prize in a lottery is 0.08. If 6000 tickets are sold, how many tickets has she bought?', '1st year'),
(11, '1/2.', '2/3.', '1/3.', 'A', '3/4.', 'In a family of two children,the probability \r\nof having at least one girl is:', '1st year'),
(12, '4x3x2!', '4x3!', '4!', 'D', 'all of the mentioned', 'The number of ways to arrange 4 people in\r\na row is:', '1st year'),
(13, '2 bits', '1 bit', '1 Byte', 'C', '2 Bytes', 'What is the sizeof(char) in a 32-bit C compiler?', '1st year'),
(14, 'stdlih', ' stdio.h', 'ctype.h', 'B', ' stdarg.h', ' scanf() is a predefined function in______header file.', '1st year'),
(15, 'OOBRTT', 'EEBBIT', 'OOBRTI', 'D', 'None of the mentioned', 'In a coded language, “DOCTOR” is coded as “OOCDRT”, and “BETTER” is coded as “EEBRTT”.Then how “RABBIT” will be written in the same language?', '1st year'),
(16, '50', '60', '55', 'C', '65', 'A car travels from city A to city B at an average speed of 60 miles per hour. On the return trip, it travels at an average speed of 40 miles per hour. What is the average speed for the entire trip?', '1st year'),
(17, 'OPERPC', 'NMKOYE', 'INCKLE', 'B', 'ELEST', ' Find odd one out from the given jumbled words.\r\nLNUAIMMIU, ELEST, OPERPC, NMKOYE, INCKLE\r\n', '1st year'),
(18, 'BEK', 'CFL', 'GJP', 'D', 'MPS', ' Find the odd one out.', '1st year'),
(19, 'ELDFSAP', 'KWMCJFL', 'EFGFODF', 'C', 'HRAOSCV', ' In a certain code “CODE” is written as “DPEF”. How is “DEFENCE” is written in that code?', '1st year'),
(20, 'T', 'R', 'U', 'C', 'P', 'If the letters of the word “PRODUCT” are arranged alphabetically, then which letter would be farthest from the second letter of word?', '1st year'),
(21, 'Nephew', 'Son', 'Brother', 'D', 'Sister', '. Milly introduced a boy as the son of the only daughter of the mother of her maternal uncle. How is Milly related to that boy?', '1st year'),
(22, 'Grandmother ', 'Mother', 'Aunt', 'C', 'Daughter', ' Kalyan is brother of Salman. Dhriti is sister of Atharv and daughter of Suchitr Saloni is wife of Kalyan and is sister of Suchitr How is Saloni related to Atharv?', '1st year'),
(23, 'GHJK', 'WXYZ', 'UEJM', 'C', 'ABCD', 'BFNM : EIQP :: RBGJ : ?', '1st year'),
(24, '10th', '11th', '13th', 'C', '12th', ' In a row of 26 girls, when Sakshi shifted four places towards the left, she become 10th from the left en What was her earlier position form the right end of the row?', '1st year'),
(25, '8', '13', '20', 'B', '34', ' Identify the wrong number in the series. 0, 1, 1, 2, 3, 5, 8, 13, 20, 34?', '1st year'),
(26, '2843', '4320', '8249', 'B', '6825', 'Complete the following series 6, 12, 36, 144, 720…?', '1st year'),
(27, '8', '9', '5', 'D', '12', 'A box had 17 bulbs. All but five are fuse How many are actually fused?', '1st year'),
(28, 'Shyam', 'Nilesh', 'Bobby', 'D', 'Hitika', 'Deepa’s younger brother Bobby is older than Hitik Shweta is younger than Nilesh but elder than Deep If Nilesh is younger than Shyam then who is the youngest?', '1st year'),
(29, 'Seldom', 'Wise', 'Fast', 'A', 'Apparent', ' Beautiful : Repulsive :: Frequent : ?', '1st year'),
(30, ' to provide the interface between \r\n the API and application program', 'to handle the files in the\r\noperating system', 'to get and execute the next\r\nuser-specified command', 'C', 'None of the mentioned', 'What is the main function of the command interpreter?', '1st year'),
(31, 'Priority', ' Round Robin', 'Shortest Job First', 'D', 'All of the mentioned', ' In Operating Systems, which of the following is/are CPU scheduling algorithms?', '1st year'),
(32, 'Library', 'System calls', 'Assembly instructions', 'B', 'API', 'To access the services of the operating system, the interface is provided by the ___________', '1st year'),
(33, 'new file', ' another running process', 'log file', 'C', 'None of the mentioned', ' If a process fails, most operating system write the error information to a ______', '1st year'),
(34, 'Normally', 'Abnormally', ' Normally or abnormally', 'C', 'None of the mentioned', ' Cascading termination refers to the termination of all child processes if the parent process terminates ______', '1st year'),
(35, 'operating systems', 'multiprocessor systems', 'time sharing systems', 'C', 'multiprogramming systems', ' The FCFS algorithm is particularly troublesome for ____________', '1st year'),
(36, ' cpu', 'user processes', 'operating system', 'C', 'all of the mentioned', ' The main memory accommodates ____________', '1st year'),
(37, 'must never', ' maybe', ' can', 'A', 'must', ' Swapping _______ be done when a process has pending I/O, or has to execute I/O operations only into operating system buffers.', '1st year'),
(38, 'bad-block recovery', 'booting from disk', 'disk initialization', 'D', 'all of the mentioned', ' The operating system is responsible for?', '1st year'),
(39, ' memory', 'mapping', ' page', 'D', 'frame', 'The operating system maintains a ______ table that keeps track of how many frames have been allocated, how many are there, and how many are available.', '1st year'),
(40, '1/6.', '1/12.', '1/18.', 'C', '1/36.', 'The probability of getting a sum of 9 when two fair dice are rolled is:', '1st year'),
(41, 'y=2x+1', 'y=2x−1', 'y=x−2', 'B', ' y=x+2', 'The equation of the line passing through (2, 3) and (4, 5) is:', '1st year'),
(42, 'y=x+1', 'Y=X-1', 'Y=X+2', 'A', 'Y=X-2', '44. The equation of the line passing through (1, 2) and (3, 4) is:', '1st year'),
(43, 'Zone based Operating system', 'Level based Operating system', 'Network Operating system', 'C', 'All of the mentioned', 'What are the types of distributed operating\r\nsystems?', '1st year'),
(44, 'every system in the network', 'server', 'both server and every system\r\n in the network', 'B', 'None of the mentioned', 'Network operating system runs on ___________', '1st year'),
(45, 'To write code', 'To interpret code', 'To convert code into \r\nmachine language', 'C', 'To debug code', 'What is the main function of a compiler in programming?', '1st year'),
(46, 'They translate the entire program\r\n at once', 'They execute programs\r\n faster than compilers', 'They translate and execute\r\n code line by line', 'C', 'They are not used in modern\r\n programming', 'Which of the following is true about interpreters?', '1st year'),
(47, 'A compiler executes code, \r\nwhile an interpreter does not', 'A compiler debugs code, \r\nwhile an interpreter does not', 'A compiler is used only in C programming,\r\n while an interpreter is not', 'D', 'A compiler translates the entire\r\n program at once, while an\r\n interpreter translates it line by Line', '\r\nHow does a compiler differ from an interpreter?', '1st year'),
(48, 'int', 'char', 'include', 'C', 'float', '\r\nWhich of the following is not a keyword in C?', '1st year'),
(49, 'char', 'double', 'float', 'A', 'int', '\r\nWhat data type would you use to store a character in C?', '1st year'),
(50, '2ndName', '_name', '#name', 'B', 'none of these', '\r\nWhich of the following is a valid identifier in C?', '1st year'),
(51, '1', '0', 'True ', 'B', 'False', '\r\nWhat is the result of the logical expression (1 && 0)?', '1st year'),
(52, '*', '+', 'Both are same', 'A', 'None of the mentioned', 'Which operator has higher precedence, \'+\' or \'*\'?', '1st year'),
(53, '0', '1', '2', 'B', '3', 'What is the output of the expression 2<3?', '1st year'),
(54, '2', '3', '4', 'C', '5', '\r\nWhat is the result of the following expression?\r\nint a = 1; int b = a++ + ++a;', '1st year'),
(55, 'Windows', 'Oracle', 'DOS', 'B', 'Linux', 'Which of the following is not an operating system?', '1st year'),
(56, '.txt', '.xls', '.ppt', 'A', '.bmp', 'Which of the following is the extension of Notepad?', '1st year'),
(57, 'prompt', 'kernel', 'shell', 'C', 'command', ' What else is a command interpreter called?', '1st year'),
(58, 'File attribute table', 'File allocation table', 'Font attribute table', 'B', 'Format allocation table', 'What is the full name of FAT?', '1st year'),
(59, 'Restarting computer', 'Install the program', 'To scan', 'A', 'To turn off', 'What is the mean of the Booting in the operating system?', '1st year'),
(60, 'The page is present in memory.', 'The deadlock occurs.', 'The page does not present in memory.', 'C', 'The buffering occurs.', ' When does page fault occur?', '1st year'),
(61, 'To prevent deadlock', 'To deadlock recovery', '1. To solve the deadlock', 'A', 'None of these', 'Banker\'s algorithm is used?', '1st year'),
(62, 'Recycle bin', 'Hard disk', 'Taskbar', 'A', 'None of these', 'When you delete a file in your computer, where does it go?', '1st year'),
(63, 'Direct system module', 'Direct system memory', 'Demoralized system memory', 'D', 'Distributed shared memory', ' What is the full name of the DSM?', '1st year'),
(64, 'Cold boot', 'Cold hot boot', 'Cold hot strap', 'A', 'Hot boot', 'What is bootstrapping called?', '1st year'),
(65, 'Software', 'Hardware', 'Both A and B', 'C', ' None of the above', 'What is an operating system?', '1st year'),
(66, ' Some professors are teachers', ' All professors are teachers', ' All teachers are professors', 'A', ' Some teachers are professors', 'If all teachers are knowledgeable and some knowledgeable people are professors, then what is true?', '1st year'),
(67, ' Manage hardware resources', ' Run applications', ' Connect to the internet', 'A', ' None of the above', 'What is the primary function of an operating system?', '1st year'),
(68, ' Memory management', ' File management', ' Network management', 'D', ' None of the above', 'Which of the following is not a function of an operating system?', '1st year'),
(69, ' The innermost part of the operating system', ' A type of operating system', ' A computer hardware component', 'A', ' None of the above', 'What is a kernel in an operating system?', '1st year'),
(70, ' Windows', ' Linux', ' FreeBSD', 'A', ' Android', 'Which operating system is not open source?', '1st year'),
(71, ' A program in execution', ' A type of software', ' A peripheral device', 'A', ' None of the above', 'What is a process in the context of an operating system?', '1st year'),
(72, ' Windows', ' Linux', ' MS-DOS', 'C', ' MacOS', 'Which of the following is not a multitasking operating system?', '1st year'),
(73, ' A type of computer memory', ' A type of storage device', ' A memory management technique', 'C', ' None of the above', 'What is virtual memory in an operating system?', '1st year'),
(74, ' Real-time', ' Single-tasking', ' Multi-user', 'D', ' Double-click', 'Which of the following is not a type of operating system?', '1st year'),
(75, ' Graphical User Interface', ' General Utility Interface', ' Graphical Unit Identifier', 'A', ' None of the above', 'What is a GUI in the context of operating systems?', '1st year'),
(76, ' Windows', ' Linux', ' iOS', 'C', ' Ubuntu', 'Which operating system is designed for mobile devices?', '1st year'),
(77, ' Kernel', ' User Interface', ' Compiler', 'C', ' Shell', 'Which of the following is not a component of an operating system?', '1st year'),
(78, ' A way to organize and store files', ' A hardware component', ' A peripheral device', 'A', ' None of the above', 'What is a file system in the context of an operating system?', '1st year'),
(79, ' File allocation', ' File compression', ' File execution', 'B', ' None of the above', 'Which of the following is not a function of a file system?', '1st year'),
(80, ' To facilitate communication between hardware and software', ' To manage memory', ' To create files', 'A', ' None of the above', 'What is the role of a device driver in an operating system?', '1st year'),
(81, ' FAT', ' NTFS', ' HTTP', 'C', ' ext4', 'Which of the following is not a type of file system?', '1st year'),
(82, ' A user interface for accessing operating system services', ' A type of hardware', ' A computer program', 'A', ' None of the above', 'What is a shell in the context of an operating system?', '1st year'),
(83, ' Windows', ' Linux', ' MacOS', 'B', ' Android', 'Which operating system is based on the UNIX system?', '1st year'),
(84, ' To manage the order of tasks', ' To manage memory', ' To create files', 'A', ' None of the above', 'What is the function of a scheduler in an operating system?', '1st year'),
(85, ' Round Robin', ' First Come First Serve', ' Divide and Conquer', 'C', ' Shortest Job Next', 'Which of the following is not a type of scheduling algorithm?', '1st year'),
(86, ' To provide an interface to the operating system services', ' To manage hardware resources', ' To execute programs', 'A', ' None of the above', 'What is the purpose of system calls in an operating system?', '1st year'),
(87, ' Ubuntu', ' CentOS', ' Fedora', 'D', ' FreeBSD', 'Which operating system is not based on the Linux kernel?', '1st year'),
(88, ' A situation where two or more processes are unable to proceed', ' A type of error message', ' A hardware failure', 'A', ' None of the above', 'What is a deadlock in the context of an operating system?', '1st year'),
(89, ' Pipes', ' Signals', ' Shared Memory', 'D', ' None of the above', 'Which of the following is not a method of inter-process communication?', '1st year'),
(90, ' All apples are tasty', ' Some apples are tasty', ' All fruits are apples', 'A', ' Some fruits are tasty', 'If all apples are fruits and all fruits are tasty, then what can we conclude?', '1st year'),
(91, ' All cats are beautiful', ' Some cats are beautiful', ' Some beautiful things are cats', 'B', ' Some beautiful things are black', 'If some cats are black and all black things are beautiful, then what can we infer?', '1st year'),
(92, ' All students succeed', ' Some students succeed', ' All successful people are students', 'B', ' Some successful people are students', 'If some students are hardworking and all hardworking people succeed, then what is true?', '1st year'),
(93, ' All shapes have four sides', ' All shapes have three sides', ' All triangles are squares', 'B', ' Some triangles have four sides', 'If all triangles have three sides and all squares have four sides, then what is true?', '1st year'),
(94, ' All birds can fly', ' Some flying things are birds', ' All flying things are birds', 'B', ' Some birds cannot fly', 'If some birds can fly and all flying things are birds, then what is true?', '1st year'),
(95, ' Some doctors are engineers', ' All engineers are doctors', ' Some doctors are intelligent', 'C', ' All doctors are engineers', 'If all doctors are intelligent and some intelligent people are engineers, then what can we infer?', '1st year'),
(96, ' Some roses are beautiful', ' All roses are beautiful', ' All beautiful things are roses', 'A', ' Some beautiful things are roses', 'If some roses are red and all red things are beautiful, then what can we conclude?', '1st year'),
(97, ' All clouds bring rain', ' Some clouds bring rain', ' All pleasant days have clouds', 'B', ' Some clouds are pleasant', 'If some clouds bring rain and all rainy days are pleasant, then what is true?', '1st year'),
(98, ' All elephants are large', ' Some elephants are large', ' All large things are elephants', 'B', ' Some elephants are mammals', 'If all elephants are mammals and some mammals are large, then what can we infer?', '1st year'),
(99, ' Some politicians are lawyers', ' All lawyers are politicians', ' All politicians are lawyers', 'D', ' Some lawyers are politicians', 'If all politicians are liars and some liars are lawyers, then what is true?', '1st year'),
(100, ' Some cars are expensive', ' All cars are fast', ' All fast things are cars', 'A', ' Some expensive things are cars', 'If some cars are fast and all fast things are expensive, then what can we conclude?', '1st year'),
(101, ' Some athletes are runners', ' All runners are athletes', ' All athletes are runners', 'A', ' Some runners are athletes', 'If all athletes are strong and some strong people are runners, then what can we infer?', '1st year'),
(102, ' All cats are pets', ' Some cats are pets', ' All pets are cats', 'B', ' Some pets are cats', 'If all cats are animals and some animals are pets, then what is true?', '1st year'),
(103, ' Some books are interesting', ' All books are interesting', ' All novels are books', 'A', ' Some novels are books', 'If some books are novels and all novels are interesting, then what can we infer?', '1st year'),
(104, 'int arr[] = {1, 2, 3};', 'int arr() = {1, 2, 3};', 'int arr[3] = {1, 2, 3};', 'A', 'int arr{} = {1, 2, 3};', 'What is the correct way to initialize an array in C?', '1st year'),
(105, 'Copies one string to another', 'Compares two strings', 'Concatenates two strings', 'C', 'Converts a string to uppercase', 'What does the \'strcpy\' function do in C?', '1st year'),
(106, 'Hello', 'lo', 'llo', 'C', 'Error', 'What is the output of the following code? char str[] = \"Hello\"; printf(\"%s\", str + 2);', '1st year'),
(107, 'atof()', 'atoi()', 'atol()', 'A', 'atod()', 'Which function is used to convert a string to a double in C?', '1st year'),
(108, '1', '2', 'Error', 'A', 'Undefined', 'What is the output of the following code? int arr[] = {1, 2, 3, 4, 5}; printf(\"%d\", *arr);', '1st year'),
(109, 'stdlih', 'stdio.h', 'conio.h', 'C', 'ctype.h', 'Which header file should be included to use the \'exit\' function in C?', '1st year'),
(110, '5', '3', '8', 'A', 'Error', 'What will be the output of the following code? int x = 5, y = 3; printf(\"%d\", x > y ? x : y);', '1st year'),
(111, '#define PI 3.14', 'const float PI = 3.14;', 'const PI = 3.14;', 'C', 'None', 'Which of the following is not a valid way to initialize a constant in C?', '1st year'),
(112, 'Clear', 'Dense', 'Foggy', 'a', 'Obscure', 'Which word is the antonym of \"opaque\"?', '1st year'),
(113, 'Valley', 'Summit', 'Depths', 'b', 'Plateau', 'What is the synonym of \"pinnacle\"?', '1st year'),
(114, 'Wisdom', 'Lack of knowledge', 'Misunderstanding', 'a', 'Folly', '\"Acumen\" means:', '1st year'),
(115, 'Wasteful', 'Thrifty', 'Economical', 'a', 'Prudent', 'What is the opposite of \"frugal\"?', '1st year'),
(116, 'Necessity', 'Necesity', 'Necessety', 'a', 'Necesitty', 'The correct spelling is:', '1st year'),
(117, 'Quiet', 'Articulate', 'Discreet', 'b', 'Reticent', '\"Eloquent\" means:', '1st year'),
(118, 'Chair', 'Apple', 'Grape', 'a', 'Banana', 'Which word does not belong: Apple, Orange, Banana, Chair, Grape?', '1st year'),
(119, 'She don\'t have any ide', 'She doesn\'t have any ide', 'She don\'t has any ide', 'b', 'She hasn\'t any ide', 'Choose the correct sentence:', '1st year'),
(120, 'Rare', 'Found everywhere', 'Specific', 'b', 'Singular', '\"Ubiquitous\" means:', '1st year'),
(121, 'Clear', 'Confused', 'Unambiguous', 'd', 'Vague', 'What is the synonym of \"ambiguous\"?', '1st year'),
(122, 'Accomodate', 'Accommodate', 'Acommodate', 'b', 'Acomodate', 'Choose the correctly spelled word:', '1st year'),
(123, 'Careless', 'Sloppy', 'Thorough', 'c', 'Hasty', '\"Meticulous\" means:', '1st year'),
(124, 'Lazy', 'Diligent', 'Lethargic', 'b', 'Careless', 'What is the synonym of \"assiduous\"?', '1st year'),
(125, 'Open', 'Secretive', 'Spontaneous', 'b', 'Honest', '\"Surreptitious\" means:', '1st year'),
(126, 'Temporary', 'Fleeting', 'Lasting', 'c', 'Brief', 'What is the opposite of \"ephemeral\"?', '1st year'),
(127, 'Flexible', 'Rigid', 'Stiff', 'a', 'Hard', '\"Malleable\" means:', '1st year'),
(128, 'Sad', 'Joyful', 'Happy', 'a', 'Ecstatic', 'Which word does not belong: Happy, Joyful, Sad, Ecstatic, Cheerful?', '1st year'),
(129, 'He run quickly.', 'He runs quick.', 'He runs quickly.', 'c', 'He run quick.', 'Choose the correct sentence:', '1st year'),
(130, 'Aggravate', 'Intensify', 'Mitigate', 'c', 'Worsen', '\"Alleviate\" means:', '1st year'),
(131, 'Lasting', 'Transitory', 'Eternal', 'b', 'Permanent', 'What is the synonym of \"ephemeral\"?', '1st year'),
(132, 'Long-winded', 'Concise', 'Elaborate', 'b', 'Verbose', '\"Succinct\" means:', '1st year'),
(133, 'x = 5, y = 10', 'x = 10, y = 5', 'x = 0, y = 0', 'B', 'None of the above', 'What is the output of the given code snippet?', '1st year'),
(134, 'Swaps the values of two integers', 'Multiplies two integers', 'Adds two integers', 'A', 'Divides two integers', 'What does the swap function do?', '1st year'),
(135, 'It is used to declare a pointer', 'It is used to multiply values', 'It is used to dereference a pointer', 'C', 'None of the above', 'What is the purpose of the * operator in the swap function?', '1st year'),
(136, 'if (n == 1) return 1;', 'if (n == 0) return 1;', 'if (n == 0) return 0;', 'B', 'None of the above', 'What is the base case in the factorial function?', '1st year'),
(137, '4', '16', '24', 'C', '120', 'What does the factorial function return when called with factorial(4)?', '1st year'),
(138, 'They are integers', 'They are pointers to integers', 'They are arrays', 'B', 'None of the above', 'Which of the following best describes the swap function’s parameters?', '1st year'),
(139, '0', '1', '4', 'C', '5', 'What is the value of num before calling factorial(num) in main?', '1st year'),
(140, 'It swaps the values of x and y and prints them', 'It calculates the factorial of 4 and prints it', 'It returns 0 indicating successful execution', 'D', 'All of the above', 'Which of the following is true about the main function in this code?', '1st year'),
(141, 'The program would not compile', 'The values of x and y would not be swapped', 'It would cause a runtime error', 'B', 'The program would swap the values of x and y correctly', 'What would happen if the & operator was not used in the call to swap in main?', '1st year'),
(142, 'It is used to read input from the user', 'It is used to print output to the screen', 'It is used to declare variables', 'B', 'None of the above', 'Which of the following statements is true about the printf function used in main?', '1st year'),
(143, 'A Programming Language', 'A Communication Language', 'A Database Language', 'A', 'Machine Language', 'What is Java?', '2nd year'),
(144, '6', '7', '9', 'D', '8', 'Number of Primitive data types in Java are?', '2nd year'),
(145, 'Dynamic', 'Architecture Neutral', 'Use of pointers', 'C', 'Object-oriented', 'Which of the following is not a Java features?', '2nd year'),
(146, 'JVM', 'JRE', 'JDK', 'D', 'JDB', '_____ is used to find and fix bugs in the Java programs.', '2nd year'),
(147, '0', 'Not a Number', 'Infinity', 'C', 'Run time exception', 'What does the expression float a = 90 / 0 return?', '2nd year'),
(148, '24', '25', '20', 'B', '23', 'Evaluate the following Java expression, if x=3, y=5, and z=10:', '2nd year'),
(149, 'Java Archive Runner', 'Java Application Resource', 'Java Application Runner', 'D', 'None of the above', ' In java, jar stands for_____.', '2nd year'),
(150, 'Guido van Rossum', 'James Gosling', 'Dennis Ritchie', 'B', 'Bjarne Stroustrup', 'Who invented Java Programming?', '2nd year'),
(151, 'identifier & keyword', 'identifier', 'keyword', 'C', 'none of the mentioned', 'Which of these cannot be used for a variable name in Java?', '2nd year'),
(152, '.js', '.txt', ' .class', 'D', '.java', 'What is the extension of java code files?', '2nd year'),
(153, 'Polymorphism', 'Inheritance', 'Compilation', 'C', 'Encapsulation', 'Which of the following is not an OOPS concept in Java?', '2nd year'),
(154, '.txt', '.class', '.js', 'B', '.java', 'What is the extension of compiled java classes?', '2nd year'),
(155, 'break', 'continue', 'for()', 'D', 'if()', ' Which of these are selection statements in Java?', '2nd year'),
(156, '0 to 32767', '0 to 65535', '0 to 256', 'B', '-128 to 127', 'What is the numerical range of a char data type in Java?', '2nd year'),
(157, 'if & switch', 'if', ' switch', 'C', 'none of the mentioned', 'Which of these selection statements test only for equality?', '2nd year'),
(158, '++', '*', '()', 'A', '>>', 'Which of these have highest precedence?', '2nd year'),
(159, 'Rasmus Lerdorf', 'Dennis Ritchie', 'Steve Jobs', 'B', 'James Gosling', ' Who is the father of C language?', '2nd year'),
(160, 'do while', 'for', 'while', 'A', 'switch', 'Which one of the following is a loop construct\r\nthat will always be executed once?', '2nd year'),
(161, 'Compiler', 'Linker', 'Pre-processor', 'C', 'Editor', 'Directives are translated by the', '2nd year'),
(162, '2 or 4', '2', '4', 'A', '1', 'How many bytes does \"int = D\" use?', '2nd year'),
(163, 'do-while', 'while', 'for', 'D', 'all of the mentioned', ' What is an example of iteration in C?', '2nd year'),
(164, 'break', 'exit', 'return', 'C', 'both break and return', 'Which keyword can be used for coming out of recursion?', '2nd year'),
(165, ' if-else', 'for', 'do-while', 'A', 'while', 'The keyword ‘break’ cannot be simply used within _________', '2nd year'),
(166, 'scanf', 'putchar', 'printf', 'A', 'fprintf', 'Which among the following is the odd one out?', '2nd year'),
(167, 'float', ' char', ' int', 'C', 'double', 'The format identifier ‘%i’ is also used for _____ data type.', '2nd year'),
(168, '2', '4', '8', 'B', '1', ' What is the size of an float data type?', '2nd year'),
(169, '1st_string', 'my_string_1', '_', 'A', 'foo', 'Find the invalid variable among the following:', '2nd year'),
(170, 'Seed ()', 'Print ()', 'Factorial ()', 'B', 'Sqrt ()', 'The built-in function in Python is:', '2nd year'),
(171, 'object-oriented \r\nprogramming', ' functional programming', 'structured programming', 'D', 'all of the mentioned', 'Which type of Programming does Python support?', '2nd year'),
(172, '.p', '.py', '.python', 'B', '.pl', 'Which of the following is the correct extension of the \r\nPython file?', '2nd year'),
(173, 'Python code is neither compiled \r\nnor interpreted', ' Python code is only compiled', 'Python code is only interpreted', 'D', 'Is Python code compiled\r\nor\r\ninterpreted?', 'Is Python code compiled or interpreted?', '2nd year'),
(174, 'Guido van Rossum', 'Niene Stom', 'Zim Den', 'A', 'Wick van Rossum', 'Who developed the Python language?', '2nd year'),
(175, '1981', '1989', '1972', 'B', '1995', ' In which year was the Python language developed?', '2nd year'),
(176, 'English', 'PHP', 'C', 'C', 'All of the above', 'In which language is Python written?', '2nd year'),
(177, 'Class', 'Lists', 'Dictionary', 'A', 'All of the above', 'Which of the following option is not a core data \r\ntype in the python language?', '2nd year'),
(178, '64', '32', '16', 'D', 'None of these above', 'What is the maximum possible length of an identifier?', '2nd year'),
(179, 'Key', 'Indentation', 'Brackets', 'B', 'None of these', 'What do we use to define a block of code in Python\r\nlanguage?', '2nd year'),
(180, '#', '//', '/', 'A', '!', 'Which character is used in Python to make a single line\r\ncomment?', '2nd year'),
(181, '1', '2', '7', 'C', '4', 'What will be the value of the following Python expression?\r\n\r\n4 + 3 % 5', '2nd year'),
(182, 'Pip Installs Packages', 'Preferred Installer Program', 'Pip Installs Python', 'B', 'All of the mentioned', 'What does pip stand for python?', '2nd year'),
(183, '8', '4', '6', 'B', '3', 'What will be the output of the following Python function?\r\nlen([\"hello\",2, 4, 6])', '2nd year'),
(184, 'A type of computer hard-\r\nware', 'A collection of algorithms', 'A way to store and organize data', 'C', 'A programming langu-\r\nage', 'What is a data structure?', '2nd year'),
(185, 'The Array shows a hierarchical\r\nstructure.', 'The Array is not a data structure', 'Arrays are immutable.', 'D', 'Container that stores the elements\r\nof similar types', 'How can we describe an array in\r\nthe best possible way?', '2nd year'),
(186, 'Add', 'Push', 'Insert', 'B', 'None of the above', 'Which one of the following is the process\r\nof inserting an element in the stack?', '2nd year'),
(187, 'ABC+*', 'A+B*C', 'AB*C+', 'B', 'None of the above', 'Which of the following is the infix expression?', '2nd year'),
(188, '3', '2', '5', 'B', '4', 'The minimum number of stacks required to implement \r\na stack is __', '2nd year'),
(189, 'FIFO', 'LIFO', 'Ordered array', 'A', 'Linear tree', 'Which of the following principle does Queue use?', '2nd year'),
(190, ' Double ended Queue', 'Linear Queue', 'Single ended Queue', 'C', ' Circular Queue', 'Which one of the following is not the type of the Queue?', '2nd year'),
(191, ' O(logn)', 'O(1)', ' O(nlogn)', 'D', 'O(1)', 'The time complexity of enqueue operation in Queue is __', '2nd year'),
(192, ' 22', '40', '-18', 'C', '0', 'What is the value of the postfix expression 6 3 2 4 + – *?', '2nd year'),
(193, 'Branch', 'Backtracking', ' Divide and Conquer', 'C', ' Greedy', ' Which algorithm is used in the top tree data structure?', '2nd year'),
(194, 'Stack', 'Tree', 'Priority queue', 'A', 'Heap', 'The optimal data structure used to solve Tower\r\nof Hanoi is _________', '2nd year'),
(195, '4', '2', '1', 'B', '3', ' What is the maximum number of children that a\r\n node can have in a binary tree?', '2nd year'),
(196, 'graph', ' tree', 'stack', 'C', 'queue', 'Which is the most appropriate data structure\r\nfor reversing a word?', '2nd year'),
(197, ' O(n)', 'O(1)', ' O(nlogn)', 'A', '\r\nO(logn)', 'Which of the following is the time complexity\r\nto search an element in the linked list?', '2nd year'),
(198, '5', '4', '11', 'A', '12', ' What is the outcome of the prefix\r\n expression +, -, *, 3, 2, /, 8, 4, 1?', '2nd year'),
(199, ' Binary tree', ' Linked list', 'Stack', 'C', ' Queue', '    Which data structure is required to convert the infix\r\n    to prefix notation?', '2nd year'),
(200, ' Relational Schema', ' DDL(Data Definition Language)', ' Query', 'B', 'DML(Data Manipulation Language)', 'Which of the following is generally used for performing\r\ntasks like creating the structure of the\r\nrelations, deleting relation?', '2nd year'),
(201, 'Data Bank Administrator', 'Data Administrator', 'Database Administrator', 'C', 'None of the above', 'To which of the following the term \"DBA\" referred?', '2nd year'),
(202, 'Records', 'Rows & Columns', 'Database', 'A', 'Fields', 'In general, a file is basically a collection of all related______.', '2nd year'),
(203, 'The electronic representation of the\r\ninformation( or data)', 'Row Facts and figures', ' Basic information', 'B', 'Both A and C', 'The term \"Data\" refers to:', '2nd year'),
(204, 'Delete', 'Alter', 'Create', 'A', 'All of the above', 'Which one of the following is a type of Data\r\nManipulation Command?', '2nd year'),
(205, 'Delete', 'Update', 'Merge', 'D', 'Create', 'Which of the following command is a type of \r\nData Definition language command?', '2nd year'),
(206, 'Transmission Control Langu-\r\nage', 'Ternary Control Language', 'Transaction Control Language', 'C', 'Transaction Central Langu-\r\nage', 'The term \"TCL\" stands for_____.', '2nd year'),
(207, 'DBMS stores, modifies and\r\nretrieves data', 'DBMS is a programming language', 'DBMS is a collection of queries', 'A', 'DBMS is a high-level language', 'What is DBMS?', '2nd year'),
(208, 'Remove', 'Drop table', ' Purge', 'B', ' Delete', 'Which command is used to remove a relation from an SQL?', '2nd year'),
(209, 'two', 'One', 'Three', 'D', 'All of the mentioned', 'How many tables may be included with a join?', '2nd year'),
(210, 'Integrity constraint', 'DML', 'DDL', 'C', 'View', 'CREATE TABLE employee \r\n(name VARCHAR, id INTEGER)\r\nWhat type of statement is this?', '2nd year'),
(211, 'Integrity constraint', 'DML', 'DDL', 'B', 'View', 'SELECT * FROM employee\r\nWhat type of statement is this?', '2nd year'),
(212, 'Relational', 'DML', 'DDL', 'B', 'Query', 'INSERT INTO instructor VALUES \r\n(10211, ’Smith’, ’Biology’, 66000);\r\nWhat type of statement is this?', '2nd year'),
(213, 'Hierarchical', 'Relational', 'Physical', 'D', 'Network', 'The oldest DB model is _______________', '2nd year'),
(214, 'Error in create statement', 'Error in insert into Employee values\r\n(1002,Rita,Sales,20000);', 'Error in insert into Employee values\r\n(1006,Ted,Finance, );', 'D', 'All statements execu-\r\nted', 'CREATE TABLE Employee\r\n(Emp_id NUMERIC NOT NULL, Name VARCHAR(20) ,\r\ndept_name VARCHAR(20), \r\nSalary NUMERIC UNIQUE(Emp_id,Name));\r\nINSERT INTO Employee VALUES\r\n(1002, Ross, CSE, 10000);\r\nINSERT INTO Employee VALUES\r\n(1006,Ted,Finance, );\r\nINSERT INTO Employee VALUES\r\n(1002,Rita,Sales,20000);\r\n\r\n\r\nWhat will be the result of the query?', '2nd year'),
(215, 'Check constraint', ' Primary key', 'Foreign key', 'B', 'References', ' Foreign key is the one in which the ________ of\r\n one relation is referenced in another relation.', '2nd year'),
(216, 'MAKE', 'DEVELOP', 'CREATE', 'C', 'INSERT', ' Which of the following command is used to create a\r\n table in SQL?', '2nd year'),
(217, 'DML', 'DDL ', 'TCL', 'B', 'DCL ', 'In SQL, the CREATE command can be put under\r\nwhich of the following category?', '2nd year'),
(218, 'CANDIDATE KEY', 'UNIQUE', 'PRIMARY KEY', 'A', 'NOT NULL', 'Which of the following constraint are not present in SQL?', '2nd year'),
(219, 'VARCHAR', 'DATE', 'INT', 'D', 'NUMBER', ' Which of the following is not a valid datatype in SQL?', '2nd year'),
(220, 'TRUNCATE', 'DROP', ' DELETE', 'B', 'ERASE', 'Which of the following command is used to delete\r\nthe structure of a table in SQL?', '2nd year'),
(221, 'DDL', 'DML', 'DCL', 'A', 'TCL', ' In SQL, the ALTER command can be put under\r\n which of the following category?', '2nd year'),
(222, 'UNIQUE', 'NOT NULL', 'CHECK', 'D', 'PRIMARY KEY', '    In SQL, which of the following constraint\r\n    is used to uniquely identify each record in a table?', '2nd year'),
(223, 'False', 'True', '0', 'A', '3', 'In SQL, a table can have more than one primary key', '2nd year'),
(224, 'Duplicate Table', 'Virtual Table', 'Actual Table', 'B', 'Actual Table', 'In SQL, views can also call as which of the following?', '2nd year'),
(225, '101', '99', '29', 'B', '44', 'Which number should come next in the series 1, 2, 3, 10, ___', '2nd year'),
(226, '93', '31', '2', 'A', '56', 'Which number is wrong in the series 2, 6, 15, 31, 56, 93?', '2nd year'),
(227, 'EFMIK', 'EFMAK', 'EFMIJ', 'C', 'EFAMK', 'If NOIDA is written as OPJEB, then what will be\r\nthe code for DELHI?', '2nd year'),
(228, 'PIWGN', 'PIGNW', 'PGNIW', 'D', 'PINGW', 'If CAT is coded as PATC, JOY is coded as POYJ;\r\nsimilarly the word WING will be coded as -', '2nd year'),
(229, 'Swimming', 'Diving', 'Driving', 'C', 'Sailing', 'Which of the following is the odd one from the\r\ngiven alternatives?', '2nd year'),
(230, '626', '841', '1090', 'B', '962', 'Which of the following is the odd number\r\nfrom the given alternatives?', '2nd year'),
(231, ' Story', 'Content', 'Pages', 'C', ' Binding', 'A book always has -', '2nd year'),
(232, ' Racket', 'Net', 'Tournament', 'D', 'Court', 'Drama : Stage :: Tennis : ?', '2nd year'),
(233, 'Father', 'Brother', 'Nephew', 'C', 'None of the above', 'Raman says \"Anuj\'s mother is the only daughter of my mother.\"\r\nHow is Anuj related to Raman?', '2nd year'),
(234, ' Files', 'Air conditioners', 'Workers', 'C', 'Chimneys', 'A factory always has -', '2nd year'),
(235, 'HQQ', 'HTT', 'HPP', 'A', 'None of the above', 'What will be the missing letters in the\r\nseries BKK, DMM, FOO, __, JSS?', '2nd year'),
(236, 'MO', 'HP', 'AL', 'D', 'OF', 'What will be the missing letters in the\r\nseries EQ, FS, HW, KA, __, TL?', '2nd year'),
(237, '60', '90', '15', 'B', '30', 'If 15% of a number is 45, what is 30% of that number?', '2nd year'),
(238, '30', '27.25', '28.75', 'C', '25', ' The average of five numbers is 32. If one of\r\n the numbers is 45, what is the average of the\r\n remaining numbers?', '2nd year'),
(239, '50', '45', '37.5', 'C', '35', 'If the ratio of apples to oranges in a basket\r\nis 3:2 and there are 25 oranges, how many apples\r\nare there in the basket?', '2nd year'),
(240, '18', '36', '9', 'A', '6', 'What is the HCF of 72 and 90?', '2nd year'),
(241, '11', '13', '12', 'D', '14', 'Solve 3 + 6 × ( 5 + 4) ÷ 3 - 7', '2nd year'),
(242, '20', '10', '15', 'B', '5', 'How Many Years are there in a Decade?', '2nd year'),
(243, '0', '2', '3', 'D', '1', ' The value of tan 60°/cot 30° is equal to:', '2nd year'),
(244, ' Not related', 'Different', ' Same', 'C', 'None of the above', 'sin (90° – A) and cos A are:', '2nd year'),
(245, ' √5/2', '2/√5', ' √(5/2)', 'A', '5/2.0', 'If cos X = ⅔ then tan X is equal to:', '2nd year'),
(246, '√(b2-a2)/b', ' (b-a)/b', '√(b-a)/b', 'A', '(b2-a2)/b', ' If cos X = a/b, then sin X is equal to:', '2nd year'),
(247, '9C5', ' 10C3', '9C4', 'D', '9C6', ' In how many ways can we select 6 people out of 10,\r\n of which a particular person is not included?', '2nd year'),
(248, ' False', 'True', 'None', 'B', 'none of the mentioned', 'Is the given statement true or false?', '2nd year'),
(249, '400', '4000', '80', 'A', '800', '50 times of 8 is equal to:', '2nd year'),
(250, '420', '410', '77', 'B', 'None of these', 'The product of 82 and 5 is:', '2nd year'),
(251, '0', '56', '13100', 'A', '4250', 'The Product of 131,0,300 and 4', '2nd year'),
(252, 'Apple', 'Carrot', 'Banana', 'D', 'Table', 'Which word does not belong?	', '2nd year'),
(253, 'Small', 'Enormous', 'Tiny', 'D', 'Large', 'Choose the synonym for \"big\"', '2nd year'),
(254, 'Purr', 'Howl', 'Meow', 'C', 'Squawk', 'Complete the analogy:	\r\nDog is to bark as cat is to:', '2nd year'),
(255, 'Happy', 'Sad', 'Joyful', 'C', 'Angry', 'Which word does not fit?', '2nd year'),
(256, '10', '12', '8', 'A', '11', 'What comes next in the series?	\r\n2, 4, 6, 8, …', '2nd year'),
(257, 'Warm', 'Cold', 'Boiling', 'B', 'Sizzling', 'Choose the antonym for \"hot\"', '2nd year'),
(258, 'Fruits', 'Branches', 'Roots', 'D', 'Leaves', 'Complete the analogy:	\r\nFlower is to petals as tree is to:', '2nd year'),
(259, 'Inflate', 'Increase', 'Contract', 'C', 'Enlarge', 'What is the opposite of \"expand\"?', '2nd year'),
(260, 'Kitchen', 'Farm', 'Beach', 'B', 'Sand', 'Choose the word that best completes the analogy: \r\nGARDEN is to TROWEL as __________ is to SHOVEL.', '2nd year'),
(261, 'Vague', 'Clear', 'Transparent', 'A', 'Evident', 'Choose the synonym for \"obscure.\"', '2nd year'),
(262, 'Neglect', 'Surprise', 'Ignore', 'D', 'Expect', 'Choose the word that is most similar to the word \"anticipate.\"', '2nd year'),
(263, 'Courageous', 'Heroic', 'Fearful', 'C', 'Bold', 'Choose the word that is the opposite of \"brave.\"', '2nd year'),
(264, 'Tail', 'Venom', 'Slither', 'A', 'Fangs', 'Complete the analogy: TRUNK is to ELEPHANT \r\nas __________ is to SNAKE.', '2nd year'),
(265, 'Circumference', 'Perimeter', 'Diameter', 'B', 'Radius', 'Choose the word that does not belong:', '2nd year'),
(266, 'Obvious', 'Simple', 'Clear', 'D', 'Confusing', 'Choose the synonym for \"perplexing.\"', '2nd year'),
(267, 'It represents the class itself.', 'It refers to the instance of the class.', 'It refers to a global variable.', 'B', 'It refers to a class variable', 'What is the purpose of the self keyword in Python classes?', '3rd year'),
(268, '@staticmethod', '@classmethod', '@property', 'B', '@method', 'Which of the following decorators is used to define a class method in Python?', '3rd year'),
(269, 'open(\"filename.txt\", \"r\")', 'open(\"filename.txt\", \"read\")', 'open(\"filename.txt\")', 'A', 'open(\"filename.txt\", \"rb\")', 'Which of the following is the correct way to open a file for reading in Python?', '3rd year'),
(270, 're', 'regex', 'expression', 'A', 'pattern', 'Which of the following modules is used for regular expressions in Python?', '3rd year'),
(271, 'try-except', 'try-catch', 'catch-except', 'A', 'handle-except', 'How do you handle exceptions in Python?', '3rd year'),
(272, 'True', 'False ', 'Error', 'B', 'None', 'What is the output of the following code?\r\nprint(0.1 + 0.2 == 0.3)', '3rd year'),
(273, 'find()', 'index()', 'position()', 'A', 'search()', 'Which of the following methods is used to find the position of the first occurrence of a substring in a string in Python?', '3rd year'),
(274, 'remove() removes the last item, pop() removes the first item.', 'remove() removes by value, pop() removes by index.', 'remove() removes by index, pop() removes by value.', 'B', 'Both methods perform the same function.', 'What is the difference between remove() and pop() methods in Python lists?', '3rd year'),
(275, 'pip get <package_name>', 'pip install <package_name>', 'pip fetch <package_name>', 'B', 'pip load <package_name>', 'Which of the following is the correct way to install a package using pip?', '3rd year'),
(276, 'new', 'AbstractFactory', 'Cannot create an instance of an abstract class', 'C', 'Factory class', 'Which of the following is used to create an instance of an abstract class in Java?', '3rd year'),
(277, 'To mark a variable as temporary', 'To indicate that a variable should not be serialized', 'To create a transient copy of an object', 'B', 'To declare a variable that cannot be changed', 'What is the purpose of the transient keyword in Java?', '3rd year'),
(278, 'It has a return type', 'It can be called explicitly like a method', 'It initializes an object', 'C', 'It can be overridden', 'Which of the following is true about a constructor in Java?', '3rd year'),
(279, 'int array[10][10];', 'int array[10,10];', 'int array[10]10;', '', 'int array[10];[10]', 'Which of the following correctly declares a two-dimensional array in C?', '3rd year'),
(280, '11', '12', '10', '', 'undefined', 'What will be the output of the following C code?\r\nint x = 5; printf(\"%d\", ++x + x++); ', '3rd year'),
(281, 'variable1', '_variable', '2variable', '', 'variable_2', 'Which of the following is not a valid variable name in C?', '3rd year'),
(282, '1 byte', '2 bytes', '4 bytes', '', 'Platform dependent', 'What is the size of a char data type in C?', '3rd year'),
(283, '*', '&', 'None', '', '$', 'Which of the following operators is used to get the address of a variable in C?', '3rd year'),
(284, 'HelloWorld', 'Hello World', 'Error', 'A', 'None', 'What is the result of \'Hello\' + \'World\'?', '3rd year'),
(285, 'length()', 'size()', 'len()', 'C', 'count()', 'Which function is used to get the length of a list?', '3rd year'),
(286, 'x := 5', 'x = 5', 'int x = 5', 'B', 'x <- 5', 'How do you create a variable with the numeric value 5?', '3rd year'),
(287, '.pyth', '.pt', '.py', 'C', '.pyt', 'What is the correct file extension for Python files?', '3rd year'),
(288, '//', '<!--', '#', 'C', '\' \' \'', 'How do you insert COMMENTS in Python code?', '3rd year'),
(289, 'strip()', 'trim()', 'ptrim()', 'A', 'strim()', 'Which method can be used to remove any whitespace from both the beginning and the end of a string?', '3rd year'),
(290, 'print(typeOf(x))', 'print(type(x))', 'print(typeof x)', 'B', 'print(typeof(x))', 'What is the correct syntax to output the type of a variable or object in Python?', '3rd year'),
(291, 'upperCase()', 'toUpper()', 'upper()', 'C', 'makeUpper()', 'Which method can be used to return a string in upper case letters?', '3rd year'),
(292, 'list', 'dictionary', 'tuple', 'D', 'class', 'Which of the following is not a core data type in Python?', '3rd year'),
(293, '{}', '[]', '()', 'A', 'set{}', 'How do you create a dictionary in Python?', '3rd year'),
(294, 'var x = 5', 'x := 5', 'int x = 5', 'D', 'x = 5', 'Which of the following is the correct way to declare a variable in Python?', '3rd year'),
(295, 'float(\'string\')', 'str_to_float(\'string\')', 'to_float(\'string\')', 'A', 'float(string)', 'How do you convert a string to a float in Python?', '3rd year'),
(296, '4.5', '4', '5', 'B', '9', 'What will be the output of the following code: print(9 // 2)?', '3rd year'),
(297, '{}', '[]', '()', 'B', 'set{}', 'How do you create a list in Python?', '3rd year'),
(298, 'Variable names must start with a letter or an underscore', 'Variable names can start with a number', 'Variable names can contain spaces', 'A', 'Variable names can contain symbols', 'Which of the following statements is true about variable names in Python?', '3rd year'),
(299, 'True', 'False', 'None', 'A', 'Error', 'What is the output of print(3 == 3.0)?', '3rd year'),
(300, 'func', 'function', 'def', 'C', 'define', 'Which keyword is used to define a function in Python?', '3rd year'),
(301, 'class MyClass:', 'create class MyClass', 'def class MyClass:', 'A', 'MyClass create:', 'What is the correct syntax to create a class in Python?', '3rd year'),
(302, 'global var_name', 'access var_name', 'global_var var_name', 'A', 'all var_name', 'How do you access a global variable inside a function?', '3rd year'),
(303, 'True', 'False', '0', 'B', '1', 'What is the output of print(bool(0))?', '3rd year'),
(304, '+', '&', '', '.', '', 'Which operator is used to concatenate strings in Python?', '3rd year'),
(305, 'include math', 'import(math)', 'using math', 'D', 'import math', 'What is the correct way to import a module named \'math\' in Python?', '3rd year'),
(306, 'True', 'False', 'Error', 'A', 'None', 'What is the output of the following code: print(type([]) is list)?', '3rd year'),
(307, '2 bytes', '4 bytes', '8 bytes', 'B', '16 bytes', 'What is the size of an int data type in Java?', '3rd year'),
(308, 'static', 'Boolean', 'void', 'B', 'private', 'Which of the following is not a keyword in Java?', '3rd year'),
(309, 'True', 'False', '0', 'B', 'null', 'What is the default value of a boolean variable in Java?', '3rd year'),
(310, 'start()', 'run()', 'begin()', 'A', 'init()', 'Which method is used to start a thread in Java?', '3rd year'),
(311, 'Object', 'Class', 'System', 'A', 'Parent', 'What is the parent class of all classes in Java?', '3rd year'),
(312, 'public', 'private', 'protected', 'D', 'package', 'Which of the following is not an access modifier in Java?', '3rd year'),
(313, 'int', 'long', 'void', 'A', 'double', 'What is the return type of the hashCode() method in Java?', '3rd year'),
(314, 'if()', 'for()', 'continue', 'A', 'break', 'Which of these are selection statements in Java?', '3rd year'),
(315, 'JVM', 'JRE', 'JDK', 'D', 'JDB', 'Which of the following is used to find and fix bugs in the Java programs?', '3rd year'),
(316, '0', 'null', 'depends on the type', 'D', 'undefined', 'What is the default value of a local variable in Java?', '3rd year'),
(317, 'import', 'package', 'extends', 'A', 'implements', 'Which keyword is used for accessing the features of a package?', '3rd year'),
(318, 'H', 'e', 'o', 'A', 'l', 'What is the output of System.out.println(\"Hello\".charAt(0));?', '3rd year'),
(319, 'Runnable', 'Serializable', 'Comparator', 'B', 'Cloneable', 'Which of the following is a marker interface in Java?', '3rd year'),
(320, 'To mark a class as final', 'To mark a method as final', 'To mark a variable as final', 'D', 'All of the above', 'What is the use of the final keyword in Java?', '3rd year'),
(321, 'identifier', 'keyword', 'constant', 'B', 'None of the above', 'Which of these cannot be used for a variable name in Java?', '3rd year'),
(322, 'Refers to the parent class object', 'Calls the constructor of the parent class', 'Calls the parent class method', 'D', 'All of the above', 'What does the super keyword do?', '3rd year'),
(323, 'new', 'alloc', 'malloc', 'A', 'create', 'Which of the following is used to create an object?', '3rd year'),
(324, '1030', '102030', '30', 'A', '3030', 'What is the output of System.out.println(10 + 20 + \"30\");?', '3rd year'),
(325, 'Object-oriented', 'Use of pointers', 'Portable', 'B', 'Dynamic', 'Which of the following is not a Java feature?', '3rd year'),
(326, 'char ch = \'a\';', 'char ch = 97;', 'char ch = \'\\u0061\';', 'D', 'char ch = \"a\";', 'Which of the following is not a valid declaration of a char?', '3rd year'),
(327, 'public static void main(String[] args)', 'public void main(String[] args)', 'public static void main()', 'A', 'public void static main(String[] args)', 'Which of the following is the correct syntax for a main method?', '3rd year'),
(328, 'One', 'Two', 'Multiple', 'C', 'Only main thread', 'How many threads can be executed at a time in Java?', '3rd year'),
(329, '6Hello', 'Hello6', '5Hello', 'A', 'Hello5', 'What is the output of System.out.println(2 * 3 + \"Hello\");?', '3rd year'),
(330, 'Polymorphism', 'Inheritance', 'Compilation', 'C', 'Encapsulation', 'Which of the following is not an OOP concept in Java?', '3rd year'),
(331, 'length()', 'size()', 'getSize()', 'A', 'getLength()', 'Which method can be used to find the length of a string in Java?', '3rd year'),
(332, '.js', '.txt', '.class', 'C', '.java', 'What is the extension of compiled Java classes?', '3rd year'),
(333, 'malloc', 'alloc', 'new', 'C', 'new alloc', 'Which operator is used to allocate memory to an array in Java?', '3rd year'),
(334, 'String', 'Class<?>', 'ClassLoader', 'B', 'None of the above', 'What is the return type of the getClass() method?', '3rd year'),
(335, 'static', 'final', 'abstract', 'B', 'volatile', 'Which keyword is used to prevent inheritance in Java?', '3rd year'),
(336, '3.33', '3', '3', 'B', '3.3333', 'What is the output of System.out.println(10 / 3);?', '3rd year'),
(337, 'RuntimeException', 'Error', 'Exception', 'D', 'All of the above', 'Which of these classes are the direct subclasses of the Throwable class?', '3rd year'),
(338, 'goto', 'constant', 'implement', 'A', 'extend', 'Which of the following is a reserved keyword in Java?', '3rd year'),
(339, 'Hel', 'ello', 'ell', 'C', 'llo', 'What is the output of System.out.println(\"Hello\".substring(1, 4));?', '3rd year');
INSERT INTO `qbs` (`id`, `a`, `b`, `c`, `correct`, `d`, `question`, `year`) VALUES
(340, 'equals()', '==', 'compare()', 'A', 'equalsIgnoreCase()', 'Which method is used to compare two strings for equality in Java?', '3rd year'),
(341, 'To create a variable', 'To mark a variable as constant', 'To ensure visibility of changes to variables across threads', 'C', 'To prevent inheritance', 'What is the purpose of the volatile keyword in Java?', '3rd year'),
(342, '0x99ffL', '9876543210', '123', 'A', '0x99ff', 'Which of the following is a valid long literal?', '3rd year'),
(343, '12345', '3345', '334', 'B', '345', 'What is the output of System.out.println(1 + 2 + \"3\" + 4 + 5);?', '3rd year'),
(344, '8 bits', '16 bits', '32 bits', 'B', '64 bits', 'What is the size of a char in Java?', '3rd year'),
(345, 'public', 'protected', 'private', 'D', 'package-private', 'Which of the following is not a valid access specifier in Java?', '3rd year'),
(346, '0', 'Depends on the type', 'null', 'B', 'Not defined', 'What is the default value of a static variable in Java?', '3rd year'),
(347, '5', '5', '6', 'B', '6', 'What is the output of System.out.println(Math.floor(5.8));?', '3rd year'),
(348, 'Rare', 'Found everywhere', 'Specific', 'b', 'Singular', '\"Ubiquitous\" means:', '3rd year'),
(349, 'Clear', 'Confused', 'Unambiguous', 'd', 'Vague', 'What is the synonym of \"ambiguous\"?', '3rd year'),
(350, 'Accomodate', 'Accommodate', 'Acommodate', 'b', 'Acomodate', 'Choose the correctly spelled word:', '3rd year'),
(351, 'Careless', 'Sloppy', 'Thorough', 'c', 'Hasty', '\"Meticulous\" means:', '3rd year'),
(352, 'Lazy', 'Diligent', 'Lethargic', 'b', 'Careless', 'What is the synonym of \"assiduous\"?', '3rd year'),
(353, 'Open', 'Secretive', 'Spontaneous', 'b', 'Honest', '\"Surreptitious\" means:', '3rd year'),
(354, 'Temporary', 'Fleeting', 'Lasting', 'c', 'Brief', 'What is the opposite of \"ephemeral\"?', '3rd year'),
(355, 'Flexible', 'Rigid', 'Stiff', 'a', 'Hard', '\"Malleable\" means:', '3rd year'),
(356, 'Sad', 'Joyful', 'Happy', 'a', 'Ecstatic', 'Which word does not belong: Happy, Joyful, Sad, Ecstatic, Cheerful?', '3rd year'),
(357, 'He run quickly.', 'He runs quick.', 'He runs quickly.', 'c', 'He run quick.', 'Choose the correct sentence:', '3rd year'),
(358, 'Aggravate', 'Intensify', 'Mitigate', 'c', 'Worsen', '\"Alleviate\" means:', '3rd year'),
(359, 'Lasting', 'Transitory', 'Eternal', 'b', 'Permanent', 'What is the synonym of \"ephemeral\"?', '3rd year'),
(360, 'A. All cats are beautiful', 'B. Some cats are beautiful', 'C. Some beautiful things are cats', 'B', 'D. Some beautiful things are black', 'If some cats are black and all black things are beautiful, then what can we infer?', '3rd year'),
(361, 'A. All students succeed', 'B. Some students succeed', 'C. All successful people are students', 'B', 'D. Some successful people are students', 'If some students are hardworking and all hardworking people succeed, then what is true?', '3rd year'),
(362, 'A. All shapes have four sides', 'B. All shapes have three sides', 'C. All triangles are squares', 'B', 'D. Some triangles have four sides', 'If all triangles have three sides and all squares have four sides, then what is true?', '3rd year'),
(363, 'A. All birds can fly', 'B. Some flying things are birds', 'C. All flying things are birds', 'B', 'D. Some birds cannot fly', 'If some birds can fly and all flying things are birds, then what is true?', '3rd year'),
(364, 'A. Some doctors are engineers', 'B. All engineers are doctors', 'C. Some doctors are intelligent', 'C', 'D. All doctors are engineers', 'If all doctors are intelligent and some intelligent people are engineers, then what can we infer?', '3rd year'),
(365, 'A. Some roses are beautiful', 'B. All roses are beautiful', 'C. All beautiful things are roses', 'A', 'D. Some beautiful things are roses', 'If some roses are red and all red things are beautiful, then what can we conclude?', '3rd year'),
(366, 'A. All clouds bring rain', 'B. Some clouds bring rain', 'C. All pleasant days have clouds', 'B', 'D. Some clouds are pleasant', 'If some clouds bring rain and all rainy days are pleasant, then what is true?', '3rd year'),
(367, 'A. All elephants are large', 'B. Some elephants are large', 'C. All large things are elephants', 'B', 'D. Some elephants are mammals', 'If all elephants are mammals and some mammals are large, then what can we infer?', '3rd year'),
(368, 'A. Some politicians are lawyers', 'B. All lawyers are politicians', 'C. All politicians are lawyers', 'D', 'D. Some lawyers are politicians', 'If all politicians are liars and some liars are lawyers, then what is true?', '3rd year'),
(369, 'A. Some cars are expensive', 'B. All cars are fast', 'C. All fast things are cars', 'A', 'D. Some expensive things are cars', 'If some cars are fast and all fast things are expensive, then what can we conclude?', '3rd year'),
(370, 'A. Some athletes are runners', 'B. All runners are athletes', 'C. All athletes are runners', 'A', 'D. Some runners are athletes', 'If all athletes are strong and some strong people are runners, then what can we infer?', '3rd year'),
(371, 'A. All cats are pets', 'B. Some cats are pets', 'C. All pets are cats', 'B', 'D. Some pets are cats', 'If all cats are animals and some animals are pets, then what is true?', '3rd year'),
(372, 'Windows', 'Oracle', 'DOS', 'B', 'Linux', 'Which of the following is not an operating system?', '3rd year'),
(373, '.txt', '.xls', '.ppt', 'A', '.bmp', 'Which of the following is the extension of Notepad?', '3rd year'),
(374, 'prompt', 'kernel', 'shell', 'C', 'command', ' What else is a command interpreter called?', '3rd year'),
(375, 'File attribute table', 'File allocation table', 'Font attribute table', 'B', 'Format allocation table', 'What is the full name of FAT?', '3rd year'),
(376, 'Restarting computer', 'Install the program', 'To scan', 'A', 'To turn off', 'What is the mean of the Booting in the operating system?', '3rd year'),
(377, 'The page is present in memory.', 'The deadlock occurs.', 'The page does not present in memory.', 'C', 'The buffering occurs.', ' When does page fault occur?', '3rd year'),
(378, 'To prevent deadlock', 'To deadlock recovery', '1. To solve the deadlock', 'A', 'None of these', 'Banker\'s algorithm is used?', '3rd year'),
(379, 'Recycle bin', 'Hard disk', 'Taskbar', 'A', 'None of these', 'When you delete a file in your computer, where does it go?', '3rd year'),
(380, 'Direct system module', 'Direct system memory', 'Demoralized system memory', 'D', 'Distributed shared memory', ' What is the full name of the DSM?', '3rd year'),
(381, 'Cold boot', 'Cold hot boot', 'Cold hot strap', 'A', 'Hot boot', 'What is bootstrapping called?', '3rd year'),
(382, 'A. Software', 'B. Hardware', 'C. Both A and B', 'C', 'D. None of the above', 'What is an operating system?', '3rd year'),
(383, 'A. Some professors are teachers', 'B. All professors are teachers', 'C. All teachers are professors', 'A', 'D. Some teachers are professors', 'If all teachers are knowledgeable and some knowledgeable people are professors, then what is true?', '3rd year'),
(384, 'A. Manage hardware resources', 'B. Run applications', 'C. Connect to the internet', 'A', 'D. None of the above', 'What is the primary function of an operating system?', '3rd year'),
(385, 'A. Memory management', 'B. File management', 'C. Network management', 'D', 'D. None of the above', 'Which of the following is not a function of an operating system?', '3rd year'),
(386, 'A. The innermost part of the operating system', 'B. A type of operating system', 'C. A computer hardware component', 'A', 'D. None of the above', 'What is a kernel in an operating system?', '3rd year'),
(387, 'A. Windows', 'B. Linux', 'C. FreeBSD', 'A', 'D. Android', 'Which operating system is not open source?', '3rd year'),
(388, 'A. A program in execution', 'B. A type of software', 'C. A peripheral device', 'A', 'D. None of the above', 'What is a process in the context of an operating system?', '3rd year'),
(389, 'A. Windows', 'B. Linux', 'C. MS-DOS', 'C', 'D. MacOS', 'Which of the following is not a multitasking operating system?', '3rd year'),
(390, 'A. A type of computer memory', 'B. A type of storage device', 'C. A memory management technique', 'C', 'D. None of the above', 'What is virtual memory in an operating system?', '3rd year'),
(391, 'A. Real-time', 'B. Single-tasking', 'C. Multi-user', 'D', 'D. Double-click', 'Which of the following is not a type of operating system?', '3rd year'),
(392, 'A. Graphical User Interface', 'B. General Utility Interface', 'C. Graphical Unit Identifier', 'A', 'D. None of the above', 'What is a GUI in the context of operating systems?', '3rd year'),
(393, 'A. Windows', 'B. Linux', 'C. iOS', 'C', 'D. Ubuntu', 'Which operating system is designed for mobile devices?', '3rd year'),
(394, 'A. Kernel', 'B. User Interface', 'C. Compiler', 'C', 'D. Shell', 'Which of the following is not a component of an operating system?', '3rd year'),
(395, 'A. A way to organize and store files', 'B. A hardware component', 'C. A peripheral device', 'A', 'D. None of the above', 'What is a file system in the context of an operating system?', '3rd year'),
(396, 'A. File allocation', 'B. File compression', 'C. File execution', 'B', 'D. None of the above', 'Which of the following is not a function of a file system?', '3rd year'),
(397, 'A. To facilitate communication between hardware and software', 'B. To manage memory', 'C. To create files', 'A', 'D. None of the above', 'What is the role of a device driver in an operating system?', '3rd year'),
(398, 'A. FAT', 'B. NTFS', 'C. HTTP', 'C', 'D. ext4', 'Which of the following is not a type of file system?', '3rd year'),
(399, 'A. A user interface for accessing operating system services', 'B. A type of hardware', 'C. A computer program', 'A', 'D. None of the above', 'What is a shell in the context of an operating system?', '3rd year'),
(400, 'A. Windows', 'B. Linux', 'C. MacOS', 'B', 'D. Android', 'Which operating system is based on the UNIX system?', '3rd year'),
(401, 'A. To manage the order of tasks', 'B. To manage memory', 'C. To create files', 'A', 'D. None of the above', 'What is the function of a scheduler in an operating system?', '3rd year'),
(402, 'A. Round Robin', 'B. First Come First Serve', 'C. Divide and Conquer', 'C', 'D. Shortest Job Next', 'Which of the following is not a type of scheduling algorithm?', '3rd year'),
(403, 'A type of computer hard-\r\nware', 'A collection of algorithms', 'A way to store and organize data', 'C', 'A programming langu-\r\nage', 'What is a data structure?', '3rd year'),
(404, 'The Array shows a hierarchical\r\nstructure.', 'The Array is not a data structure', 'Arrays are immutable.', 'D', 'Container that stores the elements\r\nof similar types', 'How can we describe an array in\r\nthe best possible way?', '3rd year'),
(405, 'Add', 'Push', 'Insert', 'B', 'None of the above', 'Which one of the following is the process\r\nof inserting an element in the stack?', '3rd year'),
(406, 'ABC+*', 'A+B*C', 'AB*C+', 'B', 'None of the above', 'Which of the following is the infix expression?', '3rd year'),
(407, '3', '2', '5', 'B', '4', 'The minimum number of stacks required to implement \r\na stack is __', '3rd year'),
(408, 'FIFO', 'LIFO', 'Ordered array', 'A', 'Linear tree', 'Which of the following principle does Queue use?', '3rd year'),
(409, ' Double ended Queue', 'Linear Queue', 'Single ended Queue', 'C', ' Circular Queue', 'Which one of the following is not the type of the Queue?', '3rd year'),
(410, ' O(logn)', 'O(1)', ' O(nlogn)', 'D', 'O(1)', 'The time complexity of enqueue operation in Queue is __', '3rd year'),
(411, ' 22', '40', '-18', 'C', '0', 'What is the value of the postfix expression 6 3 2 4 + – *?', '3rd year'),
(412, 'Branch', 'Backtracking', ' Divide and Conquer', 'C', ' Greedy', ' Which algorithm is used in the top tree data structure?', '3rd year'),
(413, 'Stack', 'Tree', 'Priority queue', 'A', 'Heap', 'The optimal data structure used to solve Tower\r\nof Hanoi is _________', '3rd year'),
(414, '4', '2', '1', 'B', '3', ' What is the maximum number of children that a\r\n node can have in a binary tree?', '3rd year'),
(415, 'graph', ' tree', 'stack', 'C', 'queue', 'Which is the most appropriate data structure\r\nfor reversing a word?', '3rd year'),
(416, ' O(n)', 'O(1)', ' O(nlogn)', 'A', '\r\nO(logn)', 'Which of the following is the time complexity\r\nto search an element in the linked list?', '3rd year'),
(417, ' Relational Schema', ' DDL(Data Definition Language)', ' Query', 'B', 'DML(Data Manipulation Language)', 'Which of the following is generally used for performing\r\ntasks like creating the structure of the\r\nrelations, deleting relation?', '3rd year'),
(418, 'Data Bank Administrator', 'Data Administrator', 'Database Administrator', 'C', 'None of the above', 'To which of the following the term \"DBA\" referred?', '3rd year'),
(419, 'Records', 'Rows & Columns', 'Database', 'A', 'Fields', 'In general, a file is basically a collection of all related______.', '3rd year'),
(420, 'The electronic representation of the\r\ninformation( or data)', 'Row Facts and figures', ' Basic information', 'B', 'Both A and C', 'The term \"Data\" refers to:', '3rd year'),
(421, 'Delete', 'Alter', 'Create', 'A', 'All of the above', 'Which one of the following is a type of Data\r\nManipulation Command?', '3rd year'),
(422, 'Delete', 'Update', 'Merge', 'D', 'Create', 'Which of the following command is a type of \r\nData Definition language command?', '3rd year'),
(423, 'Transmission Control Langu-\r\nage', 'Ternary Control Language', 'Transaction Control Language', 'C', 'Transaction Central Langu-\r\nage', 'The term \"TCL\" stands for_____.', '3rd year'),
(424, 'DBMS stores, modifies and\r\nretrieves data', 'DBMS is a programming language', 'DBMS is a collection of queries', 'A', 'DBMS is a high-level language', 'What is DBMS?', '3rd year'),
(425, 'Remove', 'Drop table', ' Purge', 'B', ' Delete', 'Which command is used to remove a relation from an SQL?', '3rd year'),
(426, 'two', 'One', 'Three', 'D', 'All of the mentioned', 'How many tables may be included with a join?', '3rd year'),
(427, 'Integrity constraint', 'DML', 'DDL', 'B', 'View', 'SELECT * FROM employee\r\nWhat type of statement is this?', '3rd year'),
(428, 'Hierarchical', 'Relational', 'Physical', 'D', 'Network', 'The oldest DB model is _______________', '3rd year'),
(429, 'Check constraint', ' Primary key', 'Foreign key', 'B', 'References', ' Foreign key is the one in which the ________ of\r\n one relation is referenced in another relation.', '3rd year'),
(430, 'MAKE', 'DEVELOP', 'CREATE', 'C', 'INSERT', ' Which of the following command is used to create a\r\n table in SQL?', '3rd year'),
(431, 'DML', 'DDL ', 'TCL', 'B', 'DCL ', 'In SQL, the CREATE command can be put under\r\nwhich of the following category?', '3rd year'),
(432, 'CANDIDATE KEY', 'UNIQUE', 'PRIMARY KEY', 'A', 'NOT NULL', 'Which of the following constraint are not present in SQL?', '3rd year'),
(433, 'VARCHAR', 'DATE', 'INT', 'D', 'NUMBER', ' Which of the following is not a valid datatype in SQL?', '3rd year'),
(434, 'x = 5, y = 10', 'x = 10, y = 5', 'x = 0, y = 0', 'B', 'None of the above', 'What is the output of the given code snippet?', '3rd year'),
(435, 'Swaps the values of two integers', 'Multiplies two integers', 'Adds two integers', 'A', 'Divides two integers', 'What does the swap function do?', '3rd year'),
(436, 'It is used to declare a pointer', 'It is used to multiply values', 'It is used to dereference a pointer', 'C', 'None of the above', 'What is the purpose of the * operator in the swap function?', '3rd year'),
(437, 'if (n == 1) return 1;', 'if (n == 0) return 1;', 'if (n == 0) return 0;', 'B', 'None of the above', 'What is the base case in the factorial function?', '3rd year'),
(438, '4', '16', '24', 'C', '120', 'What does the factorial function return when called with factorial(4)?', '3rd year'),
(439, 'They are integers', 'They are pointers to integers', 'They are arrays', 'B', 'None of the above', 'Which of the following best describes the swap function’s parameters?', '3rd year'),
(440, '0', '1', '4', 'C', '5', 'What is the value of num before calling factorial(num) in main?', '3rd year'),
(441, 'It swaps the values of x and y and prints them', 'It calculates the factorial of 4 and prints it', 'It returns 0 indicating successful execution', 'D', 'All of the above', 'Which of the following is true about the main function in this code?', '3rd year'),
(442, 'The program would not compile', 'The values of x and y would not be swapped', 'It would cause a runtime error', 'B', 'The program would swap the values of x and y correctly', 'What would happen if the & operator was not used in the call to swap in main?', '3rd year'),
(443, 'It is used to read input from the user', 'It is used to print output to the screen', 'It is used to declare variables', 'B', 'None of the above', 'Which of the following statements is true about the printf function used in main?', '3rd year'),
(444, 'They translate the entire program\r\n at once', 'They execute programs\r\n faster than compilers', 'They translate and execute\r\n code line by line', 'C', 'They are not used in modern\r\n programming', 'Which of the following is true about interpreters?', '3rd year'),
(445, 'A compiler executes code, \r\nwhile an interpreter does not', 'A compiler debugs code, \r\nwhile an interpreter does not', 'A compiler is used only in C programming,\r\n while an interpreter is not', 'D', 'A compiler translates the entire\r\n program at once, while an\r\n interpreter translates it line by Line', '\r\nHow does a compiler differ from an interpreter?', '3rd year'),
(446, 'int', 'char', 'include', 'C', 'float', '\r\nWhich of the following is not a keyword in C?', '3rd year'),
(447, 'char', 'double', 'float', 'A', 'int', '\r\nWhat data type would you use to store a character in C?', '3rd year'),
(448, '2ndName', '_name', '#name', 'B', 'none of these', '\r\nWhich of the following is a valid identifier in C?', '3rd year'),
(449, '1', '0', 'True ', 'B', 'False', '\r\nWhat is the result of the logical expression (1 && 0)?', '3rd year'),
(450, '*', '+', 'Both are same', 'A', 'None of the mentioned', 'Which operator has higher precedence, \'+\' or \'*\'?', '3rd year'),
(451, '0', '1', '2', 'B', '3', 'What is the output of the expression 2<3?', '3rd year'),
(452, '2', '3', '4', 'C', '5', '\r\nWhat is the result of the following expression?\r\nint a = 1; int b = a++ + ++a;', '3rd year'),
(453, 'To check the type of an object', 'To create an instance of a class', 'To delete an instance of a class', 'A', 'None of the above', 'What is the use of the instanceof keyword in Java?', '3rd year'),
(454, 'try-catch', 'throw', 'throws', 'D', 'All of the above', 'Which of the following is used to handle exceptions in Java?', '3rd year'),
(455, '\"\"', 'null', '\"null\"', 'B', 'undefined', 'What is the default value of a string variable in Java?', '3rd year'),
(456, '0', '1', '2', 'B', '3', 'What is the output of System.out.println(10 % 3);?', '3rd year'),
(457, 'static', 'final', 'abstract', 'B', 'const', 'Which keyword is used to create a constant in Java?', '3rd year'),
(458, 'main()', 'start()', 'constructor', 'C', 'init()', 'Which method is called when an object is created in Java?', '3rd year'),
(459, '1', '2', '3', 'A', '4', 'What is the output of System.out.println(\"Hello\".indexOf(\'e\'));?', '3rd year'),
(460, 'for', 'while', 'do-while', 'D', 'repeat-until', 'Which of the following is not a type of loop in Java?', '3rd year');

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

DROP TABLE IF EXISTS `responses`;
CREATE TABLE IF NOT EXISTS `responses` (
  `resid` int NOT NULL AUTO_INCREMENT,
  `contactno` varchar(13) NOT NULL,
  `emailaddress` varchar(100) NOT NULL,
  `enrollmentno` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `name` varchar(60) NOT NULL,
  `resdate` varchar(50) NOT NULL,
  `responsetype` varchar(50) NOT NULL,
  `subject` varchar(200) NOT NULL,
  PRIMARY KEY (`resid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`resid`, `contactno`, `emailaddress`, `enrollmentno`, `message`, `name`, `resdate`, `responsetype`, `subject`) VALUES
(10, '07905758805', '98@gmail.com', '1001', 'avnish mahraj ki jai ho', 'Avnish', 'Wed Sep 18 14:55:11 IST 2024', 'Complaint', 'tum bewakoof'),
(11, '07905758805', '98@gmail.com', '1001', 'aap mahan hain', 'Avnish', 'Wed Sep 18 14:55:27 IST 2024', 'Feedback', 'Avnish tiwari'),
(14, '21354365467', 'prakhar@gmail.com', '2423232', 'sfbsfgbsetgbvafs', 'prakhar shrivastava', 'Wed Sep 18 15:11:11 IST 2024', 'Complaint', 'prakhar');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
CREATE TABLE IF NOT EXISTS `results` (
  `emailaddress` varchar(50) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `collegename` varchar(500) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `course` varchar(100) NOT NULL,
  `getmarks` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(100) NOT NULL,
  `totalmarks` int NOT NULL,
  `year` varchar(100) NOT NULL,
  PRIMARY KEY (`emailaddress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`emailaddress`, `branch`, `collegename`, `contactno`, `course`, `getmarks`, `name`, `status`, `totalmarks`, `year`) VALUES
('98@gmail.com', 'Computer Science', 'ABES ENGG.COLLEGE,GHAZIABAD', '07905758805', 'MCA', 0, 'Avnish', 'true', 20, '3rd Year');

-- --------------------------------------------------------

--
-- Table structure for table `studentinfoes`
--

DROP TABLE IF EXISTS `studentinfoes`;
CREATE TABLE IF NOT EXISTS `studentinfoes` (
  `emailaddress` varchar(60) NOT NULL,
  `aggregatemarks` varchar(50) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `collegename` varchar(500) NOT NULL,
  `contactno` varchar(13) NOT NULL,
  `course` varchar(100) NOT NULL,
  `enrollmentno` varchar(100) NOT NULL,
  `highschool` varchar(50) NOT NULL,
  `indermediate` varchar(50) NOT NULL,
  `name` varchar(60) NOT NULL,
  `password` varchar(30) NOT NULL,
  `regdate` varchar(60) NOT NULL,
  `traininglocation` varchar(500) NOT NULL,
  `trainingmode` varchar(20) NOT NULL,
  `whatsappno` varchar(13) NOT NULL,
  `year` varchar(50) NOT NULL,
  `profilepic` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`emailaddress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `studentinfoes`
--

INSERT INTO `studentinfoes` (`emailaddress`, `aggregatemarks`, `branch`, `collegename`, `contactno`, `course`, `enrollmentno`, `highschool`, `indermediate`, `name`, `password`, `regdate`, `traininglocation`, `trainingmode`, `whatsappno`, `year`, `profilepic`) VALUES
('98@gmail.com', '10', 'Computer Science', 'ABES ENGG.COLLEGE,GHAZIABAD', '07905758805', 'MCA', '1001', '10', '10', 'Avnish', '9999', 'Wed Sep 18 09:05:44 IST 2024', 'Softpro House', 'offline', '8765684899', '3rd Year', '1726631426020_WhatsApp Image 2024-09-17 at 16.53.58_bd33ba74.jpg'),
('prakhar@gmail.com', '89', 'Computer Science with AI', 'ALLENHOUSE INSTITUTE OF TECHNOLOGY,KANPUR', '21354365467', 'MCA', '2423232', '232', '098', 'prakhar shrivastava', '0000', 'Wed Sep 18 15:10:07 IST 2024', 'Softpro House', 'offline', '234545676789', '2nd Year', '1726652453188_c1.webp');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
