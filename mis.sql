-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2022 at 10:46 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mis`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `room_id` int(10) NOT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `check_in` varchar(100) DEFAULT NULL,
  `check_out` varchar(100) NOT NULL,
  `total_price` int(10) NOT NULL,
  `remaining_price` int(10) NOT NULL,
  `payment_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `customer_id`, `room_id`, `booking_date`, `check_in`, `check_out`, `total_price`, `remaining_price`, `payment_status`) VALUES
(1, 1, 5, '2017-11-13 05:45:17', '13-11-2017', '15-11-2017', 3000, 0, 1),
(2, 2, 2, '2017-11-13 05:46:04', '13-11-2017', '16-11-2017', 6000, 0, 1),
(3, 3, 2, '2017-11-11 06:49:19', '11-11-2017', '14-11-2017', 6000, 6000, 0),
(4, 4, 7, '2017-11-09 06:50:24', '11-11-2017', '15-11-2017', 10000, 10000, 0),
(5, 5, 13, '2017-11-17 06:59:10', '17-11-2017', '20-11-2017', 12000, 0, 1),
(6, 6, 9, '2022-11-20 07:26:51', '02/04/2001', '03/04/2001', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `complainant_name` varchar(100) NOT NULL,
  `complaint_type` varchar(100) NOT NULL,
  `complaint` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `resolve_status` tinyint(1) NOT NULL,
  `resolve_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `budget` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`id`, `complainant_name`, `complaint_type`, `complaint`, `created_at`, `resolve_status`, `resolve_date`, `budget`) VALUES
(1, 'Ravi Kumar Patel', 'Room Windows', 'Room Windows', '2017-11-13 06:51:24', 1, '2017-11-15 06:51:58', 1000),
(2, 'Uday Kumar', 'Light', 'Light', '2017-11-13 06:51:44', 1, '2017-11-18 07:06:02', 10000),
(3, 'Rajeev Kumar Singh', 'Water', 'Water Crisis on Bathroom', '2017-11-17 07:01:17', 1, '2017-11-18 07:01:52', 1500),
(4, 'Aniket Raj', 'Water', 'Water in boooooo', '2017-11-18 07:05:49', 0, '2017-11-18 07:05:49', NULL),
(5, 'a', 'a', 'a', '2022-11-20 08:00:53', 0, '2022-11-20 08:00:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_card_type_id` int(10) NOT NULL,
  `id_card_no` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `contact_no`, `email`, `id_card_type_id`, `id_card_no`, `address`) VALUES
