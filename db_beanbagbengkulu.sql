-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2020 at 04:41 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_beanbagbengkulu`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Reyhan Firdaus', 'admin', '21232f297a57a5a743894a0e4a801fc3', '085156836786', 'beanbag_bengkulu@gmail.com', 'Jl. KS Tubun No 37, Rt 16, Rw 04, Kelurahan Jalan Gedang, Kecamatan Gading Cempaka, Kota Bengkulu');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(4, 'Beanbag Triangle'),
(5, 'Beanbag Oval'),
(6, 'Beanbag Cube'),
(7, 'Beanbag Chair'),
(8, 'Sewa Beanbag');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(4) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `date_created`) VALUES
(8, 7, 'Beanbag Triangle M Ungu Waterproof', 449999, '<p>Bahan kain luar : Taslan (Waterproof)</p>\r\n\r\n<p>Size : M<br />\r\nPanjang : 120 cm<br />\r\nLebar : 90 cm</p>\r\n\r\n<p>Kami menjual Bean Bag berkualitas tinggi dengan menggunakan 2 lapisan kain dan resleting, yaitu lapisan dalam untuk membungkus Butiran Styrofoam dan kain lapisan luar dengan bahan yang berkualitas. sehingga memudahkan dalam hal perawatan. apabila kotor tinggal buka lapisan luar yang sudah memiliki resleting kemudian di cuci seperti biasa.</p>\r\n', 'produk1607440542.jpg', 1, '2020-12-08 15:30:52'),
(9, 4, 'Beanbag Triangle M Pink Waterproof', 449999, '<p>Bahan kain luar : Taslan (Waterproof)</p>\r\n\r\n<p>Size : M<br />\r\nPanjang : 120 cm<br />\r\nLebar : 90 cm</p>\r\n\r\n<p>Kami menjual Bean Bag berkualitas tinggi dengan menggunakan 2 lapisan kain dan resleting, yaitu lapisan dalam untuk membungkus Butiran Styrofoam dan kain lapisan luar dengan bahan yang berkualitas. sehingga memudahkan dalam hal perawatan. apabila kotor tinggal buka lapisan luar yang sudah memiliki resleting kemudian di cuci seperti biasa.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'produk1607440798.jpg', 1, '2020-12-08 15:30:19'),
(10, 4, 'Beanbag Triangle M Silver Waterproof', 449999, '<p>Bahan kain luar : Taslan (Waterproof)&nbsp;<br />\r\nSangat cocok untuk di luar ruangan (outdoor) dan di dalam ruangan,</p>\r\n\r\n<p>Size : M<br />\r\nPanjang : 120 cm<br />\r\nLebar : 90 cm</p>\r\n\r\n<p>Kami menjual Bean Bag berkualitas tinggi dengan menggunakan 2 lapisan kain dan resleting, yaitu lapisan dalam untuk membungkus Butiran Styrofoam dan kain lapisan luar dengan bahan yang berkualitas. sehingga memudahkan dalam hal perawatan. apabila kotor tinggal buka lapisan luar yang sudah memiliki resleting kemudian di cuci seperti biasa.</p>\r\n\r\n<p><strong>Untuk pembelian partai besar dan kecil ada harga khusus.</strong></p>\r\n', 'produk1607441631.jpg', 1, '2020-12-08 15:33:51'),
(11, 4, 'Beanbag Triangle M Biru Waterproof', 449999, '<p>Bahan kain luar : Taslan (Waterproof)&nbsp;<br />\r\nSangat cocok untuk di luar ruangan (outdoor) dan di dalam ruangan,</p>\r\n\r\n<p>Size : M<br />\r\nPanjang : 120 cm<br />\r\nLebar : 90 cm</p>\r\n\r\n<p>Kami menjual Bean Bag berkualitas tinggi dengan menggunakan 2 lapisan kain dan resleting, yaitu lapisan dalam untuk membungkus Butiran Styrofoam dan kain lapisan luar dengan bahan yang berkualitas. sehingga memudahkan dalam hal perawatan. apabila kotor tinggal buka lapisan luar yang sudah memiliki resleting kemudian di cuci seperti biasa.</p>\r\n\r\n<p><strong>Untuk pembelian partai besar dan kecil ada harga khusus.</strong></p>\r\n', 'produk1607441663.jpg', 1, '2020-12-08 15:34:31'),
(12, 4, 'Beanbag Triangle M Hitam Waterproof', 449999, '<p>Bahan kain luar : Taslan (Waterproof)&nbsp;<br />\r\nSangat cocok untuk di luar ruangan (outdoor) dan di dalam ruangan,</p>\r\n\r\n<p>Size : M<br />\r\nPanjang : 120 cm<br />\r\nLebar : 90 cm</p>\r\n\r\n<p>Kami menjual Bean Bag berkualitas tinggi dengan menggunakan 2 lapisan kain dan resleting, yaitu lapisan dalam untuk membungkus Butiran Styrofoam dan kain lapisan luar dengan bahan yang berkualitas. sehingga memudahkan dalam hal perawatan. apabila kotor tinggal buka lapisan luar yang sudah memiliki resleting kemudian di cuci seperti biasa.</p>\r\n\r\n<p><strong>Untuk pembelian partai besar dan kecil ada harga khusus.</strong></p>\r\n', 'produk1607441697.jpg', 1, '2020-12-08 15:34:57'),
(13, 4, 'Beanbag Triangle M Kuning Waterproof', 449999, '<p>Bahan kain luar : Taslan (Waterproof)&nbsp;<br />\r\nSangat cocok untuk di luar ruangan (outdoor) dan di dalam ruangan,</p>\r\n\r\n<p>Size : M<br />\r\nPanjang : 120 cm<br />\r\nLebar : 90 cm</p>\r\n\r\n<p>Kami menjual Bean Bag berkualitas tinggi dengan menggunakan 2 lapisan kain dan resleting, yaitu lapisan dalam untuk membungkus Butiran Styrofoam dan kain lapisan luar dengan bahan yang berkualitas. sehingga memudahkan dalam hal perawatan. apabila kotor tinggal buka lapisan luar yang sudah memiliki resleting kemudian di cuci seperti biasa.</p>\r\n\r\n<p><strong>Untuk pembelian partai besar dan kecil ada harga khusus.</strong></p>\r\n', 'produk1607441719.jpg', 1, '2020-12-08 15:35:19'),
(14, 4, 'Beanbag Triangle M Cokelat Waterproof', 449999, '<p>Bahan kain luar : Taslan (Waterproof)&nbsp;<br />\r\nSangat cocok untuk di luar ruangan (outdoor) dan di dalam ruangan,</p>\r\n\r\n<p>Size : M<br />\r\nPanjang : 120 cm<br />\r\nLebar : 90 cm</p>\r\n\r\n<p>Kami menjual Bean Bag berkualitas tinggi dengan menggunakan 2 lapisan kain dan resleting, yaitu lapisan dalam untuk membungkus Butiran Styrofoam dan kain lapisan luar dengan bahan yang berkualitas. sehingga memudahkan dalam hal perawatan. apabila kotor tinggal buka lapisan luar yang sudah memiliki resleting kemudian di cuci seperti biasa.</p>\r\n\r\n<p><strong>Untuk pembelian partai besar dan kecil ada harga khusus.</strong></p>\r\n', 'produk1607441753.jpg', 1, '2020-12-08 15:35:53'),
(15, 4, 'Beanbag Triangle M Oren Waterproof', 449999, '<p>Bahan kain luar : Taslan (Waterproof)&nbsp;<br />\r\nSangat cocok untuk di luar ruangan (outdoor) dan di dalam ruangan,</p>\r\n\r\n<p>Size : M<br />\r\nPanjang : 120 cm<br />\r\nLebar : 90 cm</p>\r\n\r\n<p>Kami menjual Bean Bag berkualitas tinggi dengan menggunakan 2 lapisan kain dan resleting, yaitu lapisan dalam untuk membungkus Butiran Styrofoam dan kain lapisan luar dengan bahan yang berkualitas. sehingga memudahkan dalam hal perawatan. apabila kotor tinggal buka lapisan luar yang sudah memiliki resleting kemudian di cuci seperti biasa.</p>\r\n\r\n<p><strong>Untuk pembelian partai besar dan kecil ada harga khusus.</strong></p>\r\n', 'produk1607441784.jpg', 1, '2020-12-08 15:36:24'),
(16, 4, 'Beanbag Triangle M Merah Waterproof', 449999, '<p>Bahan kain luar : Taslan (Waterproof)&nbsp;<br />\r\nSangat cocok untuk di luar ruangan (outdoor) dan di dalam ruangan,</p>\r\n\r\n<p>Size : M<br />\r\nPanjang : 120 cm<br />\r\nLebar : 90 cm</p>\r\n\r\n<p>Kami menjual Bean Bag berkualitas tinggi dengan menggunakan 2 lapisan kain dan resleting, yaitu lapisan dalam untuk membungkus Butiran Styrofoam dan kain lapisan luar dengan bahan yang berkualitas. sehingga memudahkan dalam hal perawatan. apabila kotor tinggal buka lapisan luar yang sudah memiliki resleting kemudian di cuci seperti biasa.</p>\r\n\r\n<p><strong>Untuk pembelian partai besar dan kecil ada harga khusus.</strong></p>\r\n', 'produk1607441929.jpg', 1, '2020-12-08 15:38:49'),
(17, 4, 'Beanbag Triangle M Hijau Waterproof', 449999, '<p>Bahan kain luar : Taslan (Waterproof)&nbsp;<br />\r\nSangat cocok untuk di luar ruangan (outdoor) dan di dalam ruangan,</p>\r\n\r\n<p>Size : M<br />\r\nPanjang : 120 cm<br />\r\nLebar : 90 cm</p>\r\n\r\n<p>Kami menjual Bean Bag berkualitas tinggi dengan menggunakan 2 lapisan kain dan resleting, yaitu lapisan dalam untuk membungkus Butiran Styrofoam dan kain lapisan luar dengan bahan yang berkualitas. sehingga memudahkan dalam hal perawatan. apabila kotor tinggal buka lapisan luar yang sudah memiliki resleting kemudian di cuci seperti biasa.</p>\r\n\r\n<p><strong>Untuk pembelian partai besar dan kecil ada harga khusus.</strong></p>\r\n', 'produk1607441987.jpg', 1, '2020-12-08 15:39:47'),
(18, 4, 'Beanbag Triangle L Motif ', 649999, '<p>Bahan kain luar : Katun (Bagian atas) , suede (bagian bawah)&nbsp;<br />\r\nSangat cocok untuk di rumah/kantor karena ukurannya yang sangat pas digunakan untuk bersantai</p>\r\n\r\n<p>Size : M<br />\r\nPanjang : 145 cm<br />\r\nLebar : 100&nbsp;cm</p>\r\n\r\n<p>Kami menjual Bean Bag berkualitas tinggi dengan menggunakan 2 lapisan kain dan resleting, yaitu lapisan dalam untuk membungkus Butiran Styrofoam dan kain lapisan luar dengan bahan yang berkualitas. sehingga memudahkan dalam hal perawatan. apabila kotor tinggal buka lapisan luar yang sudah memiliki resleting kemudian di cuci seperti biasa.</p>\r\n\r\n<p><strong>Untuk pembelian partai besar dan kecil ada harga khusus.</strong></p>\r\n', 'produk1607442288.jpg', 1, '2020-12-08 15:44:48'),
(19, 4, 'Beanbag Triangle L Motif ', 649999, '<p>Bahan kain luar : Katun (Bagian atas) , suede (bagian bawah)&nbsp;<br />\r\nSangat cocok untuk di rumah/kantor karena ukurannya yang sangat pas digunakan untuk bersantai</p>\r\n\r\n<p>Size : M<br />\r\nPanjang : 145 cm<br />\r\nLebar : 100&nbsp;cm</p>\r\n\r\n<p>Kami menjual Bean Bag berkualitas tinggi dengan menggunakan 2 lapisan kain dan resleting, yaitu lapisan dalam untuk membungkus Butiran Styrofoam dan kain lapisan luar dengan bahan yang berkualitas. sehingga memudahkan dalam hal perawatan. apabila kotor tinggal buka lapisan luar yang sudah memiliki resleting kemudian di cuci seperti biasa.</p>\r\n\r\n<p><strong>Untuk pembelian partai besar dan kecil ada harga khusus.</strong></p>\r\n', 'produk1607442352.jpg', 1, '2020-12-08 15:45:52'),
(20, 4, 'Beanbag Triangle L Motif ', 649999, '<p>Bahan kain luar : Katun (Bagian atas) , suede (bagian bawah)&nbsp;<br />\r\nSangat cocok untuk di rumah/kantor karena ukurannya yang sangat pas digunakan untuk bersantai</p>\r\n\r\n<p>Size : M<br />\r\nPanjang : 145 cm<br />\r\nLebar : 100&nbsp;cm</p>\r\n\r\n<p>Kami menjual Bean Bag berkualitas tinggi dengan menggunakan 2 lapisan kain dan resleting, yaitu lapisan dalam untuk membungkus Butiran Styrofoam dan kain lapisan luar dengan bahan yang berkualitas. sehingga memudahkan dalam hal perawatan. apabila kotor tinggal buka lapisan luar yang sudah memiliki resleting kemudian di cuci seperti biasa.</p>\r\n\r\n<p><strong>Untuk pembelian partai besar dan kecil ada harga khusus.</strong></p>\r\n', 'produk1607442401.jpg', 1, '2020-12-08 15:46:41'),
(21, 4, 'Beanbag Triangle L Motif ', 649999, '<p>Bahan kain luar : Katun (Bagian atas) , suede (bagian bawah)&nbsp;<br />\r\nSangat cocok untuk di rumah/kantor karena ukurannya yang sangat pas digunakan untuk bersantai</p>\r\n\r\n<p>Size : M<br />\r\nPanjang : 145 cm<br />\r\nLebar : 100&nbsp;cm</p>\r\n\r\n<p>Kami menjual Bean Bag berkualitas tinggi dengan menggunakan 2 lapisan kain dan resleting, yaitu lapisan dalam untuk membungkus Butiran Styrofoam dan kain lapisan luar dengan bahan yang berkualitas. sehingga memudahkan dalam hal perawatan. apabila kotor tinggal buka lapisan luar yang sudah memiliki resleting kemudian di cuci seperti biasa.</p>\r\n\r\n<p><strong>Untuk pembelian partai besar dan kecil ada harga khusus.</strong></p>\r\n', 'produk1607442616.jpg', 1, '2020-12-08 15:50:16'),
(22, 4, 'Beanbag Triangle L Motif ', 649999, '<p>Bahan kain luar : Katun (Bagian atas) , suede (bagian bawah)&nbsp;<br />\r\nSangat cocok untuk di rumah/kantor karena ukurannya yang sangat pas digunakan untuk bersantai</p>\r\n\r\n<p>Size : M<br />\r\nPanjang : 145 cm<br />\r\nLebar : 100&nbsp;cm</p>\r\n\r\n<p>Kami menjual Bean Bag berkualitas tinggi dengan menggunakan 2 lapisan kain dan resleting, yaitu lapisan dalam untuk membungkus Butiran Styrofoam dan kain lapisan luar dengan bahan yang berkualitas. sehingga memudahkan dalam hal perawatan. apabila kotor tinggal buka lapisan luar yang sudah memiliki resleting kemudian di cuci seperti biasa.</p>\r\n\r\n<p><strong>Untuk pembelian partai besar dan kecil ada harga khusus.</strong></p>\r\n', 'produk1607442633.jpg', 1, '2020-12-08 15:50:33'),
(23, 4, 'Beanbag Triangle L Motif ', 649999, '<p>Bahan kain luar : Katun (Bagian atas) , suede (bagian bawah)&nbsp;<br />\r\nSangat cocok untuk di rumah/kantor karena ukurannya yang sangat pas digunakan untuk bersantai</p>\r\n\r\n<p>Size : M<br />\r\nPanjang : 145 cm<br />\r\nLebar : 100&nbsp;cm</p>\r\n\r\n<p>Kami menjual Bean Bag berkualitas tinggi dengan menggunakan 2 lapisan kain dan resleting, yaitu lapisan dalam untuk membungkus Butiran Styrofoam dan kain lapisan luar dengan bahan yang berkualitas. sehingga memudahkan dalam hal perawatan. apabila kotor tinggal buka lapisan luar yang sudah memiliki resleting kemudian di cuci seperti biasa.</p>\r\n\r\n<p><strong>Untuk pembelian partai besar dan kecil ada harga khusus.</strong></p>\r\n', 'produk1607442655.jpg', 1, '2020-12-08 15:50:55'),
(24, 4, 'Beanbag Triangle L Motif ', 649999, '<p>Bahan kain luar : Katun (Bagian atas) , suede (bagian bawah)&nbsp;<br />\r\nSangat cocok untuk di rumah/kantor karena ukurannya yang sangat pas digunakan untuk bersantai</p>\r\n\r\n<p>Size : M<br />\r\nPanjang : 145 cm<br />\r\nLebar : 100&nbsp;cm</p>\r\n\r\n<p>Kami menjual Bean Bag berkualitas tinggi dengan menggunakan 2 lapisan kain dan resleting, yaitu lapisan dalam untuk membungkus Butiran Styrofoam dan kain lapisan luar dengan bahan yang berkualitas. sehingga memudahkan dalam hal perawatan. apabila kotor tinggal buka lapisan luar yang sudah memiliki resleting kemudian di cuci seperti biasa.</p>\r\n\r\n<p><strong>Untuk pembelian partai besar dan kecil ada harga khusus.</strong></p>\r\n', 'produk1607442675.jpg', 1, '2020-12-08 15:51:15'),
(25, 5, 'Beanbag Oval Suede Merah', 649999, '<p>Bahan kain luar : Suede (Buludru)&nbsp;<br />\r\nSangat cocok untuk di rumah/kantor karena ukurannya yang sangat pas digunakan untuk bersantai</p>\r\n\r\n<p>Size :<br />\r\nDiameter : 100 cm<br />\r\ntinggi : 90&nbsp;cm</p>\r\n\r\n<p>Kami menjual Bean Bag berkualitas tinggi dengan menggunakan 2 lapisan kain dan resleting, yaitu lapisan dalam untuk membungkus Butiran Styrofoam dan kain lapisan luar dengan bahan yang berkualitas. sehingga memudahkan dalam hal perawatan. apabila kotor tinggal buka lapisan luar yang sudah memiliki resleting kemudian di cuci seperti biasa.</p>\r\n\r\n<p><strong>Untuk pembelian partai besar dan kecil ada harga khusus.</strong></p>\r\n', 'produk1607442808.jpg', 1, '2020-12-08 15:53:28'),
(26, 5, 'Beanbag Oval Suede Kuning cream', 649999, '<p>Bahan kain luar : Suede (Buludru)&nbsp;<br />\r\nSangat cocok untuk di rumah/kantor karena ukurannya yang sangat pas digunakan untuk bersantai</p>\r\n\r\n<p>Size :<br />\r\nDiameter : 100 cm<br />\r\ntinggi : 90&nbsp;cm</p>\r\n\r\n<p>Kami menjual Bean Bag berkualitas tinggi dengan menggunakan 2 lapisan kain dan resleting, yaitu lapisan dalam untuk membungkus Butiran Styrofoam dan kain lapisan luar dengan bahan yang berkualitas. sehingga memudahkan dalam hal perawatan. apabila kotor tinggal buka lapisan luar yang sudah memiliki resleting kemudian di cuci seperti biasa.</p>\r\n\r\n<p><strong>Untuk pembelian partai besar dan kecil ada harga khusus.</strong></p>\r\n', 'produk1607442853.jpg', 1, '2020-12-08 15:54:13'),
(27, 5, 'Beanbag Oval Suede Silver abu-abu', 649999, '<p>Bahan kain luar : Suede (Buludru)&nbsp;<br />\r\nSangat cocok untuk di rumah/kantor karena ukurannya yang sangat pas digunakan untuk bersantai</p>\r\n\r\n<p>Size :<br />\r\nDiameter : 100 cm<br />\r\ntinggi : 90&nbsp;cm</p>\r\n\r\n<p>Kami menjual Bean Bag berkualitas tinggi dengan menggunakan 2 lapisan kain dan resleting, yaitu lapisan dalam untuk membungkus Butiran Styrofoam dan kain lapisan luar dengan bahan yang berkualitas. sehingga memudahkan dalam hal perawatan. apabila kotor tinggal buka lapisan luar yang sudah memiliki resleting kemudian di cuci seperti biasa.</p>\r\n\r\n<p><strong>Untuk pembelian partai besar dan kecil ada harga khusus.</strong></p>\r\n', 'produk1607442954.jpg', 1, '2020-12-08 15:55:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
