-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2024 at 10:26 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `dog_records`
--

CREATE TABLE `dog_records` (
  `dog_id` int(11) NOT NULL,
  `dog_name` varchar(100) NOT NULL,
  `dog_breed` varchar(100) NOT NULL,
  `dog_birthdate` date DEFAULT NULL,
  `dog_age` int(11) DEFAULT NULL,
  `dog_weight` decimal(5,2) DEFAULT NULL,
  `owner_name` varchar(100) DEFAULT NULL,
  `owner_phone` varchar(15) DEFAULT NULL,
  `vaccination_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dog_records`
--

INSERT INTO `dog_records` (`dog_id`, `dog_name`, `dog_breed`, `dog_birthdate`, `dog_age`, `dog_weight`, `owner_name`, `owner_phone`, `vaccination_status`) VALUES
(1, 'Buddy', 'Golden Retriever', '2020-05-15', 4, 30.50, 'John Doe', '555-1234', 'Up to date'),
(2, 'Max', 'Corgi', '2019-03-22', 5, 10.20, 'Jane Smith', '555-5678', 'Up to date'),
(3, 'Bella', 'Bulldog', '2021-01-10', 3, 22.00, 'Mike Johnson', '555-9012', 'Overdue'),
(4, 'Lucy', 'Pomeranian', '2020-08-30', 4, 4.50, 'Sarah Davis', '555-3456', 'Up to date'),
(5, 'Rex', 'German Shepherd', '2018-06-01', 6, 35.00, 'Tom Brown', '555-7890', 'Up to date'),
(6, 'Charlie', 'Beagle', '2019-11-12', 4, 12.30, 'Emily Wilson', '555-6543', 'Up to date'),
(7, 'Daisy', 'Poodle', '2020-02-19', 4, 8.00, 'David Lee', '555-0987', 'Overdue'),
(8, 'Rocky', 'Rottweiler', '2017-04-25', 7, 40.00, 'Anna Clark', '555-3210', 'Up to date'),
(9, 'Coco', 'Chow Chow', '2019-12-05', 4, 28.00, 'Robert Harris', '555-4321', 'Up to date'),
(10, 'Luna', 'Siberian Husky', '2021-07-18', 3, 25.50, 'Linda Martinez', '555-8765', 'Overdue'),
(11, 'Milo', 'Golden Retriever', '2019-10-22', 5, 32.00, 'Chris Lewis', '555-0981', 'Up to date'),
(12, 'Zoe', 'Corgi', '2022-02-05', 2, 9.00, 'Patricia Clark', '555-1122', 'Up to date'),
(13, 'Duke', 'Bulldog', '2020-09-14', 4, 24.50, 'Andrew King', '555-3344', 'Overdue'),
(14, 'Lola', 'Pomeranian', '2019-06-08', 5, 5.00, 'Jessica Walker', '555-5566', 'Up to date'),
(15, 'Shadow', 'German Shepherd', '2017-11-15', 6, 34.00, 'Peter Scott', '555-7788', 'Up to date'),
(16, 'Bailey', 'Beagle', '2021-03-27', 3, 13.10, 'Monica Young', '555-9900', 'Up to date'),
(17, 'Ruby', 'Poodle', '2022-05-19', 2, 7.80, 'Henry Adams', '555-2233', 'Overdue'),
(18, 'Zeus', 'Rottweiler', '2018-07-09', 6, 42.50, 'Nancy Carter', '555-3344', 'Up to date'),
(19, 'Bear', 'Chow Chow', '2021-10-30', 3, 27.50, 'Samuel Clark', '555-4455', 'Overdue'),
(20, 'Nova', 'Siberian Husky', '2019-08-07', 5, 26.20, 'Laura Hall', '555-6677', 'Up to date'),
(21, 'Oscar', 'Golden Retriever', '2021-04-11', 3, 29.40, 'Gary Thompson', '555-9988', 'Up to date'),
(22, 'Nala', 'Corgi', '2020-06-13', 4, 10.50, 'Olivia Parker', '555-7766', 'Up to date'),
(23, 'Chloe', 'Bulldog', '2018-02-01', 6, 23.80, 'Sophia Roberts', '555-3345', 'Overdue'),
(24, 'Bruno', 'Pomeranian', '2022-01-15', 2, 4.30, 'Benjamin Turner', '555-2234', 'Up to date'),
(25, 'Apollo', 'German Shepherd', '2019-03-03', 5, 36.20, 'Ella Martinez', '555-1123', 'Up to date'),
(26, 'Leo', 'Beagle', '2020-09-08', 4, 11.80, 'Liam Walker', '555-4432', 'Up to date'),
(27, 'Lily', 'Poodle', '2017-12-25', 6, 8.40, 'James Hughes', '555-6655', 'Overdue'),
(28, 'Toby', 'Rottweiler', '2021-06-21', 3, 41.10, 'Evelyn Perez', '555-8877', 'Up to date'),
(29, 'Molly', 'Chow Chow', '2020-11-07', 4, 28.40, 'Lucas Allen', '555-2211', 'Overdue'),
(30, 'Koda', 'Siberian Husky', '2021-03-15', 3, 24.80, 'Amelia Evans', '555-9987', 'Up to date'),
(31, 'Finn', 'Golden Retriever', '2018-10-20', 6, 33.90, 'Ethan Morris', '555-7765', 'Up to date'),
(32, 'Penny', 'Corgi', '2021-05-12', 3, 9.20, 'Chloe Young', '555-1133', 'Up to date'),
(33, 'Rocco', 'Bulldog', '2020-04-19', 4, 22.70, 'Mason Scott', '555-5567', 'Overdue'),
(34, 'Hazel', 'Pomeranian', '2019-09-01', 5, 4.80, 'Layla Green', '555-7789', 'Up to date'),
(35, 'Ranger', 'German Shepherd', '2017-01-15', 7, 35.60, 'Oliver Lopez', '555-9901', 'Up to date'),
(36, 'Bentley', 'Beagle', '2019-08-14', 5, 12.40, 'Aiden Hill', '555-3346', 'Up to date'),
(37, 'Rosie', 'Poodle', '2020-02-28', 4, 8.30, 'Harper Adams', '555-6678', 'Overdue'),
(38, 'Tank', 'Rottweiler', '2019-11-06', 5, 39.50, 'Isabella Brooks', '555-4431', 'Up to date'),
(39, 'Biscuit', 'Chow Chow', '2021-12-17', 2, 26.70, 'Sebastian Cook', '555-5568', 'Up to date'),
(40, 'Scout', 'Siberian Husky', '2018-07-19', 6, 27.10, 'Zoe Sanders', '555-2235', 'Overdue'),
(41, 'Ziggy', 'Golden Retriever', '2020-03-11', 4, 31.50, 'Grace Cooper', '555-9989', 'Up to date'),
(42, 'Ginger', 'Corgi', '2019-04-26', 5, 10.00, 'Caleb Stewart', '555-7768', 'Up to date'),
(43, 'Diesel', 'Bulldog', '2021-08-02', 3, 24.10, 'Hannah Rivera', '555-1124', 'Overdue'),
(44, 'Ellie', 'Pomeranian', '2020-09-23', 4, 4.60, 'Emily Bailey', '555-4433', 'Up to date'),
(45, 'Thor', 'German Shepherd', '2019-05-30', 5, 34.50, 'Carter Nelson', '555-6656', 'Up to date'),
(46, 'Winston', 'Beagle', '2018-01-09', 6, 13.20, 'Mila Reed', '555-8879', 'Up to date'),
(47, 'Cleo', 'Poodle', '2021-07-27', 3, 7.70, 'Jackson Bell', '555-3347', 'Overdue'),
(48, 'Brutus', 'Rottweiler', '2017-03-13', 7, 43.20, 'Lily James', '555-5569', 'Up to date'),
(49, 'Simba', 'Chow Chow', '2020-08-24', 4, 27.80, 'Levi Bennett', '555-2212', 'Overdue'),
(50, 'Jax', 'Siberian Husky', '2019-02-10', 5, 25.70, 'Isaac Jenkins', '555-1125', 'Up to date'),
(51, 'Max', 'Golden Retriever', NULL, 4, 32.50, 'John Doe', '555-1234', 'Up-to-date'),
(52, 'Bella', 'Corgi', NULL, 2, 12.00, 'Jane Smith', '555-5678', 'Up-to-date'),
(53, 'Charlie', 'Bulldog', NULL, 3, 24.50, 'Sam Johnson', '555-8765', 'Expired'),
(54, 'Daisy', 'Pomeranian', NULL, 1, 6.20, 'Laura Brown', '555-3456', 'Up-to-date'),
(55, 'Rocky', 'German Shepherd', NULL, 5, 35.00, 'Mark White', '555-2345', 'Up-to-date'),
(56, 'Molly', 'Beagle', NULL, 6, 10.00, 'Paul Harris', '555-8769', 'Up-to-date'),
(57, 'Buddy', 'Poodle', NULL, 3, 18.50, 'David Lee', '555-2341', 'Expired'),
(58, 'Luna', 'Rottweiler', NULL, 4, 42.00, 'Sara Clark', '555-3459', 'Up-to-date'),
(59, 'Lucy', 'Chow Chow', NULL, 2, 25.00, 'Nancy Moore', '555-1237', 'Up-to-date'),
(60, 'Cooper', 'Siberian Husky', NULL, 3, 28.00, 'Kevin Garcia', '555-7654', 'Expired'),
(61, 'Jack', 'Golden Retriever', NULL, 2, 31.00, 'Emma Lopez', '555-8762', 'Up-to-date'),
(62, 'Zoey', 'Corgi', NULL, 3, 13.00, 'Oliver Adams', '555-2347', 'Expired'),
(63, 'Bailey', 'Bulldog', NULL, 4, 23.00, 'Chloe Turner', '555-1238', 'Up-to-date'),
(64, 'Duke', 'Pomeranian', NULL, 1, 5.80, 'Ava Walker', '555-7659', 'Expired'),
(65, 'Harley', 'German Shepherd', NULL, 5, 38.00, 'Ethan Wright', '555-6543', 'Up-to-date'),
(66, 'Nala', 'Beagle', NULL, 3, 9.50, 'Mia Hall', '555-5672', 'Up-to-date'),
(67, 'Rosie', 'Poodle', NULL, 4, 16.20, 'Noah Allen', '555-3452', 'Expired'),
(68, 'Roxy', 'Rottweiler', NULL, 6, 44.00, 'Sophia King', '555-9876', 'Up-to-date'),
(69, 'Toby', 'Chow Chow', NULL, 2, 26.50, 'Liam Scott', '555-5432', 'Up-to-date'),
(70, 'Lilly', 'Siberian Husky', NULL, 5, 29.00, 'Isabella Young', '555-6789', 'Expired'),
(71, 'Oliver', 'Golden Retriever', NULL, 2, 33.00, 'James Martinez', '555-5671', 'Up-to-date'),
(72, 'Riley', 'Corgi', NULL, 4, 13.80, 'Ella Baker', '555-2349', 'Expired'),
(73, 'Sophie', 'Bulldog', NULL, 3, 22.00, 'Lucas Carter', '555-3219', 'Up-to-date'),
(74, 'Buster', 'Pomeranian', NULL, 5, 7.00, 'Lily Davis', '555-6785', 'Expired'),
(75, 'Marley', 'German Shepherd', NULL, 2, 36.00, 'Benjamin Reed', '555-1236', 'Up-to-date'),
(76, 'Lola', 'Beagle', NULL, 6, 11.00, 'Amelia Gray', '555-4321', 'Up-to-date'),
(77, 'Bear', 'Poodle', NULL, 4, 19.00, 'Jacob Murphy', '555-7891', 'Expired'),
(78, 'Ellie', 'Rottweiler', NULL, 3, 43.00, 'Aiden Price', '555-8761', 'Up-to-date'),
(79, 'Benny', 'Chow Chow', NULL, 1, 24.00, 'Emily Rivera', '555-6783', 'Expired'),
(80, 'Oscar', 'Siberian Husky', NULL, 5, 31.00, 'Matthew Perry', '555-4325', 'Up-to-date'),
(81, 'Ruby', 'Golden Retriever', NULL, 6, 34.00, 'Charlotte Phillips', '555-9873', 'Up-to-date'),
(82, 'Milo', 'Corgi', NULL, 1, 11.80, 'Henry Bell', '555-2343', 'Expired'),
(83, 'Stella', 'Bulldog', NULL, 4, 23.50, 'Victoria Wood', '555-4324', 'Up-to-date'),
(84, 'Zeus', 'Pomeranian', NULL, 2, 7.50, 'Sebastian Cooper', '555-9872', 'Expired'),
(85, 'Ginger', 'German Shepherd', NULL, 3, 37.50, 'Jackson Ross', '555-3453', 'Up-to-date'),
(86, 'Teddy', 'Beagle', NULL, 2, 10.50, 'Mason Ward', '555-7651', 'Up-to-date'),
(87, 'Bentley', 'Poodle', NULL, 5, 20.00, 'Carter Brooks', '555-5673', 'Expired'),
(88, 'Izzy', 'Rottweiler', NULL, 4, 45.00, 'Dylan Torres', '555-5439', 'Up-to-date'),
(89, 'Coco', 'Chow Chow', NULL, 3, 26.00, 'Grace Jenkins', '555-1235', 'Expired'),
(90, 'Shadow', 'Siberian Husky', NULL, 6, 32.00, 'Owen Turner', '555-6787', 'Up-to-date'),
(91, 'Rex', 'Golden Retriever', NULL, 2, 30.50, 'Harper James', '555-9871', 'Up-to-date'),
(92, 'Sadie', 'Corgi', NULL, 4, 14.00, 'Zoe Bennett', '555-9878', 'Expired'),
(93, 'Finn', 'Bulldog', NULL, 1, 21.00, 'Hannah Collins', '555-4326', 'Up-to-date'),
(94, 'Diesel', 'Pomeranian', NULL, 3, 6.50, 'Maya Green', '555-6547', 'Expired'),
(95, 'Chloe', 'German Shepherd', NULL, 5, 39.00, 'Luke Ramirez', '555-2342', 'Up-to-date'),
(96, 'Jasper', 'Beagle', NULL, 6, 11.50, 'Landon Powell', '555-6546', 'Up-to-date'),
(97, 'Penny', 'Poodle', NULL, 2, 17.00, 'Olivia Howard', '555-1239', 'Expired'),
(98, 'Apollo', 'Rottweiler', NULL, 5, 43.50, 'Wyatt Long', '555-8768', 'Up-to-date'),
(99, 'Sammy', 'Chow Chow', NULL, 4, 25.00, 'Nathan Bryant', '555-3451', 'Expired'),
(100, 'Bruno', 'Siberian Husky', NULL, 3, 30.00, 'Levi Mitchell', '555-5437', 'Up-to-date'),
(101, 'Archie', 'Golden Retriever', NULL, 3, 34.00, 'William Parker', '555-4328', 'Up-to-date'),
(102, 'Hazel', 'Corgi', NULL, 2, 12.50, 'Sophia Kelly', '555-7657', 'Expired'),
(103, 'Rufus', 'Bulldog', NULL, 4, 22.80, 'Aubrey James', '555-5435', 'Up-to-date'),
(104, 'Nina', 'Pomeranian', NULL, 5, 6.00, 'Abigail Walker', '555-9879', 'Up-to-date'),
(105, 'Gus', 'German Shepherd', NULL, 6, 36.00, 'Henry Martinez', '555-1233', 'Expired'),
(106, 'Sasha', 'Beagle', NULL, 4, 9.80, 'Olivia Sanders', '555-6542', 'Up-to-date'),
(107, 'Oscar', 'Poodle', NULL, 3, 17.50, 'Noah Long', '555-7655', 'Expired'),
(108, 'Bruno', 'Rottweiler', NULL, 5, 46.00, 'Emily Allen', '555-4327', 'Up-to-date'),
(109, 'Lily', 'Chow Chow', NULL, 2, 23.00, 'Daniel Ross', '555-5436', 'Expired'),
(110, 'Toby', 'Siberian Husky', NULL, 4, 31.50, 'Jack Stewart', '555-8767', 'Up-to-date'),
(111, 'Chester', 'Golden Retriever', NULL, 2, 32.00, 'Sophia Bennett', '555-9874', 'Up-to-date'),
(112, 'Izzy', 'Corgi', NULL, 1, 11.50, 'Victoria Fisher', '555-3457', 'Expired'),
(113, 'Ranger', 'Bulldog', NULL, 3, 21.50, 'Samuel Lee', '555-1232', 'Up-to-date'),
(114, 'Zoey', 'Pomeranian', NULL, 4, 6.50, 'Leah Rivera', '555-8764', 'Up-to-date'),
(115, 'Harley', 'German Shepherd', NULL, 5, 38.50, 'Jaxon Cooper', '555-5438', 'Up-to-date'),
(116, 'Milo', 'Beagle', NULL, 6, 10.80, 'Emma Morgan', '555-6544', 'Expired'),
(117, 'Buddy', 'Poodle', NULL, 2, 18.20, 'Isaac Harris', '555-8766', 'Up-to-date'),
(118, 'Baxter', 'Rottweiler', NULL, 3, 44.00, 'Ava Hill', '555-6545', 'Expired'),
(119, 'Roxy', 'Chow Chow', NULL, 5, 24.50, 'Charlotte Turner', '555-4329', 'Up-to-date'),
(120, 'Shadow', 'Siberian Husky', NULL, 6, 33.00, 'Oliver Torres', '555-9875', 'Up-to-date'),
(121, 'Duke', 'Golden Retriever', NULL, 4, 35.00, 'Liam Carter', '555-9870', 'Up-to-date'),
(122, 'Winnie', 'Corgi', NULL, 2, 12.20, 'Ella Young', '555-7658', 'Expired'),
(123, 'Leo', 'Bulldog', NULL, 5, 23.00, 'Ethan Thompson', '555-2344', 'Up-to-date'),
(124, 'Bella', 'Pomeranian', NULL, 1, 5.50, 'Benjamin Wood', '555-6549', 'Up-to-date'),
(125, 'Max', 'German Shepherd', NULL, 3, 37.00, 'Isabella Moore', '555-8760', 'Expired'),
(126, 'Ollie', 'Beagle', NULL, 6, 10.00, 'Gabriel Flores', '555-1231', 'Up-to-date'),
(127, 'Finn', 'Poodle', NULL, 4, 16.50, 'Lucas Brooks', '555-9877', 'Up-to-date'),
(128, 'Teddy', 'Rottweiler', NULL, 5, 41.00, 'Michael King', '555-6548', 'Expired'),
(129, 'Maddie', 'Chow Chow', NULL, 3, 25.50, 'Zoe Rivera', '555-9872', 'Up-to-date'),
(130, 'Thor', 'Siberian Husky', NULL, 4, 30.50, 'Elijah Stewart', '555-1230', 'Up-to-date'),
(131, 'Scout', 'Golden Retriever', NULL, 2, 33.50, 'Matthew Perry', '555-4323', 'Up-to-date'),
(132, 'Luna', 'Corgi', NULL, 4, 13.00, 'David Reed', '555-1234', 'Expired'),
(133, 'Ace', 'Bulldog', NULL, 3, 21.00, 'Joshua James', '555-7650', 'Up-to-date'),
(134, 'Mia', 'Pomeranian', NULL, 2, 6.00, 'Alexander Mitchell', '555-8763', 'Up-to-date'),
(135, 'Zeus', 'German Shepherd', NULL, 5, 40.00, 'Ryan Phillips', '555-2346', 'Up-to-date'),
(136, 'Sammy', 'Beagle', NULL, 1, 9.00, 'Sophia Robinson', '555-7653', 'Expired'),
(137, 'Buster', 'Poodle', NULL, 4, 19.00, 'Grace Parker', '555-9876', 'Up-to-date'),
(138, 'Apollo', 'Rottweiler', NULL, 2, 43.50, 'Isabella Hernandez', '555-8769', 'Expired'),
(139, 'Ruby', 'Chow Chow', NULL, 6, 27.00, 'Jack Torres', '555-7656', 'Up-to-date'),
(140, 'Rex', 'Siberian Husky', NULL, 3, 31.00, 'Aiden Long', '555-6541', 'Up-to-date'),
(141, 'Chico', 'Golden Retriever', NULL, 1, 30.50, 'James Bailey', '555-9879', 'Expired'),
(142, 'Benny', 'Corgi', NULL, 5, 14.50, 'Ella Brown', '555-4322', 'Up-to-date'),
(143, 'Hazel', 'Bulldog', NULL, 6, 24.00, 'Sebastian Scott', '555-5433', 'Up-to-date'),
(144, 'Molly', 'Pomeranian', NULL, 3, 6.20, 'Evelyn Carter', '555-8768', 'Expired'),
(145, 'Rocky', 'German Shepherd', NULL, 2, 36.00, 'Owen White', '555-1235', 'Up-to-date'),
(146, 'Ellie', 'Beagle', NULL, 5, 10.50, 'Samuel Brooks', '555-7652', 'Expired'),
(147, 'Bailey', 'Poodle', NULL, 4, 18.00, 'Amelia Evans', '555-4321', 'Up-to-date'),
(148, 'Hunter', 'Rottweiler', NULL, 6, 45.00, 'Wyatt Rogers', '555-7659', 'Expired'),
(149, 'Daisy', 'Chow Chow', NULL, 2, 24.00, 'Zoe Scott', '555-9878', 'Up-to-date'),
(150, 'Simba', 'Siberian Husky', NULL, 4, 32.50, 'Liam Cooper', '555-1239', 'Up-to-date'),
(151, 'Cody', 'Golden Retriever', NULL, 3, 33.00, 'John Edwards', '555-1237', 'Up-to-date'),
(152, 'Lola', 'Corgi', NULL, 4, 13.50, 'Jane Simmons', '555-4567', 'Expired'),
(153, 'Chloe', 'Bulldog', NULL, 2, 22.00, 'Mary Brown', '555-7890', 'Up-to-date'),
(154, 'Diesel', 'Pomeranian', NULL, 5, 6.50, 'Harry Jenkins', '555-2345', 'Expired'),
(155, 'Simba', 'German Shepherd', NULL, 6, 37.50, 'Victoria Lopez', '555-3456', 'Up-to-date'),
(156, 'Abby', 'Beagle', NULL, 4, 9.50, 'Martin Flores', '555-5678', 'Expired'),
(157, 'Max', 'Poodle', NULL, 3, 17.80, 'Daniel Johnson', '555-8901', 'Up-to-date'),
(158, 'Zeus', 'Rottweiler', NULL, 6, 47.00, 'George King', '555-9876', 'Up-to-date'),
(159, 'Cleo', 'Chow Chow', NULL, 4, 24.50, 'Rebecca Mitchell', '555-8765', 'Expired'),
(160, 'Jack', 'Siberian Husky', NULL, 5, 30.00, 'Amanda Peters', '555-3458', 'Up-to-date'),
(161, 'Milo', 'Golden Retriever', NULL, 2, 32.00, 'Ethan Garcia', '555-8767', 'Up-to-date'),
(162, 'Sadie', 'Corgi', NULL, 3, 12.80, 'Matthew Adams', '555-1236', 'Expired'),
(163, 'Bruno', 'Bulldog', NULL, 5, 23.50, 'Liam Baker', '555-9872', 'Up-to-date'),
(164, 'Bella', 'Pomeranian', NULL, 1, 5.80, 'Michael Harris', '555-7654', 'Expired'),
(165, 'Sparky', 'German Shepherd', NULL, 3, 38.20, 'Lucas Young', '555-1239', 'Up-to-date'),
(166, 'Buddy', 'Beagle', NULL, 4, 10.20, 'Evan Hall', '555-7655', 'Up-to-date'),
(167, 'Charlie', 'Poodle', NULL, 2, 18.30, 'Olivia Wright', '555-5432', 'Expired'),
(168, 'Rocky', 'Rottweiler', NULL, 4, 44.00, 'Henry Stewart', '555-4323', 'Up-to-date'),
(169, 'Luna', 'Chow Chow', NULL, 6, 25.00, 'Hannah Walker', '555-3210', 'Expired'),
(170, 'Tiger', 'Siberian Husky', NULL, 3, 31.00, 'Aiden Torres', '555-6547', 'Up-to-date'),
(171, 'Duke', 'Golden Retriever', NULL, 1, 30.00, 'Mia Evans', '555-3455', 'Up-to-date'),
(172, 'Nala', 'Corgi', NULL, 2, 11.70, 'William Scott', '555-9874', 'Expired'),
(173, 'Beau', 'Bulldog', NULL, 3, 21.90, 'Lucas Rodriguez', '555-5437', 'Up-to-date'),
(174, 'Zara', 'Pomeranian', NULL, 4, 6.20, 'Sophia Bennett', '555-9875', 'Expired'),
(175, 'Shadow', 'German Shepherd', NULL, 5, 39.00, 'Isaac Rivera', '555-8769', 'Up-to-date'),
(176, 'Rusty', 'Beagle', NULL, 2, 9.70, 'Mason Phillips', '555-1238', 'Up-to-date'),
(177, 'Zoe', 'Poodle', NULL, 6, 17.50, 'Ella Hughes', '555-6543', 'Expired'),
(178, 'Apollo', 'Rottweiler', NULL, 1, 42.80, 'Benjamin Lopez', '555-7657', 'Up-to-date'),
(179, 'Kobe', 'Chow Chow', NULL, 5, 26.00, 'Emily Long', '555-8760', 'Expired'),
(180, 'Jake', 'Siberian Husky', NULL, 6, 33.20, 'Grace Coleman', '555-9870', 'Up-to-date'),
(181, 'Murphy', 'Golden Retriever', NULL, 4, 34.00, 'Owen Fisher', '555-6549', 'Up-to-date'),
(182, 'Olive', 'Corgi', NULL, 5, 13.00, 'Isabella Cooper', '555-5435', 'Expired'),
(183, 'Leo', 'Bulldog', NULL, 3, 20.80, 'Mia Collins', '555-7659', 'Up-to-date'),
(184, 'Maggie', 'Pomeranian', NULL, 2, 6.00, 'Noah Brooks', '555-4324', 'Expired'),
(185, 'Thor', 'German Shepherd', NULL, 4, 37.90, 'Ella Barnes', '555-9871', 'Up-to-date'),
(186, 'Ace', 'Beagle', NULL, 6, 9.20, 'Sophia Rogers', '555-1233', 'Up-to-date'),
(187, 'Ruby', 'Poodle', NULL, 1, 19.20, 'Jacob Sanders', '555-3459', 'Expired'),
(188, 'Daisy', 'Rottweiler', NULL, 2, 41.50, 'Harper Perry', '555-9877', 'Up-to-date'),
(189, 'Samson', 'Chow Chow', NULL, 3, 24.80, 'Charlotte Butler', '555-6545', 'Expired'),
(190, 'Blue', 'Siberian Husky', NULL, 5, 32.50, 'James Parker', '555-8768', 'Up-to-date'),
(191, 'Benny', 'Golden Retriever', NULL, 2, 30.70, 'Liam Reed', '555-8764', 'Up-to-date'),
(192, 'Roxy', 'Corgi', NULL, 3, 12.00, 'Lucas Jenkins', '555-9873', 'Expired'),
(193, 'Clyde', 'Bulldog', NULL, 6, 24.20, 'Henry Cruz', '555-4328', 'Up-to-date'),
(194, 'Nina', 'Pomeranian', NULL, 4, 5.60, 'William Ward', '555-7658', 'Expired'),
(195, 'Cooper', 'German Shepherd', NULL, 5, 38.50, 'Alexander Gonzalez', '555-5436', 'Up-to-date'),
(196, 'Archie', 'Beagle', NULL, 1, 9.50, 'Levi Murphy', '555-7652', 'Up-to-date'),
(197, 'Duke', 'Poodle', NULL, 4, 17.90, 'Olivia Flores', '555-8765', 'Expired'),
(198, 'Bruno', 'Rottweiler', NULL, 5, 44.30, 'Sophia Bell', '555-9878', 'Up-to-date'),
(199, 'Milo', 'Chow Chow', NULL, 2, 23.70, 'David Cox', '555-6541', 'Expired'),
(200, 'Max', 'Siberian Husky', NULL, 6, 34.50, 'Benjamin Foster', '555-4321', 'Up-to-date'),
(201, 'Ginger', 'Golden Retriever', NULL, 3, 31.90, 'Noah Jenkins', '555-1236', 'Up-to-date'),
(202, 'Bella', 'Corgi', NULL, 5, 14.00, 'Victoria Martin', '555-9879', 'Expired'),
(203, 'Ollie', 'Bulldog', NULL, 2, 21.30, 'Grace Russell', '555-6547', 'Up-to-date'),
(204, 'Nellie', 'Pomeranian', NULL, 1, 5.90, 'Jackson Cox', '555-8763', 'Expired'),
(205, 'Storm', 'German Shepherd', NULL, 6, 36.50, 'Oliver Ramirez', '555-9872', 'Up-to-date'),
(206, 'Scout', 'Beagle', NULL, 3, 10.10, 'Ethan Griffin', '555-7653', 'Up-to-date'),
(207, 'Ellie', 'Poodle', NULL, 4, 18.10, 'Emily Ross', '555-4329', 'Expired'),
(208, 'Hunter', 'Rottweiler', NULL, 1, 43.20, 'Mason Roberts', '555-9870', 'Up-to-date'),
(209, 'Bailey', 'Chow Chow', NULL, 6, 24.60, 'Ella Torres', '555-1230', 'Expired'),
(210, 'Diesel', 'Siberian Husky', NULL, 4, 31.80, 'Daniel Hughes', '555-8767', 'Up-to-date'),
(211, 'Rocky', 'Golden Retriever', NULL, 5, 35.00, 'Samuel Cook', '555-6542', 'Up-to-date'),
(212, 'Daisy', 'Corgi', NULL, 3, 13.20, 'James Anderson', '555-9876', 'Expired'),
(213, 'Charlie', 'Bulldog', NULL, 4, 22.70, 'Sophia Perry', '555-7651', 'Up-to-date'),
(214, 'Ruby', 'Pomeranian', NULL, 2, 6.40, 'Leah Reed', '555-9874', 'Expired'),
(215, 'Diesel', 'German Shepherd', NULL, 5, 37.40, 'Mason Mitchell', '555-5431', 'Up-to-date');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dog_records`
--
ALTER TABLE `dog_records`
  ADD PRIMARY KEY (`dog_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dog_records`
--
ALTER TABLE `dog_records`
  MODIFY `dog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
