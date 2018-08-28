-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2018 at 05:46 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lan`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id_author` int(11) NOT NULL,
  `name_author` varchar(50) NOT NULL,
  `img_author` varchar(255) DEFAULT NULL,
  `gmail` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id_author`, `name_author`, `img_author`, `gmail`, `facebook`) VALUES
(1, 'Nguyễn Nhật Ánh', 'nguyen-nhat-anh.jpg', 'vanhochienthoi@gmail.com.vn', 'vanhochienthoi@gmail.com.vn'),
(2, 'Nguyễn Du', '', '', ''),
(3, 'David Allen', '', '', ''),
(4, 'Dương Ký Châu', '', '', ''),
(5, 'Robin Sharma', '', '', ''),
(6, 'Nguyễn Xuân Hồng', '', '', ''),
(7, 'Vũ Phương Thanh', 'vuvanthanh.jpg', 'vuphuongthanh@gmail.com', 'vuphuongthanh@facebook.com');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_category` int(11) NOT NULL,
  `content` text NOT NULL,
  `price` int(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `img_front` text NOT NULL,
  `img_after` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `id_category`, `content`, `price`, `date_created`, `img_front`, `img_after`) VALUES
(1, 'Quyết đoán trong 1 phút', 1, 'Cuộc sống của bạn sẽ thay đổi trong tích tắc. Mỗi giây phút trôi đi chúng ta đều đưa ra những quyết định dù lớn hay nhỏ song cũng sẽ tấc động rất lớn đến cuộc đời chúng ta. Hãy cùng học cách quyết đoán để không phải do dự một giây nào trước những quyết định quan trọng nhé!Bạn đã từng nghĩ: “Tôi vốn không quyết đoán. Gần như tôi chẳng thể quyết định điều gì cả”?Hãy để hai tay lên ngực và suy nghĩ! Sự thật có phải là từ khi sinh ra bạn đã không quyết đoán sao? Mọi thứ sẽ thay đổi khi bạn đọc cuốn sách “Quyết đoán trong 1 phút”. “Quyết đoán trong 1 phút” là 1 trong những cuốn sách kĩ năng bán chạy nhất trên thị trường Nhật Bản hiện nay. Chúc các bạn thành công!', 150000, '2018-07-03 17:00:00', 'kns1qd1p.png', ''),
(2, 'Kĩ năng đi trước đam mê', 1, 'Những câu chuyện, những chuyến đi của Cal Newport đã được ghi lại qua quy tắc “Tầm quan trọng của sự kiểm soát” và “Tầm quan trọng của sứ mệnh” là hành trình tìm kiếm đam mê, khám phá thực tế, nơi mà ai cũng có thể áp dụng để bản thân trở nên ưu tú trong mọi việc, điều quan trọng là cách bạn làm việc chứ không phải là công việc bạn đang làm, làm việc đúng hơn là tìm đúng việc. Đọc đến đây, tôi đã hiểu vì sao kỹ năng đi trước đam mê. Những kĩ năng mà tôi bỏ qua, tôi còn thiếu sót. Không chỉ có thế, tôi còn nhận được nhiều lời khuyên, bài học bổ ích về những sai lầm mà tôi hay mắc phải.', 150000, '2018-07-03 17:00:00', 'kns2kndt.jpg', ''),
(3, 'Rèn luyện kĩ năng giải quyết', 1, 'Giải quyết vấn đề luôn là kỹ năng cần thiết và quan trọng đối với bất kỳ cá nhân nào trong các mối quan hệ. Cuốn sách “Rèn luyện kỹ năng giải quyết vấn đề trong 1 phút” sẽ đem đến cho bạn kiến thức về phương pháp, tri thức, trình tự và cách tư duy hữu ích đối với việc giải quyết các vấn đề. Cùng với việc cung cấp những kiến thức cơ bản, cuốn sách còn có những ví dụ minh họa sinh động có giá trị học hỏi cao. Bên cạnh đó, cuốn sách cũng mang đến rất nhiều biện pháp khắc phục đối với những doanh nghiệp tự cho là mình có thể lường trước được tất cả mọi việc.', 150000, '2018-07-10 17:00:00', 'kns3gvqd.png', ''),
(4, 'Để bạn luôn trẻ mãi', 1, 'Muốn trẻ mãi, trước hết chúng ta cần một chút thay đổi trong cách suy nghĩ, tư duy. Quyển sách mở ra một cách nhìn mới, một chân trời mới để tất cả chúng ta – những người có tuổi hay trẻ tuổi – đều có thể cảm nhận và đón nhận một hiện thực mới: Giữ cho tâm hồn luôn trẻ trung, nhạy cảm, biết cách vượt lên nghịch cảnh, nỗi buồn và tổn thương cuộc sống, biết tự tin vào bản thân và sự sáng tạo của chính mình, cảm nhận niềm vui cuộc sống như những gì cuộc sống vốn có, khám phá những giá trị cao hơn và tìm ra ý nghĩa đích thực của cuộc sống.\r\nNhững ý tưởng và kinh nghiệm thực tế quí báu này chắc chắn sẽ giúp cho bạn đọc thành công trong việc giữ mãi một tâm hồn tươi trẻ và mang đến cho chúng ta một thông điệp sâu sắc: “Mỗi giai đoạn trong cuộc đời đều đẹp, đều giá trị và có ý nghĩa!”\r\nĐây là một quyển sách cần thiết, hữu ích và kịp thời cho bạn đọc mọi lứa tuổi – không chỉ đọc mà còn sống với nó!', 150000, '2018-07-11 17:00:00', 'kns4dbltm.png', ''),
(6, 'Hai con mèo ngồi cửa sổ', 2, 'Có Hai Con Mèo Ngồi Bên Cửa Sổ\r\nNhân vật chính thứ nhất tên là Gấu.\r\nNhân vật thứ hai là Tí Hon.\r\nNhân vật thứ ba, tên là…; còn nữa, nhân vật thứ tư, tên là…\r\nĐể biết tại sao Gấu lại chơi thân với Tí Hon, thì mời bạn hãy mở sách ra.\r\nGấu và Tí Hon thân nhau đến mức có thể chia sẻ từng chuyện vui buồn trong những phút giây mềm yếu, lo lắng và chăm sóc, giúp nhau từ miếng ăn đến “chiến lược” để tồn tại lâu dài.Tình bạn là gì? Bạn gái là gì? Tình yêu là gì?\r\nBọn mèo chuột kể với chúng ta nhiều câu chuyện nhỏ, gửi thông điệp rằng, tình yêu có sức mạnh tuyệt diệu, có thể làm nên mọi điều phi thường trong cuộc sống muôn loài.', 150000, '2018-07-17 17:00:00', 'tn22cmeo.png', ''),
(7, 'Con Rồng Cháu Tiên', 2, 'Huyền thoại Con Rồng cháu Tiên hấp dẫn người nghe bởi những chi tiết ngẫu nhiên lạ lùng: vua Lạc Long Quân - Rồng ở dưới nước gặp nàng Âu Cơ - Tiên trên non cao rồi yêu nhau, kết duyên thành vợ chồng rằng, phối hiệp với sinh ra một cái bọc có khoảng trăm trứng, nở thành trăm con. Từ đó sinh ra một dòng giống Việt.\r\nQua huyền thoại Con Rồng cháu Tiên câu chuyện như nhắc nhở chúng ta những người con đất Việt: hãy yêu thương đùm bọc nhau như anh, chị, em một nhà. Vì tất thể người dân Việt Nam đều có cội nguồn là con rồng, cháu tiên đầy đáng tự hào.\r\nVới hình ảnh đẹp, màu sắc sắc nét, tươi mới, các bạn nhỏ sẽ dễ dàng hình dung hơn, thỏa sức bay nhảy trong câu truyện và mở mang trí tưởng tượng. Hãy để Con Rồng cháu Tiên trở thành người bạn thân thiết với bé, để những lời khuyên chân thành trong câu truyện dần thấm vào tâm hồn bé như lời hát à ơi của bà của mẹ…', 150000, '2018-07-17 17:00:00', 'tn3crct.png', ''),
(8, 'Tìm kiếm tài năng biển', 2, 'Các loài động vật dưới biển có những tài nghệ gì nhỉ?\r\nBé hãy đến cuộc thi TÌM KIẾM TÀI NĂNG BIỂN để xem các tiết mục vô cùng đặc sắc nào!\r\nHơn 100 hình dán sinh động, cùng các tranh tô màu cỡ lớn giúp bé vừa học vừa chơi, vừa rèn luyện khả năng quan sát, phán đoán, phối hợp, khéo léo giữa tay và mắt nữa đấy!\r\nVà còn cả những kiến thức thú vị về các loài sinh vật dưới lòng biển nữa, hãy cùng nhau khám phá nhé!', 150000, '2018-07-17 17:00:00', 'kh3tnb.jpg', ''),
(9, 'Sự tích Sọ Dừa', 2, 'Bắt đầu từ chuyện ở một gia đình nọ, hai vợ chồng lấy nhau đã lâu nhưng đã ngoài năm mươi tuổi rồi mà vẫn chưa có con. Một ngày, người vợ vào rừng đốn củi, khát nước quá mà không tìm thấy suối. Bà lần đến hốc cây to để xem có giọt nước nào còn đọng lại thì phát hiện ra một cái sọ người bên tảng đá, bên trong có nước trong vắt. Bà liều mình uống để đỡ khát. Chẳng bao lâu, bà đã mang thai, sau chín tháng mười ngày, bà đẻ ra một cục thịt tròn lông lốc, có đủ mắt, mũi, mồm nhưng không có chân tay. Bà toan vứt đi thì đứa con lên tiếng xin được mẹ giữ lại, đừng vứt đi. Bà cảm động, nâng niu cục thịt trong lòng và đặt tên con là Sọ Dừa. Từ đây, những tháng ngày của mẹ con Sọ Dừa có nhiều những biến đổi thú vị. Với hình hài như vậy, liệu Sọ Dừa có giúp đỡ được cho mẹ mình không? Cuộc sống sau này của Sọ Dừa sẽ như thế nào? Các bé hãy cùng đón đọc Sự tích Sọ Dừa để tìm cho mình lời giải đáp nhé.', 150000, '2018-07-29 02:17:16', 'tn4sodua.png', ''),
(10, 'Tiếng Hàn cơ bản', 3, 'Các đề mục ngữ pháp ở trình độ Sơ cấp được trình bày dưới dạng so sánh các mẫu cấu trúc tương đồng về ý nghĩa cùng các ví dụ, mẫu hội thoại và phần luyện tập. Ngoài ra, 10 đề mục bao gồm những tình huống giao tiếp hàng ngày gần gũi với thực tế như phim ảnh, sở thích, thời tiết sẽ giúp học sinh luyện tập giao tiếp nhiều hơn. Đi kèm với cuốn sách là đĩa CD với chất giọng người bản xứ chuẩn sẽ hướng dẫn các bạn từ luyện âm cho đến ngữ điệu một cách chính xác và tự nhiên nhất.', 150000, '2018-07-29 02:17:31', 'nn1thancb.png', ''),
(11, 'Ngữ pháp tiếng Anh', 3, 'Hệ thống lại toàn bộ các kiến thức ngữ pháp tiếng Anh thông dụng  từ bậc THCS, THPT đến Đại học bao gồm: Các thì trong tiếng Anh, sự phối thì; các loại câu … Sách trình bày chi tiết theo từng dạng ngữ pháp, đi từ lý thuyết, phân tích lý thuyết đến ví dụ và bài tập minh họa, bài tập tự luyện. Sách có nhấn mạnh phần ngữ pháp nào là trọng tâm, có tính ứng dụng cao, phần ngữ pháp nào ít được ứng dụng hơn. Ngân hàng các câu hỏi trắc nghiệm, câu hỏi minh họa phong phú cho từng dạng ngữ pháp.', 150000, '2018-07-29 02:17:47', 'nn2npta.png', ''),
(12, 'Lượng từ tiếng Hán hiện đại', 3, 'Tập hợp hơn 210 lượng từ thường dùng, bao gồm danh lượng từ, động lượng từ và kiêm chức lượng từ. Với mỗi một lượng từ đều có các nghĩa thường dùng (có giải nghĩa) và giải thích tiếng Việt kèm theo, kết hợp danh lượng từ hoặc kết hợp động lượng từ cùng với các hình minh họa. Với hơn 900 danh từ kết hợp với lượng từ để cho ra tổ hợp 1418 danh lượng từ, 108 động lượng từ và 11 tổ hợp lượng từ hình thức khác. Sách còn đề cập đến một số dạng lượng từ đặc biệt như lượng từ thời gian, lượng từ mức độ và lượng từ tiền tệ…\r\n“Lượng từ tiếng Hán hiện đại” có 3 điểm độc đáo:\r\nMột là dùng hình ảnh để giải thích lượng từ. Do số từ vốn đã là một khái niệm chỉ thị nên tác giả dùng hình ảnh để minh họa lượng từ, những hình ảnh sống động giúp người học nắm bắt nhanh hơn và giảm độ khó của việc học lượng từ.\r\n Hai là sự kết hợp giữa học và luyện tập. Quyển sách này được chắt lọc rất nhiều tổ hợp lượng từ xuất hiện trong các kỳ thi, giúpngười học nắm vững kiến thức và chuẩn bị tốt hơn cho kỳ thi.\r\n Ba là dùng nhiều phương pháp tra cứu. Phần đầu hướng dẫn người học cách tra từ theo các lượng từ, người học có thể dựa vào lượng từ để tìm hiểu xem chúng thường được kết hợp với những danh từ hoặc động từ nào. Phần sau hướng dẫn người học cách tra từ theo danh từ, giúp người học có thể dựa vào các từ khóa là danh từ để tìm ra lượng từ đi kèm thích hợp.', 150000, '2018-07-29 02:18:24', 'nn3ltth.png', ''),
(13, 'Cách học tiếng Anh', 3, 'Cuốn sách này giúp các bạn xây dựng thói quen học tiếng Anh một cách đúng đắn, khoa học. Một số kỹ năng có thể quen thuộc với bạn nhưng chưa được hình thành như một thói quen cần thiết cho sự thành công của mình khi học tiếng Anh.', 150000, '2018-07-29 02:18:33', 'nn4huongdan.png', ''),
(14, 'Ý tưởng kinh doanh', 4, 'Bạn có một ý tưởng tuyệt vời giúp gia tăng doanh thu và cải tiến năng suất, nhưng cần thuyết phục mọi người tin vào điều đó. Hãy xây dựng nó thành một đề xuất kinh doanh thể hiện giá trị của sáng kiến. Việc này không phải lúc nào cũng dễ dàng: có thể bạn không biết các bên hữu quan tin tưởng vào loại dữ liệu gì, hoặc có thể bạn bị các số liệu dọa đến lo lắng. Chắp cánh ý tưởng kinh doanh sẽ giúp bạn xây dựng một đề xuất thuyết phục.', 150000, '2018-07-29 02:27:41', 'kd1ytkd.png', ''),
(15, 'Hậu Hắc Học', 4, 'Hậu, Hắc là nguyên tắt tự nhiên thần bí, nó chi phối và ảnh hưởng đến quyết quan trọng thành công của đời người. \"hậu Hắc Học\" là quy tắc và trí tuệ của cuộc đời. \"Hậu\" giống như cái thuẫn, là sức mạnh để tự bảo vệ mình. \"Hắc\" giống như cái mâu, là cách thức để tự mình thực hiện và cạnh tranh. Hậu Hắc Học ở đây tuyệt đối không phải là \"mặt dày\", và \"tâm đen\" dung tục thấp hèn, \"Hậu Hắc Học\" là triết học xử sự không có bất kỳ ý nghĩa chê trách gì.\r\n Hậu Hắc Học thực chất là một loại nhận thức luận, có một cách để nhìn nhận vấn đề, nó đòi hỏi mọi người có chí lớn nhưng kín đáo, can đảm hơn người nhưng lại tiến bước nào chắc bước đó, nó là mưu lược để giành được lợi ích. Đúng như Lý Tông Ngô người phát hiện ra Hậu Hắc Học từng nói: \"Từ trước tới nay, tất cả mọi người thành đạt đều lợi dụng bí quyết \" Hậu, Hắc\".', 150000, '0000-00-00 00:00:00', 'kd2hhh.png', ''),
(16, 'Sự nghiệp kinh doanh', 4, 'Trên con đường tạo lập sự nghiệp kinh doanh của mình chắc chắn một trong những điều bạn quan tâm lớn nhất đó chính là sự nghiệp kinh doanh đó mang đến sự thành công cho chính bạn và điều quan trọng hơn nữa đó chính là sự nghiệp kinh doanh của bạn cũng phải thành công. Có lẽ hơn bao giờ hết bạn đang cảm nhận những điều tuyệt vời nhất trên con đường xây dựng sự nghiệp kinh doanh đó, cũng như thông qua con đường kinh doanh bạn tìm ra được chính mình, tìm ra được ý nghĩa của chính mình và tạo lập ý nghĩa cho cuộc đời của những người khác. Đã đến lúc bạn phải thấy được chính mình, tìm lại chính con người mình và tăng tốc đến thành công với những gì bạn tạo ra thông qua sự nghiệp kinh doanh bạn mong muốn tạo dựng. Và dù bạn là ai, bạn đến từ đâu thì điều quan trọng ngay lúc này đó chính là bạn thấy được ý nghĩa cuộc đời qua những việc mình làm và giúp người khác tìm thấy ý nghĩa cuộc đời qua những gì họ làm – đó chính là bản chất của sự nghiệp kinh doanh của bạn. Và khi bạn thấy được tầm quan trọng của sự nghiệp kinh doanh của mình thì khi đó bạn cũng thấy được tầm quan trọng của cuộc sống. Khi bạn thấy được tầm quan trọng của cuộc sống thì cũng chính lúc đó bạn sẽ thấy được tình yêu cuộc sống mà ở đó bạn chính là một phần ở trong đó. Tình yêu cuộc sống sẽ dẫn bạn đến một cánh cửa tuyệt vời là “bạn đang sống” chứ không phải là “được sống”, tức là bạn sống một cách chủ động chứ không còn thụ động sống nữa. Cuộc sống của bạn chính là “cuộc sống của bạn” – chứ không phải là cuộc sống của ai khác.', 150000, '2018-07-31 17:00:00', 'kd317kd.png', ''),
(17, 'Đắc nhân tâm', 4, 'Dale Carngie (1888 - 1955) tên đầy đủ là Dale Breckenridge Carnegie là nhà văn, nhà thuyết trình và nhà phát triển giáo dục kỹ năng nghệ thuật bán hàng, đào tạo đoàn thể, nghệ thuật diễn thuyết trước công chúng và giao tiếp trong xã hội.\r\n Đắc Nhân Tâm - của tác giả Dale Carnegie là tác phẩm nổi tiếng nhất trên thế giới. Cuốn sách đã được xuất bản chuyển ngữ nhiều thứ tiếng trên thế giới. Cuốn sách liên tục đứng đầu danh sách bán chạy nhất do thời báo New York Times bình chọn trong nhiều năm. Ở Việt Nam luôn đứng top 10 cuốn sách bán chạy nhất do Công ty Fahasa và Tiki.vn bình chọn.', 150000, '0000-00-00 00:00:00', 'kd4dnt.png', ''),
(18, 'Nghiên cứu khoa học xã hội', 5, 'Cuốn sách này được thiết kế nhằm giới thiệu cho học viên cao học và nghiên cứu sinh tiến sĩ quy trình nghiên cứu khoa học trong các khoa học xã hội, kinh doanh, giáo dục, sức khỏe cộng đồng cùng các lĩnh vực liên quan khác. Cuốn sách dựa trên nhiều tài liệu giảng dạy của tác giả được phát triển qua hơn một thập kỷ giảng dạy các lớp trình độ tiến sĩ về Các phương pháp Nghiên cứu tại Đại học Nam Florida. Độc giả được nhắm tới trong quyển sách này gồm học viên cao học và nghiên cứu sinh tiến sĩ, các nhà nghiên cứu trẻ và các giáo sư đang giảng dạy tại các khoa học về các phương pháp nghiên cứu, ngoài ra các nhà nghiên cứu trẻ cũng có thể dùng sách này như sách tham khảo súc tích cầm tay.', 150000, '0000-00-00 00:00:00', 'kh1nckh.jpg', ''),
(19, 'Từ trái đất đến mặt trăng', 5, 'Jules Verne (Jules Gabriel Verne) (8/2/1828 - 24 /3/1905) - Ông là nhà văn Pháp nổi tiếng, được coi là người khai sinh ra thể loại văn học Khoa học viễn tưởng. Ông đã dùng phòng thí nghiệm và kính viễn vọng để viết tiểu thuyết phiêu lưu. Ông không chỉ ghi lại quá trình các nhà bác học tạo nên những phát minh lớn, mà còn tiên đoán chúng. Đọc những tác phẩm của ông, ta có thể nhận thấy những mâu thuẫn vì trong số những ý tưởng khoa học còn có những kiến phát chưa thể xác minh. Và bỗng dưng năm sau, hoặc vài năm sau, những giả thuyết mà ông đặt ra mà đôi khi thậm chí ông còn không tin, đã trở thành sự thật, một cách hoàn toàn chính xác. Những nhà bác học đã hoàn toàn đồng tình với ý tưởng của ông, hay nói cách khác, ông đã đi trước họ!…', 150000, '2018-07-29 02:27:53', 'khtddmt.png', ''),
(20, 'Code Dạo Kí Sự', 5, 'Nếu các bạn có đọc các blog về lập trình ở Việt Nam thì có lẽ cái tên Tôi đi code dạo không có gì quá xa lạ đối với các bạn.\r\nVề tác giả của blog Tôi đi code dạo, anh tên thật là Phạm Huy Hoàng, một Developer Full Stack, cựu sinh viên trường FPT University, hiện tại anh đang học Thạc sĩ Computer Science tại Đại học Lancaster ở Anh (học bổng $18000). Trước khi qua Xứ Sở Sương Mù, anh đã từng làm việc tại FPT Software và ASWIG Solutions.\r\nVới mong muốn chia sẻ kinh nghiệm học lập trình và các kỹ năng mà anh đã trải qua trong suốt quá trình học và làm việc với tư cách là người đi trước cũng như là một Developer Full Stack, nên anh đã quyết định xuất bản sách “Code dạo ký sự – lập trình viên đâu phải chỉ biết code”.', 150000, '2018-07-29 02:18:16', 'kh4cdks.jpg', ''),
(21, 'Tế Bào Gốc: Khám Phá Cùng Nhà Khoa Học', 5, 'Cuốn sách giúp cho bạn đọc có một cái nhìn bao quát đối với tế bào gốc từ lịch sử phát minh, đến cấu trúc tế bào, cơ chế phân tử, đến bộ gene và di truyền ngoài bộ gene (di truyền ngoại mã).\r\nĐiều đặc biệt ấn tượng là tất cả những kiến thức cơ bản này được diễn giải thật dễ hiểu bằng ngôn ngữ phổ thông, chứ không hàn lâm như trong giới nghiên cứu. Để chuyển tải các khái niệm trừu tượng khó hiểu của thế giới sinh học vi mô đến với người đọc, tác giả đã sử dụng các biện pháp so sánh tương đồng rất tài tình đến nỗi những người có kiến thức trong lĩnh vực, còn thấy hết sức độc đáo thú vị.', 150000, '0000-00-00 00:00:00', 'kh5.jpg', ''),
(23, 'Hoàn thành mọi việc không khó', 5, 'Bạn hãy tổ chức lại bản thân để giải phóng trí óc bạn, tập trung cho những gì xứng đáng hơn.Hoàn thành mọi thứ không hề khó cung cấp một hệ thống hoàn chỉnh để lấy ra mọi thứ đang chất chứa trong tâm trí bạn và sắp xếp chúng vào các danh sách công việc và hồ sơ lưu trữ. Mọi phương pháp, bí quyết được trình bày đều nhằm mục đích giải phóng trí óc bạn để tập trung vào bất cứ thứ gì bạn đang theo đuổi.Lập luận của Allen rất đơn giản: hiệu suất công việc của chúng ta tỷ lệ thuận với năng lực chúng ta dành cho nghỉ ngơi, thư giãn. Chỉ khi trí óc sáng suốt và các suy nghĩ được sắp xếp có trật tự thì chúng ta mới làm việc hiệu quả và giải phóng được các khả năng còn đang tiềm tàng trong mỗi chúng ta.', 185, '2018-07-27 16:01:31', 'kd5.jpg', ''),
(24, 'Giáo Trình Hán Ngữ Tập 1', 3, '', 33000, '2018-07-29 17:50:09', 'snn5.jpg', ''),
(25, 'Ba Người Thầy Vĩ Đại', 4, 'Đây là câu chuyện về một người đàn ông có tên Jack Valentine mà đường đời có nhiều điểm giống với tôi. Có cảm nhận rất không đầy đủ với tư cách một con người, anh ấy lên kế hoạch tìm kiếm tri thức để sống một cuộc sống hạnh phúc hơn, khoẻ khoắn hơn và đẹp hơn.”Những “Câu hỏi cuối cùng” là một điều kì lạ mà Jack nghe được từ người bệnh nhân già nằm cùng phòng với anh – ông Cal. Chỉ sau một buổi tối trò chuyện cùng ông, Jack đã nhận thấy những sự thay đổi đang diễn ra trong mình. Và từ đây, chuyến hành trình đến Rome, Hawaii và New York cùng những khám phá mới mẻ mà anh học được từ ba người thầy vĩ đại trong cuộc đời đã giúp anh trả lời được ba câu hỏi mà cha anh – Cal Valentine đã nói trước khi ông qua đời:- Ta đã SỐNG một cách KHÔN NGOAN chưa?- Ta đã YÊU THƯƠNG chưa?- Ta đã CỐNG HIẾN thật nhiều chưa?’Cuốn sổ mà cha Mike - người thầy đầu tiên ở Rome đưa cho Jack đã đúc kết 10 điều mà anh đã học được trong suốt cuộc hành trình:1. Công việc chính của mọi con người là công việc nội tâm.2. Hãy xem cuộc sống của mình như một trường học dạy cách trưởng thành.3. Hãy thành thật với chính mình – cuộc sống tốt đẹp nhất là cuộc sống chân thật.4. Hãy nhớ rằng chúng ta thu nhận những gì chúng ta phát ra.5. Chúng ta nhìn nhận thế giới không như chính nó mà như chúng ta nghĩ.6. Hãy sống bằng trái tim của ban – tri thức của nó không bao giờ nói dối.7. Hãy đắm mình trong sự tò mò của cuộc đời bạn.8. Hãy chăm lo cho chính bạn.9. Hãy xây dựng những kết nối của con người.10. Hãy để lại một di sản.', 53000, '2018-07-29 17:57:09', 'kns5.jpg', 'kns5-after.jpg'),
(26, 'Giáo trình hán ngữ', 3, 'Bộ Giáo Trình Hán Ngữ gồm nhiều bài với nội dung từ dễ đến khó. Bắt đầu từ luyện tập ngữ âm cơ bản tiếng Hán, từ đó tiến hành giảng dạy kết cấu ngữ pháp, ngữ nghĩa và ngữ dụng, cuối cùng là giai đoạn giảng dạy ngữ đoạn, thông qua sự hiểu biết sâu hơn về ngữ pháp và vận dụng từ ngữ, để nâng cao hơn nữa khả năng biểu đạt thành đoạn văn của người học.\r\n\r\nMỗi bài học bao gồm các phần:\r\n\r\nBài khóa\r\nTừ mới\r\nChú thích\r\nNgữ pháp, ngữ âm\r\nLuyện tập\r\nGiáo Trình Hán Ngữ có 3300 từ mới. Phần bài khóa và nội dung đàm thoại có quan hệ chủ điểm đồng nhất với bài luyện đọc trong phần bài tập, trên cơ sở bảng từ mới của từng bài. Đặc biệt, cuốn sách học cùng app MCBooks ghi giọng đọc chuẩn giúp bạn luyện nghe và học phát âm hiệu quả.', 90000, '2018-08-14 13:09:35', 'snn-6.png', NULL),
(27, 'sách A', 1, 'aaaaaa', 90000, '2018-08-15 04:20:38', 'blog3.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name_cate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_cate`) VALUES
(5, 'Sách khoa học'),
(4, 'Sách kinh doanh'),
(1, 'Sách kỹ năng sống'),
(3, 'Sách ngoại ngữ'),
(2, 'Sách thiếu nhi');

-- --------------------------------------------------------

--
-- Table structure for table `compose`
--

CREATE TABLE `compose` (
  `id_book` int(11) NOT NULL,
  `id_author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id_invoice` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `date` date NOT NULL,
  `Order code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_detail`
--

CREATE TABLE `invoice_detail` (
  `id_invoice` int(11) NOT NULL,
  `id_book` int(11) NOT NULL,
  `count` int(20) NOT NULL,
  `price_export` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_customer`
--

CREATE TABLE `order_customer` (
  `id_order` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `name_receiver` varchar(50) NOT NULL,
  `address_receiver` varchar(50) NOT NULL,
  `email_receiver` varchar(255) NOT NULL,
  `date_order` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `phone_receiver` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_customer`
--

INSERT INTO `order_customer` (`id_order`, `id_customer`, `name_receiver`, `address_receiver`, `email_receiver`, `date_order`, `phone_receiver`) VALUES
(1, 4, 'Phan Thị Kim Hằng', '104 Man Thiện Quận 9', 'kimhang060696@gmail.com', '2018-08-06 04:50:34', 989449097),
(2, 4, 'Phan Thị Kim Hằng', '104 Man Thiện Quận 9', 'kimhang060696@gmail.com', '2018-08-06 04:52:22', 989449097),
(3, 4, 'Phan Thị Kim Hằng', '104 Man Thiện Quận 9', 'kimhang060696@gmail.com', '2018-08-06 04:53:39', 989449097),
(4, 4, 'Phan Thị Kim Hằng', '104 Man Thiện Quận 9', 'kimhang060696@gmail.com', '2018-08-06 05:18:15', 989449097),
(5, 4, 'Phan Thị Kim Hằng', '104 Man Thiện Quận 9', 'kimhang060696@gmail.com', '2018-08-06 05:19:00', 989449097),
(6, 4, 'Phan Thị Kim Hằng', '104 Man Thiện Quận 9', 'kimhang060696@gmail.com', '2018-08-06 05:28:27', 989449097),
(7, 4, 'Phan Thị Kim Hằng', '104 Man Thiện Quận 9', 'kimhang060696@gmail.com', '2018-08-06 05:56:24', 989449097),
(8, 4, 'Phan Thị Kim Hằng', '104 Man Thiện Quận 9', 'kimhang060696@gmail.com', '2018-08-07 09:54:26', 989449097),
(9, 4, 'Phan Thị Kim Hằng', '104 Man Thiện Quận 9', 'kimhang060696@gmail.com', '2018-08-07 09:57:50', 989449097),
(10, 4, 'Phan Thị Kim Hằng', '104 Man Thiện Quận 9', 'kimhang060696@gmail.com', '2018-08-07 09:58:33', 989449097),
(11, 6, 'Võ Thị Cẩm Ly', '24 Lê Văn Việt Quận 9', 'camly10@gmail.com', '2018-08-13 14:35:27', 1662713500),
(12, 6, 'Võ Thị Cẩm Ly', '24 Lê Văn Việt Quận 9', 'camly10@gmail.com', '2018-08-13 15:18:44', 1662713500),
(13, 6, 'Võ Thị Cẩm Ly', '24 Lê Văn Việt Quận 9', 'camly10@gmail.com', '2018-08-14 04:10:46', 1662713500),
(14, 6, 'Võ Thị Cẩm Ly', '24 Lê Văn Việt Quận 9', 'camly10@gmail.com', '2018-08-14 04:13:14', 1662713500),
(15, 6, 'Võ Thị Cẩm Ly', '24 Lê Văn Việt Quận 9', 'camly10@gmail.com', '2018-08-14 04:17:57', 1662713500),
(16, 6, 'Võ Thị Cẩm Ly', '24 Lê Văn Việt Quận 9', 'camly10@gmail.com', '2018-08-14 04:18:51', 1662713500),
(17, 6, 'Võ Thị Cẩm Ly', '24 Lê Văn Việt Quận 9', 'camly10@gmail.com', '2018-08-14 04:19:24', 1662713500),
(18, 6, 'Võ Thị Cẩm Ly', '24 Lê Văn Việt Quận 9', 'camly10@gmail.com', '2018-08-14 04:22:24', 1662713500),
(19, 6, 'Võ Thị Cẩm Ly', '24 Lê Văn Việt Quận 9', 'camly10@gmail.com', '2018-08-14 04:24:22', 1662713500),
(20, 6, 'Võ Thị Cẩm Ly', '24 Lê Văn Việt Quận 9', 'camly10@gmail.com', '2018-08-14 04:24:32', 1662713500),
(21, 6, 'Võ Thị Cẩm Ly', '24 Lê Văn Việt Quận 9', 'camly10@gmail.com', '2018-08-14 04:26:17', 1662713500),
(22, 6, 'Võ Thị Cẩm Ly', '24 Lê Văn Việt Quận 9', 'camly10@gmail.com', '2018-08-14 04:27:17', 1662713500),
(23, 6, 'Võ Thị Cẩm Ly', '24 Lê Văn Việt Quận 9', 'camly10@gmail.com', '2018-08-14 04:29:07', 1662713500),
(24, 6, 'Võ Thị Cẩm Ly', '24 Lê Văn Việt Quận 9', 'camly10@gmail.com', '2018-08-14 04:29:33', 1662713500),
(25, 4, 'Phan Thị Kim Hằng', '104 Man Thiện Quận 9', 'kimhang060696@gmail.com', '2018-08-15 02:18:12', 989449097),
(26, 4, 'Phan Thị Kim Hằng', '104 Man Thiện Quận 9', 'kimhang060696@gmail.com', '2018-08-15 02:18:57', 989449097),
(27, 5, 'Nguyễn Văn A', '2/4 đường số 2 Quận 9', 'vana@gmail.com', '2018-08-15 03:40:12', 988458350),
(28, 4, 'Phan Thị Kim Hằng', '104 Man Thiện Quận 9', 'kimhang060696@gmail.com', '2018-08-15 03:40:57', 989449097),
(29, 4, 'Phan Thị Kim Hằng', '104 Man Thiện Quận 9', 'kimhang060696@gmail.com', '2018-08-15 03:41:32', 989449097),
(30, 4, 'Phan Thị Kim Hằng', '104 Man Thiện Quận 9', 'kimhang060696@gmail.com', '2018-08-15 03:41:57', 989449097);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id_order` int(11) NOT NULL,
  `id_book` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id_order`, `id_book`, `count`, `price`) VALUES
(1, 1, 1, 0),
(1, 2, 1, 0),
(1, 2, 1, 0),
(1, 2, 1, 0),
(1, 1, 2, 0),
(1, 3, 2, 0),
(1, 7, 1, 0),
(22, 7, 1, 0),
(22, 1, 1, 0),
(22, 3, 1, 0),
(27, 1, 1, 0),
(27, 2, 1, 0),
(27, 4, 1, 0),
(28, 2, 1, 0),
(28, 4, 1, 0),
(29, 2, 1, 0),
(30, 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `receipt_note`
--

CREATE TABLE `receipt_note` (
  `id` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `publishing_company` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `receipt_note`
--

INSERT INTO `receipt_note` (`id`, `id_admin`, `date`, `publishing_company`) VALUES
(1, 6, '2018-07-28 12:51:42', 'Nhà xuất bản Kim Đồng'),
(2, 6, '2018-07-28 12:51:42', '\r\nCông Ty TNHH Tiến Vinh Hoa'),
(3, 6, '2018-07-28 13:35:25', 'Nhà xuất bản Kim Đồng');

-- --------------------------------------------------------

--
-- Table structure for table `receipt_note_detail`
--

CREATE TABLE `receipt_note_detail` (
  `id_bill` int(11) DEFAULT NULL,
  `id_book` int(11) NOT NULL,
  `price` int(20) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `receipt_note_detail`
--

INSERT INTO `receipt_note_detail` (`id_bill`, `id_book`, `price`, `count`) VALUES
(1, 20, 120000, 10),
(2, 7, 130000, 10),
(1, 7, 130000, 23);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `address` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `remember_token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `phone`, `address`, `type`, `remember_token`, `created_at`, `update_at`) VALUES
(1, 'Hoài Anh', '1234567', 'hoaianh1020@gmail.com', '0988458350', 'Man Thiện Quận 9', 2, '', '2018-08-12 15:53:25', '2018-08-12 15:53:25'),
(2, 'Tuyết Lan', '1234567', 'tuyetlan2111@gmail.com', '0988458350', 'Man Thiện Quận 9', 2, '', '2018-08-12 15:54:26', '2018-08-12 15:54:26'),
(3, 'Huỳnh Đại Phú', '$2y$10$DojHekKXfcSvhtdBsc0YJ.KGdvhjpg.UQcKtluwXcvKB2GkAulPT2', 'huynhphu.pufu@gmail.com', '0945548502', '106 Man Thiện Quận 9', 2, '', '2018-08-12 15:57:20', '2018-08-12 15:57:20'),
(4, 'Phan Thị Kim Hằng', '$2y$10$DojHekKXfcSvhtdBsc0YJ.KGdvhjpg.UQcKtluwXcvKB2GkAulPT2', 'kimhang060696@gmail.com', '0989449097', '104 Man Thiện Quận 9', 2, 'GNE8qtssvqcHlfrJVJxuoOWn8KXYBBVtHri56LF5Nb6g4aLSXcOdx07R6lWu', '2018-08-12 15:57:20', '2018-08-12 15:57:20'),
(5, 'Nguyễn Văn A', '$2y$10$DojHekKXfcSvhtdBsc0YJ.KGdvhjpg.UQcKtluwXcvKB2GkAulPT2', 'vana@gmail.com', '0988458350', '2/4 đường số 2 Quận 9', 1, 'cvTKCUcQfMteqjXy9FXU327oxntFc3BagxCiMlq73MyZV9SQUSUmx2lqgmmR', '2018-08-12 15:58:21', '2018-08-12 15:58:21'),
(6, 'Võ Thị Cẩm Ly', '$2y$10$DojHekKXfcSvhtdBsc0YJ.KGdvhjpg.UQcKtluwXcvKB2GkAulPT2', 'camly10@gmail.com', '01662713500', '24 Lê Văn Việt Quận 9', 1, 'FaWm9kqrejG72t01c89iWA1PZOhtVJLb244WYQmIvEJYe3wfcR3FnqCYRvOu', '2018-08-13 04:12:03', '2018-08-13 04:12:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id_author`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`id_category`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_cate_2` (`name_cate`),
  ADD KEY `name_cate` (`name_cate`);

--
-- Indexes for table `compose`
--
ALTER TABLE `compose`
  ADD UNIQUE KEY `id_book_2` (`id_book`),
  ADD KEY `id_book` (`id_book`),
  ADD KEY `id_author` (`id_author`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id_invoice`),
  ADD KEY `id_employ` (`id_admin`),
  ADD KEY `Order code` (`Order code`);

--
-- Indexes for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD KEY `id_export` (`id_invoice`),
  ADD KEY `id_book` (`id_book`);

--
-- Indexes for table `order_customer`
--
ALTER TABLE `order_customer`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_book` (`id_book`);

--
-- Indexes for table `receipt_note`
--
ALTER TABLE `receipt_note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_employ` (`id_admin`);

--
-- Indexes for table `receipt_note_detail`
--
ALTER TABLE `receipt_note_detail`
  ADD KEY `id_book` (`id_book`),
  ADD KEY `id_import` (`id_bill`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id_author` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id_invoice` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_customer`
--
ALTER TABLE `order_customer`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `receipt_note`
--
ALTER TABLE `receipt_note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `compose`
--
ALTER TABLE `compose`
  ADD CONSTRAINT `compose_ibfk_1` FOREIGN KEY (`id_author`) REFERENCES `author` (`id_author`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `compose_ibfk_2` FOREIGN KEY (`id_book`) REFERENCES `books` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`Order code`) REFERENCES `order_customer` (`id_order`),
  ADD CONSTRAINT `invoice_ibfk_3` FOREIGN KEY (`id_admin`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD CONSTRAINT `invoice_detail_ibfk_1` FOREIGN KEY (`id_invoice`) REFERENCES `invoice` (`id_invoice`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `invoice_detail_ibfk_2` FOREIGN KEY (`id_book`) REFERENCES `books` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order_customer`
--
ALTER TABLE `order_customer`
  ADD CONSTRAINT `order_customer_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `order_customer` (`id_order`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`id_book`) REFERENCES `books` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `receipt_note`
--
ALTER TABLE `receipt_note`
  ADD CONSTRAINT `receipt_note_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `receipt_note_detail`
--
ALTER TABLE `receipt_note_detail`
  ADD CONSTRAINT `receipt_note_detail_ibfk_1` FOREIGN KEY (`id_book`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `receipt_note_detail_ibfk_2` FOREIGN KEY (`id_bill`) REFERENCES `receipt_note` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`type`) REFERENCES `type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
