-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2018 at 09:35 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quizdbase`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE IF NOT EXISTS `answers` (
  `aid` int(100) NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) NOT NULL,
  `q_id` varchar(250) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=96 ;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`aid`, `answer`, `q_id`) VALUES
(1, '10,10', '1'),
(2, '10,11', '1'),
(3, '11,10', '1'),
(4, '11,11', '1'),
(5, '.txt', '2'),
(6, '.bin', '2'),
(7, '.c', '2'),
(8, 'none of the mentioned', '2'),
(9, '10', '3'),
(10, '11', '3'),
(11, 'Compile time error', '3'),
(12, '0', '3'),
(13, '21.6 m', '4'),
(14, '23.2 m', '4'),
(15, '24.72 m', '4'),
(16, 'None of these', '4'),
(17, 'junk', '5'),
(18, 'MESS', '5'),
(19, 'Error', '5'),
(20, 'Nothing will print', '5'),
(21, '4, 3, 3', '6'),
(22, '4, 3, 2', '6'),
(23, '3, 3, 2', '6'),
(24, '2, 3, 3', '6'),
(25, '0', '7'),
(26, '1', '7'),
(27, 'Error', '7'),
(28, 'None of these', '7'),
(29, '1', '8'),
(30, '2', '8'),
(31, '3', '8'),
(32, '1,2,3', '8'),
(33, '180º', '9'),
(34, '192 1/2º', '9'),
(35, '195º', '9'),
(36, '197 1/2º', '9'),
(37, '32', '10'),
(38, '48', '10'),
(39, '36', '10'),
(40, '60', '10'),
(41, '100', '11'),
(42, '101', '11'),
(43, '102', '11'),
(44, '99', '11'),
(45, '121', '12'),
(46, '122', '12'),
(47, '117', '12'),
(48, '120', '12'),
(49, '3', '13'),
(50, '4', '13'),
(51, '5', '13'),
(52, '6', '13'),
(53, '58', '14'),
(54, '58.5', '14'),
(55, '60', '14'),
(56, '60.5', '14'),
(57, 'I alone sufficient while II alone not sufficient to answer', '15'),
(58, 'II alone sufficient while I alone not sufficient to answer', '15'),
(59, 'Either I or II alone sufficient to answer', '15'),
(60, 'Both I and II are not sufficient to answer', '15'),
(61, 'Hello is printed 5 times', '16'),
(62, 'Hello is printed 4 times', '16'),
(63, 'Hello', '16'),
(64, 'Hello is printed 3 times', '16'),
(65, '1, 3, 4', '17'),
(66, '2, 4, 5', '17'),
(67, '1, 2, 6', '17'),
(68, '2, 5, 6', '17'),
(69, 'interface', '18'),
(70, 'String', '18'),
(71, 'Float', '18'),
(72, 'unsigned', '18'),
(73, 'No statement required', '19'),
(74, 'import java.io.*;', '19'),
(75, 'include java.io.*;', '19'),
(76, 'import java.io.PrintWriter;', '19'),
(77, '5 2', '20'),
(78, '5 3', '20'),
(79, '6 3', '20'),
(80, '6 4', '20'),
(81, 'Integer', '21'),
(82, 'Integer pointer', '21'),
(83, 'Error in declaration', '21'),
(84, 'None of above', '21'),
(85, 'All of them let you define new values', '22'),
(86, 'All of them let you define new data types', '22'),
(87, 'All of them let you define new pointers', '22'),
(88, 'All of them let you define new structures', '22'),
(89, 'True', '23'),
(90, 'False', '23'),
(91, 'None Of These', '23'),
(92, 'hyper text mail language.', '24'),
(93, 'hybrid text markup language.', '24'),
(94, 'hyper text markup language.', '24'),
(95, 'hyperlink text mail language.', '24');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `qid` int(100) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `ans_id` varchar(250) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `question`, `ans_id`) VALUES
(1, '#include <stdio.h>\r\n    int main()\r\n    {\r\n        int *ptr, a = 10;\r\n        ptr = &a;\r\n        *ptr += 1;\r\n        printf("%d,%d/n", *ptr, a);\r\n    }', '4'),
(2, 'Which type of files can’t be opened using fopen()?', '8'),
(3, 'What is the output of this C code?\r\n\r\n    #include <stdio.h>\r\n    int main()\r\n    {\r\n        j = 10;\r\n        printf("%d\\n", j++);\r\n        return 0;\r\n    }', '11'),
(4, 'An observer 1.6 m tall is 203 away from a tower. The angle of elevation from his 	eye to the top of the tower is 30º. The heights of the tower is:', '13'),
(5, 'What will be the output of the program?\r\n\r\n#include<stdio.h>\r\n#define MESS junk\r\n\r\nint main()\r\n{\r\n    printf("MESS\\n");\r\n    return 0;\r\n}', '18'),
(6, 'What will be the output of the program?\r\n\r\n#include<stdio.h>\r\nint main()\r\n{\r\n    int x=4, y, z;\r\n    y = --x;\r\n    z = x--;\r\n    printf("%d, %d, %d\\n", x, y, z);\r\n    return 0;\r\n}', '24'),
(7, 'what is the output of the program\r\n\r\n#include<stdio.h>\r\nint main()\r\n{\r\n    int x = 10, y = 20, z = 5, i;\r\n    i = x < y < z;\r\n    printf("%d\\n", i);\r\n    return 0;\r\n}', '28'),
(8, 'Which of the structure is incorrcet?\r\n1 : 	\r\n\r\nstruct aa\r\n{\r\n    int a;\r\n    float b;\r\n};\r\n\r\n2 : 	\r\n\r\nstruct aa\r\n{\r\n    int a;\r\n    float b;\r\n    struct aa var;\r\n};\r\n\r\n3 : 	\r\n\r\nstruct aa\r\n{\r\n    int a;\r\n    float b;\r\n    struct aa *var;\r\n};', '30'),
(9, 'The reflex angle between the hands of a clock at 10.25 is:', '36'),
(10, 'In how many different ways can the letters of the word ''DETAIL'' be arranged in 	such a way that the vowels occupy only the odd positions?', '39'),
(11, 'Find the next number in the the below series\r\n23, 38, 56, 77, _____.', '42'),
(12, 'Find the next number in the the below series\r\n18, 42, 67, 93, _____.', '48'),
(13, 'If 2 sin x + 3 sin y = 5, then cos x + 3 cos y = ?', '50'),
(14, 'A train travels from City X to City Y at a speed of 44 kmph, while on its return journey the train was\r\ntravelling at speed of 77 kmph. Find the average speed of the train.', '53'),
(15, 'What is the volume of a cube?\r\n\r\nI. The area of each face of the cube is 64 square metres.\r\n\r\nII. The length of one side of the cube is 8 metres.', '59'),
(16, 'What is the output of this C code?\r\n\r\n    #include <stdio.h>\r\n    void main()\r\n    {\r\n        int i = 0;\r\n        for (i = 0;i < 5; i++)\r\n            if (i < 4)\r\n            {\r\n                printf("Hello");\r\n                break;\r\n            }\r\n    }', '63'),
(17, 'Which three form part of correct array declarations?\r\n\r\n    public int a [ ]\r\n    static int [ ] a\r\n    public [ ] int a\r\n    private int a [3]\r\n    private int [3] a [ ]\r\n    public final int [ ] a\r\n', '67'),
(18, 'Which is a valid keyword in java?', '69'),
(19, '/* Missing Statement ? */\r\npublic class foo \r\n{\r\n    public static void main(String[]args)throws Exception \r\n    {\r\n        java.io.PrintWriter out = new java.io.PrintWriter(); \r\n        new java.io.OutputStreamWriter(System.out,true); \r\n        out.print', '73'),
(20, 'What will be the output of the program?\r\n\r\nclass Test \r\n{\r\n    public static void main(String [] args) \r\n    {\r\n        int x= 0;\r\n        int y= 0;\r\n        for (int z = 0; z < 5; z++) \r\n        {\r\n            if (( ++x > 2 ) && (++y > 2)) \r\n            ', '79'),
(21, 'In the following code, the P2 is Integer Pointer or Integer?\r\n\r\ntypedef int *ptr; ptr p1, p2;', '82'),
(22, 'What is the similarity between a structure, union and enumeration?', '86'),
(23, 'All of them let you define new structures', '89'),
(24, 'what is the fullform of html?', '94');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `roll_no` varchar(250) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `languages` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `username`, `roll_no`, `email`, `password`, `phone_no`, `languages`, `reason`) VALUES
(1, 'pcclub', '17DCO75', 'azamali.shaikh@gmail.com', '123456', '8286101918', 'ascsd', 'czcs'),
(2, 'Azam', '17DCO75', 'azamali.shaikh@gmail.com', '654321', '8286101918', 'nkz.', 'nKJxa'),
(3, 'Azam', '17DCO75', 'azamali.shaikh@gmail.com', '654321', '8286101918', 'nkz.', 'nKJxa'),
(4, 'Azam', '17DCO75', 'azamali.shaikh@gmail.com', '654321', '8286101918', 'XX', 'xx'),
(5, 'Azam Shaikh', '17DCO75', 'azamali.shaikh@gmail.com', '654321', '8286101918', 'xx', 'xx'),
(6, 'Azam Shaikh', '17DCO75', 'azamali.shaikh@gmail.com', '654321', '8286101918', 'xx', 'xx'),
(7, 'Azam Shaikh', '17DCO75', 'azamali.shaikh@gmail.com', '654321', '8286101918', 'xx', 'xx'),
(8, 'Azam Shaikh', '17DCO75', 'azamali.shaikh@gmail.com', '654321', '8286101918', 'xx', 'xx'),
(9, 'Azam Shaikh', '17DCO75', 'azamali.shaikh@gmail.com', '654321', '8286101918', 'xx', 'xx'),
(10, 'Azam Shaikh', '17DCO75', 'azamali.shaikh@gmail.com', '654321', '8286101918', 'xx', 'xx'),
(11, 'Azam Shaikh', '17DCO75', 'azamali.shaikh@gmail.com', '654321', '8286101918', 'xx', 'xx'),
(12, 'Azam Shaikh', '17DCO75', 'azamali.shaikh@gmail.com', '654321', '8286101918', 'cascas', 'zcasc'),
(13, 'Azam Shaikh', '17DCO75', 'azamali.shaikh@gmail.com', '654321', '8286101918', 'bibub', 'jnon'),
(14, 'Azam Shaikh', '17DCO75', 'azamali.shaikh@gmail.com', '456321', '8286101918', 'bibub', 'jnon'),
(15, 'Azam Shaikh', '17DCO75', 'azamali.shaikh@gmail.com', '456321', '8286101918', 'bibub', 'jnon'),
(16, 'Admin', '17DCO75', 'azamali.shaikh@gmail.com', '987654', '8286101918', 'jkcbasc', 'jcnkc'),
(17, 'Haris', '17DCO75', 'azamali.shaikh@gmail.com', '365214', '8286101918', 'jkcbasc', 'jcnkc'),
(18, 'Arman', '123654', 'ksameerk28@gmail.com', '415263', '8286101918', 'b,jh ', 'n nm '),
(19, 'Shoaib', '123654', 'azamali.shaikh@gmail.com', '123456', '8286101618', 'xkxbuix', 'xHlxjxi'),
(20, 'aanam', '16co06', 'aanam.mulla0105@gmail.com', 'pizza', '7506878871', 'c,java,python', 'maa ne boli');

-- --------------------------------------------------------

--
-- Table structure for table `user_answers`
--

CREATE TABLE IF NOT EXISTS `user_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `q_id` int(11) NOT NULL,
  `ans_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `correct_answer` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=116 ;

--
-- Dumping data for table `user_answers`
--

INSERT INTO `user_answers` (`id`, `q_id`, `ans_id`, `user_id`, `correct_answer`) VALUES
(1, 1, 2, 0, 0),
(2, 2, 6, 0, 0),
(3, 1, 2, 13, 0),
(4, 2, 6, 13, 0),
(5, 1, 2, 13, 0),
(6, 2, 6, 13, 0),
(7, 1, 2, 13, 0),
(8, 2, 6, 13, 0),
(9, 1, 2, 13, 0),
(10, 2, 6, 13, 0),
(11, 1, 2, 13, 0),
(12, 2, 6, 13, 0),
(13, 1, 2, 13, 0),
(14, 2, 6, 13, 0),
(15, 1, 2, 13, 0),
(16, 2, 6, 13, 0),
(17, 1, 2, 13, 0),
(18, 2, 6, 13, 0),
(19, 2, 5, 13, 0),
(20, 3, 9, 13, 0),
(21, 2, 5, 13, 0),
(22, 3, 9, 13, 0),
(23, 2, 5, 13, 0),
(24, 3, 9, 13, 0),
(25, 2, 5, 13, 0),
(26, 3, 9, 13, 0),
(27, 2, 5, 13, 0),
(28, 3, 9, 13, 0),
(29, 2, 5, 13, 0),
(30, 3, 9, 13, 0),
(31, 2, 5, 13, 0),
(32, 3, 9, 13, 0),
(33, 2, 5, 13, 0),
(34, 3, 9, 13, 0),
(35, 2, 5, 13, 0),
(36, 3, 9, 13, 0),
(37, 2, 6, 13, 0),
(38, 3, 9, 13, 0),
(39, 1, 1, 16, 0),
(40, 2, 7, 16, 0),
(41, 2, 6, 16, 0),
(42, 3, 10, 16, 0),
(43, 2, 6, 16, 0),
(44, 3, 10, 16, 0),
(45, 2, 6, 16, 0),
(46, 3, 10, 16, 0),
(47, 2, 6, 16, 0),
(48, 3, 10, 16, 0),
(49, 2, 6, 16, 0),
(50, 3, 10, 16, 0),
(51, 2, 6, 16, 0),
(52, 3, 10, 16, 0),
(53, 2, 5, 16, 0),
(54, 3, 10, 16, 0),
(55, 2, 5, 16, 0),
(56, 3, 10, 16, 0),
(57, 2, 5, 16, 0),
(58, 3, 10, 16, 0),
(59, 2, 5, 16, 0),
(60, 3, 10, 16, 0),
(61, 2, 5, 16, 0),
(62, 3, 10, 16, 0),
(63, 2, 5, 16, 0),
(64, 3, 10, 16, 0),
(65, 2, 8, 13, 1),
(66, 3, 11, 13, 1),
(67, 2, 8, 13, 0),
(68, 3, 11, 13, 1),
(69, 2, 8, 13, 0),
(70, 3, 11, 13, 1),
(71, 1, 1, 13, 0),
(72, 3, 12, 13, 0),
(73, 1, 4, 17, 1),
(74, 2, 8, 17, 1),
(75, 1, 4, 18, 0),
(76, 3, 11, 18, 1),
(77, 1, 4, 18, 1),
(78, 2, 8, 18, 1),
(79, 3, 11, 18, 0),
(80, 2, 8, 18, 0),
(81, 3, 11, 18, 1),
(82, 1, 4, 18, 1),
(83, 2, 8, 18, 1),
(84, 3, 11, 18, 1),
(85, 1, 3, 18, 0),
(86, 2, 7, 18, 0),
(87, 3, 11, 18, 1),
(88, 1, 4, 18, 1),
(89, 2, 8, 18, 1),
(90, 4, 13, 18, 1),
(91, 1, 4, 18, 1),
(92, 2, 8, 18, 1),
(93, 4, 13, 18, 1),
(94, 1, 4, 18, 1),
(95, 2, 8, 18, 1),
(96, 4, 13, 18, 1),
(97, 2, 8, 18, 1),
(98, 3, 11, 18, 1),
(99, 4, 13, 18, 0),
(100, 1, 4, 18, 1),
(101, 3, 11, 18, 1),
(102, 4, 16, 18, 0),
(103, 2, 8, 16, 1),
(104, 3, 11, 16, 1),
(105, 4, 13, 16, 1),
(106, 1, 4, 20, 1),
(107, 2, 8, 20, 1),
(108, 4, 13, 20, 1),
(109, 5, 18, 20, 1),
(110, 6, 22, 20, 0),
(111, 7, 28, 20, 0),
(112, 11, 42, 20, 1),
(113, 13, 51, 20, 0),
(114, 23, 89, 20, 1),
(115, 24, 94, 20, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
