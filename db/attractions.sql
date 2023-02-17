-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2022 at 07:16 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `attractions`
--

CREATE TABLE `attractions` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `detail` varchar(500) NOT NULL,
  `coverimage` varchar(100) NOT NULL,
  `latitude` decimal(11,7) NOT NULL,
  `longitude` decimal(11,7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attractions`
--

INSERT INTO `attractions` (`id`, `name`, `detail`, `coverimage`, `latitude`, `longitude`) VALUES
(1, 'Phi Phi Islands', 'Phi Phi Islands are a group of islands in Thailand between the large island of Phuket and the Malacca Coastal Strait of Thailand.', 'https://www.melivecode.com/attractions/1.jpg', '7.7376190', '98.7068755'),
(2, 'Eiffel Tower', 'Eiffel Tower is one of the most famous structures in the world. Eiffel Tower is named after a leading French architect and engineer. It was built as a symbol of the World Fair in 1889.', 'https://www.melivecode.com/attractions/2.jpg', '48.8583736', '2.2922926'),
(3, 'Times Square', 'Times Square has become a global landmark and has become a symbol of New York City. This is a result of Times Square being a modern, futuristic venue, with huge advertising screens dotting its surroundings.', 'https://www.melivecode.com/attractions/3.jpg', '40.7589652', '-73.9893574'),
(4, 'Mount Fuji', 'Mount Fuji is the highest mountain in Japan, about 3,776 meters (12,388 feet) situated to the west of Tokyo. Mount Fuji can be seen from Tokyo on clear days.', 'https://www.melivecode.com/attractions/4.jpg', '35.3606422', '138.7186086'),
(5, 'Big Ben', 'Westminster Palace Clock Tower which is most often referred to as Big Ben. This is actually the nickname for the largest bell that hangs in the vent above the clock face.', 'https://www.melivecode.com/attractions/5.jpg', '51.5007325', '-0.1268141'),
(6, 'Taj Mahal', 'The Taj Mahal or Tachomhal is a burial building made of ivory white marble. The Taj Mahal began to be built in 1632 and was completed in 1643.', 'https://www.melivecode.com/attractions/6.jpg', '27.1751496', '78.0399535'),
(7, 'Stonehenge', 'Stonehenge is a monument prehistoric In the middle of a vast plain in the southern part of the British. The monument itself consists of 112 gigantic stone blocks arranged in 3 overlapping circles.', 'https://www.melivecode.com/attractions/7.jpg', '51.1788853', '-1.8284037'),
(8, 'Statue of Liberty', 'The Statue of Liberty is a colossal neoclassical sculpture on Liberty Island in New York Harbor in New York City, in the United States. The copper statue, a gift from the people of France to the people of the United States.', 'https://www.melivecode.com/attractions/8.jpg', '40.6891670', '-74.0444440'),
(9, 'Sydney Opera House', 'The Sydney Opera House is a multi-venue performing arts centre in Sydney. Located on the banks of the Sydney Harbour, it is often regarded as one of the most famous and distinctive buildings and a masterpiece of 20th century architecture.', 'https://www.melivecode.com/attractions/9.jpg', '-33.8586110', '151.2141670'),
(10, 'Great Pyramid of Giza', 'The Great Pyramid of Giza is the oldest and largest of the pyramids in the Giza pyramid complex bordering present-day Giza in Greater Cairo, Egypt. It is the oldest of the Seven Wonders of the Ancient World, and the only one to remain largely intact.', 'https://www.melivecode.com/attractions/10.jpg', '29.9791670', '31.1341670'),
(11, 'Hollywood Sign', 'The Hollywood Sign is an American landmark and cultural icon overlooking Hollywood, Los Angeles, California. It is situated on Mount Lee, in the Beachwood Canyon area of the Santa Monica Mountains. Spelling out the word Hollywood in 45 ft (13.7 m)-tall white capital letters and 350 feet (106.7 m) long.', 'https://www.melivecode.com/attractions/11.jpg', '34.1340610', '-118.3215920'),
(12, 'Wat Phra Kaew', 'Wat Phra Kaew, commonly known in English as the Temple of the Emerald Buddha and officially as Wat Phra Si Rattana Satsadaram, is regarded as the most sacred Buddhist temple in Thailand. The complex consists of a number of buildings within the precincts of the Grand Palace in the historical centre of Bangkok.', 'https://www.melivecode.com/attractions/12.jpg', '13.7513890', '100.4925000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attractions`
--
ALTER TABLE `attractions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attractions`
--
ALTER TABLE `attractions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
