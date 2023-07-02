-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2023 at 12:08 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penyakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `batu_empedu`
--

CREATE TABLE `batu_empedu` (
  `id` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `saran` text NOT NULL,
  `gejala` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `batu_empedu`
--

INSERT INTO `batu_empedu` (`id`, `keterangan`, `saran`, `gejala`) VALUES
(1, 'Batu empedu adalah penggumpalan cairan sisa-sisa pencernaan yang mengeras yang terbentuk di dalam kantong empedu. Batu empedu terbentuk dari kombinasi garam empedu, kolesterol dan bilirubin.', 'Untuk mencegah batu empedu anda dapat menghindari makanan berlemak dan diet yang sangat rendah kalori (penurunan berat badan yang cepat), menjaga berat badan yang sehat, tidak melewatkan makan, mengonsumsi makanan tinggi serat dan menghindari makanan bersantan atau berminyak. Upaya pencegahan lain yang dapat dilakukan adalah membatasi konsumsi minuman beralkohol, berolahraga teratur, memperbanyak konsumsi cairan, dan menghindari diet terlalu ketat.', 'Jika Anda memiliki gejala batu empedu seperti nyeri di bagian kanan atas atau tengah perut yang muncul secara tiba-tiba, disertai dengan gejala lain seperti mual, muntah, hilang nafsu makan, urine berwarna gelap, sakit maag dan diare segera berkonsultasi dengan dokter untuk mendapatkan penanganan yang tepat.');

-- --------------------------------------------------------

--
-- Table structure for table `gerd`
--

CREATE TABLE `gerd` (
  `id` int(10) NOT NULL,
  `keterangan` text NOT NULL,
  `saran` text NOT NULL,
  `gejala` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gerd`
--

INSERT INTO `gerd` (`id`, `keterangan`, `saran`, `gejala`) VALUES
(1, 'Gastroesophageal reflux diseaseatau GERD adalah penyakit kronis pada sistem pencernaan. Kondisi ini terjadi ketika asam lambung naik kembali ke esofagus (kerongkongan). Hali ini terjadi akibat melemahnya sfingter (katup). Hal tersebut bisa menyebabkan iritasi pada esofagus.', 'Untuk mencegah GERD anda dapat menurunkan berat badan, makan makanan dengan porsi lebih kecil, hindari makanan yang berlemak atau pedas, jangan langsung berbaring setelah makan, tinggikan tempat tidur Anda saat tidur, dan cobalah diet bebas gluten, berhenti merokok, serta hindari alkohol.', 'GERD biasanya memiliki gejala yang mirip dengan penyakit mag, seperti: Sensasi terbakar di dada yang terkadang menjalar ke kerongkongan, rasa terbakar ini dapat berlangsung selama 2 jam. Umumnya, sensasi terbakar memberat setelah makan, berbaring juga dapat memperberat gejala ini. Sensasi tersebut bisa juga disertai dengan rasa asam atau pahit di mulut, nyeri dada, sulit menelan, nyeri tenggorokan dan suara serak, mual atau muntah, bau mulut, kesulitan bernapas. dan dapat disertai dengan sensasi adanya benjolan di tenggorokan dan batuk kering berkepanjangan.');

-- --------------------------------------------------------

--
-- Table structure for table `hernia`
--

CREATE TABLE `hernia` (
  `id` int(10) NOT NULL,
  `keterangan` text NOT NULL,
  `saran` text NOT NULL,
  `gejala` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hernia`
--

INSERT INTO `hernia` (`id`, `keterangan`, `saran`, `gejala`) VALUES
(1, 'Hernia hiatal adalah ketika perut Anda menonjol ke dada melalui lubang di diafragma Anda, otot yang memisahkan kedua area tersebut. Pembukaan itu disebut hiatus, sehingga kondisi ini disebut juga dengan hiatus hernia.', 'Saran:\r\n\r\nUbah kebiasaan makan Anda, misalnya makan lebih sedikit, makan lebih sering dan lakukan hal lain untuk membantu gejala GERD. Jika Anda merokok, cobalah untuk menyerah, karena dapat mengiritasi sistem pencernaan Anda dan memperburuk gejala Anda. Beli obat-obatan dari apotek (tanyakan pada apoteker apa yang harus Anda minum untuk membantu gejala GORD). Jika obat-obatan dari apotek dan mengubah kebiasaan makan tidak membantu, temui dokter umum yang dapat meresepkan obat yang lebih kuat. Jika obat yang lebih kuat tidak berhasil, dokter umum dapat mengirimi Anda tes lebih lanjut untuk mengetahui apakah gejala Anda disebabkan oleh hiatus hernia. Mereka mungkin juga meresepkan obat untuk GERD jangka panjang. Dokter umum mungkin merujuk Anda ke spesialis untuk memeriksa apakah Anda memerlukan pembedahan. Ini biasanya hanya terjadi jika perawatan lain tidak berhasil dan Anda tetap mengalami gejala yang sangat buruk.', 'Gejala:\r\n\r\nMemiliki rasa terbakar yang menyakitkan di dada Anda, seringkali setelah makan (mulas), membawa sedikit makanan atau cairan yang rasanya pahit (acid reflux), memiliki bau mulut, bersendawa dan merasa kembung, merasakan atau sakit, mengalami kesulitan atau nyeri saat menelan.');

-- --------------------------------------------------------

--
-- Table structure for table `laktosa`
--

CREATE TABLE `laktosa` (
  `id` int(10) NOT NULL,
  `keterangan` text NOT NULL,
  `saran` text NOT NULL,
  `gejala` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laktosa`
--

INSERT INTO `laktosa` (`id`, `keterangan`, `saran`, `gejala`) VALUES
(1, 'Laktosa adalah gula yang ada dalam susu. Tubuh kita menggunakan enzim yang disebut laktase untuk memecah gula itu sehingga kita bisa menyerapnya ke dalam tubuh kita. Tetapi orang dengan intoleransi laktosa tidak memiliki cukup laktase. Itu diproduksi di usus kecil. Bahkan dengan tingkat laktase yang rendah, beberapa orang dapat mencerna produk susu dengan baik.', 'Untuk menghindari gejala laktosa intoleran batasilah konsumsi makanan atau minuman yang mengandung laktosa atau hindari secara total agar gejalanya tidak muncul. Anda bisa mengganti produk olahan susu dengan: Kacang almond, Kacang kering, Tahu, Collard, Kubis, Jus jeruk yang diperkaya kalsium dan susu kedelai. Ikan berlemak, seperti salmon, tuna, dan mackerel. Kuning telur dan Hati sapi', 'Gejala intoleransi laktosa biasanya muncul 30 menit hingga 2 jam setelah mengonsumsi makanan atau minuman yang mengandung laktosa. Gejala tersebut meliputi: Sering buang angin, Perut kembung, Nyeri perut, Diare, Perut berbunyi “krucuk-krucuk” (borborygmi), Mual dan muntah, Tiap penderita intoleransi laktosa dapat mengalami gejala yang berbeda-beda. Tingkat keparahan gejalanya juga tergantung pada seberapa banyak laktosa yang dikonsumsi.');

-- --------------------------------------------------------

--
-- Table structure for table `usus_buntu`
--

CREATE TABLE `usus_buntu` (
  `id` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `saran` text NOT NULL,
  `gejala` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usus_buntu`
--

INSERT INTO `usus_buntu` (`id`, `keterangan`, `saran`, `gejala`) VALUES
(1, 'Penyakit usus buntu, atau dalam istilah medis disebut apendisitis adalah peradangan dari apendiks atau usus buntu. Usus buntu merupakan salah satu bagian dari organ sistem pencernaan, yaitu usus besar.', 'Upaya yang dapat dilakukan untuk mencegah usus buntu: Konsumsi makanan tinggi serat (sayur dan buah), Penuhi kebutuhan cairan, Hindari makanan yang memicu peradangan usus, Segera atasi kondisi konstipasi, Melakukan screening jika ada anggota keluarga dengan riwayat tumor colon. Dan segara hubungi dokter jika terasa gejala usus buntu.', 'Secara umum, gejala penyakit usus buntu dapat berupa: Rasa tidak nyaman pada perut, Nyeri pada bagian tengah perut dapat menjalar ke perut kanan bawah, Mual, Muntah, Demam, Sulit BAB, Sulit berjalan, Penurunan nafsu makan, Sulit buang angin.');

-- --------------------------------------------------------

--
-- Table structure for table `wasir`
--

CREATE TABLE `wasir` (
  `id` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `saran` text NOT NULL,
  `gejala` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wasir`
--

INSERT INTO `wasir` (`id`, `keterangan`, `saran`, `gejala`) VALUES
(1, 'Wasir atau hemorrhoids adalah pembengkakan atau pembesaran pada pembuluh darah di bagian akhir usus besar (rektum) dan anus. Wasir dapat terjadi di segala usia, tetapi lebih sering dialami oleh orang usia 50 tahun atau lebih.', 'Untuk menghindari terjadinya wasir, langkah yang dapat dilakukan adalah dengan mengonsumsi makanan kaya serat, banyak minum air putih, dan rutin berolahraga. Selain itu, hindari kebiasaan yang dapat memicu wasir, seperti duduk terlalu lama, menunda BAB, atau mengejan berlebihan.', 'Wasir kerap ditandai dengan benjolan di luar anus. Gejala lain yang sering menyertai wasir adalah: Rasa gatal atau sakit di sekitar anus, Benjolan keras di sekitar anus yang terasa perih, Perdarahan dari anus setelah buang air besar, Keluarnya lendir setelah BAB. Wasir dapat dipicu oleh kebiasaan mengejan terlalu keras saat buang air besar atau duduk terlalu lama, sembelit atau diare yang berkepanjangan, sering mengangkat beban yang terlalu berat, kehamilan atau baru melahirkan, dan obesitas.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batu_empedu`
--
ALTER TABLE `batu_empedu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gerd`
--
ALTER TABLE `gerd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hernia`
--
ALTER TABLE `hernia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laktosa`
--
ALTER TABLE `laktosa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usus_buntu`
--
ALTER TABLE `usus_buntu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wasir`
--
ALTER TABLE `wasir`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batu_empedu`
--
ALTER TABLE `batu_empedu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gerd`
--
ALTER TABLE `gerd`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hernia`
--
ALTER TABLE `hernia`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `laktosa`
--
ALTER TABLE `laktosa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usus_buntu`
--
ALTER TABLE `usus_buntu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wasir`
--
ALTER TABLE `wasir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