(1, 'Ravi Kumar Patel', 8775566122, '201452019@iiitvadodara.ac.in', 1, '422510099122', 'Ahmedabad'),
(2, 'Aniket Raj', 9887778878, '201452042@iiitvadodara.ac.in', 2, '422510099122', 'Ahmedabad'),
(3, 'Sunny Sunny', 9887665441, 'ajitkumarjain123@gmail.com', 1, '422510099122', 'Jaipur'),
(4, 'Uday  Kumar', 9888755544, '201452018@iiitvadoara.ac.in', 3, '0', 'Gujarat'),
(5, 'Prem Chand Saini', 9887554425, 'premchandsaini779@gmail.com', 1, '422510099122', 'Ahmedabad'),
(6, 'a a', 1111111111, 'a@gmail.com', 1, '1231231231231', 'aaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `emp_history`
--

CREATE TABLE `emp_history` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `from_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `to_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_history`
--

INSERT INTO `emp_history` (`id`, `emp_id`, `shift_id`, `from_date`, `to_date`, `created_at`) VALUES
(1, 1, 1, '2017-11-13 05:39:06', '2017-11-15 02:22:26', '2017-11-13 05:39:06'),
(2, 2, 3, '2017-11-13 05:39:39', '2017-11-15 02:22:43', '2017-11-13 05:39:39'),
(3, 3, 1, '2017-11-13 05:40:18', '2017-11-15 02:22:49', '2017-11-13 05:40:18'),
(4, 4, 1, '2017-11-13 05:40:56', '2017-11-15 02:22:35', '2017-11-13 05:40:56'),
(5, 5, 1, '2017-11-13 05:41:31', NULL, '2017-11-13 05:41:31'),
(6, 6, 3, '2017-11-13 05:42:03', NULL, '2017-11-13 05:42:03'),
(7, 7, 4, '2017-11-13 05:42:35', '2017-11-18 02:35:02', '2017-11-13 05:42:35'),
(8, 8, 3, '2017-11-13 05:43:13', '2017-11-18 02:32:26', '2017-11-13 05:43:13'),
(9, 9, 2, '2017-11-13 05:43:49', NULL, '2017-11-13 05:43:49'),
(10, 10, 1, '2017-11-13 06:30:45', '2017-11-18 02:34:28', '2017-11-13 06:30:45'),
(11, 1, 2, '2017-11-15 06:52:26', '2017-11-17 02:23:05', '2017-11-15 06:52:26'),
(12, 4, 3, '2017-11-15 06:52:35', NULL, '2017-11-15 06:52:35'),
(13, 2, 3, '2017-11-15 06:52:43', NULL, '2017-11-15 06:52:43'),
(14, 3, 3, '2017-11-15 06:52:49', NULL, '2017-11-15 06:52:49'),
(15, 1, 3, '2017-11-17 06:53:05', NULL, '2017-11-17 06:53:05'),
(16, 8, 1, '2017-11-18 07:02:26', NULL, '2017-11-18 07:02:26'),
(17, 11, 2, '2017-11-18 07:04:03', NULL, '2017-11-18 07:04:03'),
(18, 10, 2, '2017-11-18 07:04:28', NULL, '2017-11-18 07:04:28'),
(19, 7, 2, '2017-11-18 07:05:02', NULL, '2017-11-18 07:05:02');

-- --------------------------------------------------------

--
-- Table structure for table `id_card_type`
--

CREATE TABLE `id_card_type` (
  `id_card_type_id` int(10) NOT NULL,
  `id_card_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `id_card_type`
--

INSERT INTO `id_card_type` (`id_card_type_id`, `id_card_type`) VALUES
(1, 'Aadhar Card'),
(2, 'Voter Id Card'),
(3, 'Pan Card'),
(4, 'Driving License');

-- --------------------------------------------------------

--
-- Table structure for table `oder_service`
--

CREATE TABLE `oder_service` (
  `id_oder_service` int(11) NOT NULL,
  `room_id` int(10) NOT NULL,
  `id_service` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(10) NOT NULL,
  `room_type_id` int(10) NOT NULL,
  `room_no` varchar(10) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `check_in_status` tinyint(1) NOT NULL,
  `check_out_status` tinyint(1) NOT NULL,
  `deleteStatus` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_type_id`, `room_no`, `status`, `check_in_status`, `check_out_status`, `deleteStatus`) VALUES
(1, 2, 'A-101', NULL, 0, 0, 1),
(2, 2, 'A-102', 1, 1, 1, 0),
(3, 3, 'A-103', NULL, 0, 0, 0),
(4, 4, 'A-104', NULL, 0, 0, 0),
(5, 2, 'B-101', NULL, 0, 1, 0),
(6, 1, 'B-102', NULL, 0, 0, 0),
(7, 3, 'B-103', 1, 0, 0, 0),
(8, 4, 'B-104', NULL, 0, 0, 0),
(9, 2, 'C-101', 1, 0, 0, 0),
(10, 2, 'C-102', NULL, 0, 0, 0),
(11, 3, 'C-103', NULL, 0, 0, 0),
(12, 4, 'C-104', NULL, 0, 0, 0),
(13, 4, 'D-101', NULL, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `room_type_id` int(10) NOT NULL,
  `room_type` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `max_person` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_type_id`, `room_type`, `price`, `max_person`) VALUES
(1, 'Single', 1000, 1),
(2, 'Double', 1500, 2),
(3, 'Triple', 2000, 3),
(4, 'Family', 3000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id_service` int(11) NOT NULL,
  `name_service` varchar(60) NOT NULL,
  `type_service` varchar(30) NOT NULL,
  `price_service` int(11) NOT NULL,
  `unit_service` varchar(30) NOT NULL,
  `time_start` varchar(12) NOT NULL,
  `time_end` varchar(12) NOT NULL,
  `max_custom` int(11) NOT NULL,
  `number_custom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id_service`, `name_service`, `type_service`, `price_service`, `unit_service`, `time_start`, `time_end`, `max_custom`, `number_custom`) VALUES
(1, 'bữa sáng', 'khách sạn', 100000, 'ngày', '10/10/2022', '20/10/2222', 99999999, 0),
(2, 'bữa tối', 'khách sạn', 100000, 'ngày', '10/10/2022', '20/10/2222', 99999999, 0),
(3, 'bữa trưa', 'khách sạn', 100000, 'ngày', '10/10/2022', '20/10/2222', 99999999, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `shift_id` int(10) NOT NULL,
  `shift` varchar(100) NOT NULL,
  `shift_timing` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`shift_id`, `shift`, `shift_timing`) VALUES
(1, 'Morning', '4:00 AM - 10:00 AM'),
(2, 'Day', '10:00 AM - 4:00PM'),
(3, 'Evening', '4:00 PM - 10:00 PM'),
(4, 'Night', '10:00PM - 4:00AM');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `staff_type_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `id_card_type` int(11) NOT NULL,
  `id_card_no` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `salary` bigint(20) NOT NULL,
  `joining_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`emp_id`, `emp_name`, `staff_type_id`, `shift_id`, `id_card_type`, `id_card_no`, `address`, `contact_no`, `salary`, `joining_date`, `updated_at`) VALUES
(1, 'Prem Chand Saini', 1, 3, 1, '422510099122', 'Jaipur, Rajasthan', 987554425, 100000, '2017-11-13 05:39:06', '2017-11-17 06:53:05'),
(2, 'Anjali Kumari', 3, 3, 1, '422510099122', 'Jaipur, Rajasthan', 976543211, 10000, '0000-00-00 00:00:00', '2017-11-13 05:44:10'),
(3, 'Ajit Kumar Jain', 2, 3, 1, '422510099122', 'Ap #897-1459 Quam Avenue', 976543111, 10000, '2017-11-13 05:40:18', '2017-11-15 06:52:49'),
(4, 'Deepak Goyal', 2, 3, 2, '0', 'Ap #897-1459 Quam Avenue', 987654321, 100000, '2017-11-13 05:40:55', '2017-11-15 06:52:35'),
(5, 'Sharad Patel', 4, 1, 1, '12345341212', 'Ap #897-1459 Quam Avenue', 9876543212, 10000, '2017-11-13 05:41:31', '2017-11-13 05:41:31'),
(6, 'Vijay Anand', 3, 3, 3, '0', 'Ap #897-1459 Quam Avenue', 1234567890, 100000, '2017-11-13 05:42:03', '2017-11-13 05:42:03'),
(7, 'Lalit  Kumar', 2, 2, 1, '422510099122', 'Ap #897-1459 Quam Avenue', 12322332231, 100000, '2017-11-13 05:42:35', '2017-11-18 07:05:02'),
(8, 'Rajeev Kumar Singh', 1, 1, 4, '0', 'Ap #897-1459 Quam Avenue', 976543456, 10000, '2017-11-13 05:43:13', '2017-11-18 07:02:26'),
(9, 'Himanshu  Soni', 3, 2, 4, '0', 'Ap #897-1459 Quam Avenue', 98765432123, 100000, '2017-11-13 05:43:49', '2017-11-13 05:43:49'),
(10, 'Sandeep Merutha', 5, 2, 1, '422510099122', 'Ap #897-1459 Quam Avenue', 9887665534, 1000, '2017-11-13 06:30:45', '2017-11-18 07:04:28'),
(11, 'Aniket Raj', 3, 2, 1, '0', 'Ap #897-1459 Quam Avenue', 9887556655, 10000, '2017-11-18 07:04:03', '2017-11-18 07:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `staff_type`
--

CREATE TABLE `staff_type` (
  `staff_type_id` int(10) NOT NULL,
  `staff_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_type`
--

INSERT INTO `staff_type` (`staff_type_id`, `staff_type`) VALUES
(1, 'Manager'),
(2, 'Cleaning'),
(3, 'Reception'),
(4, 'Cook'),
(5, 'Waiter');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`, `created_at`) VALUES
(4, '[value-2]', 'admin', '[value-4]', '1234', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `customer_id_type` (`id_card_type_id`);

--
-- Indexes for table `emp_history`
--
ALTER TABLE `emp_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `shift_id` (`shift_id`);

--
-- Indexes for table `id_card_type`
--
ALTER TABLE `id_card_type`
  ADD PRIMARY KEY (`id_card_type_id`);

--
-- Indexes for table `oder_service`
--
ALTER TABLE `oder_service`
  ADD PRIMARY KEY (`id_oder_service`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `id_service` (`id_service`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `room_type_id` (`room_type_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`room_type_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id_service`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`shift_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `id_card_type` (`id_card_type`),
  ADD KEY `shift_id` (`shift_id`),
  ADD KEY `staff_type_id` (`staff_type_id`);

--
-- Indexes for table `staff_type`
--
ALTER TABLE `staff_type`
  ADD PRIMARY KEY (`staff_type_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `emp_history`
--
ALTER TABLE `emp_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `id_card_type`
--
ALTER TABLE `id_card_type`
  MODIFY `id_card_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oder_service`
--
ALTER TABLE `oder_service`
  MODIFY `id_oder_service` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `room_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `shift_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `staff_type`
--
ALTER TABLE `staff_type`
  MODIFY `staff_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`id_card_type_id`) REFERENCES `id_card_type` (`id_card_type_id`);

--
-- Constraints for table `emp_history`
--
ALTER TABLE `emp_history`
  ADD CONSTRAINT `emp_history_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `staff` (`emp_id`),
  ADD CONSTRAINT `emp_history_ibfk_2` FOREIGN KEY (`shift_id`) REFERENCES `shift` (`shift_id`);

--
-- Constraints for table `oder_service`
--
ALTER TABLE `oder_service`
  ADD CONSTRAINT `oder_service_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`),
  ADD CONSTRAINT `oder_service_ibfk_2` FOREIGN KEY (`id_service`) REFERENCES `service` (`id_service`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`id_card_type`) REFERENCES `id_card_type` (`id_card_type_id`),
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`shift_id`) REFERENCES `shift` (`shift_id`),
  ADD CONSTRAINT `staff_ibfk_3` FOREIGN KEY (`staff_type_id`) REFERENCES `staff_type` (`staff_type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
