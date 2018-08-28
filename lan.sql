-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 21, 2018 lúc 09:24 AM
-- Phiên bản máy phục vụ: 10.1.30-MariaDB
-- Phiên bản PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `lan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `category` int(11) NOT NULL,
  `img_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`id`, `name`, `content`, `category`, `img_id`) VALUES
(1, 'Quyết đoán trong 1 phút', 'Cuộc sống của bạn sẽ thay đổi trong tích tắc. Mỗi giây phút trôi đi chúng ta đều đưa ra những quyết định dù lớn hay nhỏ song cũng sẽ tấc động rất lớn đến cuộc đời chúng ta. Hãy cùng học cách quyết đoán để không phải do dự một giây nào trước những quyết định quan trọng nhé!Bạn đã từng nghĩ: “Tôi vốn không quyết đoán. Gần như tôi chẳng thể quyết định điều gì cả”?Hãy để hai tay lên ngực và suy nghĩ! Sự thật có phải là từ khi sinh ra bạn đã không quyết đoán sao? Mọi thứ sẽ thay đổi khi bạn đọc cuốn sách “Quyết đoán trong 1 phút”. “Quyết đoán trong 1 phút” là 1 trong những cuốn sách kĩ năng bán chạy nhất trên thị trường Nhật Bản hiện nay. Chúc các bạn thành công!', 1, '1dN5Gxm2TzFl35kw1xWIUxNGwOLIhSeC_'),
(2, 'Đắc Nhân Tâm', 'Nêu bật những nguyên tắc trong việc đối nhân xử thế khôn ngoan bắt đầu từ việc thấu hiểu, thành thật với chính bản thân mình cũng như gợi ý cho người đọc cách quan tâm đến những người xung quanh để hòa nhập, phát triển khả năng của chính mình và mọi người lên một tầm cao mới. Những người đã đọc sách Đắc Nhân Tâm có thể cũng cảm nhận được một tinh thần xuyên suốt mà tác giả muốn thể hiện trong quyển sách hay này. Đó là chữ “nhẫn”. Có chữ “nhẫn” thì mọi việc sẽ được thay đổi nhìn nhận theo một hướng khác mà nơi đó sẽ làm cho cuộc sống trở nên tốt đẹp hơn.', 1, '1fmaPTU7SY5WpdjyohznTT6niuFyXAOoJ'),
(3, 'Rèn luyện kĩ năng giải quyết vấn đề trong 1 phút', 'Giải quyết vấn đề luôn là kỹ năng cần thiết và quan trọng đối với bất kỳ cá nhân nào trong các mối quan hệ. Cuốn sách “Rèn luyện kỹ năng giải quyết vấn đề trong 1 phút” sẽ đem đến cho bạn kiến thức về phương pháp, tri thức, trình tự và cách tư duy hữu ích đối với việc giải quyết các vấn đề. Cùng với việc cung cấp những kiến thức cơ bản, cuốn sách còn có những ví dụ minh họa sinh động có giá trị học hỏi cao. Bên cạnh đó, cuốn sách cũng mang đến rất nhiều biện pháp khắc phục đối với những doanh nghiệp tự cho là mình có thể lường trước được tất cả mọi việc.', 1, '1ioCYqRhHWn7bx-p1oQFoJ3E5E-BOIX5w'),
(4, 'Để bạn luôn trẻ mãi', 'Muốn trẻ mãi, trước hết chúng ta cần một chút thay đổi trong cách suy nghĩ, tư duy. Quyển sách mở ra một cách nhìn mới, một chân trời mới để tất cả chúng ta – những người có tuổi hay trẻ tuổi – đều có thể cảm nhận và đón nhận một hiện thực mới: Giữ cho tâm hồn luôn trẻ trung, nhạy cảm, biết cách vượt lên nghịch cảnh, nỗi buồn và tổn thương cuộc sống, biết tự tin vào bản thân và sự sáng tạo của chính mình, cảm nhận niềm vui cuộc sống như những gì cuộc sống vốn có, khám phá những giá trị cao hơn và tìm ra ý nghĩa đích thực của cuộc sống.\r\nNhững ý tưởng và kinh nghiệm thực tế quí báu này chắc chắn sẽ giúp cho bạn đọc thành công trong việc giữ mãi một tâm hồn tươi trẻ và mang đến cho chúng ta một thông điệp sâu sắc: “Mỗi giai đoạn trong cuộc đời đều đẹp, đều giá trị và có ý nghĩa!”\r\nĐây là một quyển sách cần thiết, hữu ích và kịp thời cho bạn đọc mọi lứa tuổi – không chỉ đọc mà còn sống với nó!', 1, '1kU2hv5I_one7wy84kxz9cGsN_znUNTJR'),
(5, 'Khủng long nhỏ dũng cảm', 'Vị anh hùng của những chuyến phiêu lưu này là Diny, chú nhóc khủng long phải rời xa mẹ. Tuy nhiên, cậu không phải đơn độc trên những vùng đất mới. Cậu tìm thấy những người bạn thật sự luôn kề vai sát cánh mỗi khi cậu gặp khó khăn nhất. Cậu bé khủng long khôn khéo và tốt bụng luôn chiến thắng hiểm nguy ngay cả khi rơi vào hoàn cảnh khốn khó nhất.', 2, '1VG36IM_GBk_6cvPi_Uv_70zoMPlV0vjY'),
(6, 'Có hai con mèo ngồi bên cửa sổ', 'Có Hai Con Mèo Ngồi Bên Cửa Sổ\r\nNhân vật chính thứ nhất tên là Gấu.\r\nNhân vật thứ hai là Tí Hon.\r\nNhân vật thứ ba, tên là…; còn nữa, nhân vật thứ tư, tên là…\r\nĐể biết tại sao Gấu lại chơi thân với Tí Hon, thì mời bạn hãy mở sách ra.\r\nGấu và Tí Hon thân nhau đến mức có thể chia sẻ từng chuyện vui buồn trong những phút giây mềm yếu, lo lắng và chăm sóc, giúp nhau từ miếng ăn đến “chiến lược” để tồn tại lâu dài.Tình bạn là gì? Bạn gái là gì? Tình yêu là gì?\r\nBọn mèo chuột kể với chúng ta nhiều câu chuyện nhỏ, gửi thông điệp rằng, tình yêu có sức mạnh tuyệt diệu, có thể làm nên mọi điều phi thường trong cuộc sống muôn loài.', 2, '1XOT_degV7VsCRnOSQOamMxok4iZPF05X'),
(7, 'Con Rồng Cháu Tiên', 'Huyền thoại Con Rồng cháu Tiên hấp dẫn người nghe bởi những chi tiết ngẫu nhiên lạ lùng: vua Lạc Long Quân - Rồng ở dưới nước gặp nàng Âu Cơ - Tiên trên non cao rồi yêu nhau, kết duyên thành vợ chồng rằng, phối hiệp với sinh ra một cái bọc có khoảng trăm trứng, nở thành trăm con. Từ đó sinh ra một dòng giống Việt.\r\nQua huyền thoại Con Rồng cháu Tiên câu chuyện như nhắc nhở chúng ta những người con đất Việt: hãy yêu thương đùm bọc nhau như anh, chị, em một nhà. Vì tất thể người dân Việt Nam đều có cội nguồn là con rồng, cháu tiên đầy đáng tự hào.\r\nVới hình ảnh đẹp, màu sắc sắc nét, tươi mới, các bạn nhỏ sẽ dễ dàng hình dung hơn, thỏa sức bay nhảy trong câu truyện và mở mang trí tưởng tượng. Hãy để Con Rồng cháu Tiên trở thành người bạn thân thiết với bé, để những lời khuyên chân thành trong câu truyện dần thấm vào tâm hồn bé như lời hát à ơi của bà của mẹ…', 2, '1P9nqQ2jNvDDslaN1O--OnKWcX4iaSWy1'),
(8, 'Tìm kiếm tài năng biển', 'Các loài động vật dưới biển có những tài nghệ gì nhỉ?\r\nBé hãy đến cuộc thi TÌM KIẾM TÀI NĂNG BIỂN để xem các tiết mục vô cùng đặc sắc nào!\r\nHơn 100 hình dán sinh động, cùng các tranh tô màu cỡ lớn giúp bé vừa học vừa chơi, vừa rèn luyện khả năng quan sát, phán đoán, phối hợp, khéo léo giữa tay và mắt nữa đấy!\r\nVà còn cả những kiến thức thú vị về các loài sinh vật dưới lòng biển nữa, hãy cùng nhau khám phá nhé!', 2, '1HC6ssSpkK6CleEgRPISbAa4g2oE_o4Sv'),
(9, 'Sự tích Sọ Dừa', 'Bắt đầu từ chuyện ở một gia đình nọ, hai vợ chồng lấy nhau đã lâu nhưng đã ngoài năm mươi tuổi rồi mà vẫn chưa có con. Một ngày, người vợ vào rừng đốn củi, khát nước quá mà không tìm thấy suối. Bà lần đến hốc cây to để xem có giọt nước nào còn đọng lại thì phát hiện ra một cái sọ người bên tảng đá, bên trong có nước trong vắt. Bà liều mình uống để đỡ khát. Chẳng bao lâu, bà đã mang thai, sau chín tháng mười ngày, bà đẻ ra một cục thịt tròn lông lốc, có đủ mắt, mũi, mồm nhưng không có chân tay. Bà toan vứt đi thì đứa con lên tiếng xin được mẹ giữ lại, đừng vứt đi. Bà cảm động, nâng niu cục thịt trong lòng và đặt tên con là Sọ Dừa. Từ đây, những tháng ngày của mẹ con Sọ Dừa có nhiều những biến đổi thú vị. Với hình hài như vậy, liệu Sọ Dừa có giúp đỡ được cho mẹ mình không? Cuộc sống sau này của Sọ Dừa sẽ như thế nào? Các bé hãy cùng đón đọc Sự tích Sọ Dừa để tìm cho mình lời giải đáp nhé.', 2, '1t_tv8l2viesdx6ealwkj1dzL9BIkagYr'),
(10, 'Tiếng Hàn cơ bản dành cho người mới bắt đầu', 'Các đề mục ngữ pháp ở trình độ Sơ cấp được trình bày dưới dạng so sánh các mẫu cấu trúc tương đồng về ý nghĩa cùng các ví dụ, mẫu hội thoại và phần luyện tập. Ngoài ra, 10 đề mục bao gồm những tình huống giao tiếp hàng ngày gần gũi với thực tế như phim ảnh, sở thích, thời tiết sẽ giúp học sinh luyện tập giao tiếp nhiều hơn. Đi kèm với cuốn sách là đĩa CD với chất giọng người bản xứ chuẩn sẽ hướng dẫn các bạn từ luyện âm cho đến ngữ điệu một cách chính xác và tự nhiên nhất.', 3, '1hWE5Q5dWjgCXrO6ZpwLEiPlTix4L3Deh'),
(11, 'Ngữ pháp tiếng Anh cơ bản và nâng cao', 'Hệ thống lại toàn bộ các kiến thức ngữ pháp tiếng Anh thông dụng  từ bậc THCS, THPT đến Đại học bao gồm: Các thì trong tiếng Anh, sự phối thì; các loại câu … Sách trình bày chi tiết theo từng dạng ngữ pháp, đi từ lý thuyết, phân tích lý thuyết đến ví dụ và bài tập minh họa, bài tập tự luyện. Sách có nhấn mạnh phần ngữ pháp nào là trọng tâm, có tính ứng dụng cao, phần ngữ pháp nào ít được ứng dụng hơn. Ngân hàng các câu hỏi trắc nghiệm, câu hỏi minh họa phong phú cho từng dạng ngữ pháp.', 3, '1CKhr4L-NmuXrCayJqHTtYE6mXwk7kcl1'),
(12, 'Lượng từ tiếng Hán hiện đại', 'Tập hợp hơn 210 lượng từ thường dùng, bao gồm danh lượng từ, động lượng từ và kiêm chức lượng từ. Với mỗi một lượng từ đều có các nghĩa thường dùng (có giải nghĩa) và giải thích tiếng Việt kèm theo, kết hợp danh lượng từ hoặc kết hợp động lượng từ cùng với các hình minh họa. Với hơn 900 danh từ kết hợp với lượng từ để cho ra tổ hợp 1418 danh lượng từ, 108 động lượng từ và 11 tổ hợp lượng từ hình thức khác. Sách còn đề cập đến một số dạng lượng từ đặc biệt như lượng từ thời gian, lượng từ mức độ và lượng từ tiền tệ…\r\n“Lượng từ tiếng Hán hiện đại” có 3 điểm độc đáo:\r\nMột là dùng hình ảnh để giải thích lượng từ. Do số từ vốn đã là một khái niệm chỉ thị nên tác giả dùng hình ảnh để minh họa lượng từ, những hình ảnh sống động giúp người học nắm bắt nhanh hơn và giảm độ khó của việc học lượng từ.\r\n Hai là sự kết hợp giữa học và luyện tập. Quyển sách này được chắt lọc rất nhiều tổ hợp lượng từ xuất hiện trong các kỳ thi, giúpngười học nắm vững kiến thức và chuẩn bị tốt hơn cho kỳ thi.\r\n Ba là dùng nhiều phương pháp tra cứu. Phần đầu hướng dẫn người học cách tra từ theo các lượng từ, người học có thể dựa vào lượng từ để tìm hiểu xem chúng thường được kết hợp với những danh từ hoặc động từ nào. Phần sau hướng dẫn người học cách tra từ theo danh từ, giúp người học có thể dựa vào các từ khóa là danh từ để tìm ra lượng từ đi kèm thích hợp.', 3, '18vrm_lMPGwF2J0-TtcrGfOrniBTX-M7s'),
(13, 'Hướng dẫn cách học tiếng Anh', 'Cuốn sách này giúp các bạn xây dựng thói quen học tiếng Anh một cách đúng đắn, khoa học. Một số kỹ năng có thể quen thuộc với bạn nhưng chưa được hình thành như một thói quen cần thiết cho sự thành công của mình khi học tiếng Anh.', 3, '12SQ5rMg024dmDFs7KhJhgXx_TBQKZ1P-'),
(14, 'Chắp cánh ý tưởng kinh doanh', 'Bạn có một ý tưởng tuyệt vời giúp gia tăng doanh thu và cải tiến năng suất, nhưng cần thuyết phục mọi người tin vào điều đó. Hãy xây dựng nó thành một đề xuất kinh doanh thể hiện giá trị của sáng kiến. Việc này không phải lúc nào cũng dễ dàng: có thể bạn không biết các bên hữu quan tin tưởng vào loại dữ liệu gì, hoặc có thể bạn bị các số liệu dọa đến lo lắng. Chắp cánh ý tưởng kinh doanh sẽ giúp bạn xây dựng một đề xuất thuyết phục.', 4, '1UIocASIFc8f-alTsi4yVPVkVFbgxTDF_'),
(15, 'Hậu Hắc Học', 'Hậu, Hắc là nguyên tắt tự nhiên thần bí, nó chi phối và ảnh hưởng đến quyết quan trọng thành công của đời người. \"hậu Hắc Học\" là quy tắc và trí tuệ của cuộc đời. \"Hậu\" giống như cái thuẫn, là sức mạnh để tự bảo vệ mình. \"Hắc\" giống như cái mâu, là cách thức để tự mình thực hiện và cạnh tranh. Hậu Hắc Học ở đây tuyệt đối không phải là \"mặt dày\", và \"tâm đen\" dung tục thấp hèn, \"Hậu Hắc Học\" là triết học xử sự không có bất kỳ ý nghĩa chê trách gì.\r\n Hậu Hắc Học thực chất là một loại nhận thức luận, có một cách để nhìn nhận vấn đề, nó đòi hỏi mọi người có chí lớn nhưng kín đáo, can đảm hơn người nhưng lại tiến bước nào chắc bước đó, nó là mưu lược để giành được lợi ích. Đúng như Lý Tông Ngô người phát hiện ra Hậu Hắc Học từng nói: \"Từ trước tới nay, tất cả mọi người thành đạt đều lợi dụng bí quyết \" Hậu, Hắc\".', 4, '1Vhj_qeW-SScvGhyjK9CDjq_vmPY2ZgBW'),
(16, '17 CÁCH ĐỂ XÂY DỰNG SỰ NGHIỆP KINH DOANH CỦA BẠN VỚI MỘT CUỐN SÁCH', 'Trên con đường tạo lập sự nghiệp kinh doanh của mình chắc chắn một trong những điều bạn quan tâm lớn nhất đó chính là sự nghiệp kinh doanh đó mang đến sự thành công cho chính bạn và điều quan trọng hơn nữa đó chính là sự nghiệp kinh doanh của bạn cũng phải thành công. Có lẽ hơn bao giờ hết bạn đang cảm nhận những điều tuyệt vời nhất trên con đường xây dựng sự nghiệp kinh doanh đó, cũng như thông qua con đường kinh doanh bạn tìm ra được chính mình, tìm ra được ý nghĩa của chính mình và tạo lập ý nghĩa cho cuộc đời của những người khác. Đã đến lúc bạn phải thấy được chính mình, tìm lại chính con người mình và tăng tốc đến thành công với những gì bạn tạo ra thông qua sự nghiệp kinh doanh bạn mong muốn tạo dựng. Và dù bạn là ai, bạn đến từ đâu thì điều quan trọng ngay lúc này đó chính là bạn thấy được ý nghĩa cuộc đời qua những việc mình làm và giúp người khác tìm thấy ý nghĩa cuộc đời qua những gì họ làm – đó chính là bản chất của sự nghiệp kinh doanh của bạn. Và khi bạn thấy được tầm quan trọng của sự nghiệp kinh doanh của mình thì khi đó bạn cũng thấy được tầm quan trọng của cuộc sống. Khi bạn thấy được tầm quan trọng của cuộc sống thì cũng chính lúc đó bạn sẽ thấy được tình yêu cuộc sống mà ở đó bạn chính là một phần ở trong đó. Tình yêu cuộc sống sẽ dẫn bạn đến một cánh cửa tuyệt vời là “bạn đang sống” chứ không phải là “được sống”, tức là bạn sống một cách chủ động chứ không còn thụ động sống nữa. Cuộc sống của bạn chính là “cuộc sống của bạn” – chứ không phải là cuộc sống của ai khác.', 4, '1w8qPtL_ULT37zLR4SLyyhkH3-xRsnZRy'),
(17, 'Đắc nhân tâm', 'Dale Carngie (1888 - 1955) tên đầy đủ là Dale Breckenridge Carnegie là nhà văn, nhà thuyết trình và nhà phát triển giáo dục kỹ năng nghệ thuật bán hàng, đào tạo đoàn thể, nghệ thuật diễn thuyết trước công chúng và giao tiếp trong xã hội.\r\n Đắc Nhân Tâm - của tác giả Dale Carnegie là tác phẩm nổi tiếng nhất trên thế giới. Cuốn sách đã được xuất bản chuyển ngữ nhiều thứ tiếng trên thế giới. Cuốn sách liên tục đứng đầu danh sách bán chạy nhất do thời báo New York Times bình chọn trong nhiều năm. Ở Việt Nam luôn đứng top 10 cuốn sách bán chạy nhất do Công ty Fahasa và Tiki.vn bình chọn.', 4, '1fmaPTU7SY5WpdjyohznTT6niuFyXAOoJ'),
(18, 'NGHIÊN CỨU KHOA HỌC XÃ HỘI', 'Cuốn sách này được thiết kế nhằm giới thiệu cho học viên cao học và nghiên cứu sinh tiến sĩ quy trình nghiên cứu khoa học trong các khoa học xã hội, kinh doanh, giáo dục, sức khỏe cộng đồng cùng các lĩnh vực liên quan khác. Cuốn sách dựa trên nhiều tài liệu giảng dạy của tác giả được phát triển qua hơn một thập kỷ giảng dạy các lớp trình độ tiến sĩ về Các phương pháp Nghiên cứu tại Đại học Nam Florida. Độc giả được nhắm tới trong quyển sách này gồm học viên cao học và nghiên cứu sinh tiến sĩ, các nhà nghiên cứu trẻ và các giáo sư đang giảng dạy tại các khoa học về các phương pháp nghiên cứu, ngoài ra các nhà nghiên cứu trẻ cũng có thể dùng sách này như sách tham khảo súc tích cầm tay.', 5, '1dub57KVJwFcSHw-zj9sytGZTvyrcpmzY'),
(19, 'Từ trái đất đến mặt trăng', 'Jules Verne (Jules Gabriel Verne) (8/2/1828 - 24 /3/1905) - Ông là nhà văn Pháp nổi tiếng, được coi là người khai sinh ra thể loại văn học Khoa học viễn tưởng. Ông đã dùng phòng thí nghiệm và kính viễn vọng để viết tiểu thuyết phiêu lưu. Ông không chỉ ghi lại quá trình các nhà bác học tạo nên những phát minh lớn, mà còn tiên đoán chúng. Đọc những tác phẩm của ông, ta có thể nhận thấy những mâu thuẫn vì trong số những ý tưởng khoa học còn có những kiến phát chưa thể xác minh. Và bỗng dưng năm sau, hoặc vài năm sau, những giả thuyết mà ông đặt ra mà đôi khi thậm chí ông còn không tin, đã trở thành sự thật, một cách hoàn toàn chính xác. Những nhà bác học đã hoàn toàn đồng tình với ý tưởng của ông, hay nói cách khác, ông đã đi trước họ!…', 5, '1gZhUT93Q-JWANccfA6S-EufQRt-qcB_I'),
(20, 'Code Dạo Kí Sự', 'Nếu các bạn có đọc các blog về lập trình ở Việt Nam thì có lẽ cái tên Tôi đi code dạo không có gì quá xa lạ đối với các bạn.\r\nVề tác giả của blog Tôi đi code dạo, anh tên thật là Phạm Huy Hoàng, một Developer Full Stack, cựu sinh viên trường FPT University, hiện tại anh đang học Thạc sĩ Computer Science tại Đại học Lancaster ở Anh (học bổng $18000). Trước khi qua Xứ Sở Sương Mù, anh đã từng làm việc tại FPT Software và ASWIG Solutions.\r\nVới mong muốn chia sẻ kinh nghiệm học lập trình và các kỹ năng mà anh đã trải qua trong suốt quá trình học và làm việc với tư cách là người đi trước cũng như là một Developer Full Stack, nên anh đã quyết định xuất bản sách “Code dạo ký sự – lập trình viên đâu phải chỉ biết code”.', 5, '1qERfIWYu6YLVhuOoBgXSumH_YgRA3pik'),
(21, 'Tế Bào Gốc: Khám Phá Cùng Nhà Khoa Học', 'Cuốn sách giúp cho bạn đọc có một cái nhìn bao quát đối với tế bào gốc từ lịch sử phát minh, đến cấu trúc tế bào, cơ chế phân tử, đến bộ gene và di truyền ngoài bộ gene (di truyền ngoại mã).\r\nĐiều đặc biệt ấn tượng là tất cả những kiến thức cơ bản này được diễn giải thật dễ hiểu bằng ngôn ngữ phổ thông, chứ không hàn lâm như trong giới nghiên cứu. Để chuyển tải các khái niệm trừu tượng khó hiểu của thế giới sinh học vi mô đến với người đọc, tác giả đã sử dụng các biện pháp so sánh tương đồng rất tài tình đến nỗi những người có kiến thức trong lĩnh vực, còn thấy hết sức độc đáo thú vị.', 5, '1-v9nrjBKyqIiRfKN9p4hM5n2LVXVgwIb');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Kỹ năng sống'),
(2, 'Sách thiếu nhi'),
(3, 'Sách ngoại ngữ'),
(4, 'Sách kinh doanh'),
(5, 'Sách khoa học');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
