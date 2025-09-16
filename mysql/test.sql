-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 11:27 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS test;

-- Use the test database
USE test;

-- Table structure for table `books`
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `desc` varchar(500) NOT NULL,
  `price` float NOT NULL,
  `cover` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table `books`
INSERT INTO `books` (`id`, `title`, `desc`, `price`, `cover`) VALUES
(1, 'WISDEN-2024', 'The most famous sports book in the world, Wisden Cricketers Almanack has been published every year since 1864.', $49.99, 'https://res.cloudinary.com/bloomsbury-atlas/image/upload/w_148,c_scale,dpr_1.5/jackets/9781399411875.jpg'),
(2, 'Gully Gully', 'Gully Gully: Travels around India during the 2023 World Cup by Aditya Iyer', $49.99, 'https://cdn.esquireindia.co.in/editor-images/-2024-11-29T10%3A35%3A16.197Z-Gully-Gully_Book-Cover.jpg');

-- Add primary key for the books table
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

-- Set auto increment for the `id` column
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

COMMIT;

ALTER USER 'admin'@'%' IDENTIFIED WITH mysql_native_password BY 'Devops123';
