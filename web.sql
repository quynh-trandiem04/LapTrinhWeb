-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: web
-- ------------------------------------------------------
-- Server version	8.0.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address_line1` varchar(255) DEFAULT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `createat` date DEFAULT NULL,
  `is_primary` bit(1) DEFAULT NULL,
  `updateat` date DEFAULT NULL,
  `userid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd8e46x1ls9ce2oydld0ymtw2e` (`userid`),
  CONSTRAINT `FKd8e46x1ls9ce2oydld0ymtw2e` FOREIGN KEY (`userid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'154','Thủ Đức','TP.Hồ Chí Minh',NULL,_binary '\0',NULL,6),(2,'154','Thủ Đức','TP.Hồ Chí Minh',NULL,_binary '\0',NULL,7),(3,'152','Thủ Đức','TP.Hồ Chí Minh',NULL,_binary '\0',NULL,4);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `content` varchar(5000) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'Skincare','Kem dưỡng ẩm Cetaphil đã trở thành lựa chọn phổ biến cho nhiều người với làn da nhạy cảm. Sản phẩm này không chứa hương liệu, giúp cung cấp độ ẩm mà không gây kích ứng. Đặc biệt, kết cấu nhẹ nhàng thẩm thấu nhanh, mang lại cảm giác dễ chịu sau khi sử dụng. Tuy nhiên, đối với da dầu, cần lưu ý sử dụng lượng vừa phải để tránh cảm giác nhờn rít.','2024-12-16 08:33:01.000000','Bài viết đánh giá về kem dưỡng ẩm Cetaphil, phù hợp cho mọi loại da.','https://cocolux.com/images/cdn_images/2023/07/images/products/1690448981548-review-kem-duong-am-cetaphil.jpeg','Đánh giá chi tiết về Kem Dưỡng Ẩm Cetaphil Cho Mọi Loại Da','2024-12-16 08:33:01.000000'),(2,'Skincare','Anessa là thương hiệu kem chống nắng nổi tiếng từ Nhật Bản, được nhiều người tin dùng. Sản phẩm có khả năng chống nắng cao, đồng thời cung cấp độ ẩm cho da. Đối với da dầu, Anessa Perfect UV Sunscreen Skincare Gel là lựa chọn phù hợp với kết cấu nhẹ và khả năng kiểm soát dầu tốt. Đối với da khô, Anessa Moisture UV Sunscreen Mild Gel cung cấp độ ẩm cần thiết, giúp da mềm mại suốt cả ngày.','2024-12-16 08:33:01.000000','Đánh giá về các loại kem chống nắng Anessa phù hợp với từng loại da.','https://assets.aemi.vn/cms/2023/10/d85f023a-kem-chong-nang-anessa-tot-nhat.jpg','Review Kem Chống Nắng Anessa Cho Từng Loại Da Khác Nhau','2024-12-16 08:33:01.000000'),(3,'Makeup','Son Kys là thương hiệu son môi Việt Nam được nhiều người biết đến với thành phần tự nhiên và an toàn. Sản phẩm có độ bám màu tốt, màu sắc đa dạng và phù hợp với làn da châu Á. Tuy nhiên, do thành phần tự nhiên, son có thể không bền màu bằng các sản phẩm chứa hóa chất khác. Đối với những ai ưa chuộng sản phẩm an toàn và hỗ trợ sản phẩm nội địa, Son Kys là lựa chọn đáng cân nhắc.','2024-12-16 08:33:01.000000','Đánh giá về son Kys, một sản phẩm son môi từ Việt Nam.','https://bloganchoi.com/wp-content/uploads/2019/11/bao-bi-son-2-696x447.jpg','Review chi tiết Son Kys – Hàng Việt Nam chất lượng cao?','2024-12-16 08:33:01.000000'),(4,'Hair Care','Dầu gội phủ bạc thảo mộc MOC được chiết xuất từ các thành phần thiên nhiên, giúp phủ bạc tóc một cách an toàn. Sản phẩm không chứa hóa chất độc hại, giúp tóc mềm mượt và chắc khỏe sau khi sử dụng. Tuy nhiên, hiệu quả phủ bạc có thể khác nhau tùy thuộc vào cơ địa và tình trạng tóc của mỗi người. Để đạt kết quả tốt nhất, nên sử dụng đều đặn và theo hướng dẫn của nhà sản xuất.','2024-12-16 08:33:01.000000','Đánh giá về dầu gội phủ bạc thảo mộc MOC.','https://sanhnhien.vn/cdn/shop/articles/tinh-dau-thien-nhien-viet-nam.jpg?v=1720492599','Review dầu gội phủ bạc thảo mộc MOC','2024-12-16 08:33:01.000000'),(5,'Skincare','Gạc lau mi mắt Ocuvane Plus là sản phẩm hỗ trợ vệ sinh vùng mắt, đặc biệt hữu ích cho những người thường xuyên trang điểm mắt hoặc đeo kính áp tròng. Sản phẩm được tiệt trùng, không gây kích ứng và dễ sử dụng. Tuy nhiên, giá thành có thể cao hơn so với các sản phẩm tương tự trên thị trường. Để đảm bảo vệ sinh mắt tốt nhất, nên sử dụng sản phẩm theo hướng dẫn và kết hợp với các biện pháp chăm sóc mắt khác.','2024-12-16 08:33:01.000000','Đánh giá về gạc lau mi mắt Ocuvane Plus.','https://ocuvane.vn/wp-content/uploads/2023/03/gac-lau-mi-ocuvane-plus-cham-soc-viem-bo-mi_37af2f63fd5947d18fcbb10b2bf9f36c_grande.webp','Review chi tiết gạc lau mi mắt Ocuvane Plus','2024-12-16 08:33:01.000000'),(6,'Hair Care','Dầu gội nấm Truffle Weilaiya được quảng cáo với khả năng phục hồi tóc hư tổn và cung cấp dưỡng chất từ nấm Truffle. Sản phẩm có mùi hương dễ chịu, giúp tóc mềm mượt sau khi sử dụng. Tuy nhiên, hiệu quả phục hồi tóc có thể khác nhau tùy thuộc vào tình trạng tóc của mỗi người. Để đạt kết quả tốt nhất, nên kết hợp với dầu xả và các sản phẩm chăm sóc tóc khác của cùng thương hiệu.','2024-12-16 08:33:01.000000','Đánh giá về dầu gội nấm Truffle Weilaiya.','https://th.bing.com/th?id=OIP.GYirmY2w9iYx82jvC_OnUwHaHa&w=200&h=200&c=9&rs=1&qlt=99&o=6&dpr=1.3&pid=23.1','Review dầu gội nấm Truffle Weilaiya có tốt như lời đồn?','2024-12-16 08:33:01.000000'),(7,'Skincare','Viên uống trắng da Glutathione Maxx500 chứa thành phần Glutathione, được cho là giúp làm trắng da và chống oxy hóa. Sản phẩm được nhiều người tin dùng với mong muốn cải thiện làn da. Tuy nhiên, hiệu quả của sản phẩm phụ thuộc vào cơ địa và cần thời gian để thấy kết quả. Trước khi sử dụng, nên tham khảo ý kiến bác sĩ và kết hợp với chế độ ăn uống, sinh hoạt lành mạnh để đạt hiệu quả tốt nhất.','2024-12-16 08:33:01.000000','Đánh giá về viên uống trắng da Glutathione Maxx500.','https://cdn.chiaki.vn/unsafe/0x960/left/top/smart/filters:quality(70)/https://chiaki.vn/upload/news/content/2023/07/vien-uong-trang-da-glutathione-2-jpg-1688463764-04072023164244.jpg','Review viên uống trắng da Glutathione Maxx500','2024-12-16 08:33:01.000000'),(8,'Skincare','Kem chống nắng Navacos được biết đến với khả năng bảo vệ da khỏi tia UV và cung cấp độ ẩm cho da. Sản phẩm có kết cấu nhẹ, thẩm thấu nhanh và không gây nhờn rít. Tuy nhiên, đối với da dầu, cần kiểm tra phản ứng của da trước khi sử dụng lâu dài. Để đạt hiệu quả chống nắng tốt nhất, nên thoa kem 30 phút trước khi ra ngoài và thoa lại sau mỗi 2 giờ.','2024-12-16 08:33:01.000000','Đánh giá về kem chống nắng La Roche Posay.','https://cdn.tgdd.vn/Files/2021/05/25/1354638/4-thuong-hieu-kem-chong-nang-phap-tot-nhat-202209150731367308.jpg','Review Kem Chống Nắng La Roche Posay được đánh giá trên thị trường tốt như thế nào?','2024-12-16 08:33:01.000000'),(9,'Hair Care','Dầu gội phủ bạc Sin Hair đang được nhiều người quan tâm nhờ thành phần thảo mộc tự nhiên như nhân sâm, collagen, và tinh chất hà thủ ô. Sản phẩm giúp che phủ tóc bạc một cách tự nhiên và nhanh chóng chỉ sau 10-15 phút sử dụng. Tuy nhiên, hiệu quả có thể khác nhau tùy vào chất tóc và mức độ bạc. Đối với những ai tìm kiếm giải pháp thay thế thuốc nhuộm hóa học, đây là một lựa chọn đáng thử.','2024-12-16 08:33:01.000000','Đánh giá chi tiết về dầu gội phủ bạc Sin Hair với thành phần thảo mộc.','https://img.tripi.vn/cdn-cgi/image/width=700,height=700/https://gcs.tripi.vn/public-tripi/tripi-feed/img/479320qYe/anh-mo-ta.png','Review dầu gội phủ bạc thảo mộc Sin Hair – Có thật sự hiệu quả?','2024-12-16 08:33:01.000000'),(10,'Skincare','Bioderma Sensibio H2O là dòng nước tẩy trang hàng đầu được nhiều chuyên gia khuyên dùng cho làn da nhạy cảm. Sản phẩm có công nghệ Micellar giúp làm sạch bụi bẩn, lớp trang điểm một cách nhẹ nhàng mà không làm khô da. Đặc biệt, sản phẩm không chứa cồn, hương liệu, và parabens. Tuy nhiên, giá thành khá cao so với các sản phẩm tẩy trang thông thường.','2024-12-16 08:33:01.000000','Đánh giá về nước tẩy trang Bioderma dành cho làn da nhạy cảm.','https://beautyplaceblog.com/wp-content/uploads/2021/05/ve-thuong-hieu-bioderma.jpg','Review nước tẩy trang Bioderma – Vì sao được ưa chuộng?','2024-12-16 08:33:01.000000'),(11,'Skincare','Mediheal là thương hiệu mặt nạ giấy nổi tiếng đến từ Hàn Quốc với nhiều dòng sản phẩm đáp ứng các nhu cầu khác nhau như dưỡng ẩm, làm sáng da, và trị mụn. Dòng N.M.F Aquaring Ampoule Mask là lựa chọn hàng đầu cho làn da khô thiếu nước. Dòng Teatree Healing Solution Mask được đánh giá cao trong việc làm dịu da mụn. Sản phẩm có giá thành hợp lý và chất lượng tương xứng.','2024-12-16 08:33:01.000000','Review về các dòng mặt nạ giấy Mediheal nổi tiếng từ Hàn Quốc.','https://cdn.chiaki.vn/unsafe/0x960/left/top/smart/filters:quality(70)/https://chiaki.vn/upload/news/content/2024/05/gioi-thieu-doi-net-ve-thuong-hieu-mediheal-jpg-1715935138-17052024153858.jpg','Đánh giá mặt nạ giấy Mediheal – Có đáng để đầu tư?','2024-12-16 08:33:01.000000'),(12,'Makeup','Kem nền L’Oreal Infallible nổi bật với khả năng che phủ tốt, bám lâu suốt 24 giờ, phù hợp cho những ngày hoạt động dài. Kết cấu kem mỏng nhẹ, không gây bít tắc lỗ chân lông, giúp làn da trông tự nhiên. Tuy nhiên, đối với làn da quá khô, bạn nên dưỡng ẩm trước khi sử dụng để tránh hiện tượng cakey. Đây là lựa chọn tuyệt vời cho những ai tìm kiếm kem nền bền màu ở mức giá tầm trung.','2024-12-16 08:33:01.000000','Đánh giá chi tiết về kem nền L’Oreal Infallible dành cho mọi loại da.','https://th.bing.com/th/id/OIP.3srZ1hdtRgqVE0OlpmNCzQHaIR?w=190&h=212&c=7&r=0&o=5&dpr=1.3&pid=1.7','Review kem nền L’Oreal Infallible – Độ che phủ có thật sự tốt?','2024-12-16 08:33:01.000000'),(13,'Skincare','Serum The Ordinary Niacinamide 10% + Zinc 1% là một trong những sản phẩm nổi tiếng trong việc cải thiện làn da dầu mụn. Thành phần Niacinamide giúp giảm thâm mụn, làm đều màu da và kiềm dầu hiệu quả. Kết cấu serum thấm nhanh và không gây nhờn rít. Tuy nhiên, một số người có làn da nhạy cảm có thể gặp tình trạng kích ứng nhẹ khi mới sử dụng.','2024-12-16 08:33:01.000000','Đánh giá serum trị thâm mụn của The Ordinary với thành phần Niacinamide.','https://th.bing.com/th?id=OIP.Dh6H36SMxGYqDn3eugCtWAAAAA&w=160&h=160&rs=1&qlt=80&o=6&dpr=1.3&pid=3.1','Serum trị thâm The Ordinary Niacinamide 10% + Zinc 1% – Có hiệu quả không?','2024-12-16 08:33:01.000000'),(14,'Makeup','MAC Ruby Woo là màu son đỏ kinh điển với chất son lì, lâu trôi và phù hợp với mọi tone da. Sản phẩm mang lại vẻ ngoài quyến rũ, sang trọng, thích hợp cho cả những bữa tiệc lẫn trang điểm hàng ngày. Tuy nhiên, vì là dòng son lì nên có thể gây khô môi nếu không dưỡng ẩm kỹ trước khi sử dụng.','2024-12-16 08:33:01.000000','Đánh giá chi tiết về son MAC Ruby Woo – màu son đỏ huyền thoại.','https://cocolux.com/storage/upload_image/images/son-mac-ruby-woo-thoi-son-do-quyen-ru%20(2).jpg','Review son MAC Ruby Woo – Biểu tượng sắc đỏ quyền lực','2024-12-16 08:33:01.000000'),(15,'Hair Care','Moroccanoil Treatment là dầu dưỡng tóc nổi tiếng với thành phần chính là dầu argan, giúp nuôi dưỡng và phục hồi tóc hư tổn. Sản phẩm thẩm thấu nhanh, không gây bết dính và mang lại độ bóng mượt tự nhiên cho mái tóc. Đây là lựa chọn tuyệt vời cho những ai thường xuyên tạo kiểu tóc hoặc tóc bị hư tổn do hóa chất.','2024-12-16 08:33:01.000000','Đánh giá dầu dưỡng tóc Moroccanoil dành cho tóc hư tổn.','https://daugoichinhhang.vn/wp-content/uploads/2020/05/tinh-dau-moroccanil-100ml-30112019123208.jpg','Dầu dưỡng tóc Moroccanoil Treatment – Bí quyết cho mái tóc óng ả','2024-12-16 08:33:01.000000');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createat` date DEFAULT NULL,
  `updateat` date DEFAULT NULL,
  `storeid` int DEFAULT NULL,
  `userid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKo204qeqhir5hy0snq6wl1yeqg` (`storeid`),
  KEY `FK1f3la5ofi3papq9kbt0yqkab7` (`userid`),
  CONSTRAINT `FK1f3la5ofi3papq9kbt0yqkab7` FOREIGN KEY (`userid`) REFERENCES `users` (`id`),
  CONSTRAINT `FKo204qeqhir5hy0snq6wl1yeqg` FOREIGN KEY (`storeid`) REFERENCES `store` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'2024-12-16','2024-12-16',NULL,6),(2,'2024-12-16','2024-12-16',NULL,7),(3,'2024-12-16','2024-12-16',NULL,8);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartitem`
