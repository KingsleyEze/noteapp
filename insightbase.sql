-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2016 at 05:59 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `insightbase`
--

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `note_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`note_id`, `title`, `content`) VALUES
(1, 'inertia', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel velit vel ante pellentesque scelerisque. Ut maximus ante ac ornare dapibus. Nulla suscipit dui enim, nec malesuada sem placerat eu. Nulla luctus lacus fermentum venenatis facilisis. Donec risus libero, ornare in odio nec, semper volutpat lacus. Mauris pellentesque lobortis lacus at hendrerit. Quisque justo ipsum, finibus sed ex quis, laoreet imperdiet tellus.</p>\r\n\r\n<p>Nullam bibendum, sapien at tincidunt sagittis, metus quam tempor eros, ut interdum mi arcu sit amet velit. Integer eget elementum ex, ut facilisis velit. Aliquam non pellentesque ante, sit amet porta velit. Donec luctus augue sit amet libero blandit, a varius nisl condimentum. Nunc iaculis eget diam tincidunt vulputate. Nulla semper interdum urna nec facilisis. Suspendisse tempor, diam eget cursus dapibus, diam neque laoreet nisl, sit amet pulvinar ipsum lectus eget lorem. Sed nec porta est, sed tincidunt tellus.</p>\r\n\r\n<p>Duis non lectus ac leo molestie pharetra a in lectus. Nulla sed dapibus eros, id venenatis nulla. Nunc non nisi enim. Cras posuere elementum accumsan. Praesent non ipsum et lacus tempus tincidunt. Vestibulum ac velit consequat, ultrices lorem nec, elementum lorem. Ut dapibus consequat mauris, vitae tempor sapien iaculis at. Nam consectetur quam nisl, quis interdum elit aliquet in. Sed velit urna, maximus sed eros nec, scelerisque maximus neque. Phasellus dictum mauris urna, in posuere elit laoreet id. Nunc sagittis ipsum condimentum leo ullamcorper porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer sed augue condimentum, mattis sem eget, ultrices ex.</p>\r\n\r\n<p>Maecenas diam ligula, ullamcorper vel magna sed, dignissim tristique nibh. Cras arcu dolor, suscipit vitae consectetur nec, venenatis eu nibh. Donec tempus libero eu scelerisque venenatis. Nunc bibendum neque sit amet lobortis mattis. Duis blandit purus erat, at eleifend massa mollis quis. In placerat libero a faucibus fermentum. Vestibulum gravida sem eget dui fringilla porttitor. Fusce erat tortor, sagittis rutrum tempor eget, dapibus vitae urna.</p>\r\n\r\n<p>Cras a dictum eros, in fringilla ex. Proin libero nibh, sodales blandit nunc ac, suscipit semper dui. Donec euismod massa id fermentum iaculis. Vivamus vitae lobortis lectus, at pretium nulla. Mauris nisi tellus, accumsan a tellus sit amet, sollicitudin congue urna. Sed suscipit ex purus, eu malesuada neque ullamcorper non. Vestibulum scelerisque non ante vel volutpat. Nulla pretium pharetra diam, vel mattis metus elementum nec. Vestibulum blandit eget nisi gravida imperdiet. In non egestas risus. Nullam vel posuere nunc. Duis eu sapien congue, eleifend lectus in, mattis risus.</p>'),
(2, 'memo', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel velit vel ante pellentesque scelerisque. Ut maximus ante ac ornare dapibus. Nulla suscipit dui enim, nec malesuada sem placerat eu. Nulla luctus lacus fermentum venenatis facilisis. Donec risus libero, ornare in odio nec, semper volutpat lacus. Mauris pellentesque lobortis lacus at hendrerit. Quisque justo ipsum, finibus sed ex quis, laoreet imperdiet tellus.</p>\r\n\r\n<p>Nullam bibendum, sapien at tincidunt sagittis, metus quam tempor eros, ut interdum mi arcu sit amet velit. Integer eget elementum ex, ut facilisis velit. Aliquam non pellentesque ante, sit amet porta velit. Donec luctus augue sit amet libero blandit, a varius nisl condimentum. Nunc iaculis eget diam tincidunt vulputate. Nulla semper interdum urna nec facilisis. Suspendisse tempor, diam eget cursus dapibus, diam neque laoreet nisl, sit amet pulvinar ipsum lectus eget lorem. Sed nec porta est, sed tincidunt tellus.</p>\r\n\r\n<p>Duis non lectus ac leo molestie pharetra a in lectus. Nulla sed dapibus eros, id venenatis nulla. Nunc non nisi enim. Cras posuere elementum accumsan. Praesent non ipsum et lacus tempus tincidunt. Vestibulum ac velit consequat, ultrices lorem nec, elementum lorem. Ut dapibus consequat mauris, vitae tempor sapien iaculis at. Nam consectetur quam nisl, quis interdum elit aliquet in. Sed velit urna, maximus sed eros nec, scelerisque maximus neque. Phasellus dictum mauris urna, in posuere elit laoreet id. Nunc sagittis ipsum condimentum leo ullamcorper porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer sed augue condimentum, mattis sem eget, ultrices ex.</p>\r\n\r\n<p>Maecenas diam ligula, ullamcorper vel magna sed, dignissim tristique nibh. Cras arcu dolor, suscipit vitae consectetur nec, venenatis eu nibh. Donec tempus libero eu scelerisque venenatis. Nunc bibendum neque sit amet lobortis mattis. Duis blandit purus erat, at eleifend massa mollis quis. In placerat libero a faucibus fermentum. Vestibulum gravida sem eget dui fringilla porttitor. Fusce erat tortor, sagittis rutrum tempor eget, dapibus vitae urna.</p>\r\n\r\n<p>Cras a dictum eros, in fringilla ex. Proin libero nibh, sodales blandit nunc ac, suscipit semper dui. Donec euismod massa id fermentum iaculis. Vivamus vitae lobortis lectus, at pretium nulla. Mauris nisi tellus, accumsan a tellus sit amet, sollicitudin congue urna. Sed suscipit ex purus, eu malesuada neque ullamcorper non. Vestibulum scelerisque non ante vel volutpat. Nulla pretium pharetra diam, vel mattis metus elementum nec. Vestibulum blandit eget nisi gravida imperdiet. In non egestas risus. Nullam vel posuere nunc. Duis eu sapien congue, eleifend lectus in, mattis risus.</p>');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
