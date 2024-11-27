-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 27, 2024 lúc 10:13 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sachtruyen`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chapter`
--

CREATE TABLE `chapter` (
  `id` int(10) UNSIGNED NOT NULL,
  `truyen_id` int(10) UNSIGNED NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `tomtat` varchar(255) NOT NULL,
  `noidung` longtext NOT NULL,
  `kichhoat` int(11) NOT NULL,
  `slug_chapter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chapter`
--

INSERT INTO `chapter` (`id`, `truyen_id`, `tieude`, `tomtat`, `noidung`, `kichhoat`, `slug_chapter`) VALUES
(2, 5, 'chapter1-ông lão già và con cá vàng', 'ông lão gài xuất hiện', 'Truyện “Nghìn lẻ một đêm” là một tác phẩm vĩ đại bậc nhất của nền văn học Ả Rập, một công trình sáng tạo đồ sộ và phong phú đặc sắc của nền văn học thế giới. Ả Rập là một quốc gia có nền văn hóa và lối sống có thể nói là rất khác biệt so với nước ta, thế nhưng khi đọc truyện “Nghìn lẻ một đêm” bạn đọc sẽ không hề cảm thấy xa lạ hay phức tạp mà vẫn hoàn toàn bị cuốn hút vào trong những câu chuyện ấy.', 0, 'chapter1-ong-lao-gia-va-con-ca-vang'),
(4, 5, 'chapter2-ông lão già và con cá vàng', 'ông lão gài xuất hiện', 'Truyện “Nghìn lẻ một đêm” là một tác phẩm vĩ đại bậc nhất của nền văn học Ả Rập, một công trình sáng tạo đồ sộ và phong phú đặc sắc của nền văn học thế giới. Ả Rập là một quốc gia có nền văn hóa và lối sống có thể nói là rất khác biệt so với nước ta, thế nhưng khi đọc truyện “Nghìn lẻ một đêm” bạn đọc sẽ không hề cảm thấy xa lạ hay phức tạp mà vẫn hoàn toàn bị cuốn hút vào trong những câu chuyện ấy.\r\nTruyện “Nghìn lẻ một đêm” là một tác phẩm vĩ đại bậc nhất của nền văn học Ả Rập, một công trình sáng tạo đồ sộ và phong phú đặc sắc của nền văn học thế giới. Ả Rập là một quốc gia có nền văn hóa và lối sống có thể nói là rất khác biệt so với nước ta, thế nhưng khi đọc truyện “Nghìn lẻ một đêm” bạn đọc sẽ không hề cảm thấy xa lạ hay phức tạp mà vẫn hoàn toàn bị cuốn hút vào trong những câu chuyện ấy.\r\nTruyện “Nghìn lẻ một đêm” là một tác phẩm vĩ đại bậc nhất của nền văn học Ả Rập, một công trình sáng tạo đồ sộ và phong phú đặc sắc của nền văn học thế giới. Ả Rập là một quốc gia có nền văn hóa và lối sống có thể nói là rất khác biệt so với nước ta, thế nhưng khi đọc truyện “Nghìn lẻ một đêm” bạn đọc sẽ không hề cảm thấy xa lạ hay phức tạp mà vẫn hoàn toàn bị cuốn hút vào trong những câu chuyện ấy.', 0, 'chapter2-ong-lao-gia-va-con-ca-vang'),
(5, 4, 'chapter1-ông lão già và vợ', 'cá vàng xuất hiện', 'hai ông bà gìa nghèo', 0, 'chapter1-ong-lao-gia-va-vo'),
(7, 3, 'chapter1', 'đôi ta gặp nhau', '<p>Từ dưới cống nh&igrave;n l&ecirc;n, bầu trời v&agrave;o l&uacute;c năm giờ s&aacute;ng th&aacute;ng năm kia cũng đẹp gh&ecirc; lắm. Nắng c&ograve;n chưa kịp rải mật xuống mặt đất, kh&ocirc;ng gian im ắng tĩnh mịch, cũng đồng nghĩa kh&ocirc;ng một ai nghe thấy tiếng k&ecirc;u cứu yếu ớt của t&ocirc;i ở g&oacute;c phố vắng n&agrave;y cả!<br />\r\n<br />\r\nNguy&ecirc;n một th&aacute;ng kh&ocirc;ng kiếm nổi một c&ocirc;ng việc mới d&ugrave; t&ocirc;i tốt nghiệp bằng đỏ, em trai t&ocirc;i lại vừa phải nhập viện, thế n&ecirc;n t&ocirc;i v&eacute;t sạch trong người cũng kh&ocirc;ng c&oacute; đủ tiền nh&agrave; đ&oacute;ng cho mụ chủ. Cứ hai ng&agrave;y mụ ta lại g&otilde; cửa nhắc nhở, t&ocirc;i xin khất cũng đ&atilde; hai lần, đến lần thứ ba n&agrave;y, mới s&aacute;ng tinh mơ mụ ta đ&atilde; xồng xộc x&ocirc;ng v&agrave;o, mặc t&ocirc;i c&ograve;n lơ mơ ngủ mụ vẫn hất t&ocirc;i ra ngo&agrave;i, n&eacute;m sạch quần &aacute;o, balo c&ugrave;ng mấy m&oacute;n đồ của t&ocirc;i khỏi ph&ograve;ng. T&ocirc;i ức lắm m&agrave; chẳng l&agrave;m g&igrave; được, đ&agrave;nh thu gọn lại đồ cho v&agrave;o ba l&ocirc; rồi cứ thế bước lang thang v&ocirc; định, muốn kh&oacute;c m&agrave; chẳng thể kh&oacute;c nổi, c&aacute;i mặt cứ m&eacute;o xệch, mắt cũng trớn l&ecirc;n v&agrave; rồi&hellip; haizz&hellip; ngồi b&oacute; gối dưới c&aacute;i cống cạn bỏ hoang như thế n&agrave;y đ&acirc;y. Ch&acirc;n cẳng đang nhức nhối nữa, h&igrave;nh như bị trật khớp mất rồi. Điện thoại cục gạch th&igrave; hết pin, laptop đ&atilde; b&aacute;n từ đời n&agrave;o, chẳng c&oacute; phương tiện n&agrave;o li&ecirc;n lạc được với thế giới. Nước mắt cứ thế ứa ra rồi lại gạt đi ngay. Kh&oacute;c c&oacute; giải quyết được g&igrave; đ&acirc;u? Đừng yếu đuối thế con dở!<br />\r\n<br />\r\nNếu l&agrave; c&ocirc; Tấm trong ho&agrave;n cảnh n&agrave;y th&igrave; sao? Sẽ c&oacute; bụt hiện l&ecirc;n &acirc;n cần hỏi han v&agrave; giải quyết &ecirc;m thấm cho c&ocirc; ngay rồi. Nhưng m&agrave;&hellip; đời đ&acirc;u phải l&agrave; cổ t&iacute;ch, v&agrave; t&ocirc;i cũng chẳng phải c&ocirc; Tấm! C&oacute; điều, khi con người ta trong ho&agrave;n cảnh khốn c&ugrave;ng, niềm tin vẫn l&agrave; con đường duy nhất, t&ocirc;i đ&agrave;nh nhắm mắt lại, thầm cầu nguyện, biết đ&acirc;u, biết đ&acirc;u&hellip;<br />\r\n<br />\r\nBịch!<br />\r\n<br />\r\nAAAAA&hellip;<br />\r\n<br />\r\nT&ocirc;i h&eacute;t to&aacute;ng l&ecirc;n khi từ tr&ecirc;n cao, một b&oacute;ng người rơi bịch xuống, tr&uacute;ng ngay người t&ocirc;i l&agrave;m t&ocirc;i ng&atilde; ngửa ra, cơ thể nữ nh&acirc;n mềm mại bất đắc dĩ trở th&agrave;nh chiếc đệm &ecirc;m &aacute;i cho kẻ vừa xui xẻo ng&atilde; xuống. Mặt hắn &uacute;p ngay v&agrave;o nơi mềm mại vun đầy tr&ecirc;n ngực t&ocirc;i! C&aacute;i ch&acirc;n lại th&ecirc;m buốt nh&oacute;i l&ecirc;n. T&ocirc;i kh&oacute;c kh&ocirc;ng ra nước mắt.<br />\r\n<br />\r\n&ndash; Mẹ kiếp!<br />\r\n<br />\r\nTiếng chửi thề vang l&ecirc;n, g&atilde; đ&agrave;n &ocirc;ng đầy mồ h&ocirc;i m&agrave; vẫn thơm lạ lập tức rời khỏi người t&ocirc;i, đứng thẳng dậy kh&ocirc;ng hề hấn g&igrave;. T&ocirc;i cũng kh&ocirc;ng chậm trễ hơn m&agrave; l&ugrave;i người về ph&iacute;a sau, lưng tựa v&agrave;o th&agrave;nh cống, run rẩy ngước nh&igrave;n hắn ta. Ng&oacute; bộ dạng của hắn, ch&acirc;n đi giầy thể thao, quần nỉ x&aacute;m d&agrave;i, mồ h&ocirc;i ướt &aacute;o ph&ocirc;ng trắng để lộ cơ ngực rắn chắc, t&ocirc;i hiểu ngay hắn ta chạy thể dục v&agrave;o c&aacute;i l&uacute;c tờ mờ s&aacute;ng n&agrave;y. Đặc biệt l&agrave; c&aacute;i mặt hắn&hellip; mẹ kiếp&hellip; đẹp trai v**, nhưng m&agrave; t&ocirc;i kh&ocirc;ng c&oacute; hứng th&uacute;, chỉ biết t&ocirc;i vừa c&oacute; th&ecirc;m một kẻ th&ugrave; dẫu biết l&agrave; hắn kh&ocirc;ng cố t&igrave;nh. C&aacute;i ch&acirc;n của t&ocirc;i&hellip; huhuhu&hellip;<br />\r\n<br />\r\n&ndash; N&agrave;y, gọi người cứu đi!<br />\r\n<br />\r\nHắn thờ ơ ra lệnh. Đồ&hellip; đồ&hellip; hết n&oacute;i nổi lu&ocirc;n, m&agrave; t&ocirc;i cũng đau đến mức kh&ocirc;ng n&oacute;i nổi, chỉ biết nhăn nh&oacute;, thều th&agrave;o:<br />\r\n<br />\r\n&ndash; Ch&acirc;n t&ocirc;i&hellip; nh&igrave;n đi&hellip; tại anh đ&oacute;&hellip;<br />\r\n<br />\r\n&ndash; &hellip;<br />\r\n<br />\r\nHắn nh&iacute;u m&agrave;y, ngồi xuống xem x&eacute;t một hồi.<br />\r\n<br />\r\n<br />\r\n<br />\r\nAAAAA&hellip; T&ocirc;i g&agrave;o mồm l&ecirc;n sau khi hắn vặn ch&acirc;n t&ocirc;i k&ecirc;u c&aacute;i &ldquo;khậc&rdquo;.<br />\r\n<br />\r\nƠ&hellip; hết đau rồi! Hừm hừm&hellip; l&agrave;m hại người rồi cũng biết cứu người đấy, xem l&agrave; huề. T&ocirc;i lạnh mặt, kh&ocirc;ng th&egrave;m cảm ơn, chỉ n&oacute;i đơn giản:<br />\r\n<br />\r\n&ndash; Anh gọi người đi, điện thoại t&ocirc;i hết pin.<br />\r\n<br />\r\nHắn ta trố mắt nh&igrave;n c&aacute;i điện thoại cục gạch t&ocirc;i đưa ra như thanh minh, cười sằng sặc v&ocirc; duy&ecirc;n đến ph&aacute;t kh&ugrave;ng, gạt nước mắt kh&oacute;e mi rồi n&oacute;i:<br />\r\n<br />\r\n&ndash; Thời b&acirc;y giờ c&ograve;n c&oacute; người d&ugrave;ng c&aacute;i n&agrave;y &aacute;?<br />\r\n<br />\r\n&ndash; Gọi đi, kh&ocirc;ng n&oacute;i nhiều!<br />\r\n<br />\r\n&ndash; Kh&ocirc;ng mang. .<br />\r\n<br />\r\n========== Truyện vừa ho&agrave;n th&agrave;nh ==========<br />\r\n<br />\r\n1. C&aacute;ch Một Khoảng S&acirc;n<br />\r\n<br />\r\n2. C&ocirc; Vợ To&agrave;n Năng Trong Đầu Chỉ C&oacute; Ly H&ocirc;n!<br />\r\n<br />\r\n3. Thi&ecirc;n S&aacute;t C&ocirc; Tinh Kh&ocirc;ng Khắc Nổi T&ocirc;i<br />\r\n<br />\r\n4. Sau Khi Vội V&atilde; Kết H&ocirc;n<br />\r\n<br />\r\n=====================================<br />\r\n<br />\r\nTh&ocirc;i&hellip; xong. Giờ hai kẻ xui xẻo chỉ biết nh&igrave;n nhau dưới cống sao?<br />\r\n<br />\r\n<br />\r\n<br />\r\nHắn lắc đầu, hất h&agrave;m nh&igrave;n t&ocirc;i, n&oacute;i:<br />\r\n<br />\r\n&ndash; C&ocirc; c&uacute;i người xuống, tay &ocirc;m gối cho t&ocirc;i!<br />\r\n<br />\r\nT&ocirc;i ngơ ng&aacute;c, &yacute; hắn l&agrave; sao? Chẳng lẽ&hellip; T&ocirc;i hốt hoảng vội n&oacute;i:<br />\r\n<br />\r\n&ndash; N&agrave;y&hellip; t&ocirc;i kh&ocirc;ng l&agrave;m đệm cho anh l&ecirc;n được đ&acirc;u!<br />\r\n<br />\r\n&ndash; Chẳng phải c&ocirc; vừa l&agrave;m đệm cho t&ocirc;i đ&oacute; sao?<br />\r\n<br />\r\nHắn cười cười, &aacute;nh mắt bỗng gian t&agrave; chiếu v&agrave;o ngực t&ocirc;i, miệng liếm m&eacute;p th&egrave;m thuồng, hai tay xoa xoa v&agrave;o nhau. AAAA&hellip; hắn muốn g&igrave; đ&acirc;y? Ở đ&acirc;y c&oacute; mỗi t&ocirc;i với hắn, t&ocirc;i lại xinh đẹp thế n&agrave;y, chắc chắn hắn sinh l&ograve;ng t&agrave; đạo rồi!<br />\r\n<br />\r\n&ndash; C&ocirc; em, để anh l&ecirc;n trước hay l&agrave;&hellip;<br />\r\n<br />\r\nAAAAA&hellip; Đồ d&ecirc; xồm đ&ecirc; tiện! T&ocirc;i &ocirc;m chặt lấy người, c&uacute;i xuống &ocirc;m gối như con t&ocirc;m, đ&oacute; cũng l&agrave; c&aacute;ch tốt nhất để ngăn chặn hắn l&agrave;m tr&ograve; bỉ ổi. Hắn hừ nhạt, lấy ba l&ocirc; của t&ocirc;i đặt l&ecirc;n lưng t&ocirc;i, tr&egrave;o l&ecirc;n ba l&ocirc; rồi nh&uacute;n người một c&aacute;i. Chiều cao tr&ecirc;n m&eacute;t t&aacute;m của hắn gi&uacute;p tay hắn dễ d&agrave;ng bắt được miệng cống, rất nhanh sau đ&oacute; hắn tr&egrave;o ra ngo&agrave;i được. T&ocirc;i ngơ ng&aacute;c v&ugrave;ng dậy, nh&igrave;n l&ecirc;n, kh&ocirc;ng thấy hắn đ&acirc;u nữa. Bất gi&aacute;c t&ocirc;i hoang mang v&ocirc; c&ugrave;ng. Hắn&hellip; hắn tho&aacute;t rồi! Hắn cứ thế bỏ mặc t&ocirc;i m&agrave; đi sao? T&ocirc;i kh&ocirc;ng phải thắc mắc l&acirc;u, chỉ v&agrave;i ph&uacute;t sau, c&oacute; mấy b&aacute;c bảo vệ ph&iacute;a tr&ecirc;n nh&ograve;m xuống nh&igrave;n t&ocirc;i rồi n&oacute;i:<br />\r\n<br />\r\n&ndash; Con g&aacute;i, chờ một ch&uacute;t b&aacute;c lấy c&aacute;i thang!<br />\r\n<br />\r\nT&ocirc;i thở ph&agrave;o nhẹ nh&otilde;m. Thang inox hạ xuống, t&ocirc;i kho&aacute;c theo c&aacute;i ba l&ocirc; đen c&ograve;n nguy&ecirc;n dấu gi&agrave;y của t&ecirc;n kia l&ecirc;n vai, bước từng bước rời khỏi c&aacute;i bẫy chết tiệt n&agrave;y. T&ocirc;i thất thểu bước l&ecirc;n mặt đất, b&aacute;c bảo vệ bỗng đưa cho t&ocirc;i một mẩu giấy. T&ocirc;i ngạc nhi&ecirc;n, đ&oacute;n lấy giấy từ tay b&aacute;c, t&ograve; m&ograve; mở ra xem. L&agrave; số điện thoại. T&ocirc;i tần ngần, hỏi với theo b&aacute;c bảo vệ l&uacute;c n&agrave;y v&aacute;c thang đi trước t&ocirc;i:<br />\r\n<br />\r\n&ndash; Ai đưa b&aacute;c mẩu giấy n&agrave;y thế ạ?<br />\r\n<br />\r\n&ndash; Cậu thanh ni&ecirc;n ban n&atilde;y b&aacute;o b&aacute;c ch&aacute;u rơi xuống đ&acirc;y, cậu ta nhờ b&aacute;c đưa cho ch&aacute;u. Cậu ta c&oacute; n&oacute;i ch&aacute;u cần cậu ta đền g&igrave; th&igrave; cứ gọi.<br />\r\n<br />\r\nTử tế gh&ecirc; cơ đấy. Hừ, t&ocirc;i c&oacute;c cần. Kh&ocirc;ng ở lại m&agrave; cứu t&ocirc;i l&ecirc;n đi, mặc kệ t&ocirc;i một m&igrave;nh như thế, t&ocirc;i kh&ocirc;ng th&egrave;m d&iacute;nh l&iacute;u g&igrave; đến hắn nữa nh&eacute;! Nghĩ rồi t&ocirc;i hậm hực, định n&eacute;m mẩu giấy đi, nghĩ thế n&agrave;o lại cho v&agrave;o t&uacute;i quần. Nghĩ đi nghĩ lại hắn vẫn l&agrave; &acirc;n nh&acirc;n của t&ocirc;i, c&oacute; ơn n&ecirc;n b&aacute;o đ&aacute;p. T&ocirc;i l&iacute; nh&iacute; cảm ơn b&aacute;c bảo vệ tốt bụng, t&iacute;nh m&ograve; đến nh&agrave; con Li&ecirc;n bạn th&acirc;n xin t&aacute; t&uacute;c một thời gian rồi đến đ&acirc;u th&igrave; đến.</p>', 0, 'chapter1'),
(8, 3, 'chapter2', 'đôi ta gặp nhau', '<p>Từ dưới cống nh&igrave;n l&ecirc;n, bầu trời v&agrave;o l&uacute;c năm giờ s&aacute;ng th&aacute;ng năm kia cũng đẹp gh&ecirc; lắm. Nắng c&ograve;n chưa kịp rải mật xuống mặt đất, kh&ocirc;ng gian im ắng tĩnh mịch, cũng đồng nghĩa kh&ocirc;ng một ai nghe thấy tiếng k&ecirc;u cứu yếu ớt của t&ocirc;i ở g&oacute;c phố vắng n&agrave;y cả!<br />\r\n<br />\r\nNguy&ecirc;n một th&aacute;ng kh&ocirc;ng kiếm nổi một c&ocirc;ng việc mới d&ugrave; t&ocirc;i tốt nghiệp bằng đỏ, em trai t&ocirc;i lại vừa phải nhập viện, thế n&ecirc;n t&ocirc;i v&eacute;t sạch trong người cũng kh&ocirc;ng c&oacute; đủ tiền nh&agrave; đ&oacute;ng cho mụ chủ. Cứ hai ng&agrave;y mụ ta lại g&otilde; cửa nhắc nhở, t&ocirc;i xin khất cũng đ&atilde; hai lần, đến lần thứ ba n&agrave;y, mới s&aacute;ng tinh mơ mụ ta đ&atilde; xồng xộc x&ocirc;ng v&agrave;o, mặc t&ocirc;i c&ograve;n lơ mơ ngủ mụ vẫn hất t&ocirc;i ra ngo&agrave;i, n&eacute;m sạch quần &aacute;o, balo c&ugrave;ng mấy m&oacute;n đồ của t&ocirc;i khỏi ph&ograve;ng. T&ocirc;i ức lắm m&agrave; chẳng l&agrave;m g&igrave; được, đ&agrave;nh thu gọn lại đồ cho v&agrave;o ba l&ocirc; rồi cứ thế bước lang thang v&ocirc; định, muốn kh&oacute;c m&agrave; chẳng thể kh&oacute;c nổi, c&aacute;i mặt cứ m&eacute;o xệch, mắt cũng trớn l&ecirc;n v&agrave; rồi&hellip; haizz&hellip; ngồi b&oacute; gối dưới c&aacute;i cống cạn bỏ hoang như thế n&agrave;y đ&acirc;y. Ch&acirc;n cẳng đang nhức nhối nữa, h&igrave;nh như bị trật khớp mất rồi. Điện thoại cục gạch th&igrave; hết pin, laptop đ&atilde; b&aacute;n từ đời n&agrave;o, chẳng c&oacute; phương tiện n&agrave;o li&ecirc;n lạc được với thế giới. Nước mắt cứ thế ứa ra rồi lại gạt đi ngay. Kh&oacute;c c&oacute; giải quyết được g&igrave; đ&acirc;u? Đừng yếu đuối thế con dở!<br />\r\n<br />\r\nNếu l&agrave; c&ocirc; Tấm trong ho&agrave;n cảnh n&agrave;y th&igrave; sao? Sẽ c&oacute; bụt hiện l&ecirc;n &acirc;n cần hỏi han v&agrave; giải quyết &ecirc;m thấm cho c&ocirc; ngay rồi. Nhưng m&agrave;&hellip; đời đ&acirc;u phải l&agrave; cổ t&iacute;ch, v&agrave; t&ocirc;i cũng chẳng phải c&ocirc; Tấm! C&oacute; điều, khi con người ta trong ho&agrave;n cảnh khốn c&ugrave;ng, niềm tin vẫn l&agrave; con đường duy nhất, t&ocirc;i đ&agrave;nh nhắm mắt lại, thầm cầu nguyện, biết đ&acirc;u, biết đ&acirc;u&hellip;<br />\r\n<br />\r\nBịch!<br />\r\n<br />\r\nAAAAA&hellip;<br />\r\n<br />\r\nT&ocirc;i h&eacute;t to&aacute;ng l&ecirc;n khi từ tr&ecirc;n cao, một b&oacute;ng người rơi bịch xuống, tr&uacute;ng ngay người t&ocirc;i l&agrave;m t&ocirc;i ng&atilde; ngửa ra, cơ thể nữ nh&acirc;n mềm mại bất đắc dĩ trở th&agrave;nh chiếc đệm &ecirc;m &aacute;i cho kẻ vừa xui xẻo ng&atilde; xuống. Mặt hắn &uacute;p ngay v&agrave;o nơi mềm mại vun đầy tr&ecirc;n ngực t&ocirc;i! C&aacute;i ch&acirc;n lại th&ecirc;m buốt nh&oacute;i l&ecirc;n. T&ocirc;i kh&oacute;c kh&ocirc;ng ra nước mắt.<br />\r\n<br />\r\n&ndash; Mẹ kiếp!<br />\r\n<br />\r\nTiếng chửi thề vang l&ecirc;n, g&atilde; đ&agrave;n &ocirc;ng đầy mồ h&ocirc;i m&agrave; vẫn thơm lạ lập tức rời khỏi người t&ocirc;i, đứng thẳng dậy kh&ocirc;ng hề hấn g&igrave;. T&ocirc;i cũng kh&ocirc;ng chậm trễ hơn m&agrave; l&ugrave;i người về ph&iacute;a sau, lưng tựa v&agrave;o th&agrave;nh cống, run rẩy ngước nh&igrave;n hắn ta. Ng&oacute; bộ dạng của hắn, ch&acirc;n đi giầy thể thao, quần nỉ x&aacute;m d&agrave;i, mồ h&ocirc;i ướt &aacute;o ph&ocirc;ng trắng để lộ cơ ngực rắn chắc, t&ocirc;i hiểu ngay hắn ta chạy thể dục v&agrave;o c&aacute;i l&uacute;c tờ mờ s&aacute;ng n&agrave;y. Đặc biệt l&agrave; c&aacute;i mặt hắn&hellip; mẹ kiếp&hellip; đẹp trai v**, nhưng m&agrave; t&ocirc;i kh&ocirc;ng c&oacute; hứng th&uacute;, chỉ biết t&ocirc;i vừa c&oacute; th&ecirc;m một kẻ th&ugrave; dẫu biết l&agrave; hắn kh&ocirc;ng cố t&igrave;nh. C&aacute;i ch&acirc;n của t&ocirc;i&hellip; huhuhu&hellip;<br />\r\n<br />\r\n&ndash; N&agrave;y, gọi người cứu đi!<br />\r\n<br />\r\nHắn thờ ơ ra lệnh. Đồ&hellip; đồ&hellip; hết n&oacute;i nổi lu&ocirc;n, m&agrave; t&ocirc;i cũng đau đến mức kh&ocirc;ng n&oacute;i nổi, chỉ biết nhăn nh&oacute;, thều th&agrave;o:<br />\r\n<br />\r\n&ndash; Ch&acirc;n t&ocirc;i&hellip; nh&igrave;n đi&hellip; tại anh đ&oacute;&hellip;<br />\r\n<br />\r\n&ndash; &hellip;<br />\r\n<br />\r\nHắn nh&iacute;u m&agrave;y, ngồi xuống xem x&eacute;t một hồi.<br />\r\n<br />\r\n<br />\r\n<br />\r\nAAAAA&hellip; T&ocirc;i g&agrave;o mồm l&ecirc;n sau khi hắn vặn ch&acirc;n t&ocirc;i k&ecirc;u c&aacute;i &ldquo;khậc&rdquo;.<br />\r\n<br />\r\nƠ&hellip; hết đau rồi! Hừm hừm&hellip; l&agrave;m hại người rồi cũng biết cứu người đấy, xem l&agrave; huề. T&ocirc;i lạnh mặt, kh&ocirc;ng th&egrave;m cảm ơn, chỉ n&oacute;i đơn giản:<br />\r\n<br />\r\n&ndash; Anh gọi người đi, điện thoại t&ocirc;i hết pin.<br />\r\n<br />\r\nHắn ta trố mắt nh&igrave;n c&aacute;i điện thoại cục gạch t&ocirc;i đưa ra như thanh minh, cười sằng sặc v&ocirc; duy&ecirc;n đến ph&aacute;t kh&ugrave;ng, gạt nước mắt kh&oacute;e mi rồi n&oacute;i:<br />\r\n<br />\r\n&ndash; Thời b&acirc;y giờ c&ograve;n c&oacute; người d&ugrave;ng c&aacute;i n&agrave;y &aacute;?<br />\r\n<br />\r\n&ndash; Gọi đi, kh&ocirc;ng n&oacute;i nhiều!<br />\r\n<br />\r\n&ndash; Kh&ocirc;ng mang. .<br />\r\n<br />\r\n========== Truyện vừa ho&agrave;n th&agrave;nh ==========<br />\r\n<br />\r\n1. C&aacute;ch Một Khoảng S&acirc;n<br />\r\n<br />\r\n2. C&ocirc; Vợ To&agrave;n Năng Trong Đầu Chỉ C&oacute; Ly H&ocirc;n!<br />\r\n<br />\r\n3. Thi&ecirc;n S&aacute;t C&ocirc; Tinh Kh&ocirc;ng Khắc Nổi T&ocirc;i<br />\r\n<br />\r\n4. Sau Khi Vội V&atilde; Kết H&ocirc;n<br />\r\n<br />\r\n=====================================<br />\r\n<br />\r\nTh&ocirc;i&hellip; xong. Giờ hai kẻ xui xẻo chỉ biết nh&igrave;n nhau dưới cống sao?<br />\r\n<br />\r\n<br />\r\n<br />\r\nHắn lắc đầu, hất h&agrave;m nh&igrave;n t&ocirc;i, n&oacute;i:<br />\r\n<br />\r\n&ndash; C&ocirc; c&uacute;i người xuống, tay &ocirc;m gối cho t&ocirc;i!<br />\r\n<br />\r\nT&ocirc;i ngơ ng&aacute;c, &yacute; hắn l&agrave; sao? Chẳng lẽ&hellip; T&ocirc;i hốt hoảng vội n&oacute;i:<br />\r\n<br />\r\n&ndash; N&agrave;y&hellip; t&ocirc;i kh&ocirc;ng l&agrave;m đệm cho anh l&ecirc;n được đ&acirc;u!<br />\r\n<br />\r\n&ndash; Chẳng phải c&ocirc; vừa l&agrave;m đệm cho t&ocirc;i đ&oacute; sao?<br />\r\n<br />\r\nHắn cười cười, &aacute;nh mắt bỗng gian t&agrave; chiếu v&agrave;o ngực t&ocirc;i, miệng liếm m&eacute;p th&egrave;m thuồng, hai tay xoa xoa v&agrave;o nhau. AAAA&hellip; hắn muốn g&igrave; đ&acirc;y? Ở đ&acirc;y c&oacute; mỗi t&ocirc;i với hắn, t&ocirc;i lại xinh đẹp thế n&agrave;y, chắc chắn hắn sinh l&ograve;ng t&agrave; đạo rồi!<br />\r\n<br />\r\n&ndash; C&ocirc; em, để anh l&ecirc;n trước hay l&agrave;&hellip;<br />\r\n<br />\r\nAAAAA&hellip; Đồ d&ecirc; xồm đ&ecirc; tiện! T&ocirc;i &ocirc;m chặt lấy người, c&uacute;i xuống &ocirc;m gối như con t&ocirc;m, đ&oacute; cũng l&agrave; c&aacute;ch tốt nhất để ngăn chặn hắn l&agrave;m tr&ograve; bỉ ổi. Hắn hừ nhạt, lấy ba l&ocirc; của t&ocirc;i đặt l&ecirc;n lưng t&ocirc;i, tr&egrave;o l&ecirc;n ba l&ocirc; rồi nh&uacute;n người một c&aacute;i. Chiều cao tr&ecirc;n m&eacute;t t&aacute;m của hắn gi&uacute;p tay hắn dễ d&agrave;ng bắt được miệng cống, rất nhanh sau đ&oacute; hắn tr&egrave;o ra ngo&agrave;i được. T&ocirc;i ngơ ng&aacute;c v&ugrave;ng dậy, nh&igrave;n l&ecirc;n, kh&ocirc;ng thấy hắn đ&acirc;u nữa. Bất gi&aacute;c t&ocirc;i hoang mang v&ocirc; c&ugrave;ng. Hắn&hellip; hắn tho&aacute;t rồi! Hắn cứ thế bỏ mặc t&ocirc;i m&agrave; đi sao? T&ocirc;i kh&ocirc;ng phải thắc mắc l&acirc;u, chỉ v&agrave;i ph&uacute;t sau, c&oacute; mấy b&aacute;c bảo vệ ph&iacute;a tr&ecirc;n nh&ograve;m xuống nh&igrave;n t&ocirc;i rồi n&oacute;i:<br />\r\n<br />\r\n&ndash; Con g&aacute;i, chờ một ch&uacute;t b&aacute;c lấy c&aacute;i thang!<br />\r\n<br />\r\nT&ocirc;i thở ph&agrave;o nhẹ nh&otilde;m. Thang inox hạ xuống, t&ocirc;i kho&aacute;c theo c&aacute;i ba l&ocirc; đen c&ograve;n nguy&ecirc;n dấu gi&agrave;y của t&ecirc;n kia l&ecirc;n vai, bước từng bước rời khỏi c&aacute;i bẫy chết tiệt n&agrave;y. T&ocirc;i thất thểu bước l&ecirc;n mặt đất, b&aacute;c bảo vệ bỗng đưa cho t&ocirc;i một mẩu giấy. T&ocirc;i ngạc nhi&ecirc;n, đ&oacute;n lấy giấy từ tay b&aacute;c, t&ograve; m&ograve; mở ra xem. L&agrave; số điện thoại. T&ocirc;i tần ngần, hỏi với theo b&aacute;c bảo vệ l&uacute;c n&agrave;y v&aacute;c thang đi trước t&ocirc;i:<br />\r\n<br />\r\n&ndash; Ai đưa b&aacute;c mẩu giấy n&agrave;y thế ạ?<br />\r\n<br />\r\n&ndash; Cậu thanh ni&ecirc;n ban n&atilde;y b&aacute;o b&aacute;c ch&aacute;u rơi xuống đ&acirc;y, cậu ta nhờ b&aacute;c đưa cho ch&aacute;u. Cậu ta c&oacute; n&oacute;i ch&aacute;u cần cậu ta đền g&igrave; th&igrave; cứ gọi.<br />\r\n<br />\r\nTử tế gh&ecirc; cơ đấy. Hừ, t&ocirc;i c&oacute;c cần. Kh&ocirc;ng ở lại m&agrave; cứu t&ocirc;i l&ecirc;n đi, mặc kệ t&ocirc;i một m&igrave;nh như thế, t&ocirc;i kh&ocirc;ng th&egrave;m d&iacute;nh l&iacute;u g&igrave; đến hắn nữa nh&eacute;! Nghĩ rồi t&ocirc;i hậm hực, định n&eacute;m mẩu giấy đi, nghĩ thế n&agrave;o lại cho v&agrave;o t&uacute;i quần. Nghĩ đi nghĩ lại hắn vẫn l&agrave; &acirc;n nh&acirc;n của t&ocirc;i, c&oacute; ơn n&ecirc;n b&aacute;o đ&aacute;p. T&ocirc;i l&iacute; nh&iacute; cảm ơn b&aacute;c bảo vệ tốt bụng, t&iacute;nh m&ograve; đến nh&agrave; con Li&ecirc;n bạn th&acirc;n xin t&aacute; t&uacute;c một thời gian rồi đến đ&acirc;u th&igrave; đến.</p>', 0, 'chapter2'),
(10, 3, 'chapter3', 'đôi ta gặp nhau', '<p>T&ocirc;i đang kh&oacute;c bỗng ngưng lại, ngạc nhi&ecirc;n ngước l&ecirc;n nh&igrave;n hắn. Hắn lạnh l&ugrave;ng đưa mấy đồng tiền ra trước mặt t&ocirc;i. D&ugrave; mất tiền x&oacute;t lắm nhưng l&uacute;c n&agrave;y t&ocirc;i c&oacute; ch&uacute;t bất ngờ, l&uacute;ng t&uacute;ng đứng dậy đối diện hắn thắc mắc:<br />\r\n<br />\r\n&ndash; Anh kh&ocirc;ng sợ t&ocirc;i bỏ đi lu&ocirc;n &agrave;?<br />\r\n<br />\r\n&ndash; Th&aacute;ch.<br />\r\n<br />\r\nT&ocirc;i ph&igrave; cười, đưa hai tay đ&oacute;n lấy tiền từ tay hắn. Nhớ ra t&ocirc;i cần tất cả số tiền đ&oacute;ng viện ph&iacute; th&ecirc;m cho cu Th&agrave;nh l&agrave; ba triệu, t&ocirc;i đ&atilde; nhờ c&ocirc; Doan vay gi&uacute;p họ h&agrave;ng từ chiều qua, l&uacute;c n&agrave;y thấy hắn dễ dễ tự nhi&ecirc;n lại liều mồm:<br />\r\n<br />\r\n&ndash; Hay&hellip; anh ứng trước cho t&ocirc;i lu&ocirc;n ba triệu được kh&ocirc;ng? T&ocirc;i thề với anh t&ocirc;i sẽ l&agrave;m việc chăm chỉ, anh thấy s&aacute;ng nay t&ocirc;i nghi&ecirc;m t&uacute;c thế n&agrave;o rồi đ&uacute;ng kh&ocirc;ng?<br />\r\n<br />\r\nMặt hắn đang v&ocirc; cảm bỗng biến th&agrave;nh vẻ bực bội, hắn quay người bước đi. T&ocirc;i xấu hổ đến đỏ mặt, cả người n&oacute;ng ran vội chạy theo giải th&iacute;ch sợ hắn hiểu lầm t&ocirc;i tham lam kh&ocirc;ng biết điều:<br />\r\n<br />\r\n&ndash; Tại&hellip; em trai t&ocirc;i đang nằm viện, b&aacute;c sĩ n&oacute;i cần ba triệu đ&oacute;ng nốt đợt cuối rồi cho em t&ocirc;i về nh&agrave; n&ecirc;n&hellip; anh th&ocirc;ng cảm cho t&ocirc;i&hellip; anh kh&ocirc;ng đồng &yacute; cũng kh&ocirc;ng sao m&agrave;!<br />\r\n<br />\r\nHắn gườm gườm nh&igrave;n t&ocirc;i hỏi:<br />\r\n<br />\r\n&ndash; C&oacute; thật kh&ocirc;ng?<br />\r\n<br />\r\n&ndash; Thật&hellip; thế n&ecirc;n mất tiền t&ocirc;i mới kh&oacute;c thế&hellip;<br />\r\n<br />\r\n&ndash; &hellip;<br />\r\n<br />\r\n&ndash; Được rồi. T&ocirc;i ứng trước cho c&ocirc; ba triệu, c&oacute; điều từ mai c&ocirc; phải l&agrave;m th&ecirc;m việc nấu cơm trưa cho anh em thợ.<br />\r\n<br />\r\nHắn cũng biết &eacute;p người lắm đấy, cơ m&agrave;&hellip; t&ocirc;i đang cần tiền, hắn tin t&ocirc;i, cho t&ocirc;i vay lại cho t&ocirc;i việc đ&atilde; l&agrave; tốt lắm rồi, t&ocirc;i c&ograve;n d&aacute;m &yacute; kiến g&igrave; nữa. T&ocirc;i bặm m&ocirc;i, c&uacute;i đầu gật gật, nhận th&ecirc;m tiền từ c&aacute;i v&iacute; da đen của hắn. Hắn kh&ocirc;ng n&oacute;i th&ecirc;m g&igrave; nữa, cất lại v&iacute; v&agrave;o t&uacute;i quần kaki đen rồi bỏ đi, mặc kệ t&ocirc;i mở ba l&ocirc; để tiền cẩn thận v&agrave;o v&iacute;. T&ocirc;i l&agrave;m sao m&agrave; d&aacute;m bất cẩn th&ecirc;m một lần nữa. M&oacute;n tiền qu&yacute; gi&aacute; n&agrave;y, c&oacute; chết t&ocirc;i cũng phải bảo vệ đến c&ugrave;ng. T&ocirc;i lấy trong v&iacute; ra mấy đồng lẻ rồi bước đến trạm xe bu&yacute;t gần đ&oacute;, t&igrave;m chuyến xe th&iacute;ch hợp nhất đến bệnh viện Nhi th&agrave;nh phố.<br />\r\n<br />\r\nT&ocirc;i mua hộp ch&aacute;o t&ocirc;m c&ugrave;ng c&aacute;i b&aacute;nh sừng b&ograve; m&agrave; em t&ocirc;i n&oacute;i th&egrave;m ăn v&agrave;o cho n&oacute;. Bước v&agrave;o ph&ograve;ng bệnh chật chội mấy b&eacute; nằm chung một giường, người nh&agrave; đ&ocirc;ng đ&uacute;c xung quanh, t&ocirc;i thở d&agrave;i l&ecirc;n tiếng:<br />\r\n<br />\r\n<br />\r\n<br />\r\n&ndash; Ch&aacute;u ch&agrave;o c&aacute;c b&aacute;c c&aacute;c c&ocirc;!<br />\r\n<br />\r\n&ndash; Ừ&hellip; Thảo v&agrave;o chăm em đấy &agrave;?<br />\r\n<br />\r\nMọi người bận bịu chăm s&oacute;c con em, họ thấy t&ocirc;i bước v&agrave;o th&igrave; ngẩng l&ecirc;n cười ch&agrave;o lịch sự rồi lại chăm ch&uacute; đ&uacute;t ch&aacute;o, x&uacute;c cơm cho bọn trẻ.<br />\r\n<br />\r\nT&ocirc;i bước đến giường cu Th&agrave;nh, thằng b&eacute; đang đọc truyện Đ&ocirc; R&ecirc; Mon, thấy t&ocirc;i n&oacute; bỏ cuốn truyện xuống ngẩng mặt l&ecirc;n đ&oacute;n chị, đ&ocirc;i mắt long lanh nh&igrave;n t&ocirc;i:<br />\r\n<br />\r\n&ndash; Chị Thảo, chị mua b&aacute;nh sừng b&ograve; cho em rồi ạ?<br />\r\n<br />\r\n&ndash; Ừ, m&agrave;y đ&ograve;i th&igrave; chị phải chiều chứ. C&ocirc; Doan đi đ&acirc;u rồi Th&agrave;nh?<br />\r\n<br />\r\n&ndash; C&ocirc; ấy vừa ra ngo&agrave;i th&ocirc;i ạ.<br />\r\n<br />\r\nT&ocirc;i gật đầu, mở t&uacute;i nilon lấy b&aacute;nh sừng b&ograve; c&ograve;n ấm đưa cho em rồi đặt hộp ch&aacute;o n&oacute;ng l&ecirc;n b&agrave;n tủ đầu giường cho nguội bớt. Cho đến h&ocirc;m nay l&agrave; em t&ocirc;i nằm viện được một tuần, cứ v&agrave;o viện l&agrave; x&aacute;c định tốn k&eacute;m rồi. T&ocirc;i thở d&agrave;i, ngồi xuống m&eacute;p giường bệnh, mỉm cười ngắm thằng b&eacute; vui vẻ gặm b&aacute;nh. Giường th&igrave; nhỏ m&agrave; c&oacute; tận ba bạn c&ugrave;ng nằm, đ&uacute;ng l&agrave; kh&ocirc;ng thể n&agrave;o nằm thẳng người m&agrave; to&agrave;n phải ngồi cả. Thương lắm nhưng chẳng biết l&agrave;m sao, t&ocirc;i lấy đ&acirc;u ra tiền m&agrave; cho em v&agrave;o ph&ograve;ng dịch vụ?<br />\r\n<br />\r\nNh&igrave;n sắc mặt thằng b&eacute; đ&atilde; c&oacute; ch&uacute;t hồng h&agrave;o m&agrave; l&ograve;ng t&ocirc;i dịu lại, nhớ h&ocirc;m n&oacute; được anh Ki&ecirc;n, anh họ nh&agrave; mẹ t&ocirc;i đưa v&agrave;o, da dẻ n&oacute; t&aacute;i nhợt, m&ocirc;i t&iacute;m bệch m&agrave; t&ocirc;i lo t&aacute;i người, ăn kh&ocirc;ng ngon ngủ kh&ocirc;ng y&ecirc;n, giờ được thế n&agrave;y t&ocirc;i cũng mừng, mong thằng b&eacute; sớm được ra viện.<br />\r\n<br />\r\nTừ ng&agrave;y bố mẹ t&ocirc;i mất, ng&ocirc;i nh&agrave; ba gian của ch&uacute;ng t&ocirc;i đ&agrave;nh đ&oacute;ng cửa để đấy, cu Th&agrave;nh sang ở với b&aacute;c Tuấn &ndash; anh trai duy nhất của mẹ t&ocirc;i. Gia cảnh b&aacute;c cũng chẳng kh&aacute; giả, vợ b&aacute;c mất c&aacute;ch đ&acirc;y mấy năm v&igrave; ung thư, giờ b&aacute;c ở với con trai lớn l&agrave; anh Ki&ecirc;n c&ugrave;ng vợ anh v&agrave; đứa con g&aacute;i mới l&ecirc;n ba. Anh Ki&ecirc;n cờ bạc nợ nần suốt l&agrave;m nh&agrave; b&aacute;c bao phen khốn đốn, t&ocirc;i để thằng Th&agrave;nh ở đấy m&agrave; cũng lo lo, được c&aacute;i thằng b&eacute; vốn ngoan ngo&atilde;n, học h&agrave;nh cũng ổn, lại th&ecirc;m chị H&agrave; vợ anh Ki&ecirc;n l&agrave;m gi&aacute;o vi&ecirc;n bảo ban n&ecirc;n t&ocirc;i cũng tạm y&ecirc;n t&acirc;m, h&agrave;ng th&aacute;ng vẫn gửi tiền về nhờ b&aacute;c nu&ocirc;i em. T&ocirc;i kh&ocirc;ng đủ khả năng để mang thằng b&eacute; ra đ&acirc;y ăn học, đ&agrave;nh nhờ cậy b&aacute;c Tuấn vậy. T&ocirc;i lu&ocirc;n mong c&oacute; việc tốt lương cao để hỗ trợ được tốt hơn cho thằng b&eacute; nhưng khả năng chẳng đủ, tr&igrave;nh độ tiếng Anh cũng tậm tạch nhớ nhớ qu&ecirc;n qu&ecirc;n n&ecirc;n t&ocirc;i cũng đ&agrave;nh chịu mức lương năm triệu, đến l&uacute;c c&ocirc;ng ty cũ ph&aacute; sản th&igrave; năm triệu cũng chẳng c&oacute; m&agrave; d&ugrave;ng. T&ocirc;i muốn học li&ecirc;n th&ocirc;ng lấy c&aacute;i bằng đại học T&agrave;i ch&iacute;nh-Kế to&aacute;n lắm, c&oacute; điều bao việc phải lo. Nghĩ rồi t&ocirc;i lại thở d&agrave;i đ&aacute;nh thượt&hellip;<br />\r\n<br />\r\nMột l&aacute;t sau c&ocirc; Doan t&ocirc;i bước về ph&ograve;ng, t&ocirc;i thấy c&ocirc; liền cất tiếng ch&agrave;o:<br />\r\n<br />\r\n&ndash; C&ocirc; Doan, gần mười hai giờ rồi, c&ocirc; ch&aacute;u m&igrave;nh đi ăn g&igrave; đi!<br />\r\n<br />\r\n&ndash; Ơ&hellip; h&ocirc;m nay kh&ocirc;ng nấu nướng g&igrave; &agrave; ch&aacute;u?<br />\r\n<br />\r\n<br />\r\n<br />\r\nC&ocirc; Doan cầm &iacute;t b&aacute;nh đa vừng với g&oacute;i bim bim đặt l&ecirc;n b&agrave;n tủ, nh&igrave;n t&ocirc;i thắc mắc. T&ocirc;i đ&agrave;nh n&oacute;i ho&agrave;n cảnh cho c&ocirc; hiểu, c&ocirc; vẫn biết t&ocirc;i kh&oacute; khăn vay mượn khắp nơi n&ecirc;n t&ocirc;i cũng chẳng giấu g&igrave; c&ocirc;:<br />\r\n<br />\r\n&ndash; S&aacute;ng nay b&agrave; chủ nh&agrave; trọ của ch&aacute;u kh&ocirc;ng cho thu&ecirc; nh&agrave; nữa, ch&aacute;u định tối v&agrave;o đ&acirc;y ngủ, m&agrave; nh&igrave;n cảnh thế n&agrave;y th&igrave;&hellip;<br />\r\n<br />\r\n&ndash; Ừ, ở đ&acirc;y c&oacute; m&agrave; h&iacute;t c*t, h&iacute;t đ*i cũng ốm người, th&ocirc;i xem thu&ecirc; chỗ n&agrave;o rẻ rẻ, chật t&iacute; cũng được ch&aacute;u ạ.<br />\r\n<br />\r\nT&ocirc;i cũng đ&agrave;nh gật đầu với c&ocirc; chứ chẳng biết l&agrave;m sao, ở lại bệnh viện buổi tối l&agrave; kh&ocirc;ng thể, ngo&agrave;i s&acirc;n th&igrave; muỗi n&oacute; khi&ecirc;ng đi, lại c&ograve;n mưa gi&oacute; m&agrave; trong ph&ograve;ng th&igrave; chẳng c&ograve;n chỗ, bọn trẻ ốm đau kh&oacute;c l&oacute;c inh ỏi, kh&ocirc;ng cũng đi vệ sinh tại chỗ. C&ocirc; Doan nghĩ cho t&ocirc;i, c&ocirc; bảo t&ocirc;i c&ograve;n giữ sức khỏe m&agrave; đi l&agrave;m n&ecirc;n c&ocirc; mới nhận việc ở lại đ&acirc;y chăm cu Th&agrave;nh chứ kh&ocirc;ng th&igrave; t&ocirc;i cũng chẳng biết phải l&agrave;m sao. T&ocirc;i ng&agrave;i ngại hỏi c&ocirc;:<br />\r\n<br />\r\n&ndash; Việc ch&aacute;u nhờ c&ocirc; h&ocirc;m qua&hellip; thế n&agrave;o rồi c&ocirc;?<br />\r\n<br />\r\n&ndash; Ừ&hellip; nh&agrave; c&ocirc; với nh&agrave; ch&uacute; Hưng c&ograve;n c&oacute; &iacute;t tiền gom cả cho ch&uacute;ng m&agrave;y, nh&agrave; qu&ecirc; l&agrave;m n&ocirc;ng mấy khi c&oacute; tiền đ&acirc;u, đ&acirc;y cầm lấy ch&aacute;u.<br />\r\n<br />\r\nT&ocirc;i x&uacute;c động khi c&ocirc; d&uacute;i v&agrave;o tay t&ocirc;i mấy đồng, chẳng phải đếm t&ocirc;i đo&aacute;n cũng đủ số tiền t&ocirc;i cần, nhưng t&ocirc;i mới c&oacute; được ba triệu từ t&ecirc;n &ldquo;chủ&rdquo; n&ecirc;n chỉ lấy một phần ba số đ&oacute;, c&ograve;n đ&acirc;u đưa lại c&ocirc; m&agrave; n&oacute;i:<br />\r\n<br />\r\n&ndash; Ch&aacute;u vay c&ocirc; với ch&uacute; &iacute;t n&agrave;y l&agrave; tốt rồi, ch&aacute;u mới t&igrave;m được việc l&agrave;m rồi c&ocirc; ạ, thế n&ecirc;n tạm thời cũng bớt lo.<br />\r\n<br />\r\nT&ocirc;i n&oacute;i rồi mở v&iacute; đưa ba triệu cho c&ocirc;, kh&ocirc;ng qu&ecirc;n nhờ c&ocirc;:<br />\r\n<br />\r\n&ndash; Chiều nay ch&aacute;u phải đi l&agrave;m sớm, ch&aacute;u nhờ c&ocirc; đ&oacute;ng viện ph&iacute; cho cu Th&agrave;nh gi&uacute;p ch&aacute;u!<br />\r\n<br />\r\nC&ocirc; Doan c&oacute; vẻ vui khi t&ocirc;i n&oacute;i c&oacute; việc l&agrave;m, c&oacute; điều t&ocirc;i chẳng d&aacute;m nh&igrave;n c&ocirc; n&ecirc;n c&ocirc; cũng th&ocirc;i kh&ocirc;ng hỏi g&igrave;. C&ocirc; nhận tiền cất v&agrave;o t&uacute;i vải, c&ocirc; l&agrave;m ruộng n&ecirc;n cũng kh&ocirc;ng thạo mấy việc tiền nong, nhưng t&ocirc;i chỉ biết nhờ c&ocirc; m&agrave; th&ocirc;i.<br />\r\n<br />\r\nT&ocirc;i đứng dậy, k&eacute;o tay c&ocirc; n&oacute;i:<br />\r\n<br />\r\n&ndash; M&igrave;nh ra ngo&agrave;i kia ăn g&igrave; đi c&ocirc;, cũng muộn rồi c&ocirc; ạ.<br />\r\n<br />\r\nC&ocirc; Doan c&ugrave;ng t&ocirc;i ra ngo&agrave;i ăn suất cơm b&igrave;nh d&acirc;n ở ngay cổng bệnh viện rồi quay lại với cu Th&agrave;nh. Thằng b&eacute; giờ khỏe hơn n&ecirc;n tự x&uacute;c ch&aacute;o ăn được, c&oacute; điều n&oacute; ăn c&aacute;i b&aacute;nh xong lưng lửng dạ rồi n&ecirc;n lại chẳng động v&agrave;o hộp ch&aacute;o m&agrave; thi&ecirc;m thiếp, co người v&agrave;o một b&ecirc;n m&eacute;p giường nghỉ trưa. Nh&igrave;n đồng hồ cũng đ&atilde; mười hai rưỡi, t&ocirc;i đ&agrave;nh từ biệt c&ocirc; Doan để trở lại với c&ocirc;ng việc phụ hồ bất đắc dĩ, kh&ocirc;ng d&aacute;m hẹn c&ocirc; trước bởi khả năng tối nay t&ocirc;i kh&ocirc;ng v&agrave;o được m&agrave; c&ograve;n đi t&igrave;m chỗ trọ mới.</p>', 0, 'chapter3'),
(11, 4, 'chapter 2', 'Ta Thấy Mỹ Nhân Như Danh Tướng', '<p>C&oacute; người &aacute;m s&aacute;t!<br />\r\n<br />\r\nCon ngươi Ph&oacute; Lăng Nghi chợt đỏ sọng.<br />\r\n<br />\r\nChỉ nghe thấy một tiếng rắc gi&ograve;n vang, xe ngựa nh&aacute;y mắt đ&atilde; chia năm xẻ bảy. Ph&oacute; Lăng Nghi xoay người bật dậy, che chở Từ Ưng Bạch sau lưng, ho&agrave;nh đao b&ecirc;n h&ocirc;ng lập tức tuốt ra khỏi vỏ, đ&aacute;nh bay &aacute;nh đao gần trong gang tấc.<br />\r\n<br />\r\nY đ&aacute; v&agrave;o ngực một t&ecirc;n th&iacute;ch kh&aacute;ch, m&aacute;u tươi tr&agrave;o ra, đầu th&acirc;n hai nửa.<br />\r\n<br />\r\nHo&agrave;nh đao ch&eacute;m xi&ecirc;n lập tức ngoặt sang ngang, lao v&uacute;t tới.<br />\r\n<br />\r\nTiếng k&ecirc;u la thảm thiết vang l&ecirc;n, đầu của đ&aacute;m th&iacute;ch kh&aacute;ch vừa lao tới đều bị chặt đứt, cặp mắt vẫn trừng to như thể kh&ocirc;ng d&aacute;m tin, v&ocirc; định nh&igrave;n v&agrave;o kh&ocirc;ng trung.<br />\r\n<br />\r\nMục ti&ecirc;u của đ&aacute;m th&iacute;ch kh&aacute;ch l&agrave; Từ Ưng Bạch. &Aacute;m vệ Từ phủ cũng đ&atilde; giao đấu với ch&uacute;ng, nhưng d&ugrave; sao bọn họ cũng vẫn l&agrave; người mới, kinh nghiệm non nớt, kh&ocirc;ng s&aacute;nh được với những t&ecirc;n l&atilde;o l&agrave;ng n&agrave;y, rất nhanh đ&atilde; rơi v&agrave;o thế hạ phong.<br />\r\n<br />\r\nPh&oacute; Lăng Nghi tựa như &aacute;c lang bảo vệ b&ecirc;n cạnh Từ Ưng Bạch.<br />\r\n<br />\r\nNăm s&aacute;u thanh đao nhuốm m&aacute;u đ&acirc;m thẳng về ph&iacute;a hắn.<br />\r\n<br />\r\nLấy &iacute;t địch đ&ocirc;ng đ&atilde; kh&oacute;, m&agrave; trong hai người chỉ một người c&oacute; thể đ&aacute;nh.<br />\r\n<br />\r\nĐao kiếm trước mắt nhanh tới nỗi chỉ c&ograve;n t&agrave;n ảnh, m&agrave; Ph&oacute; Lăng Nghi lại vướng tay vướng ch&acirc;n. Từ Ưng Bạch nh&iacute;u m&agrave;y muốn trốn tr&aacute;nh, trường đao kia chỉ c&ograve;n c&aacute;ch hắn ba tấc th&igrave; bị Ph&oacute; Lăng Nghi kịp thời chặn lại.<br />\r\n<br />\r\nNgười ấy liều mạng x&ocirc;ng pha trong đao kiếm, lưỡi kiếm sắc b&eacute;n tựa như chỉ c&aacute;ch cổ y một sợi t&oacute;c.<br />\r\n<br />\r\nRồi y hướng mũi đao, nhẹ nh&agrave;ng giảm bớt lực, ho&agrave;nh đao mổ sống th&acirc;n thể từ dưới l&ecirc;n tr&ecirc;n, đầu cũng bị ch&eacute;m th&agrave;nh hai nửa, ch&eacute;m sắt như ch&eacute;m b&ugrave;n.<br />\r\n<br />\r\nNgay sau đ&oacute;, Ph&oacute; Lăng Nghi xoay người về sau tr&aacute;nh tho&aacute;t lưỡi đao, c&uacute;i người th&agrave;nh một tư thế cực kỳ vặn vẹo, ho&agrave;nh đao v&agrave; v&ocirc;i t&ocirc;i đồng loạt được vung l&ecirc;n. Hắc y th&iacute;ch kh&aacute;ch che mắt g&agrave;o l&ecirc;n thảm thiết, ho&agrave;nh đao đi tới đ&acirc;u m&aacute;u tươi lập tức phun tr&agrave;o tới đ&oacute;.</p>', 0, 'chapter-2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(10) UNSIGNED NOT NULL,
  `tendanhmuc` varchar(255) NOT NULL,
  `slug_danhmuc` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `kichhoat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`, `slug_danhmuc`, `mota`, `kichhoat`) VALUES
(1, 'truyện ma', 'truyen-ma', 'ma cổ việt nam ngày xưa', 0),
(2, 'truyện trinh thám', 'truyen-trinh-tham', 'trinh thám phá án giết người máu', 0),
(3, 'truyện tình cảm', 'truyen-tinh-cam', 'tình cảm lãng mạn', 0),
(4, 'truyện cổ tích', 'truyen-co-tich', 'cổ tích xưa', 0),
(5, 'truyện dân gian', 'truyen-dan-gian', 'dân gian', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `id` int(10) UNSIGNED NOT NULL,
  `tentheloai` varchar(255) NOT NULL,
  `slug_theloai` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `kichhoat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`id`, `tentheloai`, `slug_theloai`, `mota`, `kichhoat`) VALUES
(1, 'hành động', 'hanh-dong', 'hành động action', 0),
(2, 'kinh dị', 'kinh-di', 'ma cổ việt nam ngày xưa', 0),
(3, 'tình cảm', 'tinh-cam', 'tình cảm', 0),
(4, 'lịch sử', 'lich-su', 'lịch xử', 0),
(5, 'quân sự', 'quan-su', 'quân sự', 0),
(6, 'hiện đại', 'hien-dai', 'hiện đại', 0),
(7, 'cổ tích', 'co-tich', 'cổ tích', 0),
(8, 'truyền thuyết', 'truyen-thuyet', 'truyền thuyết', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truyen`
--

CREATE TABLE `truyen` (
  `id` int(10) UNSIGNED NOT NULL,
  `tentruyen` varchar(255) NOT NULL,
  `tacgia` varchar(255) NOT NULL,
  `tomtat` text NOT NULL,
  `danhmuc_id` int(11) NOT NULL,
  `theloai_id` int(10) UNSIGNED NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `slug_truyen` varchar(255) NOT NULL,
  `kichhoat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `truyen`
--

INSERT INTO `truyen` (`id`, `tentruyen`, `tacgia`, `tomtat`, `danhmuc_id`, `theloai_id`, `hinhanh`, `slug_truyen`, `kichhoat`) VALUES
(3, 'YÊU ANH TỪ BAO GIỜ', 'yokomashi', 'Hai người vô cùng khác biệt, tựa như không cùng một thế giới, thế mà lại vô tình đến gần nhau, sau đó lại dần dần cảm mến đối phương.\r\n\r\nMột chút nhẹ nhàng, có chút vui tươi, chua chua ngọt ngọt, nhưng mà yêu đương thì luôn có nhiều cung bậc cảm xúc như vậy, chỉ cần hai người vẫn luôn bên nhau, trao nhau tình yêu trọn vẹn, đã là một kết cục đẹp rồi.', 5, 1, 'tải xuống40.jfif', 'yeu-anh-tu-bao-gio', 0),
(4, 'ông già và biển cả', 'goro sensei', 'Tác phẩm Ông già và biển cả miêu tả ông lão Santiago, người theo đuổi khát vọng chinh phục được con cá lớn xứng đáng với tài nghệ của mình, nhằm khẳng định ý nghĩa của sự tồn tại. Ông lão kiên trì liên tục ra khơi suốt tám mươi tư ngày mà chẳng bắt được con cá nào. Không tuyệt vọng, vững tin vào tay nghề và nghị lực của mình, ngày thứ tám mươi lăm, ông quyết định đi thật xa, và quả là trời không phụ lòng người, ông đã câu được một con cá kiếm khổng lồ. Nhưng bi đát thay, con cá lại kéo ông lão ra tận khơi xa. Dũng cảm chịu đựng và đương đầu với con cá suốt ba ngày hai đêm, cuối cùng ông đã chính phục và giết chết được nó.', 5, 1, 'ong-gia-dinh-ti14.jpg', 'ong-gia-va-bien-ca', 0),
(5, 'Nghìn lẻ 1 đêm', 'Antoine Galland', '\"Nghìn lẻ một đêm\" được tạo nên qua một quá trình kéo dài nhiều thế kỷ. Tác phẩm hoàn chỉnh vào thế kỷ 15 nhưng những phần cốt yếu như truyện nền, các truyện kể chính đã hình thành trong khoảng thời gian từ trước thế kỷ 9 cho đến thế kỷ 12. Dấu vết của Nghìn lẻ một đêm được tìm thấy trong văn bản viết sớm nhất vào khoảng thế kỷ thứ 9 trong một cuốn papyrus. Ngay trong cuốn papyrus này đã có sự đề cập đến tựa đề Sách về các câu chuyện từ Một nghìn đêm và tên của hai nhân vật là nữ Dinazad và Shirazad - sau này trở thành Dunyazad và Shahrazad. Khoảng một thế kỷ sau đó, một tác giả ở Baghdad, sử gia al-Mas‘ûdî (896-956) cũng nói về tác phẩm gồm các câu chuyện được kể trong các đêm với các nhân vật trong truyện nền là hoàng đế, quan tể tướng, con gái tể tướng và cô nữ tỳ trong sách Bãi vàng (Murûj adh-dhahab) của mình.', 5, 6, 'tải xuống (7)18.jfif', 'nghin-le-1-dem', 0),
(6, 'TA THẤY MỸ NHÂN NHƯ DANH TƯỚNG', 'Vũ Sấu Lâm Phong', 'Đời trước, Từ Ưng Bạch là một người tốt đúng nghĩa.\r\n\r\nHắn đánh lui ngoại tộc, lập triều đình, lấy sức một người địch vạn quân, đau khổ chống đỡ, chỉ hi vọng có một ngày bá tánh được ấm no, thiên hạ thái bình.', 5, 8, 'tải xuống (1)24.jfif', 'ta-thay-my-nhan-nhu-danh-tuong', 0),
(7, 'Nghìn lẻ 1 đêm', 'Antoine Galland', '\"Nghìn lẻ một đêm\" được tạo nên qua một quá trình kéo dài nhiều thế kỷ. Tác phẩm hoàn chỉnh vào thế kỷ 15 nhưng những phần cốt yếu như truyện nền, các truyện kể chính đã hình thành trong khoảng thời gian từ trước thế kỷ 9 cho đến thế kỷ 12. Dấu vết của Nghìn lẻ một đêm được tìm thấy trong văn bản viết sớm nhất vào khoảng thế kỷ thứ 9 trong một cuốn papyrus. Ngay trong cuốn papyrus này đã có sự đề cập đến tựa đề Sách về các câu chuyện từ Một nghìn đêm và tên của hai nhân vật là nữ Dinazad và Shirazad - sau này trở thành Dunyazad và Shahrazad. Khoảng một thế kỷ sau đó, một tác giả ở Baghdad, sử gia al-Mas‘ûdî (896-956) cũng nói về tác phẩm gồm các câu chuyện được kể trong các đêm với các nhân vật trong truyện nền là hoàng đế, quan tể tướng, con gái tể tướng và cô nữ tỳ trong sách Bãi vàng (Murûj adh-dhahab) của mình.', 5, 6, 'tải xuống (7)18.jfif', 'nghin-le-1-dem', 0),
(8, 'ông già và biển cả', 'goro sensei', 'Tác phẩm Ông già và biển cả miêu tả ông lão Santiago, người theo đuổi khát vọng chinh phục được con cá lớn xứng đáng với tài nghệ của mình, nhằm khẳng định ý nghĩa của sự tồn tại. Ông lão kiên trì liên tục ra khơi suốt tám mươi tư ngày mà chẳng bắt được con cá nào. Không tuyệt vọng, vững tin vào tay nghề và nghị lực của mình, ngày thứ tám mươi lăm, ông quyết định đi thật xa, và quả là trời không phụ lòng người, ông đã câu được một con cá kiếm khổng lồ. Nhưng bi đát thay, con cá lại kéo ông lão ra tận khơi xa. Dũng cảm chịu đựng và đương đầu với con cá suốt ba ngày hai đêm, cuối cùng ông đã chính phục và giết chết được nó.', 5, 1, 'ong-gia-dinh-ti14.jpg', 'ong-gia-va-bien-ca', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userpublic`
--

CREATE TABLE `userpublic` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date_created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `userpublic`
--

INSERT INTO `userpublic` (`id`, `username`, `email`, `password`, `date_created`) VALUES
(1, 'nam1998', 'nam1998@gmail.com', '12345', '2024-08-04 14:36:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nguyễn tiến đạt', 'tiendat@gmail.com', NULL, '$2y$10$jK05s4V5Pl73EPORIi.y6.SHyNWvk0b.AA6XaOrO1NnQFsbMJm5s2', NULL, '2024-07-19 15:22:58', '2024-07-19 15:22:58');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `truyen_id` (`truyen_id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `truyen`
--
ALTER TABLE `truyen`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `userpublic`
--
ALTER TABLE `userpublic`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `truyen`
--
ALTER TABLE `truyen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `userpublic`
--
ALTER TABLE `userpublic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