--

DROP TABLE IF EXISTS `cartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cartitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `count` int DEFAULT NULL,
  `createat` date DEFAULT NULL,
  `updateat` date DEFAULT NULL,
  `cartid` int NOT NULL,
  `productid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtc9npvycs1rruynyqdhyrybqw` (`cartid`),
  KEY `FKjj2aqs5077amqv7k8f7ch9pkx` (`productid`),
  CONSTRAINT `FKjj2aqs5077amqv7k8f7ch9pkx` FOREIGN KEY (`productid`) REFERENCES `product` (`id`),
  CONSTRAINT `FKtc9npvycs1rruynyqdhyrybqw` FOREIGN KEY (`cartid`) REFERENCES `cart` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartitem`
--

LOCK TABLES `cartitem` WRITE;
/*!40000 ALTER TABLE `cartitem` DISABLE KEYS */;
INSERT INTO `cartitem` VALUES (4,1,'2024-12-16',NULL,1,1);
/*!40000 ALTER TABLE `cartitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createat` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `updateat` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'2024-12-16','https://keikolynn.com/wp-content/uploads/2018/03/skin-care-all.jpg',_binary '\0','Skincare','2024-12-16'),(2,'2024-12-16','https://optimalbeauty.net/wp-content/uploads/2022/01/IMG_0857.jpg',_binary '\0','Makeup','2024-12-16'),(3,'2024-12-16','https://th.bing.com/th/id/OIP.x7kncou3JCtAd3qpOdl_oQHaE8?w=245&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',_binary '\0','Hair Care','2024-12-16'),(4,'2024-12-16','https://mashmoshem.co.id/wp-content/uploads/2021/05/body-care-product-1-scaled.jpg',_binary '\0','Body Care','2024-12-16');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createat` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `updateat` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,'2024-12-16','Giao hàng trong vòng 3-5 ngày làm việc',_binary '\0','Giao hàng tiêu chuẩn',30000,'2024-12-16'),(2,'2024-12-16','Giao hàng trong vòng 24-48 giờ',_binary '\0','Giao hàng nhanh',50000,'2024-12-16'),(3,'2024-12-16','Giao hàng trong vòng 2-4 giờ tại các thành phố lớn',_binary '\0','Giao hàng siêu tốc',80000,'2024-12-16'),(4,'2024-12-16','Áp dụng cho đơn hàng trên 1 triệu đồng',_binary '\0','Giao hàng miễn phí',0,'2024-12-16'),(5,'2024-12-16','Dịch vụ giao hàng quốc tế trong vòng 7-14 ngày',_binary '\0','Giao hàng quốc tế',200000,'2024-12-16');
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKp7gj4l80fx8v0uap3b2crjwp5` (`product_id`),
  CONSTRAINT `FKp7gj4l80fx8v0uap3b2crjwp5` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,50,1),(2,120,2),(3,80,3),(4,199,4),(5,75,5),(6,250,6),(7,90,7),(8,110,8),(9,60,9),(10,100,10),(11,130,11),(12,170,12),(13,140,13),(14,249,14),(15,95,15),(16,180,16),(17,70,17),(18,220,18),(19,160,19),(20,190,20),(21,200,21);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `count` int DEFAULT NULL,
  `createat` datetime(6) NOT NULL,
  `updateat` datetime(6) DEFAULT NULL,
  `orderid` int NOT NULL,
  `productid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqyadddw5faraw73978ak51y4n` (`orderid`),
  KEY `FK7up44in2o6bxxl23owsoydldr` (`productid`),
  CONSTRAINT `FK7up44in2o6bxxl23owsoydldr` FOREIGN KEY (`productid`) REFERENCES `product` (`id`),
  CONSTRAINT `FKqyadddw5faraw73978ak51y4n` FOREIGN KEY (`orderid`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES (1,1,'2024-12-16 10:02:07.359676',NULL,1,14),(2,1,'2024-12-16 10:02:07.367726',NULL,1,4),(3,1,'2024-12-16 10:18:43.231381',NULL,2,13),(4,1,'2024-12-16 10:35:50.716297',NULL,3,1),(5,1,'2024-12-16 10:35:50.728728',NULL,3,6),(6,1,'2024-12-16 11:10:49.339531',NULL,4,4),(7,1,'2024-12-16 11:10:49.352625',NULL,4,1);
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createat` datetime(6) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `price` float DEFAULT NULL,
  `received` bit(1) NOT NULL,
  `reviewed` int DEFAULT '0',
  `status` varchar(255) DEFAULT NULL,
  `updateat` datetime(6) DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  `deliveryid` int DEFAULT NULL,
  `storeid` int DEFAULT NULL,
  `userid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhlglkvf5i60dv6dn397ethgpt` (`address_id`),
  KEY `FKaf8ont73ql85qfhon2r064tbu` (`deliveryid`),
  KEY `FK41c95whj2f4fqcgs1623jao4m` (`storeid`),
  KEY `FKpnm1eeupqm4tykds7k3okqegv` (`userid`),
  CONSTRAINT `FK41c95whj2f4fqcgs1623jao4m` FOREIGN KEY (`storeid`) REFERENCES `store` (`id`),
  CONSTRAINT `FKaf8ont73ql85qfhon2r064tbu` FOREIGN KEY (`deliveryid`) REFERENCES `delivery` (`id`),
  CONSTRAINT `FKhlglkvf5i60dv6dn397ethgpt` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`),
  CONSTRAINT `FKpnm1eeupqm4tykds7k3okqegv` FOREIGN KEY (`userid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2024-12-16 10:02:07.345668','0982737733',300000,_binary '\0',0,'Completed','2024-12-16 10:02:47.547813',1,1,NULL,6),(2,'2024-12-16 10:18:43.217388','0982737733',380000,_binary '\0',0,'Preparing_2','2024-12-16 10:19:18.306083',1,1,NULL,6),(3,'2024-12-16 10:35:50.700996','0942152322',940000,_binary '\0',0,'Cancelled','2024-12-16 10:36:36.217877',2,1,NULL,7),(4,'2024-12-16 11:10:49.318274','0942152322',530000,_binary '\0',0,'Cancelled','2024-12-16 11:10:59.022926',2,1,NULL,7),(5,'2022-05-13 11:00:00.000000','0982737733',450000,_binary '\0',0,'Completed','2022-05-13 11:30:00.000000',1,2,NULL,5),(6,'2022-06-19 16:45:00.000000','0942152322',500000,_binary '\0',0,'Processing_1','2022-06-19 17:15:00.000000',2,1,NULL,6),(7,'2022-07-01 12:00:00.000000','0911223344',700000,_binary '\0',0,'Completed','2022-07-01 12:40:00.000000',3,2,NULL,7),(8,'2022-08-15 15:30:00.000000','0922334455',320000,_binary '\0',0,'Processing_2','2022-08-15 16:10:00.000000',1,1,NULL,1),(9,'2022-09-20 08:50:00.000000','0982737733',270000,_binary '\0',0,'Completed','2022-09-20 09:30:00.000000',2,1,NULL,2),(10,'2022-10-05 18:20:00.000000','0942152322',390000,_binary '\0',0,'Cancelled','2022-10-05 19:00:00.000000',3,2,NULL,3),(11,'2023-01-11 13:10:00.000000','0911223344',410000,_binary '\0',0,'Processing_1','2023-01-11 13:50:00.000000',1,1,NULL,4),(12,'2023-02-28 09:40:00.000000','0922334455',530000,_binary '\0',0,'Completed','2023-02-28 10:20:00.000000',2,2,NULL,5),(13,'2023-03-14 14:10:00.000000','0982737733',480000,_binary '\0',0,'Cancelled','2023-03-14 14:50:00.000000',3,1,NULL,6),(14,'2023-04-30 15:30:00.000000','0942152322',600000,_binary '\0',0,'Processing_2','2023-04-30 16:10:00.000000',1,2,NULL,7),(15,'2023-05-22 10:00:00.000000','0911223344',300000,_binary '\0',0,'Completed','2023-05-22 10:40:00.000000',2,1,NULL,1),(16,'2023-06-18 12:20:00.000000','0922334455',550000,_binary '\0',0,'Processing_1','2023-06-18 13:00:00.000000',3,2,NULL,2),(17,'2023-07-25 17:00:00.000000','0982737733',200000,_binary '\0',0,'Completed','2023-07-25 17:40:00.000000',1,1,NULL,3),(18,'2023-08-13 09:10:00.000000','0942152322',330000,_binary '\0',0,'Processing_2','2023-08-13 09:50:00.000000',2,2,NULL,4),(19,'2023-09-05 16:30:00.000000','0911223344',420000,_binary '\0',0,'Cancelled','2023-09-05 17:10:00.000000',3,1,NULL,5),(20,'2023-10-12 11:40:00.000000','0922334455',500000,_binary '\0',0,'Processing_1','2023-10-12 12:20:00.000000',1,2,NULL,6),(21,'2024-01-05 15:00:00.000000','0982737733',600000,_binary '\0',0,'Completed','2024-01-05 15:40:00.000000',2,1,NULL,7),(22,'2024-02-20 12:10:00.000000','0942152322',720000,_binary '\0',0,'Cancelled','2024-02-20 12:50:00.000000',3,2,NULL,1),(23,'2024-03-15 09:20:00.000000','0911223344',280000,_binary '\0',0,'Processing_2','2024-03-15 10:00:00.000000',1,1,NULL,2),(24,'2024-04-19 17:40:00.000000','0922334455',500000,_binary '\0',0,'Completed','2024-04-19 18:20:00.000000',2,2,NULL,3),(25,'2024-05-02 08:00:00.000000','0982737733',420000,_binary '\0',0,'Cancelled','2024-05-02 08:40:00.000000',3,1,NULL,4),(26,'2024-06-12 13:50:00.000000','0942152322',330000,_binary '\0',0,'Processing_1','2024-06-12 14:30:00.000000',1,2,NULL,5),(27,'2024-07-30 15:10:00.000000','0911223344',400000,_binary '\0',0,'Completed','2024-07-30 15:50:00.000000',2,1,NULL,6),(28,'2024-08-22 09:50:00.000000','0922334455',470000,_binary '\0',0,'Processing_2','2024-08-22 10:30:00.000000',3,2,NULL,7),(29,'2024-09-05 17:20:00.000000','0982737733',510000,_binary '\0',0,'Cancelled','2024-09-05 18:00:00.000000',1,1,NULL,1),(30,'2024-10-10 10:40:00.000000','0942152322',330000,_binary '\0',0,'Completed','2024-10-10 11:20:00.000000',2,2,NULL,2),(31,'2022-01-05 10:15:00.000000','0982737733',300000,_binary '\0',0,'Processing_1','2022-01-05 11:00:00.000000',1,1,NULL,1),(32,'2022-02-12 09:30:00.000000','0942152322',400000,_binary '\0',0,'Processing_2','2022-02-12 10:10:00.000000',2,1,NULL,2),(33,'2022-03-10 14:20:00.000000','0911223344',250000,_binary '\0',0,'Completed','2022-03-10 15:00:00.000000',1,2,NULL,3),(34,'2022-04-25 17:30:00.000000','0922334455',600000,_binary '\0',0,'Cancelled','2022-04-25 18:00:00.000000',3,1,NULL,4);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) DEFAULT NULL,
  `createat` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_selling` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `promotional_price` double DEFAULT NULL,
  `rating` float NOT NULL,
  `sold` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updateat` date DEFAULT NULL,
  `categoryid` int NOT NULL,
  `storeid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4ort9abhumpx4t2mlngljr1vi` (`categoryid`),
  KEY `FK9v9pxncccv2bwg4dgni5s9tbn` (`storeid`),
  CONSTRAINT `FK4ort9abhumpx4t2mlngljr1vi` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`),
  CONSTRAINT `FK9v9pxncccv2bwg4dgni5s9tbn` FOREIGN KEY (`storeid`) REFERENCES `store` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Cerave','2024-12-16','Giữ ẩm và làm dịu da',_binary '','Body and Face Cream',350000,300000,4.7,150,NULL,'2024-12-16',1,1),(2,'Cerave','2024-12-16','Giảm thâm và làm sáng da',_binary '','Vitamin C Serum',450000,400000,4.8,200,NULL,'2024-12-16',1,1),(3,'Cerave','2024-12-16','Bảo vệ da khỏi tia UV',_binary '','Sunscreen SPF 50+',250000,200000,4.6,300,NULL,'2024-12-16',1,1),(4,'Mars Colorbum ','2024-12-16','Son lì lâu trôi',_binary '','Matte Liquid Lipstick',150000,120000,4.5,401,NULL,'2024-12-16',2,1),(5,'ProGlam','2024-12-16','Che khuyết điểm hoàn hảo',_binary '','Foundation Full Coverage',500000,450000,4.7,180,NULL,'2024-12-16',2,1),(6,'MAC','2024-12-16','Phấn má tự nhiên',_binary '','Blush Powder',560000,650000,4.5,220,NULL,'2024-12-16',2,1),(7,'ShinyLocks','2024-12-16','Dưỡng tóc và phục hồi hư tổn',_binary '','Hair Repair Oil',250000,220000,4.6,250,NULL,'2024-12-16',3,1),(8,'TreSsemé','2024-12-16','Dầu gội giữ ẩm',_binary '','Moisturizing Shampoo',200000,180000,4.5,300,NULL,'2024-12-16',3,1),(9,'L\'Oréal','2024-12-16','Mặt nạ tóc chuyên sâu',_binary '','Hair Mask Deep Repair',300000,280000,4.7,120,NULL,'2024-12-16',3,1),(10,'Dove','2024-12-16','Tẩy tế bào chết toàn thân',_binary '','Body Scrub Exfoliator',220000,200000,4.6,170,NULL,'2024-12-16',4,1),(11,'Nivea','2024-12-16','Dưỡng thể mịn màng',_binary '','Body Lotion Vanilla',280000,250000,4.7,150,NULL,'2024-12-16',4,1),(12,'Caswell-Massey','2024-12-16','Kem dưỡng tay hạnh nhân',_binary '','Hand Cream Almond',100000,80000,4.8,320,NULL,'2024-12-16',4,1),(13,'Shiseido','2024-12-16','Che khuyết điểm và chống nắng',_binary '','BB Cream SPF 30',350000,300000,4.6,210,NULL,'2024-12-16',2,1),(14,'BrowMaster','2024-12-16','Bút kẻ mày tự nhiên',_binary '','Eyebrow Pencil',120000,100000,4.8,401,NULL,'2024-12-16',2,1),(15,'L\'Oréal','2024-12-16','Giảm xơ rối tóc',_binary '','Hair Serum Frizz Control',240000,220000,4.7,190,NULL,'2024-12-16',3,1),(16,'Cetaphil','2024-12-16','Sữa rửa mặt tẩy tế bào chết',_binary '','Face Wash',180000,160000,4.5,250,NULL,'2024-12-16',1,1),(17,'Estee Lauder','2024-12-16','Kem dưỡng đêm phục hồi',_binary '','Night Repair Cream',450000,400000,4.6,110,NULL,'2024-12-16',1,1),(18,'Neutrogena','2024-12-16','Khăn tẩy trang dịu nhẹ',_binary '','Makeup Remover Wipes',100000,80000,4.7,320,NULL,'2024-12-16',1,1),(19,'Cosmo','2024-12-16','Sữa tắm hương lavender',_binary '','Shower Gel Lavender',220000,200000,4.8,200,NULL,'2024-12-16',4,1),(20,'Garnier','2024-12-16','Xịt khoáng dưỡng ẩm',_binary '','Face Mist Rose Water',150000,120000,4.5,180,NULL,'2024-12-16',1,1),(21,'L\'Oréal','2024-12-16','Kem cấp ẩm da tuyệt đối',_binary '','Kem dưỡng ẩm',389000,340000,0,NULL,'Accepted','2024-12-16',1,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) NOT NULL,
  `is_main` bit(1) NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi8jnqq05sk5nkma3pfp3ylqrt` (`product_id`),
  CONSTRAINT `FKi8jnqq05sk5nkma3pfp3ylqrt` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (2,'https://th.bing.com/th/id/OIP.TfElZe4ce2-FxobAmKcGSAHaHa?rs=1&pid=ImgDetMain',_binary '',1),(3,'https://i.ebayimg.com/images/g/U1oAAOSw2HNluvP0/s-l1600.webp',_binary '',2),(4,'https://th.bing.com/th/id/OIP.OEsNAz-umbVjH2x1VcuLqwHaHa?w=1500&h=1500&rs=1&pid=ImgDetMain',_binary '',3),(5,'https://i.ebayimg.com/images/g/UWMAAOSw~Ixl454V/s-l1600.webp',_binary '',4),(6,'https://th.bing.com/th/id/OIP.9E7b1wukVRbEXzcqt9EB-gHaHa?rs=1&pid=ImgDetMain',_binary '',5),(7,'https://th.bing.com/th/id/OIP.4UauCzL6_5rivQtLu8VUWwHaIa?rs=1&pid=ImgDetMain',_binary '',6),(8,'https://th.bing.com/th/id/R.12ca82a035d171f712e963ec7cd1877a?rik=9Xj1F%2frNOxL4WA&pid=ImgRaw&r=0',_binary '',7),(9,'https://i5.walmartimages.com/asr/5738df39-fde4-41ea-97ac-3d9fff073ffd_1.69a5fc03636863bb3cd069e9a7e70562.jpeg',_binary '',8),(11,'https://i5.walmartimages.com/asr/fd577548-7195-4228-a70e-e762411660e0.9b413e44b9f3e71bab096d39952bffef.jpeg',_binary '',10),(12,'https://i.ebayimg.com/images/g/aT8AAOSwuHlmhkh6/s-l960.webp',_binary '',9),(13,'https://i5.walmartimages.com/asr/4042467e-11f4-484f-a150-7447a67f79ef_1.cf85e8b01e27df0647e14516780fad59.jpeg?odnWidth=1000&odnHeight=1000&odnBg=ffffff',_binary '',11),(15,'https://th.bing.com/th/id/OIP.IfeRxMLlzBSERPXHbYYvlgHaHa?rs=1&pid=ImgDetMain',_binary '',12),(16,'https://www.shiseido.it/dw/image/v2/BCMQ_PRD/on/demandware.static/-/Sites-itemmaster_shiseido_emea/default/dw11d1ea3b/images/products/10903/10903_F_01.jpg?sw=1400&sh=1400&sm=fit',_binary '',13),(17,'https://i.ebayimg.com/images/g/6-kAAOSwLShhQLLo/s-l960.webp',_binary '',14),(18,'https://th.bing.com/th/id/R.36597d823e8d80af05739abe52ec57cd?rik=wXamocA2%2bV4Tnw&pid=ImgRaw&r=0',_binary '',15),(19,'https://i.ebayimg.com/images/g/XUwAAOSwGcxmfk9X/s-l960.webp',_binary '',16),(20,'https://th.bing.com/th/id/OIP.ZRZC4c17V7dn8UqB0UxBUwAAAA?rs=1&pid=ImgDetMain',_binary '',17),(21,'https://i.ebayimg.com/images/g/56AAAOSwTgRkm24H/s-l1600.webp',_binary '',18),(22,'https://cdn.shopify.com/s/files/1/0558/4207/8869/files/LAVENDER-SHOWER-GEL-1000ML-1b.jpg?v=1619935833',_binary '',19),(23,'https://images-na.ssl-images-amazon.com/images/I/810ZOjF2UEL.jpg',_binary '',20),(24,'https://th.bing.com/th/id/OIP.q8F0kJoIgAVAH6OKEg7txwHaHa?w=1000&h=1000&rs=1&pid=ImgDetMain',_binary '\0',1),(25,'https://assets.myntassets.com/h_200,w_200,c_fill,g_auto/h_1440,q_100,w_1080/v1/assets/images/24440420/2023/8/10/f806b4ab-f589-4d6b-ab55-e876ce4912f61691674572922Lipstick1.jpg',_binary '\0',4),(26,'https://th.bing.com/th/id/OIP.VoGl_txQJeMnT4ofSv-91AHaHa?rs=1&pid=ImgDetMain',_binary '\0',14),(27,'https://cdn.shopify.com/s/files/1/0812/3241/products/CM-41054_AlmondHandCream_1024x1024.jpg?v=1626382526',_binary '\0',12),(28,'https://i5.walmartimages.com/asr/d0f611e2-e285-479d-8775-b00121b37d83_1.0adbc56854e531d4a566ed8f8174c801.jpeg',_binary '\0',18),(29,'https://hoaanhdao.vn/uploadImages/2022/mac-melba-1.png',_binary '\0',6),(30,'https://th.bing.com/th/id/OIP.wzIy8DhNsu-z0DzcFYU6wwHaHa?w=191&h=191&c=7&r=0&o=5&dpr=1.3&pid=1.7',_binary '\0',11),(31,'https://bizweb.dktcdn.net/100/443/867/products/tay-te-bao-chet-dove-macca-duc.jpg?v=1656509252837',_binary '\0',10),(32,'https://th.bing.com/th/id/OIP.CvK4ZdMUTEOaY00jJuHpPQHaHa?rs=1&pid=ImgDetMain',_binary '\0',20),(33,'https://i5.walmartimages.com/asr/81c96531-23db-4e08-b7fc-d1dce5a3a63b.03929fa8c8867193d21ca1167ded3f86.png',_binary '\0',16),(34,'https://www.facemadeup.com/wp-content/uploads/2018/01/Laura-Mercier-Flawless-fusion.jpg',_binary '\0',5),(35,'https://th.bing.com/th/id/OIP.oEocNjelAKimj9XVgfrAfgHaHa?rs=1&pid=ImgDetMain',_binary '\0',9),(36,'https://www.bing.com/th?id=OIP.QxxkUB4NzNHYt_hw3vsVEgHaHa&w=150&h=150&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',_binary '\0',7),(37,'https://m.media-amazon.com/images/I/51DEW0lYOdS._SL1001_.jpg',_binary '\0',15),(38,'https://i5.walmartimages.com/asr/85a26453-ad1a-4f76-a8d2-620b6da1e960.c4b6ea6ef2102550b09a6c603930f639.jpeg',_binary '\0',8),(39,'https://th.bing.com/th/id/R.4128fad9c64d74a1082e22654fbf28e5?rik=kj8Me4TcfmNHwA&pid=ImgRaw&r=0',_binary '\0',17),(40,'https://th.bing.com/th/id/OIP.tYS1si4U0xumM2kD2aOgNgHaHa?rs=1&pid=ImgDetMain',_binary '\0',3),(41,'https://th.bing.com/th/id/R.f94744fc7b2a5463bfa9619572203b6e?rik=nfQcqmUeUs%2f3JA&pid=ImgRaw&r=0',_binary '\0',2),(42,'https://m.media-amazon.com/images/I/61+w4mT8F4L.jpg',_binary '\0',19),(43,'https://th.bing.com/th/id/R.d377319a37b854412b4d28b80baceb79?rik=G6AGy1IA3PkdYQ&pid=ImgRaw&r=0',_binary '\0',13),(44,'http://res.cloudinary.com/dl0bk0sgl/image/upload/v1734323742/oneshop/user_avatars/urrtvnqgt2yqdyt8jwab.webp',_binary '',21),(45,'http://res.cloudinary.com/dl0bk0sgl/image/upload/v1734323744/oneshop/user_avatars/urccgqurrljl2bdhrut4.webp',_binary '\0',21);
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `createat` date NOT NULL,
  `rating` float NOT NULL,
  `updateat` date DEFAULT NULL,
  `productid` int NOT NULL,
  `userid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg69bbwjotlkw04k2hqguscgbo` (`productid`),
  KEY `FKr5b7ngwds9au4py4plwik2ojf` (`userid`),
  CONSTRAINT `FKg69bbwjotlkw04k2hqguscgbo` FOREIGN KEY (`productid`) REFERENCES `product` (`id`),
  CONSTRAINT `FKr5b7ngwds9au4py4plwik2ojf` FOREIGN KEY (`userid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'Sản phẩm giữ ẩm rất tốt, da mềm mịn hơn sau 1 tuần sử dụng.','2024-12-16',4,NULL,1,1),(2,'Kem dưỡng ẩm có mùi thơm nhẹ, nhưng hơi bết dính.','2024-12-16',5,NULL,1,2),(3,'Serum Vitamin C làm sáng da, giảm thâm đáng kể sau 2 tuần.','2024-12-16',4,NULL,2,3),(4,'Kem chống nắng tốt, không gây nhờn rít, phù hợp cho mùa hè.','2024-12-16',5,NULL,3,1),(5,'Son lì lâu trôi, màu sắc đẹp và tự nhiên.','2024-12-16',5,NULL,4,4),(6,'Màu son đẹp nhưng dễ làm khô môi sau vài giờ.','2024-12-16',4,NULL,4,2),(7,'Kem nền che khuyết điểm rất tốt, lâu trôi suốt cả ngày.','2024-12-16',3,NULL,5,3),(8,'Phấn má hồng nhẹ nhàng, phù hợp trang điểm tự nhiên.','2024-12-16',4,NULL,6,1);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `id` int NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `createat` date DEFAULT NULL,
  `featuredimages` varchar(255) DEFAULT NULL,
  `isactive` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rating` float NOT NULL,
  `updateat` date DEFAULT NULL,
  `waiting_product_count` bigint NOT NULL,
  `ownerid` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKgntiyxrye36l57b7ck7pfrysi` (`ownerid`),
  CONSTRAINT `FK9ofnkfv7a7l9tfu911yo7o7f7` FOREIGN KEY (`ownerid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1,'https://i.pinimg.com/736x/cd/ae/89/cdae89a1976d63cabbd96db1b4261213.jpg','Cửa hàng chính của chúng tôi','2024-12-16','https://i.pinimg.com/originals/5f/72/75/5f72753426cecc5e3d0af5c977f5d6b2.jpg',_binary '','Aura Store',4.8,'2024-12-16',5,1),(2,'avatar2.jpg','Chuyên cung cấp các sản phẩm làm đẹp','2024-12-16','featured2.jpg',_binary '','Beauty Hub',4.6,'2024-12-16',8,2),(3,'avatar3.jpg','Cửa hàng chuyên về sản phẩm thiên nhiên','2024-12-16','featured3.jpg',_binary '','Nature Care',4.9,'2024-12-16',3,3),(4,'avatar4.jpg','Nơi hội tụ những thương hiệu trang điểm hàng đầu','2024-12-16','featured4.jpg',_binary '\0','Makeup World',4.5,'2024-12-16',10,4),(5,'avatar5.jpg','Dành cho mái tóc khỏe đẹp','2024-12-16','featured5.jpg',_binary '','Hair Essentials',4.7,'2024-12-16',2,5);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `createat` date DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(10) NOT NULL,
  `resetpasswordtoken` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `updateat` date DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,NULL,'2024-12-16','nguyenthihongtho0128@gmail.com',NULL,NULL,NULL,'$2a$10$MZhCVls0hdu//RtFmF2AQ.FkiIIb3ftkeZiUgRKobzOJ/4tQGaBT.','0941215422',NULL,'ROLE_VENDOR',NULL,'thonguyen'),(2,NULL,NULL,'2024-12-16','tho@gmail.com',NULL,NULL,NULL,'$2a$10$wYF4Dd1XAH2pFSIehO3r1egoqf6QDckdIA2qghYF5rUQw/KoCc5jK','0941215421',NULL,'ROLE_USER',NULL,'tho'),(3,NULL,NULL,'2024-12-16','22133060@student.hcmute.edu.vn',NULL,NULL,NULL,'$2a$10$ObCMqmIZuZxdB9iTEL17nOfL3xldLL3JkDGPRaWz.PwWS7SnkFueW','0941215423',NULL,'ROLE_SHIPPER',NULL,'shipper'),(4,NULL,NULL,'2024-12-16','huyen@gmail.com',NULL,NULL,NULL,'$2a$10$wYF4Dd1XAH2pFSIehO3r1egoqf6QDckdIA2qghYF5rUQw/KoCc5jK','0941215424',NULL,'ROLE_USER',NULL,'huyen'),(5,NULL,NULL,'2024-12-16','phuc@gmail.com',NULL,NULL,NULL,'$2a$10$wYF4Dd1XAH2pFSIehO3r1egoqf6QDckdIA2qghYF5rUQw/KoCc5jK','0941225424',NULL,'ROLE_USER',NULL,'phuc'),(6,'HCM','http://res.cloudinary.com/dl0bk0sgl/image/upload/v1734319238/oneshop/user_avatars/k5reptzwbwabfwiomqk3.jpg','2024-12-16','quynh.trandiem04@gmail.com','Trần Diễm',NULL,'Quỳnh','$2a$10$wYF4Dd1XAH2pFSIehO3r1egoqf6QDckdIA2qghYF5rUQw/KoCc5jK','0982737733',NULL,'ROLE_USER','2024-12-16','quyn'),(7,'HCM','http://res.cloudinary.com/dl0bk0sgl/image/upload/v1734322327/oneshop/user_avatars/ajg07staplp425bkhq0l.jpg','2024-12-16','22133046@student.hcmute.edu.vn','Trần ',NULL,'Quỳnh','$2a$10$7zxDiyyQaSjl1E40aFDtfuTwLzUzyE7S2S6PtiHSGUy2.ZcL2FEKC','0942152322',NULL,'ROLE_USER','2024-12-16','quynhquynh'),(8,NULL,NULL,'2024-12-16','thuquynhliti@gmail.com',NULL,NULL,NULL,'$2a$10$xH6EyubVJ8mUD6Tl8UqvSuwNmGZBN.szT2Hf8iV1WxGInaSUkOMj.','0975421522',NULL,'ROLE_ADMIN','2024-12-16','quynhthu');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-16 11:50:58
