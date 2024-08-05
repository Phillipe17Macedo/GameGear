-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21/11/2023 às 15:31
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `gamegear`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_country` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(5, 'Iko Uwais', 'iko@gmail.id', 'iko123', 'iko.png', 'Indonesia', 'This is for IKO', '081806833157', 'Fighter / Actor'),
(6, 'Admin', 'admin@gmail.com', 'admin', 'm-dev-info.jpg', 'Minas Gerais', 'MINEIRO UAI', '4002-8922', 'Administrador');

-- --------------------------------------------------------

--
-- Estrutura para tabela `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(2, 'Melhores preços', 'New Lorem  dolor sit amet consectetur adipisicing elit. Laborum nam voluptate ipsum, quasi, soluta voluptatem eligendi voluptatum officia sed, molestiae tempore corrupti similique? Deserunt odio fugit facere voluptate consequuntur doloremque?'),
(3, 'Produtos originais', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum nam voluptate ipsum, quasi, soluta voluptatem eligendi voluptatum officia sed, molestiae tempore corrupti similique? Deserunt odio fugit facere voluptate consequuntur doloremque?'),
(4, 'Suporte 24h', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum nam voluptate ipsum, quasi, soluta voluptatem eligendi voluptatum officia sed, molestiae tempore corrupti similique? Deserunt odio fugit facere voluptate consequuntur doloremque?');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(1, 'PaiN', 'yes', 'pain.png'),
(2, 'T1', 'yes', 't1.png'),
(3, 'Loud', 'no', 'loud.png'),
(4, 'G2', 'no', 'g2.png'),
(5, 'Outros', 'no', 'outros.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(5, 'Rianti', 'Riannti@gmail.com', 'rianti123', 'India', 'Calcuta', '8891822', 'Anywhere you want', 'member1.jpg', '::1'),
(6, 'James Bono', 'jamesbono@gmail.com', 'james1123', 'England', 'London', '555-2255-222', 'Hyde Park', 'member2.jpg', '::1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(11, 6, 300, 206863956, 1, 'Small', '2019-02-06', 'Complete'),
(12, 6, 10, 206863956, 1, 'Small', '2019-02-06', 'Complete'),
(13, 5, 10, 949505855, 1, 'Small', '2019-09-14', 'Complete'),
(14, 6, 204, 593613615, 3, 'M', '2023-11-19', 'pending'),
(15, 6, 10, 99317357, 1, 'P', '2023-11-19', 'pending'),
(16, 6, 300, 1816787809, 1, 'M', '2023-11-19', 'pending'),
(17, 5, 98, 2116036498, 1, 'M', '2023-11-19', 'Complete'),
(18, 5, 66, 1425003568, 1, 'M', '2023-11-19', 'Complete'),
(19, 5, 110, 1108349986, 1, 'M', '2023-11-19', 'pending'),
(20, 5, 240, 1294237427, 3, 'P', '2023-11-19', 'pending'),
(21, 5, 50, 660796489, 1, 'P', '2023-11-19', 'pending'),
(22, 5, 75, 1184966219, 1, 'G', '2023-11-19', 'Complete');

-- --------------------------------------------------------

--
-- Estrutura para tabela `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(2, 'LoL', 'yes', 'lol.png'),
(3, 'Valorant', 'yes', 'valorant.png'),
(4, 'CS:GO', 'no', 'csGO.png'),
(5, 'Outros', 'no', 'jogador.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(8, 2116036498, 98, 'Cartão de crédito', 2147483647, 123, '19/11/2023'),
(9, 1425003568, 66, 'Cartão de crédito', 2147483647, 123, '19/11/2023'),
(10, 1184966219, 75, 'Cartão de crédito', 2147483647, 123321, '19/11/2023');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(17, 5, 1108349986, '28', 1, 'M', 'pending'),
(18, 5, 1294237427, '26', 3, 'P', 'pending'),
(19, 5, 660796489, '27', 1, 'P', 'pending'),
(20, 5, 1184966219, '19', 1, 'G', 'pending');

-- --------------------------------------------------------

--
-- Estrutura para tabela `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`) VALUES
(18, 1, 1, 2, '2023-11-20 01:15:28', 'Camisa PaiN 23', 'pain.jpg', 'painback.webp', 'painlogo.webp', 85, 'PaiN', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(19, 1, 5, 2, '2023-11-20 01:16:23', 'Camisa VK 22', 'vk22.jpg', 'vk22back.jpg', '', 75, 'Vivo Keyd', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(20, 1, 5, 2, '2023-11-20 01:17:10', 'Camisa RED', 'RED_shirt_front.jpg', 'RED_shirt_details.jpg', 'RED_shirt_back.jpg', 85, 'RED', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(21, 1, 3, 3, '2023-11-20 01:18:08', 'Camisa Loud 23', 'loud.jpg', 'loudback.jpg', 'loudbody.webp', 100, 'Loud', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(22, 3, 5, 5, '2023-11-20 01:18:56', 'Camisa Fluxo', 'FX_shirt_front.jpg', 'FX_shirt_back.jpg', '', 50, 'Fluxo', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(23, 1, 5, 3, '2023-11-20 01:19:29', 'Camisa EG 23', 'eg23.jpeg', 'egback23.jpeg', '', 120, 'EG', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(24, 4, 5, 4, '2023-11-20 01:20:10', 'Moletom Furia', 'FUR_coat_front.jpg', 'FUR_coat_back.jpg', 'FUR_coat_logo.jpg', 90, 'Furia', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(25, 1, 5, 2, '2023-11-20 01:20:48', 'Camisa Kabuum', 'KBM_shirt_front.jpg', 'KBM_shirt_back.jpg', 'KBM_shirt_hang.jpg', 70, 'Kabuum', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(26, 1, 5, 2, '2023-11-20 01:21:22', 'Camisa INTZ', 'INTZ_shirt_front.jpg', 'INTZ_shirt_back.jpg', '', 80, 'INTZ', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(27, 1, 5, 3, '2023-11-20 01:22:13', 'Camisa Liberty', 'Liberty_shirt_front.jpg', 'Liberty_shirt_hang.jpg', '', 50, 'Liberty', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(28, 2, 5, 4, '2023-11-20 01:23:04', 'Calça RED Canids', 'RED_pants_front.jpg', 'RED_pants_logo.jpg', '', 110, 'RED', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(29, 2, 1, 2, '2023-11-20 01:25:52', 'Calça PaiN', 'PAIN_pants_front.jpg', '', '', 120, 'PaiN', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(30, 3, 3, 3, '2023-11-20 01:24:36', 'T-shirt Loud', 'LOUD_shirt_front.jpg', 'LOUD_shirt_back.jpg', '', 45, 'Loud', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(31, 3, 1, 2, '2023-11-20 01:25:33', 'Boné PaiN', 'PAIN_cap_front.jpg', 'PAIN_cap_side.jpg', 'PAIN_cap_inside.jpg', 75, 'PaiN', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(32, 1, 3, 2, '2023-11-20 01:34:09', 'Camisa Loud Worlds 22', 'loud22.jpg', 'loudback22.jpg', '', 120, 'Loud', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(33, 1, 4, 2, '2023-11-20 01:33:52', 'Camisa G2 2019', 'g2_19.png', 'g2back19.jpg', '', 120, 'G2', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(34, 1, 4, 2, '2023-11-20 01:34:56', 'Camisa G2 MSI 23', 'G2_shirt_front.jpg', 'G2_shirt_back.jpg', 'G2_shirt_details.jpg', 120, 'G2', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(35, 1, 4, 2, '2023-11-20 01:35:32', 'Camisa G2 23', 'g223.jpg', '', '', 100, 'G2', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(36, 1, 2, 2, '2023-11-20 01:36:42', 'Camisa SKT 2018', 'skt18.jpg', 'sktback18.jpg', '', 300, 'SKT', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(37, 1, 5, 4, '2023-11-20 01:37:20', 'Camisa Furia 23', 'FUR_shirt_front.jpg', 'FUR_shirt_back.jpg', '', 90, 'Furia', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(38, 1, 5, 2, '2023-11-20 01:38:01', 'Camisa TSM ', 'tsm.jpg', 'tsmback.jpg', '', 130, 'TSM', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(39, 1, 5, 2, '2023-11-20 01:39:00', 'Camisa RNG', 'rng_resized.jpg', '', '', 200, 'RNG', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(40, 4, 2, 2, '2023-11-20 01:40:02', 'Moletom T1 2023', 't1_jacket.webp', 't1_jacket2.webp', 't1_jacket3.webp', 250, 'SKT', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(41, 1, 5, 3, '2023-11-20 01:40:36', 'Camisa VK 23', 'VKS_shirt_front.jpg', 'VKS_shirt_logo.jpg', '', 85, 'VK', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(42, 1, 5, 2, '2023-11-20 01:41:14', 'Camisa Cloud9', 'c9.jpeg', '', '', 150, 'Cloud9', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(43, 1, 5, 2, '2023-11-20 01:41:47', 'Camisa INTZ 23', 'intz23.jpeg', '', '', 85, 'INTZ', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>'),
(44, 1, 2, 2, '2023-11-20 01:42:30', 'Camisa SKT FAKER', 'skt_front.webp', 'skt_back.webp', 'skt.jpg', 1250, 'SKT', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto dolores incidunt, inventore voluptates nulla ullam? Animi, delectus est esse! Laborum labore, architecto aliquam, sint neque temporibus deserunt quo praesentium consequatur.</p>');

-- --------------------------------------------------------

--
-- Estrutura para tabela `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(1, 'Uniformes', 'yes', 'jersey.png'),
(2, 'Calças', 'yes', 'calca.png'),
(3, 'Camisas', 'no', 'camisa.png'),
(4, 'Moletons', 'no', 'moletom.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(8, 'Slide Number 10', 'slidePaiN.webp', 'http://localhost/GameGear/details.php?pro_id=18'),
(9, 'Slide Number 11', 'slider-number-9.jpg', 'http://localhost/m-dev-store/shop.php'),
(13, 'Editing Slide 12', 'slider-number-12.jpg', 'test.com'),
(14, 'Slide Number 14', 'slider-number-14.jpg', 'https://youtube.com/c/mdevmedia');

-- --------------------------------------------------------

--
-- Estrutura para tabela `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(9, 'Regras e Regulamentos', 'link_1', '<div>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quidem ut itaque quibusdam dolores modi natus. Enim earum laboriosam, quos error voluptatem fugiat eos? In maiores quia eligendi, ea aperiam voluptate.</div>'),
(10, 'Promoções', 'link_2', '<div>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quidem ut itaque quibusdam dolores modi natus. Enim earum laboriosam, quos error voluptatem fugiat eos? In maiores quia eligendi, ea aperiam voluptate.</div>'),
(11, 'Política de privacidade', 'link_3', '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quidem ut itaque quibusdam dolores modi natus. Enim earum laboriosam, quos error voluptatem fugiat eos? In maiores quia eligendi, ea aperiam voluptate.</p>');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Índices de tabela `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

--
-- Índices de tabela `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Índices de tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Índices de tabela `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Índices de tabela `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Índices de tabela `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Índices de tabela `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Índices de tabela `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Índices de tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Índices de tabela `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Índices de tabela `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- Índices de tabela `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de tabela `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
