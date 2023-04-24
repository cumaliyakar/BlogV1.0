-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 24 Nis 2023, 13:29:59
-- Sunucu sürümü: 5.6.51-cll-lve
-- PHP Sürümü: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `petbakic_blog`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `abone`
--

CREATE TABLE `abone` (
  `id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(15) COLLATE utf8_turkish_ci NOT NULL DEFAULT '00-00-0000',
  `dil` varchar(11) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `abone`
--

INSERT INTO `abone` (`id`, `email`, `tarih`, `dil`) VALUES
(1, 'cumaliyakar@hotmail.com', '21-04-2023', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `altkategori`
--

CREATE TABLE `altkategori` (
  `alt_id` int(11) NOT NULL,
  `alt_title` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `alt_key` int(11) NOT NULL,
  `alt_ustkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `altkategori`
--

INSERT INTO `altkategori` (`alt_id`, `alt_title`, `alt_key`, `alt_ustkey`) VALUES
(1, 'Şiirler', 1, 1),
(2, 'Romanlar', 2, 1),
(3, 'Hikayeler', 3, 1),
(4, 'Edebi Eserler', 4, 1),
(5, 'Sağlıklı Yaşam', 5, 2),
(6, 'Çocuk Sağlığı', 6, 2),
(7, 'Yaşlı Sağlığı', 7, 2),
(8, 'İş Sağlığı', 8, 2),
(9, 'Püf Noktalar', 9, 3),
(10, 'Nasıl Yapılır ?', 10, 3),
(11, 'Para Kazanma', 11, 3),
(12, 'İş Dünyası', 12, 3),
(13, 'Yurt İçi Haberler', 13, 4),
(14, 'Yurt Dışı Haberleri', 14, 4),
(15, 'Enterasan Haberler', 15, 4),
(16, 'Gazete Manşetleri', 16, 4),
(17, 'Gündemde Ne Var', 17, 5),
(18, 'Son Dakika', 18, 5),
(19, 'Siz Olsaydınız ...', 19, 5),
(20, 'Yarının Gündemi', 20, 5),
(21, 'Okul Öncesi', 21, 6),
(22, 'Orta Öğretim', 22, 6),
(23, 'Lise & Kolej', 23, 6),
(24, 'Üniversite & Lisans', 24, 6),
(25, 'Mekanlar', 25, 7),
(26, 'Tatil & Turlar', 26, 7),
(27, 'Eğlence Önerileri', 27, 7),
(28, 'Unutamadıklarınız', 28, 7),
(29, 'Evde Spor', 29, 8),
(30, 'Gym Antronörleri', 30, 8),
(31, 'Spor Tarihçesi', 31, 8),
(32, 'Spor ve Sen', 32, 8),
(33, 'Unutulmaz Gaflar', 33, 9),
(34, 'Bir Zamanlar...', 34, 9),
(35, 'Rekortmenler', 35, 9),
(36, 'Bunu Bilmiyordun !', 36, 9);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anakategori`
--

CREATE TABLE `anakategori` (
  `ana_id` int(11) NOT NULL,
  `ana_title` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ana_key` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `anakategori`
--

INSERT INTO `anakategori` (`ana_id`, `ana_title`, `ana_key`) VALUES
(1, 'Edebiyat', 1),
(2, 'Sağlık', 2),
(3, 'Yaşam', 3),
(4, 'Haber', 4),
(5, 'Gündem', 5),
(6, 'Eğitim', 6),
(7, 'Eğlence', 7),
(8, 'Spor', 8),
(9, 'Enterasan Bilgiler', 9);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `id` int(11) NOT NULL,
  `yetkili` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `password` varchar(150) COLLATE utf8_turkish_ci DEFAULT 'sistem',
  `email` varchar(150) COLLATE utf8_turkish_ci DEFAULT NULL,
  `emaill` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `firma` varchar(150) COLLATE utf8_turkish_ci DEFAULT NULL,
  `baslik` varchar(150) COLLATE utf8_turkish_ci DEFAULT NULL,
  `detay` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  `anahtar` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  `telefon` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `whatsapp` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `adres` varchar(300) COLLATE utf8_turkish_ci DEFAULT NULL,
  `sehir` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ilce` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `facebook` mediumtext COLLATE utf8_turkish_ci,
  `twitter` mediumtext COLLATE utf8_turkish_ci,
  `linkedin` mediumtext COLLATE utf8_turkish_ci,
  `instagram` mediumtext COLLATE utf8_turkish_ci,
  `youtube` mediumtext COLLATE utf8_turkish_ci,
  `logo` text COLLATE utf8_turkish_ci,
  `ikon` text COLLATE utf8_turkish_ci,
  `admin` varchar(11) COLLATE utf8_turkish_ci DEFAULT NULL,
  `harita` text COLLATE utf8_turkish_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `yetkili`, `password`, `email`, `emaill`, `firma`, `baslik`, `detay`, `anahtar`, `telefon`, `whatsapp`, `adres`, `sehir`, `ilce`, `facebook`, `twitter`, `linkedin`, `instagram`, `youtube`, `logo`, `ikon`, `admin`, `harita`) VALUES
(1, 'Admin', '0000', 'admin@hotmail.com', 'admin@gmail.com', 'Blog Sitesi', 'Blog Sitesi', 'Blog Sitesi', 'Blog Sitesi', '05441293919', '05300495242', 'Marjinal Aksesuar', 'İstanbul', 'Taksim', '#', '#', '#', '#', '#', '../logo/fgrtyu671.jpg', '../logo/yutyrt5071.png', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `begeni`
--

CREATE TABLE `begeni` (
  `id` int(11) NOT NULL,
  `uyeID` int(11) NOT NULL,
  `blogID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `begeni`
--

INSERT INTO `begeni` (`id`, `uyeID`, `blogID`) VALUES
(1, 3, 1),
(2, 3, 2),
(3, 2, 7),
(4, 2, 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` mediumtext COLLATE utf8_turkish_ci,
  `anakategori` varchar(55) COLLATE utf8_turkish_ci NOT NULL,
  `altkategori` varchar(55) COLLATE utf8_turkish_ci NOT NULL,
  `okunma` int(11) NOT NULL DEFAULT '0',
  `durum` varchar(25) COLLATE utf8_turkish_ci DEFAULT NULL,
  `uyeID` int(11) DEFAULT NULL,
  `tarih` varchar(25) COLLATE utf8_turkish_ci DEFAULT NULL,
  `onecikan` varchar(25) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `blog`
--

INSERT INTO `blog` (`id`, `baslik`, `aciklama`, `anakategori`, `altkategori`, `okunma`, `durum`, `uyeID`, `tarih`, `onecikan`) VALUES
(1, 'Yalnızlık Şiirleri', '<p>Blog, çevrimiçi bir platformda düzenli olarak yayınlanan kişisel veya profesyonel içeriklerin paylaşıldığı bir web günlüğüdür. Blog yazmak, kişisel veya iş amaçlarına yönelik olarak çevrimiçi bir varlığın oluşturulması, güncellenmesi ve geliştirilmesi için harika bir yoldur.</p><p>İşte bir blog yazmak için izlenebilecek adımlar:&nbsp;</p><p>Konu Seçimi: Blog yazmaya başlamadan önce, hangi konular hakkında yazmak istediğinizi belirlemeniz gerekir. Konunuzun ilginç, benzersiz ve okuyucular için değerli olması önemlidir.&nbsp;</p><p>Hedef Okuyucu Kitlesi Belirleme: Blogunuzun hedef kitlesini belirlemek, konunuzu daraltmanıza ve yazınızı daha özelleştirmenize yardımcı olacaktır. Hedef kitleniz kimlerdir, hangi konularda bilgi almak istiyorlar, hangi dilde yazmalısınız gibi soruları cevaplamak önemlidir.&nbsp;</p><p>Başlık Belirleme: Başlık, okuyucuların yazınıza ilgisini çeken ilk şeydir. Başlığınızın ilgi çekici, özgün ve kısa olmasına özen gösterin.</p><p>Planlama ve Araştırma: Blog yazmak için planlama yapmak önemlidir. Yazınızın ana hatlarını belirleyin ve gerekli araştırmaları yapın. Bilgi kaynaklarınızı doğru seçin ve farklı kaynaklardan bilgi toplamanızı öneririz.</p><p>Yazma: Planlama ve araştırma yapmanın ardından yazmaya başlayabilirsiniz. Yazınızı okuyucu dostu ve anlaşılır bir dille yazmaya özen gösterin. Cümleleri kısa ve anlamlı tutun.</p>', '1', '1', 44, 'Aktif', 3, '21-04-2023', 'Hayır'),
(2, 'Aşkın İzleri', '<p>Blog, çevrimiçi bir platformda düzenli olarak yayınlanan kişisel veya profesyonel içeriklerin paylaşıldığı bir web günlüğüdür. Blog yazmak, kişisel veya iş amaçlarına yönelik olarak çevrimiçi bir varlığın oluşturulması, güncellenmesi ve geliştirilmesi için harika bir yoldur.</p><br>\r\n\r\n<p>İşte bir blog yazmak için izlenebilecek adımlar:</p><br>\r\n<p>Konu Seçimi: Blog yazmaya başlamadan önce, hangi konular hakkında yazmak istediğinizi belirlemeniz gerekir. Konunuzun ilginç, benzersiz ve okuyucular için değerli olması önemlidir.</p><br>\r\n<p>Hedef Okuyucu Kitlesi Belirleme: Blogunuzun hedef kitlesini belirlemek, konunuzu daraltmanıza ve yazınızı daha özelleştirmenize yardımcı olacaktır. Hedef kitleniz kimlerdir, hangi konularda bilgi almak istiyorlar, hangi dilde yazmalısınız gibi soruları cevaplamak önemlidir.</p><br>\r\n<p>Başlık Belirleme: Başlık, okuyucuların yazınıza ilgisini çeken ilk şeydir. Başlığınızın ilgi çekici, özgün ve kısa olmasına özen gösterin.</p><br>\r\n<p>Planlama ve Araştırma: Blog yazmak için planlama yapmak önemlidir. Yazınızın ana hatlarını belirleyin ve gerekli araştırmaları yapın. Bilgi kaynaklarınızı doğru seçin ve farklı kaynaklardan bilgi toplamanızı öneririz.</p><br>\r\n<p>Yazma: Planlama ve araştırma yapmanın ardından yazmaya başlayabilirsiniz. Yazınızı okuyucu dostu ve anlaşılır bir dille yazmaya özen gösterin. Cümleleri kısa ve anlamlı tutun.</p>', '1', '1', 5, 'Aktif', 3, '21-04-2023', 'Evet'),
(3, 'Doğa ve Ben', '<p>Blog, çevrimiçi bir platformda düzenli olarak yayınlanan kişisel veya profesyonel içeriklerin paylaşıldığı bir web günlüğüdür. Blog yazmak, kişisel veya iş amaçlarına yönelik olarak çevrimiçi bir varlığın oluşturulması, güncellenmesi ve geliştirilmesi için harika bir yoldur.</p><br>\n\n<p>İşte bir blog yazmak için izlenebilecek adımlar:</p><br>\n<p>Konu Seçimi: Blog yazmaya başlamadan önce, hangi konular hakkında yazmak istediğinizi belirlemeniz gerekir. Konunuzun ilginç, benzersiz ve okuyucular için değerli olması önemlidir.</p><br>\n<p>Hedef Okuyucu Kitlesi Belirleme: Blogunuzun hedef kitlesini belirlemek, konunuzu daraltmanıza ve yazınızı daha özelleştirmenize yardımcı olacaktır. Hedef kitleniz kimlerdir, hangi konularda bilgi almak istiyorlar, hangi dilde yazmalısınız gibi soruları cevaplamak önemlidir.</p><br>\n<p>Başlık Belirleme: Başlık, okuyucuların yazınıza ilgisini çeken ilk şeydir. Başlığınızın ilgi çekici, özgün ve kısa olmasına özen gösterin.</p><br>\n<p>Planlama ve Araştırma: Blog yazmak için planlama yapmak önemlidir. Yazınızın ana hatlarını belirleyin ve gerekli araştırmaları yapın. Bilgi kaynaklarınızı doğru seçin ve farklı kaynaklardan bilgi toplamanızı öneririz.</p><br>\n<p>Yazma: Planlama ve araştırma yapmanın ardından yazmaya başlayabilirsiniz. Yazınızı okuyucu dostu ve anlaşılır bir dille yazmaya özen gösterin. Cümleleri kısa ve anlamlı tutun.</p>', '1', '1', 1, 'Aktif', 3, '21-04-2023', 'Hayır'),
(4, 'Geçmişin Yankıları', '<p>Blog, çevrimiçi bir platformda düzenli olarak yayınlanan kişisel veya profesyonel içeriklerin paylaşıldığı bir web günlüğüdür. Blog yazmak, kişisel veya iş amaçlarına yönelik olarak çevrimiçi bir varlığın oluşturulması, güncellenmesi ve geliştirilmesi için harika bir yoldur.</p><br>\n\n<p>İşte bir blog yazmak için izlenebilecek adımlar:</p><br>\n<p>Konu Seçimi: Blog yazmaya başlamadan önce, hangi konular hakkında yazmak istediğinizi belirlemeniz gerekir. Konunuzun ilginç, benzersiz ve okuyucular için değerli olması önemlidir.</p><br>\n<p>Hedef Okuyucu Kitlesi Belirleme: Blogunuzun hedef kitlesini belirlemek, konunuzu daraltmanıza ve yazınızı daha özelleştirmenize yardımcı olacaktır. Hedef kitleniz kimlerdir, hangi konularda bilgi almak istiyorlar, hangi dilde yazmalısınız gibi soruları cevaplamak önemlidir.</p><br>\n<p>Başlık Belirleme: Başlık, okuyucuların yazınıza ilgisini çeken ilk şeydir. Başlığınızın ilgi çekici, özgün ve kısa olmasına özen gösterin.</p><br>\n<p>Planlama ve Araştırma: Blog yazmak için planlama yapmak önemlidir. Yazınızın ana hatlarını belirleyin ve gerekli araştırmaları yapın. Bilgi kaynaklarınızı doğru seçin ve farklı kaynaklardan bilgi toplamanızı öneririz.</p><br>\n<p>Yazma: Planlama ve araştırma yapmanın ardından yazmaya başlayabilirsiniz. Yazınızı okuyucu dostu ve anlaşılır bir dille yazmaya özen gösterin. Cümleleri kısa ve anlamlı tutun.</p>', '1', '1', 13, 'Aktif', 3, '21-04-2023', 'Evet'),
(5, 'Şehir Rüyaları', '<p>Blog, çevrimiçi bir platformda düzenli olarak yayınlanan kişisel veya profesyonel içeriklerin paylaşıldığı bir web günlüğüdür. Blog yazmak, kişisel veya iş amaçlarına yönelik olarak çevrimiçi bir varlığın oluşturulması, güncellenmesi ve geliştirilmesi için harika bir yoldur.</p><br>\n\n<p>İşte bir blog yazmak için izlenebilecek adımlar:</p><br>\n<p>Konu Seçimi: Blog yazmaya başlamadan önce, hangi konular hakkında yazmak istediğinizi belirlemeniz gerekir. Konunuzun ilginç, benzersiz ve okuyucular için değerli olması önemlidir.</p><br>\n<p>Hedef Okuyucu Kitlesi Belirleme: Blogunuzun hedef kitlesini belirlemek, konunuzu daraltmanıza ve yazınızı daha özelleştirmenize yardımcı olacaktır. Hedef kitleniz kimlerdir, hangi konularda bilgi almak istiyorlar, hangi dilde yazmalısınız gibi soruları cevaplamak önemlidir.</p><br>\n<p>Başlık Belirleme: Başlık, okuyucuların yazınıza ilgisini çeken ilk şeydir. Başlığınızın ilgi çekici, özgün ve kısa olmasına özen gösterin.</p><br>\n<p>Planlama ve Araştırma: Blog yazmak için planlama yapmak önemlidir. Yazınızın ana hatlarını belirleyin ve gerekli araştırmaları yapın. Bilgi kaynaklarınızı doğru seçin ve farklı kaynaklardan bilgi toplamanızı öneririz.</p><br>\n<p>Yazma: Planlama ve araştırma yapmanın ardından yazmaya başlayabilirsiniz. Yazınızı okuyucu dostu ve anlaşılır bir dille yazmaya özen gösterin. Cümleleri kısa ve anlamlı tutun.</p>', '1', '1', 3, 'Aktif', 3, '21-04-2023', 'Evet'),
(6, 'Özgürlük Sessizliği', '<p>Blog, çevrimiçi bir platformda düzenli olarak yayınlanan kişisel veya profesyonel içeriklerin paylaşıldığı bir web günlüğüdür. Blog yazmak, kişisel veya iş amaçlarına yönelik olarak çevrimiçi bir varlığın oluşturulması, güncellenmesi ve geliştirilmesi için harika bir yoldur.</p><br>\n\n<p>İşte bir blog yazmak için izlenebilecek adımlar:</p><br>\n<p>Konu Seçimi: Blog yazmaya başlamadan önce, hangi konular hakkında yazmak istediğinizi belirlemeniz gerekir. Konunuzun ilginç, benzersiz ve okuyucular için değerli olması önemlidir.</p><br>\n<p>Hedef Okuyucu Kitlesi Belirleme: Blogunuzun hedef kitlesini belirlemek, konunuzu daraltmanıza ve yazınızı daha özelleştirmenize yardımcı olacaktır. Hedef kitleniz kimlerdir, hangi konularda bilgi almak istiyorlar, hangi dilde yazmalısınız gibi soruları cevaplamak önemlidir.</p><br>\n<p>Başlık Belirleme: Başlık, okuyucuların yazınıza ilgisini çeken ilk şeydir. Başlığınızın ilgi çekici, özgün ve kısa olmasına özen gösterin.</p><br>\n<p>Planlama ve Araştırma: Blog yazmak için planlama yapmak önemlidir. Yazınızın ana hatlarını belirleyin ve gerekli araştırmaları yapın. Bilgi kaynaklarınızı doğru seçin ve farklı kaynaklardan bilgi toplamanızı öneririz.</p><br>\n<p>Yazma: Planlama ve araştırma yapmanın ardından yazmaya başlayabilirsiniz. Yazınızı okuyucu dostu ve anlaşılır bir dille yazmaya özen gösterin. Cümleleri kısa ve anlamlı tutun.</p>', '1', '2', 2, 'Aktif', 3, '21-04-2023', 'Evet'),
(7, 'İçsel Yolculuk', '<p>Blog, çevrimiçi bir platformda düzenli olarak yayınlanan kişisel veya profesyonel içeriklerin paylaşıldığı bir web günlüğüdür. Blog yazmak, kişisel veya iş amaçlarına yönelik olarak çevrimiçi bir varlığın oluşturulması, güncellenmesi ve geliştirilmesi için harika bir yoldur.</p><br>\n\n<p>İşte bir blog yazmak için izlenebilecek adımlar:</p><br>\n<p>Konu Seçimi: Blog yazmaya başlamadan önce, hangi konular hakkında yazmak istediğinizi belirlemeniz gerekir. Konunuzun ilginç, benzersiz ve okuyucular için değerli olması önemlidir.</p><br>\n<p>Hedef Okuyucu Kitlesi Belirleme: Blogunuzun hedef kitlesini belirlemek, konunuzu daraltmanıza ve yazınızı daha özelleştirmenize yardımcı olacaktır. Hedef kitleniz kimlerdir, hangi konularda bilgi almak istiyorlar, hangi dilde yazmalısınız gibi soruları cevaplamak önemlidir.</p><br>\n<p>Başlık Belirleme: Başlık, okuyucuların yazınıza ilgisini çeken ilk şeydir. Başlığınızın ilgi çekici, özgün ve kısa olmasına özen gösterin.</p><br>\n<p>Planlama ve Araştırma: Blog yazmak için planlama yapmak önemlidir. Yazınızın ana hatlarını belirleyin ve gerekli araştırmaları yapın. Bilgi kaynaklarınızı doğru seçin ve farklı kaynaklardan bilgi toplamanızı öneririz.</p><br>\n<p>Yazma: Planlama ve araştırma yapmanın ardından yazmaya başlayabilirsiniz. Yazınızı okuyucu dostu ve anlaşılır bir dille yazmaya özen gösterin. Cümleleri kısa ve anlamlı tutun.</p>', '1', '2', 8, 'Aktif', 3, '21-04-2023', 'Evet'),
(8, 'Gece Yarısı Düşleri', '<p>Blog, çevrimiçi bir platformda düzenli olarak yayınlanan kişisel veya profesyonel içeriklerin paylaşıldığı bir web günlüğüdür. Blog yazmak, kişisel veya iş amaçlarına yönelik olarak çevrimiçi bir varlığın oluşturulması, güncellenmesi ve geliştirilmesi için harika bir yoldur.</p><br>\n\n<p>İşte bir blog yazmak için izlenebilecek adımlar:</p><br>\n<p>Konu Seçimi: Blog yazmaya başlamadan önce, hangi konular hakkında yazmak istediğinizi belirlemeniz gerekir. Konunuzun ilginç, benzersiz ve okuyucular için değerli olması önemlidir.</p><br>\n<p>Hedef Okuyucu Kitlesi Belirleme: Blogunuzun hedef kitlesini belirlemek, konunuzu daraltmanıza ve yazınızı daha özelleştirmenize yardımcı olacaktır. Hedef kitleniz kimlerdir, hangi konularda bilgi almak istiyorlar, hangi dilde yazmalısınız gibi soruları cevaplamak önemlidir.</p><br>\n<p>Başlık Belirleme: Başlık, okuyucuların yazınıza ilgisini çeken ilk şeydir. Başlığınızın ilgi çekici, özgün ve kısa olmasına özen gösterin.</p><br>\n<p>Planlama ve Araştırma: Blog yazmak için planlama yapmak önemlidir. Yazınızın ana hatlarını belirleyin ve gerekli araştırmaları yapın. Bilgi kaynaklarınızı doğru seçin ve farklı kaynaklardan bilgi toplamanızı öneririz.</p><br>\n<p>Yazma: Planlama ve araştırma yapmanın ardından yazmaya başlayabilirsiniz. Yazınızı okuyucu dostu ve anlaşılır bir dille yazmaya özen gösterin. Cümleleri kısa ve anlamlı tutun.</p>', '1', '2', 15, 'Aktif', 2, '21-04-2023', 'Hayır'),
(9, 'Kırgın Aşk Şarkıları', '<p>Blog, çevrimiçi bir platformda düzenli olarak yayınlanan kişisel veya profesyonel içeriklerin paylaşıldığı bir web günlüğüdür. Blog yazmak, kişisel veya iş amaçlarına yönelik olarak çevrimiçi bir varlığın oluşturulması, güncellenmesi ve geliştirilmesi için harika bir yoldur.</p><br>\n\n<p>İşte bir blog yazmak için izlenebilecek adımlar:</p><br>\n<p>Konu Seçimi: Blog yazmaya başlamadan önce, hangi konular hakkında yazmak istediğinizi belirlemeniz gerekir. Konunuzun ilginç, benzersiz ve okuyucular için değerli olması önemlidir.</p><br>\n<p>Hedef Okuyucu Kitlesi Belirleme: Blogunuzun hedef kitlesini belirlemek, konunuzu daraltmanıza ve yazınızı daha özelleştirmenize yardımcı olacaktır. Hedef kitleniz kimlerdir, hangi konularda bilgi almak istiyorlar, hangi dilde yazmalısınız gibi soruları cevaplamak önemlidir.</p><br>\n<p>Başlık Belirleme: Başlık, okuyucuların yazınıza ilgisini çeken ilk şeydir. Başlığınızın ilgi çekici, özgün ve kısa olmasına özen gösterin.</p><br>\n<p>Planlama ve Araştırma: Blog yazmak için planlama yapmak önemlidir. Yazınızın ana hatlarını belirleyin ve gerekli araştırmaları yapın. Bilgi kaynaklarınızı doğru seçin ve farklı kaynaklardan bilgi toplamanızı öneririz.</p><br>\n<p>Yazma: Planlama ve araştırma yapmanın ardından yazmaya başlayabilirsiniz. Yazınızı okuyucu dostu ve anlaşılır bir dille yazmaya özen gösterin. Cümleleri kısa ve anlamlı tutun.</p>', '1', '2', 0, 'Aktif', 2, '21-04-2023', 'Evet'),
(10, 'Baharın Gelişi', '<p>Blog, çevrimiçi bir platformda düzenli olarak yayınlanan kişisel veya profesyonel içeriklerin paylaşıldığı bir web günlüğüdür. Blog yazmak, kişisel veya iş amaçlarına yönelik olarak çevrimiçi bir varlığın oluşturulması, güncellenmesi ve geliştirilmesi için harika bir yoldur.</p><br>\n\n<p>İşte bir blog yazmak için izlenebilecek adımlar:</p><br>\n<p>Konu Seçimi: Blog yazmaya başlamadan önce, hangi konular hakkında yazmak istediğinizi belirlemeniz gerekir. Konunuzun ilginç, benzersiz ve okuyucular için değerli olması önemlidir.</p><br>\n<p>Hedef Okuyucu Kitlesi Belirleme: Blogunuzun hedef kitlesini belirlemek, konunuzu daraltmanıza ve yazınızı daha özelleştirmenize yardımcı olacaktır. Hedef kitleniz kimlerdir, hangi konularda bilgi almak istiyorlar, hangi dilde yazmalısınız gibi soruları cevaplamak önemlidir.</p><br>\n<p>Başlık Belirleme: Başlık, okuyucuların yazınıza ilgisini çeken ilk şeydir. Başlığınızın ilgi çekici, özgün ve kısa olmasına özen gösterin.</p><br>\n<p>Planlama ve Araştırma: Blog yazmak için planlama yapmak önemlidir. Yazınızın ana hatlarını belirleyin ve gerekli araştırmaları yapın. Bilgi kaynaklarınızı doğru seçin ve farklı kaynaklardan bilgi toplamanızı öneririz.</p><br>\n<p>Yazma: Planlama ve araştırma yapmanın ardından yazmaya başlayabilirsiniz. Yazınızı okuyucu dostu ve anlaşılır bir dille yazmaya özen gösterin. Cümleleri kısa ve anlamlı tutun.</p>', '1', '2', 0, 'Aktif', 2, '21-04-2023', 'Evet'),
(11, 'Karanlık Gecede', '<p>Blog, çevrimiçi bir platformda düzenli olarak yayınlanan kişisel veya profesyonel içeriklerin paylaşıldığı bir web günlüğüdür. Blog yazmak, kişisel veya iş amaçlarına yönelik olarak çevrimiçi bir varlığın oluşturulması, güncellenmesi ve geliştirilmesi için harika bir yoldur.</p><br>\n\n<p>İşte bir blog yazmak için izlenebilecek adımlar:</p><br>\n<p>Konu Seçimi: Blog yazmaya başlamadan önce, hangi konular hakkında yazmak istediğinizi belirlemeniz gerekir. Konunuzun ilginç, benzersiz ve okuyucular için değerli olması önemlidir.</p><br>\n<p>Hedef Okuyucu Kitlesi Belirleme: Blogunuzun hedef kitlesini belirlemek, konunuzu daraltmanıza ve yazınızı daha özelleştirmenize yardımcı olacaktır. Hedef kitleniz kimlerdir, hangi konularda bilgi almak istiyorlar, hangi dilde yazmalısınız gibi soruları cevaplamak önemlidir.</p><br>\n<p>Başlık Belirleme: Başlık, okuyucuların yazınıza ilgisini çeken ilk şeydir. Başlığınızın ilgi çekici, özgün ve kısa olmasına özen gösterin.</p><br>\n<p>Planlama ve Araştırma: Blog yazmak için planlama yapmak önemlidir. Yazınızın ana hatlarını belirleyin ve gerekli araştırmaları yapın. Bilgi kaynaklarınızı doğru seçin ve farklı kaynaklardan bilgi toplamanızı öneririz.</p><br>\n<p>Yazma: Planlama ve araştırma yapmanın ardından yazmaya başlayabilirsiniz. Yazınızı okuyucu dostu ve anlaşılır bir dille yazmaya özen gösterin. Cümleleri kısa ve anlamlı tutun.</p>', '1', '3', 0, 'Aktif', 2, '21-04-2023', 'Hayır'),
(12, 'Aşkın İzdüşümleri', '<p>Blog, çevrimiçi bir platformda düzenli olarak yayınlanan kişisel veya profesyonel içeriklerin paylaşıldığı bir web günlüğüdür. Blog yazmak, kişisel veya iş amaçlarına yönelik olarak çevrimiçi bir varlığın oluşturulması, güncellenmesi ve geliştirilmesi için harika bir yoldur.</p><br>\n\n<p>İşte bir blog yazmak için izlenebilecek adımlar:</p><br>\n<p>Konu Seçimi: Blog yazmaya başlamadan önce, hangi konular hakkında yazmak istediğinizi belirlemeniz gerekir. Konunuzun ilginç, benzersiz ve okuyucular için değerli olması önemlidir.</p><br>\n<p>Hedef Okuyucu Kitlesi Belirleme: Blogunuzun hedef kitlesini belirlemek, konunuzu daraltmanıza ve yazınızı daha özelleştirmenize yardımcı olacaktır. Hedef kitleniz kimlerdir, hangi konularda bilgi almak istiyorlar, hangi dilde yazmalısınız gibi soruları cevaplamak önemlidir.</p><br>\n<p>Başlık Belirleme: Başlık, okuyucuların yazınıza ilgisini çeken ilk şeydir. Başlığınızın ilgi çekici, özgün ve kısa olmasına özen gösterin.</p><br>\n<p>Planlama ve Araştırma: Blog yazmak için planlama yapmak önemlidir. Yazınızın ana hatlarını belirleyin ve gerekli araştırmaları yapın. Bilgi kaynaklarınızı doğru seçin ve farklı kaynaklardan bilgi toplamanızı öneririz.</p><br>\n<p>Yazma: Planlama ve araştırma yapmanın ardından yazmaya başlayabilirsiniz. Yazınızı okuyucu dostu ve anlaşılır bir dille yazmaya özen gösterin. Cümleleri kısa ve anlamlı tutun.</p>', '1', '3', 1, 'Aktif', 2, '21-04-2023', 'Evet'),
(13, 'Özlem', '<p>Blog, çevrimiçi bir platformda düzenli olarak yayınlanan kişisel veya profesyonel içeriklerin paylaşıldığı bir web günlüğüdür. Blog yazmak, kişisel veya iş amaçlarına yönelik olarak çevrimiçi bir varlığın oluşturulması, güncellenmesi ve geliştirilmesi için harika bir yoldur.</p><br>\n\n<p>İşte bir blog yazmak için izlenebilecek adımlar:</p><br>\n<p>Konu Seçimi: Blog yazmaya başlamadan önce, hangi konular hakkında yazmak istediğinizi belirlemeniz gerekir. Konunuzun ilginç, benzersiz ve okuyucular için değerli olması önemlidir.</p><br>\n<p>Hedef Okuyucu Kitlesi Belirleme: Blogunuzun hedef kitlesini belirlemek, konunuzu daraltmanıza ve yazınızı daha özelleştirmenize yardımcı olacaktır. Hedef kitleniz kimlerdir, hangi konularda bilgi almak istiyorlar, hangi dilde yazmalısınız gibi soruları cevaplamak önemlidir.</p><br>\n<p>Başlık Belirleme: Başlık, okuyucuların yazınıza ilgisini çeken ilk şeydir. Başlığınızın ilgi çekici, özgün ve kısa olmasına özen gösterin.</p><br>\n<p>Planlama ve Araştırma: Blog yazmak için planlama yapmak önemlidir. Yazınızın ana hatlarını belirleyin ve gerekli araştırmaları yapın. Bilgi kaynaklarınızı doğru seçin ve farklı kaynaklardan bilgi toplamanızı öneririz.</p><br>\n<p>Yazma: Planlama ve araştırma yapmanın ardından yazmaya başlayabilirsiniz. Yazınızı okuyucu dostu ve anlaşılır bir dille yazmaya özen gösterin. Cümleleri kısa ve anlamlı tutun.</p>', '1', '3', 0, 'Aktif', 2, '21-04-2023', 'Hayır'),
(14, 'Yitirilmiş Umutlar', '<p>Blog, çevrimiçi bir platformda düzenli olarak yayınlanan kişisel veya profesyonel içeriklerin paylaşıldığı bir web günlüğüdür. Blog yazmak, kişisel veya iş amaçlarına yönelik olarak çevrimiçi bir varlığın oluşturulması, güncellenmesi ve geliştirilmesi için harika bir yoldur.</p><br>\n\n<p>İşte bir blog yazmak için izlenebilecek adımlar:</p><br>\n<p>Konu Seçimi: Blog yazmaya başlamadan önce, hangi konular hakkında yazmak istediğinizi belirlemeniz gerekir. Konunuzun ilginç, benzersiz ve okuyucular için değerli olması önemlidir.</p><br>\n<p>Hedef Okuyucu Kitlesi Belirleme: Blogunuzun hedef kitlesini belirlemek, konunuzu daraltmanıza ve yazınızı daha özelleştirmenize yardımcı olacaktır. Hedef kitleniz kimlerdir, hangi konularda bilgi almak istiyorlar, hangi dilde yazmalısınız gibi soruları cevaplamak önemlidir.</p><br>\n<p>Başlık Belirleme: Başlık, okuyucuların yazınıza ilgisini çeken ilk şeydir. Başlığınızın ilgi çekici, özgün ve kısa olmasına özen gösterin.</p><br>\n<p>Planlama ve Araştırma: Blog yazmak için planlama yapmak önemlidir. Yazınızın ana hatlarını belirleyin ve gerekli araştırmaları yapın. Bilgi kaynaklarınızı doğru seçin ve farklı kaynaklardan bilgi toplamanızı öneririz.</p><br>\n<p>Yazma: Planlama ve araştırma yapmanın ardından yazmaya başlayabilirsiniz. Yazınızı okuyucu dostu ve anlaşılır bir dille yazmaya özen gösterin. Cümleleri kısa ve anlamlı tutun.</p>', '1', '3', 2, 'Aktif', 2, '21-04-2023', 'Evet'),
(15, 'Aşkın Şarkısı', '<p>Blog, çevrimiçi bir platformda düzenli olarak yayınlanan kişisel veya profesyonel içeriklerin paylaşıldığı bir web günlüğüdür. Blog yazmak, kişisel veya iş amaçlarına yönelik olarak çevrimiçi bir varlığın oluşturulması, güncellenmesi ve geliştirilmesi için harika bir yoldur.</p><br>\n\n<p>İşte bir blog yazmak için izlenebilecek adımlar:</p><br>\n<p>Konu Seçimi: Blog yazmaya başlamadan önce, hangi konular hakkında yazmak istediğinizi belirlemeniz gerekir. Konunuzun ilginç, benzersiz ve okuyucular için değerli olması önemlidir.</p><br>\n<p>Hedef Okuyucu Kitlesi Belirleme: Blogunuzun hedef kitlesini belirlemek, konunuzu daraltmanıza ve yazınızı daha özelleştirmenize yardımcı olacaktır. Hedef kitleniz kimlerdir, hangi konularda bilgi almak istiyorlar, hangi dilde yazmalısınız gibi soruları cevaplamak önemlidir.</p><br>\n<p>Başlık Belirleme: Başlık, okuyucuların yazınıza ilgisini çeken ilk şeydir. Başlığınızın ilgi çekici, özgün ve kısa olmasına özen gösterin.</p><br>\n<p>Planlama ve Araştırma: Blog yazmak için planlama yapmak önemlidir. Yazınızın ana hatlarını belirleyin ve gerekli araştırmaları yapın. Bilgi kaynaklarınızı doğru seçin ve farklı kaynaklardan bilgi toplamanızı öneririz.</p><br>\n<p>Yazma: Planlama ve araştırma yapmanın ardından yazmaya başlayabilirsiniz. Yazınızı okuyucu dostu ve anlaşılır bir dille yazmaya özen gösterin. Cümleleri kısa ve anlamlı tutun.</p>', '1', '3', 0, 'Aktif', 2, '21-04-2023', 'Evet'),
(16, 'Sonsuzluğa Yolculuk', '<p>Blog, çevrimiçi bir platformda düzenli olarak yayınlanan kişisel veya profesyonel içeriklerin paylaşıldığı bir web günlüğüdür. Blog yazmak, kişisel veya iş amaçlarına yönelik olarak çevrimiçi bir varlığın oluşturulması, güncellenmesi ve geliştirilmesi için harika bir yoldur.</p><br>\n\n<p>İşte bir blog yazmak için izlenebilecek adımlar:</p><br>\n<p>Konu Seçimi: Blog yazmaya başlamadan önce, hangi konular hakkında yazmak istediğinizi belirlemeniz gerekir. Konunuzun ilginç, benzersiz ve okuyucular için değerli olması önemlidir.</p><br>\n<p>Hedef Okuyucu Kitlesi Belirleme: Blogunuzun hedef kitlesini belirlemek, konunuzu daraltmanıza ve yazınızı daha özelleştirmenize yardımcı olacaktır. Hedef kitleniz kimlerdir, hangi konularda bilgi almak istiyorlar, hangi dilde yazmalısınız gibi soruları cevaplamak önemlidir.</p><br>\n<p>Başlık Belirleme: Başlık, okuyucuların yazınıza ilgisini çeken ilk şeydir. Başlığınızın ilgi çekici, özgün ve kısa olmasına özen gösterin.</p><br>\n<p>Planlama ve Araştırma: Blog yazmak için planlama yapmak önemlidir. Yazınızın ana hatlarını belirleyin ve gerekli araştırmaları yapın. Bilgi kaynaklarınızı doğru seçin ve farklı kaynaklardan bilgi toplamanızı öneririz.</p><br>\n<p>Yazma: Planlama ve araştırma yapmanın ardından yazmaya başlayabilirsiniz. Yazınızı okuyucu dostu ve anlaşılır bir dille yazmaya özen gösterin. Cümleleri kısa ve anlamlı tutun.</p>', '1', '3', 2, 'Aktif', 1, '21-04-2023', 'Hayır'),
(17, 'Sonbahar Rüzgarları', '<p>Blog, çevrimiçi bir platformda düzenli olarak yayınlanan kişisel veya profesyonel içeriklerin paylaşıldığı bir web günlüğüdür. Blog yazmak, kişisel veya iş amaçlarına yönelik olarak çevrimiçi bir varlığın oluşturulması, güncellenmesi ve geliştirilmesi için harika bir yoldur.</p><br>\n\n<p>İşte bir blog yazmak için izlenebilecek adımlar:</p><br>\n<p>Konu Seçimi: Blog yazmaya başlamadan önce, hangi konular hakkında yazmak istediğinizi belirlemeniz gerekir. Konunuzun ilginç, benzersiz ve okuyucular için değerli olması önemlidir.</p><br>\n<p>Hedef Okuyucu Kitlesi Belirleme: Blogunuzun hedef kitlesini belirlemek, konunuzu daraltmanıza ve yazınızı daha özelleştirmenize yardımcı olacaktır. Hedef kitleniz kimlerdir, hangi konularda bilgi almak istiyorlar, hangi dilde yazmalısınız gibi soruları cevaplamak önemlidir.</p><br>\n<p>Başlık Belirleme: Başlık, okuyucuların yazınıza ilgisini çeken ilk şeydir. Başlığınızın ilgi çekici, özgün ve kısa olmasına özen gösterin.</p><br>\n<p>Planlama ve Araştırma: Blog yazmak için planlama yapmak önemlidir. Yazınızın ana hatlarını belirleyin ve gerekli araştırmaları yapın. Bilgi kaynaklarınızı doğru seçin ve farklı kaynaklardan bilgi toplamanızı öneririz.</p><br>\n<p>Yazma: Planlama ve araştırma yapmanın ardından yazmaya başlayabilirsiniz. Yazınızı okuyucu dostu ve anlaşılır bir dille yazmaya özen gösterin. Cümleleri kısa ve anlamlı tutun.</p>', '1', '4', 0, 'Aktif', 1, '21-04-2023', 'Hayır'),
(18, 'Ruhun Perdesi', '<p>Blog, çevrimiçi bir platformda düzenli olarak yayınlanan kişisel veya profesyonel içeriklerin paylaşıldığı bir web günlüğüdür. Blog yazmak, kişisel veya iş amaçlarına yönelik olarak çevrimiçi bir varlığın oluşturulması, güncellenmesi ve geliştirilmesi için harika bir yoldur.</p><br>\n\n<p>İşte bir blog yazmak için izlenebilecek adımlar:</p><br>\n<p>Konu Seçimi: Blog yazmaya başlamadan önce, hangi konular hakkında yazmak istediğinizi belirlemeniz gerekir. Konunuzun ilginç, benzersiz ve okuyucular için değerli olması önemlidir.</p><br>\n<p>Hedef Okuyucu Kitlesi Belirleme: Blogunuzun hedef kitlesini belirlemek, konunuzu daraltmanıza ve yazınızı daha özelleştirmenize yardımcı olacaktır. Hedef kitleniz kimlerdir, hangi konularda bilgi almak istiyorlar, hangi dilde yazmalısınız gibi soruları cevaplamak önemlidir.</p><br>\n<p>Başlık Belirleme: Başlık, okuyucuların yazınıza ilgisini çeken ilk şeydir. Başlığınızın ilgi çekici, özgün ve kısa olmasına özen gösterin.</p><br>\n<p>Planlama ve Araştırma: Blog yazmak için planlama yapmak önemlidir. Yazınızın ana hatlarını belirleyin ve gerekli araştırmaları yapın. Bilgi kaynaklarınızı doğru seçin ve farklı kaynaklardan bilgi toplamanızı öneririz.</p><br>\n<p>Yazma: Planlama ve araştırma yapmanın ardından yazmaya başlayabilirsiniz. Yazınızı okuyucu dostu ve anlaşılır bir dille yazmaya özen gösterin. Cümleleri kısa ve anlamlı tutun.</p>', '1', '4', 2, 'Aktif', 1, '21-04-2023', 'Hayır'),
(19, 'Hayatın Anlamı', '<p>Blog, çevrimiçi bir platformda düzenli olarak yayınlanan kişisel veya profesyonel içeriklerin paylaşıldığı bir web günlüğüdür. Blog yazmak, kişisel veya iş amaçlarına yönelik olarak çevrimiçi bir varlığın oluşturulması, güncellenmesi ve geliştirilmesi için harika bir yoldur.</p><br>\n\n<p>İşte bir blog yazmak için izlenebilecek adımlar:</p><br>\n<p>Konu Seçimi: Blog yazmaya başlamadan önce, hangi konular hakkında yazmak istediğinizi belirlemeniz gerekir. Konunuzun ilginç, benzersiz ve okuyucular için değerli olması önemlidir.</p><br>\n<p>Hedef Okuyucu Kitlesi Belirleme: Blogunuzun hedef kitlesini belirlemek, konunuzu daraltmanıza ve yazınızı daha özelleştirmenize yardımcı olacaktır. Hedef kitleniz kimlerdir, hangi konularda bilgi almak istiyorlar, hangi dilde yazmalısınız gibi soruları cevaplamak önemlidir.</p><br>\n<p>Başlık Belirleme: Başlık, okuyucuların yazınıza ilgisini çeken ilk şeydir. Başlığınızın ilgi çekici, özgün ve kısa olmasına özen gösterin.</p><br>\n<p>Planlama ve Araştırma: Blog yazmak için planlama yapmak önemlidir. Yazınızın ana hatlarını belirleyin ve gerekli araştırmaları yapın. Bilgi kaynaklarınızı doğru seçin ve farklı kaynaklardan bilgi toplamanızı öneririz.</p><br>\n<p>Yazma: Planlama ve araştırma yapmanın ardından yazmaya başlayabilirsiniz. Yazınızı okuyucu dostu ve anlaşılır bir dille yazmaya özen gösterin. Cümleleri kısa ve anlamlı tutun.</p>', '1', '4', 0, 'Aktif', 1, '21-04-2023', 'Evet'),
(20, 'Sevginin İzleri', '<p>Blog, çevrimiçi bir platformda düzenli olarak yayınlanan kişisel veya profesyonel içeriklerin paylaşıldığı bir web günlüğüdür. Blog yazmak, kişisel veya iş amaçlarına yönelik olarak çevrimiçi bir varlığın oluşturulması, güncellenmesi ve geliştirilmesi için harika bir yoldur.</p><br>\n\n<p>İşte bir blog yazmak için izlenebilecek adımlar:</p><br>\n<p>Konu Seçimi: Blog yazmaya başlamadan önce, hangi konular hakkında yazmak istediğinizi belirlemeniz gerekir. Konunuzun ilginç, benzersiz ve okuyucular için değerli olması önemlidir.</p><br>\n<p>Hedef Okuyucu Kitlesi Belirleme: Blogunuzun hedef kitlesini belirlemek, konunuzu daraltmanıza ve yazınızı daha özelleştirmenize yardımcı olacaktır. Hedef kitleniz kimlerdir, hangi konularda bilgi almak istiyorlar, hangi dilde yazmalısınız gibi soruları cevaplamak önemlidir.</p><br>\n<p>Başlık Belirleme: Başlık, okuyucuların yazınıza ilgisini çeken ilk şeydir. Başlığınızın ilgi çekici, özgün ve kısa olmasına özen gösterin.</p><br>\n<p>Planlama ve Araştırma: Blog yazmak için planlama yapmak önemlidir. Yazınızın ana hatlarını belirleyin ve gerekli araştırmaları yapın. Bilgi kaynaklarınızı doğru seçin ve farklı kaynaklardan bilgi toplamanızı öneririz.</p><br>\n<p>Yazma: Planlama ve araştırma yapmanın ardından yazmaya başlayabilirsiniz. Yazınızı okuyucu dostu ve anlaşılır bir dille yazmaya özen gösterin. Cümleleri kısa ve anlamlı tutun.</p>', '1', '4', 4, 'Aktif', 1, '21-04-2023', 'Evet');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesaj`
--

CREATE TABLE `mesaj` (
  `id` int(11) NOT NULL,
  `adsoyad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `mesajj` text COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(15) COLLATE utf8_turkish_ci NOT NULL DEFAULT '00-00-0000',
  `telefon` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(175) COLLATE utf8_turkish_ci NOT NULL,
  `konu` varchar(150) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `mesaj`
--

INSERT INTO `mesaj` (`id`, `adsoyad`, `mesajj`, `tarih`, `telefon`, `email`, `konu`) VALUES
(1, 'cumali Yakar', 'deneme mesaj içeriği', '21-04-2023', '05300495242', 'cumaliyakar@hotmail.com', 'deneme mesaj');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `online`
--

CREATE TABLE `online` (
  `ip` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `online`
--

INSERT INTO `online` (`ip`, `time`) VALUES
('176.234.231.5', '1682295386');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reklam`
--

CREATE TABLE `reklam` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text COLLATE utf8_turkish_ci,
  `secim` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `konum` varchar(25) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `reklam`
--

INSERT INTO `reklam` (`id`, `baslik`, `resim`, `secim`, `konum`) VALUES
(1, 'Seo Reklamı', '82125958551.webp', '1', 'Anasayfa Üst'),
(2, 'Konu Reklamı', '45842039985.webp', '2', 'Anasayfa Alt'),
(3, 'Alt 2 Reklam', '25054301471.webp', '4', 'Anasayfa Alt'),
(4, 'E-Ticaaret Reklam', '13820247969.webp', '4', 'Side Bar');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `resimler`
--

CREATE TABLE `resimler` (
  `id` int(11) NOT NULL,
  `marketilanid` int(11) NOT NULL,
  `yol` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `resimler`
--

INSERT INTO `resimler` (`id`, `marketilanid`, `yol`) VALUES
(1, 1, '../logo/rttyfg9939avif'),
(22, 2, '../logo/astyrt3414avif'),
(3, 3, '../logo/yurtfg6652avif'),
(4, 4, '../logo/tyyuyu1853avif'),
(5, 5, '../logo/yuasfg6682avif'),
(6, 6, '../logo/yutyyu7287avif'),
(7, 7, '../logo/tyfgas2400avif'),
(8, 8, '../logo/tyasas4947avif'),
(9, 9, '../logo/yutyfg6302.jpg'),
(10, 10, '../logo/asfgrt3457avif'),
(13, 11, '../logo/rttyfg8608avif'),
(12, 12, '../logo/astyfg3396avif'),
(14, 13, '../logo/rtasfg4028avif'),
(15, 14, '../logo/tyyuas5740avif'),
(16, 15, '../logo/asyuyu3465.jpg'),
(17, 16, '../logo/astyyu984avif'),
(18, 17, '../logo/astyty4767avif'),
(19, 18, '../logo/asasas9319avif'),
(20, 19, '../logo/tyasrt2481avif'),
(21, 20, '../logo/fgasfg5378.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sayfa`
--

CREATE TABLE `sayfa` (
  `id` int(11) NOT NULL,
  `baslik` varchar(150) COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text COLLATE utf8_turkish_ci,
  `resim` text COLLATE utf8_turkish_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sayfa`
--

INSERT INTO `sayfa` (`id`, `baslik`, `aciklama`, `resim`) VALUES
(5, 'K.V.K.K.', '<div style=\"line-height: 27px;\"><p style=\"\">Site form kuralları, bir web sitesi üzerindeki form alanlarına girilen verilerin doğru, güvenli ve istenilen şekilde toplanmasını ve işlenmesini sağlamak için belirlenen kurallardır. Site form kuralları, bir web sitesinin kullanıcılarının girdiği verilerin güvenliğini ve gizliliğini korurken, bir web sitesinin işleyişini de etkileyebilir.</p><div style=\"\">Zorunlu alanların belirlenmesi: Gerekli alanların belirlenmesi, kullanıcıların tüm gerekli bilgileri sağlamasını sağlar. Bu, bir kullanıcının bir formu yanlışlıkla eksik bırakması veya önemli bilgileri kaçırması gibi hataları önleyebilir.</div><div style=\"\">Veri türü doğrulaması: Form alanlarına girilen verilerin doğru türde olduğundan emin olmak için doğrulama yapılması önemlidir. Örneğin, bir e-posta adresi alanına yalnızca e-posta adresleri girilebilir.</div><div style=\"\">Veri uzunluğu doğrulaması: Verilerin belirli bir uzunlukta olduğundan emin olmak için doğrulama yapılması önemlidir. Örneğin, bir şifre alanına en az 8 karakter ve en fazla 16 karakter girilmesi gerekiyorsa, kullanıcılar bu kurala uymalıdır.</div><div style=\"\">CAPTCHA doğrulaması: CAPTCHA, bir kullanıcının bir insan olduğunu doğrulamak için kullanılır. Bu, spam ve botlar gibi otomatik programların form alanlarını doldurmasını önleyebilir.</div><div style=\"\">Güvenli veri aktarımı: Form alanlarından toplanan verilerin güvenli bir şekilde aktarılması için HTTPS kullanılması önerilir. Bu, verilerin üçüncü şahıslar tarafından ele geçirilmesini önleyebilir.</div><div style=\"\">Gizlilik politikaları: Site formu sayfalarının, web sitesi gizlilik politikalarını açıkça belirtmesi önemlidir. Bu, kullanıcıların girdiği verilerin nasıl kullanılacağı ve paylaşılacağı hakkında bilgi sahibi olmalarını sağlar.</div></div>', '73751291757.webp'),
(6, 'Kullanıcı Aydınlatma Metni', '<p>Site form kuralları, bir web sitesi üzerindeki form alanlarına girilen verilerin doğru, güvenli ve istenilen şekilde toplanmasını ve işlenmesini sağlamak için belirlenen kurallardır. Site form kuralları, bir web sitesinin kullanıcılarının girdiği verilerin güvenliğini ve gizliliğini korurken, bir web sitesinin işleyişini de etkileyebilir.</p><div>Zorunlu alanların belirlenmesi: Gerekli alanların belirlenmesi, kullanıcıların tüm gerekli bilgileri sağlamasını sağlar. Bu, bir kullanıcının bir formu yanlışlıkla eksik bırakması veya önemli bilgileri kaçırması gibi hataları önleyebilir.</div><div>Veri türü doğrulaması: Form alanlarına girilen verilerin doğru türde olduğundan emin olmak için doğrulama yapılması önemlidir. Örneğin, bir e-posta adresi alanına yalnızca e-posta adresleri girilebilir.</div><div>Veri uzunluğu doğrulaması: Verilerin belirli bir uzunlukta olduğundan emin olmak için doğrulama yapılması önemlidir. Örneğin, bir şifre alanına en az 8 karakter ve en fazla 16 karakter girilmesi gerekiyorsa, kullanıcılar bu kurala uymalıdır.</div><div>CAPTCHA doğrulaması: CAPTCHA, bir kullanıcının bir insan olduğunu doğrulamak için kullanılır. Bu, spam ve botlar gibi otomatik programların form alanlarını doldurmasını önleyebilir.</div><div>Güvenli veri aktarımı: Form alanlarından toplanan verilerin güvenli bir şekilde aktarılması için HTTPS kullanılması önerilir. Bu, verilerin üçüncü şahıslar tarafından ele geçirilmesini önleyebilir.</div><div>Gizlilik politikaları: Site formu sayfalarının, web sitesi gizlilik politikalarını açıkça belirtmesi önemlidir. Bu, kullanıcıların girdiği verilerin nasıl kullanılacağı ve paylaşılacağı hakkında bilgi sahibi olmalarını sağlar.</div>', '67923541753.webp'),
(8, 'Gizlilik Politikası', '<p>Site form kuralları, bir web sitesi üzerindeki form alanlarına girilen verilerin doğru, güvenli ve istenilen şekilde toplanmasını ve işlenmesini sağlamak için belirlenen kurallardır. Site form kuralları, bir web sitesinin kullanıcılarının girdiği verilerin güvenliğini ve gizliliğini korurken, bir web sitesinin işleyişini de etkileyebilir.</p><div>Zorunlu alanların belirlenmesi: Gerekli alanların belirlenmesi, kullanıcıların tüm gerekli bilgileri sağlamasını sağlar. Bu, bir kullanıcının bir formu yanlışlıkla eksik bırakması veya önemli bilgileri kaçırması gibi hataları önleyebilir.</div><div>Veri türü doğrulaması: Form alanlarına girilen verilerin doğru türde olduğundan emin olmak için doğrulama yapılması önemlidir. Örneğin, bir e-posta adresi alanına yalnızca e-posta adresleri girilebilir.</div><div>Veri uzunluğu doğrulaması: Verilerin belirli bir uzunlukta olduğundan emin olmak için doğrulama yapılması önemlidir. Örneğin, bir şifre alanına en az 8 karakter ve en fazla 16 karakter girilmesi gerekiyorsa, kullanıcılar bu kurala uymalıdır.</div><div>CAPTCHA doğrulaması: CAPTCHA, bir kullanıcının bir insan olduğunu doğrulamak için kullanılır. Bu, spam ve botlar gibi otomatik programların form alanlarını doldurmasını önleyebilir.</div><div>Güvenli veri aktarımı: Form alanlarından toplanan verilerin güvenli bir şekilde aktarılması için HTTPS kullanılması önerilir. Bu, verilerin üçüncü şahıslar tarafından ele geçirilmesini önleyebilir.</div><div>Gizlilik politikaları: Site formu sayfalarının, web sitesi gizlilik politikalarını açıkça belirtmesi önemlidir. Bu, kullanıcıların girdiği verilerin nasıl kullanılacağı ve paylaşılacağı hakkında bilgi sahibi olmalarını sağlar.</div>', '84782180407.webp'),
(9, 'Site Kuralları', '<p>Site form kuralları, bir web sitesi üzerindeki form alanlarına girilen verilerin doğru, güvenli ve istenilen şekilde toplanmasını ve işlenmesini sağlamak için belirlenen kurallardır. Site form kuralları, bir web sitesinin kullanıcılarının girdiği verilerin güvenliğini ve gizliliğini korurken, bir web sitesinin işleyişini de etkileyebilir.</p><div>Zorunlu alanların belirlenmesi: Gerekli alanların belirlenmesi, kullanıcıların tüm gerekli bilgileri sağlamasını sağlar. Bu, bir kullanıcının bir formu yanlışlıkla eksik bırakması veya önemli bilgileri kaçırması gibi hataları önleyebilir.</div><div>Veri türü doğrulaması: Form alanlarına girilen verilerin doğru türde olduğundan emin olmak için doğrulama yapılması önemlidir. Örneğin, bir e-posta adresi alanına yalnızca e-posta adresleri girilebilir.</div><div>Veri uzunluğu doğrulaması: Verilerin belirli bir uzunlukta olduğundan emin olmak için doğrulama yapılması önemlidir. Örneğin, bir şifre alanına en az 8 karakter ve en fazla 16 karakter girilmesi gerekiyorsa, kullanıcılar bu kurala uymalıdır.</div><div>CAPTCHA doğrulaması: CAPTCHA, bir kullanıcının bir insan olduğunu doğrulamak için kullanılır. Bu, spam ve botlar gibi otomatik programların form alanlarını doldurmasını önleyebilir.</div><div>Güvenli veri aktarımı: Form alanlarından toplanan verilerin güvenli bir şekilde aktarılması için HTTPS kullanılması önerilir. Bu, verilerin üçüncü şahıslar tarafından ele geçirilmesini önleyebilir.</div><div>Gizlilik politikaları: Site formu sayfalarının, web sitesi gizlilik politikalarını açıkça belirtmesi önemlidir. Bu, kullanıcıların girdiği verilerin nasıl kullanılacağı ve paylaşılacağı hakkında bilgi sahibi olmalarını sağlar.</div>', '15617972310.webp'),
(10, 'Hakkımızda', '<p>Site form kuralları, bir web sitesi üzerindeki form alanlarına girilen verilerin doğru, güvenli ve istenilen şekilde toplanmasını ve işlenmesini sağlamak için belirlenen kurallardır. Site form kuralları, bir web sitesinin kullanıcılarının girdiği verilerin güvenliğini ve gizliliğini korurken, bir web sitesinin işleyişini de etkileyebilir.</p><div>Zorunlu alanların belirlenmesi: Gerekli alanların belirlenmesi, kullanıcıların tüm gerekli bilgileri sağlamasını sağlar. Bu, bir kullanıcının bir formu yanlışlıkla eksik bırakması veya önemli bilgileri kaçırması gibi hataları önleyebilir.</div><div>Veri türü doğrulaması: Form alanlarına girilen verilerin doğru türde olduğundan emin olmak için doğrulama yapılması önemlidir. Örneğin, bir e-posta adresi alanına yalnızca e-posta adresleri girilebilir.</div><div>Veri uzunluğu doğrulaması: Verilerin belirli bir uzunlukta olduğundan emin olmak için doğrulama yapılması önemlidir. Örneğin, bir şifre alanına en az 8 karakter ve en fazla 16 karakter girilmesi gerekiyorsa, kullanıcılar bu kurala uymalıdır.</div><div>CAPTCHA doğrulaması: CAPTCHA, bir kullanıcının bir insan olduğunu doğrulamak için kullanılır. Bu, spam ve botlar gibi otomatik programların form alanlarını doldurmasını önleyebilir.</div><div>Güvenli veri aktarımı: Form alanlarından toplanan verilerin güvenli bir şekilde aktarılması için HTTPS kullanılması önerilir. Bu, verilerin üçüncü şahıslar tarafından ele geçirilmesini önleyebilir.</div><div>Gizlilik politikaları: Site formu sayfalarının, web sitesi gizlilik politikalarını açıkça belirtmesi önemlidir. Bu, kullanıcıların girdiği verilerin nasıl kullanılacağı ve paylaşılacağı hakkında bilgi sahibi olmalarını sağlar.</div>', '81890029638.webp');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE `uyeler` (
  `id` int(11) NOT NULL,
  `adsoyad` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `telefon` varchar(20) COLLATE utf8_turkish_ci DEFAULT '',
  `email` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `sifre` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tarih` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `il` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ilce` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `hakkinda` text COLLATE utf8_turkish_ci,
  `avatar` text COLLATE utf8_turkish_ci,
  `durum` varchar(11) COLLATE utf8_turkish_ci DEFAULT NULL,
  `onyazi` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `uyeler`
--

INSERT INTO `uyeler` (`id`, `adsoyad`, `telefon`, `email`, `sifre`, `tarih`, `il`, `ilce`, `hakkinda`, `avatar`, `durum`, `onyazi`) VALUES
(1, 'CumaliYakar', '05300495242', 'admin@hotmail.com', '0000', '21-04-2023', 'İstanbul', 'Taksim', 'Yazar kelimesi genellikle kitap, makale, şiir vb. yazılı eserler üreten kişiler için kullanılır. Bu kişiler genellikle yazma becerisi ve yeteneği olan, belirli bir konuda uzmanlaşmış veya deneyim sahibi olan kişilerdir. Yazarlar, düşüncelerini, hikayelerini, deneyimlerini ve bilgilerini yazılı olarak ifade ederek okuyuculara aktarırlar. ', '94010537766.webp', 'Aktif', '\"Yazar\" kelimesi, yazı yazan kişileri ifade eden genel bir terimdir. Yazarlar, farklı türlerde eserler üreten ve bu eserleri yayınlayan kişilerdir.'),
(2, 'YakarCumali', '05300495242', 'cumaliyakar@hotmail.com', '0000', '2023-04-21 20:2', 'istanbul', 'Merkez', 'Yazar kelimesi genellikle kitap, makale, şiir vb. yazılı eserler üreten kişiler için kullanılır. Bu kişiler genellikle yazma becerisi ve yeteneği olan, belirli bir konuda uzmanlaşmış veya deneyim sahibi olan kişilerdir. Yazarlar, düşüncelerini, hikayelerini, deneyimlerini ve bilgilerini yazılı olarak ifade ederek okuyuculara aktarırlar. ', '62888071263.webp', 'Aktif', '\"Yazar\" kelimesi, yazı yazan kişileri ifade eden genel bir terimdir. Yazarlar, farklı türlerde eserler üreten ve bu eserleri yayınlayan kişilerdir.'),
(3, 'İnteraktif', '05300495242', 'interaktifhizmet@gmail.com', '0000', '2023-04-21 20:2', 'İzmir', 'Merkez', 'Yazar kelimesi genellikle kitap, makale, şiir vb. yazılı eserler üreten kişiler için kullanılır. Bu kişiler genellikle yazma becerisi ve yeteneği olan, belirli bir konuda uzmanlaşmış veya deneyim sahibi olan kişilerdir. Yazarlar, düşüncelerini, hikayelerini, deneyimlerini ve bilgilerini yazılı olarak ifade ederek okuyuculara aktarırlar. ', '54755526857.webp', 'Aktif', 'Yazar kelimesi, yazı yazan kişileri ifade eden genel bir terimdir. Yazarlar, farklı türlerde eserler üreten ve bu eserleri yayınlayan kişilerdir.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorum`
--

CREATE TABLE `yorum` (
  `id` int(11) NOT NULL,
  `yorumu` text COLLATE utf8_turkish_ci,
  `tarih` varchar(25) COLLATE utf8_turkish_ci DEFAULT NULL,
  `uyeID` int(11) NOT NULL,
  `blogID` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `durum` varchar(11) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yorum`
--

INSERT INTO `yorum` (`id`, `yorumu`, `tarih`, `uyeID`, `blogID`, `durum`) VALUES
(1, 'deneme yorum paylaşımı', '21-04-2023', 3, '1', 'Aktif'),
(2, 'Yalnızlık Şiirleri yorum denemesi\r\n', '21-04-2023', 2, '1', 'Aktif'),
(3, 'deneme yorum 2', '22-04-2023', 2, '4', 'Aktif'),
(4, 'deneme yorum 3 (Aşkın İzleri)', '22-04-2023', 2, '2', 'Aktif');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ziyaret`
--

CREATE TABLE `ziyaret` (
  `id` int(11) NOT NULL,
  `ip` varchar(75) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `tarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `ziyaret`
--

INSERT INTO `ziyaret` (`id`, `ip`, `tarih`) VALUES
(1, '176.234.228.208', '2023-04-20 21:00:00'),
(2, '217.131.124.147', '2023-04-20 21:00:00'),
(3, '176.234.228.208', '2023-04-21 21:00:00'),
(4, '37.120.196.78', '2023-04-21 21:00:00'),
(5, '217.138.194.50', '2023-04-22 21:00:00'),
(6, '176.234.231.5', '2023-04-22 21:00:00'),
(7, '176.234.231.5', '2023-04-23 21:00:00');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `abone`
--
ALTER TABLE `abone`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `altkategori`
--
ALTER TABLE `altkategori`
  ADD PRIMARY KEY (`alt_id`);

--
-- Tablo için indeksler `anakategori`
--
ALTER TABLE `anakategori`
  ADD PRIMARY KEY (`ana_id`);

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `begeni`
--
ALTER TABLE `begeni`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `mesaj`
--
ALTER TABLE `mesaj`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `reklam`
--
ALTER TABLE `reklam`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `resimler`
--
ALTER TABLE `resimler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sayfa`
--
ALTER TABLE `sayfa`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yorum`
--
ALTER TABLE `yorum`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ziyaret`
--
ALTER TABLE `ziyaret`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `abone`
--
ALTER TABLE `abone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `altkategori`
--
ALTER TABLE `altkategori`
  MODIFY `alt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Tablo için AUTO_INCREMENT değeri `anakategori`
--
ALTER TABLE `anakategori`
  MODIFY `ana_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `ayarlar`
--
ALTER TABLE `ayarlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `begeni`
--
ALTER TABLE `begeni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `mesaj`
--
ALTER TABLE `mesaj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `reklam`
--
ALTER TABLE `reklam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `resimler`
--
ALTER TABLE `resimler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `sayfa`
--
ALTER TABLE `sayfa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `yorum`
--
ALTER TABLE `yorum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `ziyaret`
--
ALTER TABLE `ziyaret`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
