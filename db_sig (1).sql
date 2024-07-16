-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jul 2024 pada 05.01
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sig`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi`
--

CREATE TABLE `lokasi` (
  `id` int(11) NOT NULL,
  `lat_lng` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `lokasi`
--

INSERT INTO `lokasi` (`id`, `lat_lng`, `nama`, `kategori`, `keterangan`, `gambar`) VALUES
(5, '-3.9754316174283515, 122.59331244545466', 'Kantor Lurah Kendari Caddi', 'Kendari', '2HFV+R8F, Kendari Caddi, Kec. Kendari, Kota Kendari, Sulawesi Tenggara', 'caddi.png'),
(6, '-3.9845177100805036, 122.59611951698584', 'Kantor Lurah Talia', 'Abeli', '2H8W+3C6, Talia, Kec. Abeli, Kota Kendari, Sulawesi Tenggara 93235', 'talia.png'),
(7, '-3.9686271098932897, 122.5930146386215', 'Kantor Lurah Kampung Salo', 'Kendari', 'Kp. Salo, Kec. Kendari, Kota Kendari, Sulawesi Tenggara 93127', 'salo.png'),
(8, '-3.972156911220566, 122.59981130109256', 'Kantor Lurah Kasilampe', 'Kendari', 'Jl. Ir. Soekarno No.35, Kessilampe, Kec. Kendari, Kota Kendari, Sulawesi Tenggara 93126', 'kasilampe.png'),
(9, '-3.982999621142249, 122.61139118205253', 'Kantor Lurah Bungkutoko', 'Nambo', '2J86+M9P, Bungkutoko, Kec. Nambo, Kota Kendari, Sulawesi Tenggara', 'bungkutoko.png'),
(10, '-3.9818340148653597, 122.59237868150144', 'Kantor Lurah Poasia', 'Abeli', '2H9R+4HR, Poasia, Kec. Abeli, Kota Kendari, Sulawesi Tenggara 93235', 'ab poas.png'),
(11, '-3.9708937984436754, 122.58217375876366', 'Kantor Lurah Kandai', 'Kendari', '2HHJ+GJ2, Kandai, Kec. Kendari, Kota Kendari, Sulawesi Tenggara', 'kandai.png'),
(12, '-3.9618451392828002, 122.61198988519925', 'Kantor Lurah Mata', 'Kendari', '2JQ6+58P, Jl. R. E. Martadinata, Mata, Kec. Kendari, Kota Kendari, Sulawesi Tenggara 93129', 'mata.png'),
(13, '-3.9638528954332615, 122.59780511643477', 'Kantor Lurah Mangga Dua', 'Kendari', '2HPW+8V6, Jl. Mangga Dua - Mata, Mangga Dua, Kec. Kendari, Kota Kendari, Sulawesi Tenggara 93126', 'mangga dua.png'),
(14, '-3.9647447577268875, 122.58622365017236', 'Kantor Lurah Dapu-Dapura', 'Kendari Barat', '2HJH+F54, Dapu-Dapura, Kec. Kendari Bar., Kota Kendari, Sulawesi Tenggara 93124', 'dapu dapura.png'),
(15, '-3.9662860112477305, 122.5891418934437', 'Kantor Lurah Jati Mekar', 'Kendari', '2HJM+F4W, Jl. Poros Gn. Jati, Jati Mekar, Kec. Kendari, Kota Kendari, Sulawesi Tenggara 93127', 'jati mekar.png'),
(16, '-3.9850376985045264, 122.59463505924447', 'Kantor Kelurahan Puday', 'Abeli', '2H6H+W47, Jl. Pemuda, Puday, Kec. Abeli, Kota Kendari, Sulawesi Tenggara 93234', 'ab.png'),
(17, '-3.965771750726807, 122.5748423491956', 'Kantor Lurah Sanua', 'Kendari Barat', '2HJG+762, Sanua, Kec. Kendari Bar., Kota Kendari, Sulawesi Tenggara 93123', 'sanua.png'),
(18, '-3.9635026928563706, 122.583713816658', 'Kantor Kelurahan Gunung Jati', 'Kendari', '2HMP+Q4H, Jl. Poros Gn. Jati, Gn. Jati, Kec. Kendari, Kota Kendari, Sulawesi Tenggara 93127', 'jati g.png'),
(19, '-3.979287791016162, 122.57731561189702', 'Kantor Lurah Lapulu', 'Abeli', '2H9J+7R3, Lapulu, Kec. Abeli, Kota Kendari, Sulawesi Tenggara 93885', 'lapulu.png'),
(20, '-3.9878631668927533, 122.60964253537807', 'Kantor Lurah Petoaha', 'Nambo', '2J52+MW4, Petoaha, Kec. Nambo, Kota Kendari, Sulawesi Tenggara 93236', 'petoha.png'),
(21, '-3.9927957588984913, 122.58492453041411', 'Kantor Lurah Abeli', 'Abeli', '2H5M+CWG, Abeli, Kec. Abeli, Kota Kendari, Sulawesi Tenggara 93885', 'abeli.png'),
(22, '-3.992658033839341, 122.61650899040254', 'Kantor Lurah Nambo', 'Nambo', '2J35+PQ3, Nambo, Kec. Nambo, Kota Kendari, Sulawesi Tenggara 93236', 'nambo.png'),
(23, '-3.9530995470183306, 122.62560704330996', 'Kantor Kelurahan Purirano', 'Kendari', '2JVC+77G, Jl. R. E. Martadinata, Purirano, Kec. Kendari, Kota Kendari, Sulawesi Tenggara 93129', 'purirano.png'),
(24, '-4.014388007080655, 122.5507599690385', 'Kantor Kelurahan Rahandouna', '', 'XHQ2+78H, Rahandouna, Kec. Kendari, Kota Kendari, Sulawesi Tenggara 93232', 'rahandonua.png'),
(25, '-3.9983428216915713, 122.55621614099937', 'Kantor Lurah Matabubul', 'Poasia', 'XHX8+CWF, Matabubu, Kec. Poasia, Kota Kendari, Sulawesi Tenggara 93231', 'matabubu.png'),
(26, '-3.9681619538790613, 122.57732679655074', 'Kantor Lurah Sondohoa', 'Kendari Barat', '2HHF+XHQ, Sodohoa, Kec. Kendari Bar., Kota Kendari, Sulawesi Tenggara', 'sondoha.png'),
(27, '-4.006319228144487, 122.52464596110664', 'Kantor Lurah Anduonohu', 'Poasia', 'XGRR+27P, Jl. Pisang, Anduonohu, Kec. Poasia, Kota Kendari, Sulawesi Tenggara 93231', 'ando.png'),
(28, '-4.0062218462883115, 122.57270802577118', 'Kantor Kelurahan Tobimeita', 'Nambo', 'XHRP+43J, Jalan, Tobimeita, Kec. Nambo, Kota Kendari, Sulawesi Tenggara 93234', 'tobi.png'),
(29, '-3.964394448750621, 122.57440855316531', 'Kantor Lurah Benu Benua', 'Kendari Barat', '2HJ8+GP5, Bar., Benu-Benua, Kec. Kendari Bar., Kota Kendari, Sulawesi Tenggara', 'benu.png'),
(30, '-3.963195693517628, 122.57028868015064', 'Kantor Kelurahan Puungaloba', 'Kendari Barat', '2HJ7+RJC, Jl. Diponegoro, Punggaloba, Kec. Kendari Bar., Kota Kendari, Sulawesi Tenggara 93123', 'puunga.png'),
(31, '-4.003781150808972, 122.5831632833215', 'Kantor Lurah Anggoeya', 'Poasia', 'XHV6+7V3, Anggoeya, Kec. Poasia, Kota Kendari, Sulawesi Tenggara 93231', 'anggo.png'),
(32, '-3.969311410878054, 122.51828354681422', 'Kantor Lurah Mandonga', 'Mandonga', '2GH6+5FF, Mandonga, Kec. Mandonga, Kota Kendari, Sulawesi Tenggara 93111', 'mando.png'),
(33, '-3.980312181638584, 122.51157214205318', 'Kantor Kelurahan Kadia', 'Kadia', '2G95+42F, Kadia, Kec. Kadia, Kota Kendari, Sulawesi Tenggara 93115', 'kadia.png'),
(34, '-4.004386111340324, 122.64247498755562', 'Kantor Lurah Tondonggeu', 'Nambo', 'XJVQ+74J, Tondonggeu, Kec. Nambo, Kota Kendari, Sulawesi Tenggara 93238', 'tondo.png'),
(35, '-4.008963151849084, 122.58205394645988', 'Kantor Lurah Benua Nirae', 'Abeli', 'Jl. Konawe No.kel, Benuanirae, Kec. Abeli, Kota Kendari, Sulawesi Tenggara 93883', 'nirae.png'),
(36, '-4.012379654614281, 122.5423440653313', 'Kantor Kelurahan Kambu', 'Kambu', 'XGMJ+X53, Jl. Prof. Dr. Abdurrauf Tarimana, Kambu, Kec. Kambu, Kota Kendari, Sulawesi Tenggara 93231', 'kambu.png'),
(37, '-3.9488387497135244, 122.51873986480442', 'Kantor lurah Alolama', 'Mandonga', '2GX7+GP5, Alolama, Kec. Mandonga, Kota Kendari, Sulawesi Tenggara 93112', 'alo.png'),
(38, '-3.941934484567796, 122.49860400342884', 'Kantor Lurah Lalodati', 'Puuwatu', 'Lalodati, Kec. Puuwatu, Kota Kendari, Sulawesi Tenggara 93113', 'lalodati.png'),
(39, '-3.992307828038525, 122.58934309284352', 'Kantor Kelurahan Anggalomelai', 'Abeli', '2H3P+H44, Anggalomelai, Kec. Abeli, Kota Kendari, Sulawesi Tenggara 93234', 'angga.png'),
(40, '-3.960942281655602, 122.55522776268735', 'Kantor Kelurahan Tipulu', 'Kendari Barat', '2GPX+9CX, Jl. Mayjen. Sutoyo, Tipulu, Kec. Kendari Bar., Kota Kendari, Sulawesi Tenggara 93873', 'tipulu.png'),
(41, '-3.9603120793072404, 122.5449582944337', 'Kantor Lurah Watu-watu', 'Kendari Barat', '2GPQ+JQR, Watu-Watu, Kec. Kendari Bar., Kota Kendari, Sulawesi Tenggara 93121', 'watu.png'),
(42, '-3.9935777598821227, 122.51193903094104', 'Kantor lurah anaiwoi', 'Kadia', 'Jl. Sorumba No.52C, Anaiwoi, Kec. Kadia, Kota Kendari, Sulawesi Tenggara 93117', 'anai.png'),
(43, '-4.015722202568278, 122.5419531605703', 'Kantor Lurah Mokoau', 'Kambu', 'XGMM+26H, Jl. Bahteramas, Mokoau, Kec. Kambu, Kota Kendari, Sulawesi Tenggara 93231', 'moko.png'),
(44, '-3.952720555920693, 122.52521115369227', 'Kantor Lurah Anggilowu', 'Mandonga', '2GV8+RV9, Jl. Imam Bonjol, Anggilowu, Kec. Mandonga, Kota Kendari, Sulawesi Tenggara 93112', 'anggi.png'),
(45, '-3.959720428073623, 122.53419494681418', 'kantor lurah kemaraya', 'Kendari Barat', '2GPG+WRW, Kemaraya, Kec. Kendari Bar., Kota Kendari, Sulawesi Tenggara 93121', 'kema.png'),
(46, '-3.9388111652008626, 122.50993316480441', 'Kantor Lurah Wawombalata', 'Mandonga', '3G64+367, Jl. Imam Bonjol, Wawombalata, Kec. Mandonga, Kota Kendari, Sulawesi Tenggara 93113', 'wawo.png'),
(47, '-3.999620828827466, 122.63415054681418', 'Kantor Lurah Sambuli ', 'Nambo', 'XJWG+CRJ, Jl. Poros Kdi.- Moramo, Sambuli, Kec. Nambo, Kota Kendari, Sulawesi Tenggara 93238', 'sambuli.png'),
(48, '-3.9718499255562367, 122.52497367856054', 'Kantor Kelurahan Korumba', 'Mandonga', '2GF9+VHR, Korumba, Kec. Mandonga, Kota Kendari, Sulawesi Tenggara 93461', 'korumba.png'),
(49, '-4.003158981747436, 122.49892505845324', 'Kantor Lurah Anawai', 'Wuawua', 'XFVQ+H4H, Jl. Anawai, Anawai, Kec. Wua-Wua, Kota Kendari, Sulawesi Tenggara 93117', 'anawai.png'),
(50, '-4.020671559153458, 122.53092872670692', 'Kantor Lurah Padaleu', 'Kambu', 'XGG9+QGG, Padaleu, Kec. Kambu, Kota Kendari, Sulawesi Tenggara 93118', 'pade.png'),
(51, '-3.9899103970416117, 122.59071638384842', 'Kantor Lurah Anngalomelai', 'Abeli', '2H4P+GFV, Anggalomelai, Kec. Abeli, Kota Kendari, Sulawesi Tenggara 93234', 'melai.png'),
(52, '-3.9653469476008123, 122.53365945792638', 'Kantor Kelurahan Lahundape', 'Kendari Barat', '2GJJ+R3J, Lahundape, Kec. Kendari Bar., Kota Kendari, Sulawesi Tenggara 93121', 'lahu.png'),
(53, '-3.962914743067396, 122.51003453993611', 'Kantor Kelurahan Tobuuha', 'Puuwatu', '2GP3+6G6, Tobuuha, Kec. Puuwatu, Kota Kendari, Sulawesi Tenggara 93115', 'puwa.png'),
(54, '-4.029013840977035, 122.51100263094105', 'Kantor Kelurahan Lepo-Lepo', 'Baruga', '93116, Lepo-Lepo, Kec. Baruga, Kota Kendari, Sulawesi Tenggara 93116', 'lepo.png'),
(55, '-3.9862792410057173, 122.52514795633621', 'Kantor Kelurahan Bende', 'Kadia', '2G66+RP5, Jl. Sao Sao, Bende, Kec. Kadia, Kota Kendari, Sulawesi Tenggara 93117', 'bende.png'),
(56, '-4.000635530318688, 122.50631932618', 'Kantor Lurah Bonggoeya', 'Wuawua', '93118, Jl. Bahagia, Bonggoeya, Kec. Wua-Wua, Kota Kendari, Sulawesi Tenggara 93117', 'bunggo.png'),
(57, '-4.018664430925671, 122.50884425580931', 'Kantor Lurah Wundudopi', 'Baruga', 'XGH3+P68, Wundudopi, Kec. Baruga, Kota Kendari, Sulawesi Tenggara 93117', 'wundu.png'),
(58, '-4.035422102627332, 122.50186140818978', 'Kantor lurah baruga', 'Baruga', 'XF6V+VRG, Jl. Brigjen Katamso, Baruga, Kec. Baruga, Kota Kendari, Sulawesi Tenggara 93116', ''),
(59, '-3.9908034269934487, 122.52929717644348', 'Kantor Lurah Lalolara', 'Kambu', '2G4C+M95, Jl. Lumba - Lumba, Lalolara, Kec. Kambu, Kota Kendari, Sulawesi Tenggara 93561', 'lalo.png'),
(60, '-3.9639696935168973, 122.50114273781907', 'Kantor Lurah Punggolaka', 'Puuwatu', '2FMV+F32, Punggolaka, Kec. Puuwatu, Kota Kendari, Sulawesi Tenggara 93115', 'punggo.png'),
(61, '-3.9947744469404523, 122.47247554735053', 'Kantor lurah Wua-wua', 'Wuawua', '2F2R+C3X, Jl. Haeba, Dalam, Kec. Wua-Wua, Kota Kendari, Sulawesi Tenggara 93117', 'wua.png'),
(62, '-3.96558049811383, 122.47083809655075', 'Kantor Lurah Puuwatu', 'Puuwatu', '2FM8+6X9, Jl. Chairil Anwar, Puuwatu, Kec. Puuwatu, Kota Kendari, Sulawesi Tenggara 93114', 'puwa.png'),
(63, '-3.972451631642821, 122.51759946057031', 'Kator Lurah Pondambea', 'Kadia', 'Jl. Balai Kota III No.52B, Pondambea, Kec. Kadia, Kota Kendari, Sulawesi Tenggara 93115', 'ponde.png'),
(64, '-3.9936616602148884, 122.51304907856056', 'Kantor Kelurahan Wawowanggu', 'Kadia', '2G34+6QP, Jl. Sorumba, Wowawanggu, Kec. Kadia, Kota Kendari, Sulawesi Tenggara 93117', 'wawo.png'),
(65, '-4.024360421354037, 122.49158663305809', 'Kantor Kelurahan Watubangga', 'Baruga', 'XFCP+FFF, Watubangga, Kec. Baruga, Kota Kendari, Sulawesi Tenggara 93116', 'watu.png'),
(66, '-3.9887663206215396, 122.50034134205318', 'Kantor Lurah Mataiwoi', 'Wuawua', '2F5W+FG7, Lorong H. Lamarundu, Mataiwoi, Kec. Wua-Wua, Kota Kendari, Sulawesi Tenggara 93117', 'matai.png'),
(67, '-3.915574727180321, 122.52960257826167', 'Kantor Lurah Labibia', 'Mandonga', '3FCX+2V9, Labibia, Kec. Mandonga, Kota Kendari, Sulawesi Tenggara 93113', 'labi.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'aaa', '$2y$10$n7RJEMP91E0ft.5fTS61GOC1bAAXEUn2lUwk/jqbNnJtf7/bmOP5S'),
(3, 'andi', '123'),
(4, 'lala', '$2y$10$wkGMtbvgIvnRcZa6hRuVt.AzeskpBHKrs4jT3l8Pre6N/XvpRSjry'),
(5, 'admin', '$2y$10$aEgY35mEAJNppBM6un87gelOwQfT9JHIuyAGCFGrrfvaX9BeN/oOm');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
