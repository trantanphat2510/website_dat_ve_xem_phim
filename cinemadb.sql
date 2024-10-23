-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: cinema
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS bill;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE bill (
  id int NOT NULL AUTO_INCREMENT,
  created_time datetime(6) DEFAULT NULL,
  user_id int NOT NULL,
  price double NOT NULL,
  PRIMARY KEY (id),
  KEY FKqhq5aolak9ku5x5mx11cpjad9 (user_id),
  CONSTRAINT FKqhq5aolak9ku5x5mx11cpjad9 FOREIGN KEY (user_id) REFERENCES `user` (id) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES bill WRITE;
/*!40000 ALTER TABLE bill DISABLE KEYS */;
INSERT INTO bill VALUES (83,'2022-09-10 13:05:22.492430',4,0),(84,'2022-09-10 13:07:01.371025',29,0),(87,'2022-09-10 15:05:46.654983',4,0),(90,'2024-07-02 19:34:04.781028',53,0);
/*!40000 ALTER TABLE bill ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS branch;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE branch (
  id int NOT NULL AUTO_INCREMENT,
  dia_chi varchar(255) DEFAULT NULL,
  imgurl varchar(2000) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  phone_no varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES branch WRITE;
/*!40000 ALTER TABLE branch DISABLE KEYS */;
INSERT INTO branch VALUES (1,'304A Đ. Quang Trung, Phường 11, Gò Vấp, Hồ Chí Minh','https://www.google.com/maps/vt/data=01jbed2RV46dgYPWYrkUjQ6y9E_UiFnVBsCgIdJWh4TGqJw3K1Qg_A4phqg094CBuRXesGa3QOof0UPRtY3zUWjOKScSn-0JuYoAlbcSKeYWV9wooMdNPaY7iL3Yd9PJjxicmzPKGds-zZRAZ9hqPRix1Trxq2vTQ7GZDWXjNJrqjn2tqL8zO0gSrZgSmarAH0jaD9Ux5tVTaZCwchq2_nNCrs2vjOU7FeXQsPRqfM3jgoYPRe43jeLkd4KGtweeXwUPgV2AeBFj9yTmjBgHSswDBrmGoJkjk-0uRIIO6LCZyMAsSW1p7-gLsUI5nJF6zWCNKmesZ3Jd3I-17zEAOz3AmLMuLkRgiFkICakIuG9B0DkjzVK2P4jN203i4DNkXTpoxKHTMv9dZG-ZoW1A9w7Q5rzSukE8Zdt3GMMei-w-THF-qL3znIiK3nQKq1_BRtnFTvhXduCYpHCo3ZvIiBz4WNKjovXd9ppG-OlRtFLYh8kYvlCKWkO0bmkBeQXoT4mqHQXm80zs_P2CB4xE3bbtoUPgaNo2-5eUcO1CPh6n3DKUdkgOIjRflGoWijmrhJO_45gguPAqZ7ZcXmY_isBf4PnWWJnzO2VAHVQwqwYIJ503CVbm3bmWoX3nVyqThCPj3fFsvjxCH-uYT0VXi3IFc02ktKuirKrsSo2rcgTcTqto0LlmkPAm34wOAr2KmMCfiqJrjKKMCn62v7WefBbU3VLI7Z8pLIgrG4l258FsyN7unVKWcVl3TVnBWp-acw9Y9AmM-nu8OzD7HSpMjJM3X28MJGj9LIIC1WsEdVL0Jhq8x9vBkY9F0RT_XTLQxbIJYa3v0B9x6KlkdOlWqTQTHvc5HQz8OV0JQYp5roWX5WcIx06_gkNOvisnf-J3aeMgzGVGs_-dZUXPwNseutiOPQXyy5NfzhZuJDOAmCJLXEAhmB6BFzFMbATI5zQ9v-D2lDvsjYq2U3Mt7Ctp6HlZVb4DGhzu7FYZkBQ11KkbQthBNKrZQ3kTiVQNNf13Osr9fIK4W6m6R3FtkxqnPshtlc-PYArGqZimsKnxgxxwt1spelowhnI55qFR9wa6UdJgeyGGRfVyfDpFiRKUkwuB7Vip?h=505&w=561&scale=1','HIEUCINEMA Quang Trung','0763735425'),(2,'216 Đ. Võ Văn Ngân, Bình Thọ, Thủ Đức, Thành phố Hồ Chí Minh','https://www.google.com/maps/vt/data=TZeUNl_xwzxmDpHYWKkbDv_7amlZzoi4kaRvCEATRTtis3KKxsH0tcFvyiR7Gjt4G3NufaHQaPOcn3pMPNABNgbW2ZoipmmEo6PKNCFhm8CuQbuASrxxaRyviyUG78mD1AVOf1D2fJxIjyEmphS20Wo9dgRW8TJBXekAhiaiGu8g','HIEUCINEMA Thủ Đức','0763735425'),(3,'934 QL1A, Phường Linh Trung, Thủ Đức, Hồ Chí Minh','https://www.google.com/maps/vt/data=yhfVddn9tdyWNfmuCzyFU_TR8pm30CLi5oeQTFnFB7qV90WT3OL_ETKkEjQjn3j6zlMuz-VSN_AgZRDCghvF5y2JCVivnwi-sOuKKWT4bSEOf0FZ2-nwoNYSRZH--yH_VpazHsQ9huADdpfR_j3ZnNMEfU_hwJXzSef8AcxHTcqA','HIEUCINEMA Linh Trung','0763735425'),(4,'Lotte Mart, Tầng 3 Lotte Mart NSG, 469 Đ. Nguyễn Hữu Thọ, Tân Hưng, Quận 7, Hồ Chí Minh','https://www.google.com/maps/vt/data=YVeSKtAT_T4Tie7xjlIh8lVV_CPmpsr36ayQG-gTEGBZtEKRSSUuLnFbj1HBbGxrYJUS3T3ib8llvuVuiSE85HJYK54JW899mhPMP0BWDwBch-utK9g-_kUPd2rsaEpMLmwUd3R9SO67_S6eUEcY0SfqeXAfB2p9NizW8eGSgD63','HIEUCINEMA Nam','0763735425');
/*!40000 ALTER TABLE branch ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS hibernate_sequence;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE hibernate_sequence (
  next_val bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES hibernate_sequence WRITE;
/*!40000 ALTER TABLE hibernate_sequence DISABLE KEYS */;
INSERT INTO hibernate_sequence VALUES (11);
/*!40000 ALTER TABLE hibernate_sequence ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS movie;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE movie (
  id int NOT NULL AUTO_INCREMENT,
  actors varchar(255) DEFAULT NULL,
  categories varchar(255) DEFAULT NULL,
  director varchar(255) DEFAULT NULL,
  duration int NOT NULL,
  is_showing int NOT NULL,
  `language` varchar(255) DEFAULT NULL,
  large_imageurl varchar(1000) DEFAULT NULL,
  long_description varchar(1000) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  rated varchar(255) DEFAULT NULL,
  release_date date DEFAULT NULL,
  short_description varchar(500) DEFAULT NULL,
  small_imageurl varchar(1000) DEFAULT NULL,
  trailerurl varchar(1000) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES movie WRITE;
/*!40000 ALTER TABLE movie DISABLE KEYS */;
INSERT INTO movie VALUES (2,'Tom Hardy, Juno Temple, Chiwetel Ejiofor, Clark Backo, Stephen Graham','  Hành Động, Khoa Học Viễn Tưởng, Phiêu Lưu, Thần thoại','Kelly Marcel',100,0,'Tiếng Anh - Phụ đề Tiếng Việt','https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/r/s/rsz_vnm3_intl_online_1080x1350_tsr_01.jpg','Siêu bom tấn #VENOM: THE LAST DANCE','VENOM: THE LAST DANCE','C13 - PHIM CẤM KHÁN GIẢ DƯỚI 13 TUỔI','2024-10-25','Siêu bom tấn #VENOM: THE LAST DANCE','https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/r/s/rsz_vnm3_intl_online_1080x1350_tsr_01.jpg','https://www.youtube.com/embed/STScKOUpXR8?si=yt_QppJb5vGtJQUu'),(12,'  Wasabi Mizuta, Megumi Ôhara, Yumi Kakazu','Hoạt hình','Kazuaki Imai',115,1,'Tiếng Nhật - Phụ đề Tiếng Việt; Lồng tiếng','https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/d/r/drm24_-_poster.jpg','TÁC PHẨM KỶ NIỆM 90 NĂM FUJIKO F FUJIO Chuẩn bị cho buổi hòa nhạc ở trường, Nobita đang tập thổi sáo - nhạc cụ mà cậu dở tệ. Thích thú trước nốt \"No\" lạc quẻ của Nobita, Micca - cô bé bí ẩn đã mời Doraemon, Nobita cùng nhóm bạn đến \"Farre\" - Cung điện âm nhạc tọa lạc trên một hành tinh nơi âm nhạc sẽ hóa thành năng lượng. Nhằm cứu cung điện này, Micca đang tìm kiếm \"virtuoso\" - bậc thầy âm nhạc sẽ cùng mình biểu diễn! Với bảo bối thần kì \"chứng chỉ chuyên viên âm nhạc\", Doraemon và các bạn đã chọn nhạc cụ, cùng Micca hòa tấu, từng bước khôi phục cung điện. Tuy nhiên, một vật thể sống đáng sợ sẽ xóa số âm nhạc khỏi thế giới đang đến gần, Trái Đất đang rơi vào nguy hiểm... ! Liệu những người bạn nhỏ có thể cứu được \"tương lai âm nhạc\" và cả địa cầu này?','DORAEMON: NOBITA VÀ BẢN GIAO HƯỞNG ĐỊA CẦU',' P - PHIM ĐƯỢC PHÉP PHỔ BIẾN ĐẾN NGƯỜI XEM Ở MỌI ĐỘ TUỔI.','2024-05-24','Cứ xem thôi','https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/d/r/drm24_-_poster.jpg','//www.youtube.com/embed/Yug8gbDd5EQ?si=xgvHk0Xjk1oo0vl8'),(14,'Josh Brolin, Ryan Reynolds, Morena Baccarin','Hành Động','Shawn Levy',120,0,'  Tiếng Anh với phụ đề tiếng Việt','https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/3/5/350x495_2_.png','Deadpool 3: DEADPOOL & WOLVERINE','Deadpool 3: DEADPOOL & WOLVERINE','18 ','2024-07-26','Deadpool 3: DEADPOOL & WOLVERINE','https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/3/5/350x495_2_.png','https://www.youtube.com/embed/inIVdZSFfc0?si=O2Vuw-BWBwcZg8en'),(15,'Lewis Black, Tony Hale, Liza Lapira, Amy Poehler, Phyllis Smith, Maya Hawke, Adèle Exarchopoulos, Paul Walter Hauser, Ayo Edebiri','Hoạt hình',' Kelsey Mann',96,1,'Việt Nam','https://m.media-amazon.com/images/M/MV5BOGU5YzUwOWItMjMwOC00MTlmLTg1ZDAtODE1ZDQzYzUwMWQ1XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_QL75_UX1219.5_.jpg','Cảm xúc bên trong','Inside Out 2','P - PHIM ĐƯỢC PHÉP PHỔ BIẾN ĐẾN NGƯỜI XEM Ở MỌI ĐỘ TUỔI.','2024-07-31','cảm xúc','https://m.media-amazon.com/images/M/MV5BNTI2YmJmOWYtZmM5NC00NzMwLTk2ZTctMDBiNmFlMmFmNTg5XkEyXkFqcGc@._V1_QL75_UX231_.jpg','https://www.youtube.com/embed/LEjhY15eCx0?si=5lJf5hzHBHmQXRL7'),(16,'Steve Carell, Kristen Wiig, Joey King','Hoạt hình',' Chris Renaud, Patrick Delage',94,1,'Tiếng Anh - Phụ đề Tiếng Việt','https://m.media-amazon.com/images/M/MV5BZTJjYzg5NTQtMmY5MS00YzI5LTg2YTMtZjFlMDNlMzA1YzMyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_QL75_UX609_.jpg','Minion','Kẻ Trộm Mặt Trăng 4','P - PHIM ĐƯỢC PHÉP PHỔ BIẾN ĐẾN NGƯỜI XEM Ở MỌI ĐỘ TUỔI.','2024-07-30','Mininion','https://m.media-amazon.com/images/M/MV5BYTFmNzBkMDctZjc0OC00MzI5LWFmOWItZWRiMjFkNDc4YzM5XkEyXkFqcGdeQXVyMTY3ODkyNDkz._V1_QL75_UX372_.jpg','https://www.youtube.com/embed/1EHAxur2a2E?si=o0jTWjYYyv-3lgpP'),(17,'Joseph Quinn, Lupita Nyong\'o, Alex Wolff','Kinh Dị, Hành Động','Michael Sarnoski',100,1,'Tiếng Anh - Phụ đề Tiếng Việt','https://m.media-amazon.com/images/M/MV5BNzliNWE0ZmUtNThlZS00ZmM5LTg3ODYtYmJhMzRjYmVmYzA0XkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_QL75_UX493.5_.jpg','Im ru','Vùng Đất Câm Lặng: Ngày Một','16','2024-08-15','Im ru à','https://m.media-amazon.com/images/M/MV5BNGZmODU3ZDEtMjQwZC00NTA5LThmNWYtYzk5MmY5ZmM4NGIxXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_QL75_UX211.5_.jpg','https://www.youtube.com/embed/YPY7J-flzE8?si=PWGGhBxFH3T-Sdvv');
/*!40000 ALTER TABLE movie ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reset_password_token`
--

DROP TABLE IF EXISTS reset_password_token;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE reset_password_token (
  id int NOT NULL,
  expiry_date datetime(6) DEFAULT NULL,
  token varchar(255) DEFAULT NULL,
  user_id int NOT NULL,
  PRIMARY KEY (id),
  KEY FKf2tlmidtga0ohscum2abphe9o (user_id),
  CONSTRAINT FKf2tlmidtga0ohscum2abphe9o FOREIGN KEY (user_id) REFERENCES `user` (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reset_password_token`
--

LOCK TABLES reset_password_token WRITE;
/*!40000 ALTER TABLE reset_password_token DISABLE KEYS */;
INSERT INTO reset_password_token VALUES (7,'2024-01-07 17:43:34.919000','GDZSKEoyWZKoCVjNcjzG69wS41ZvEU',4),(8,'2022-09-10 15:24:16.341000','9T1PGMgULouRKaYcfalNtHg7K7DXnY',50),(9,'2022-09-10 12:03:13.471000','z5GJE9hNjl6orKlSqfZLeJzQ1XXgfk',29),(10,'2024-07-02 21:21:12.345000','P3lUPCbzauUo729RcOoLe9FI1IjPda',53);
/*!40000 ALTER TABLE reset_password_token ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS roles;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE roles (
  id int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES roles WRITE;
/*!40000 ALTER TABLE roles DISABLE KEYS */;
INSERT INTO roles VALUES (1,'ROLE_CLIENT'),(2,'ROLE_ADMIN');
/*!40000 ALTER TABLE roles ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS room;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE room (
  id int NOT NULL AUTO_INCREMENT,
  capacity int NOT NULL,
  imgurl varchar(1000) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  total_area double NOT NULL,
  branch_id int NOT NULL,
  PRIMARY KEY (id),
  KEY FK3mf32q0hwpnmu7rf58gjtjrmj (branch_id),
  CONSTRAINT FK3mf32q0hwpnmu7rf58gjtjrmj FOREIGN KEY (branch_id) REFERENCES branch (id) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES room WRITE;
/*!40000 ALTER TABLE room DISABLE KEYS */;
INSERT INTO room VALUES (1,40,'http://hdradio.vn/upload/hinhanh/Cinema-tong-hop/cinema-thiet-ke/Cinema-kd100/cinema-hdradio.jpg','Phòng 101',80,4),(24,0,'https://news.samsung.com/vn/samsung-tai-dinh-nghia-trai-nghiem-xem-phim-tai-rap-voi-man-hinh-onyx-cinema-led-moi','Phòng 450',80,3),(26,128,'','104',80,1),(28,0,'http://hdradio.vn/upload/hinhanh/Cinema-tong-hop/cinema-thiet-ke/Cinema-kd100/cinema-hdradio.jpg','100',120,3),(29,0,'http://hdradio.vn/upload/hinhanh/Cinema-tong-hop/cinema-thiet-ke/Cinema-kd100/cinema-hdradio.jpg','100',100,1),(30,128,'http://hdradio.vn/upload/hinhanh/Cinema-tong-hop/cinema-thiet-ke/Cinema-kd100/cinema-hdradio.jpg','103',100,2),(31,112,'http://hdradio.vn/upload/hinhanh/Cinema-tong-hop/cinema-thiet-ke/Cinema-kd100/cinema-hdradio.jpg','205',100,3),(32,122,'','100',100,2);
/*!40000 ALTER TABLE room ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS schedule;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  id int NOT NULL AUTO_INCREMENT,
  price double NOT NULL,
  start_date date DEFAULT NULL,
  start_time time DEFAULT NULL,
  branch_id int NOT NULL,
  movie_id int NOT NULL,
  room_id int NOT NULL,
  PRIMARY KEY (id),
  KEY FK4ak7m8did07y741qbt2mm45c0 (branch_id),
  KEY FKa6hosaihwhtb3scvamdyh9mlv (movie_id),
  KEY FKh2hdhbss2x31ns719hka6enma (room_id),
  CONSTRAINT FK4ak7m8did07y741qbt2mm45c0 FOREIGN KEY (branch_id) REFERENCES branch (id) ON DELETE CASCADE,
  CONSTRAINT FKa6hosaihwhtb3scvamdyh9mlv FOREIGN KEY (movie_id) REFERENCES movie (id) ON DELETE CASCADE,
  CONSTRAINT FKh2hdhbss2x31ns719hka6enma FOREIGN KEY (room_id) REFERENCES room (id) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES schedule WRITE;
/*!40000 ALTER TABLE schedule DISABLE KEYS */;
INSERT INTO schedule VALUES (48,75000,'2024-07-20','22:00:00',2,17,32),(49,99000,'2024-07-25','12:00:00',1,16,26),(50,90000,'2024-07-18','19:00:00',3,15,31),(51,45000,'2024-07-10','10:00:00',4,12,1),(52,90000,'2024-07-20','17:00:00',2,15,32),(53,80000,'2024-07-20','18:30:00',2,16,30),(54,55000,'2024-07-20','19:45:00',2,12,32);
/*!40000 ALTER TABLE schedule ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS seat;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE seat (
  id int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  room_id int NOT NULL,
  is_active bit(1) NOT NULL,
  is_vip bit(1) NOT NULL,
  PRIMARY KEY (id),
  KEY FKd7f42843rt05tt66t6vcb7s9u (room_id),
  CONSTRAINT FKd7f42843rt05tt66t6vcb7s9u FOREIGN KEY (room_id) REFERENCES room (id) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5073 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES seat WRITE;
/*!40000 ALTER TABLE seat DISABLE KEYS */;
INSERT INTO seat VALUES (241,'A1',1,_binary '',_binary '\0'),(242,'A2',1,_binary '',_binary '\0'),(243,'A3',1,_binary '',_binary '\0'),(244,'A4',1,_binary '',_binary '\0'),(245,'A5',1,_binary '',_binary '\0'),(246,'A6',1,_binary '',_binary '\0'),(247,'A7',1,_binary '',_binary '\0'),(248,'A8',1,_binary '',_binary '\0'),(249,'A9',1,_binary '',_binary '\0'),(250,'A10',1,_binary '',_binary '\0'),(251,'A11',1,_binary '',_binary '\0'),(252,'A12',1,_binary '',_binary '\0'),(253,'A13',1,_binary '',_binary '\0'),(254,'A14',1,_binary '',_binary '\0'),(255,'A15',1,_binary '',_binary '\0'),(256,'A16',1,_binary '',_binary '\0'),(257,'B1',1,_binary '',_binary '\0'),(258,'B2',1,_binary '',_binary '\0'),(259,'B3',1,_binary '',_binary '\0'),(260,'B4',1,_binary '',_binary '\0'),(261,'B5',1,_binary '',_binary '\0'),(262,'B6',1,_binary '',_binary '\0'),(263,'B7',1,_binary '',_binary '\0'),(264,'B8',1,_binary '',_binary '\0'),(265,'B9',1,_binary '',_binary '\0'),(266,'B10',1,_binary '',_binary '\0'),(267,'B11',1,_binary '',_binary '\0'),(268,'B12',1,_binary '',_binary '\0'),(269,'B13',1,_binary '',_binary '\0'),(270,'B14',1,_binary '',_binary '\0'),(271,'B15',1,_binary '',_binary '\0'),(272,'B16',1,_binary '',_binary '\0'),(273,'C1',1,_binary '',_binary '\0'),(274,'C2',1,_binary '',_binary '\0'),(275,'C3',1,_binary '',_binary ''),(276,'C4',1,_binary '',_binary ''),(277,'C5',1,_binary '',_binary ''),(278,'C6',1,_binary '',_binary ''),(279,'C7',1,_binary '',_binary ''),(280,'C8',1,_binary '',_binary ''),(281,'C9',1,_binary '',_binary ''),(282,'C10',1,_binary '',_binary ''),(283,'C11',1,_binary '',_binary ''),(284,'C12',1,_binary '',_binary ''),(285,'C13',1,_binary '',_binary ''),(286,'C14',1,_binary '',_binary ''),(287,'C15',1,_binary '',_binary '\0'),(288,'C16',1,_binary '',_binary '\0'),(289,'D1',1,_binary '',_binary '\0'),(290,'D2',1,_binary '',_binary '\0'),(291,'D3',1,_binary '',_binary ''),(292,'D4',1,_binary '',_binary ''),(293,'D5',1,_binary '',_binary ''),(294,'D6',1,_binary '',_binary ''),(295,'D7',1,_binary '',_binary ''),(296,'D8',1,_binary '',_binary ''),(297,'D9',1,_binary '',_binary ''),(298,'D10',1,_binary '',_binary ''),(299,'D11',1,_binary '',_binary ''),(300,'D12',1,_binary '',_binary ''),(301,'D13',1,_binary '',_binary ''),(302,'D14',1,_binary '',_binary ''),(303,'D15',1,_binary '',_binary '\0'),(304,'D16',1,_binary '',_binary '\0'),(305,'E1',1,_binary '',_binary '\0'),(306,'E2',1,_binary '',_binary '\0'),(307,'E3',1,_binary '',_binary ''),(308,'E4',1,_binary '',_binary ''),(309,'E5',1,_binary '',_binary ''),(310,'E6',1,_binary '',_binary ''),(311,'E7',1,_binary '',_binary ''),(312,'E8',1,_binary '',_binary ''),(313,'E9',1,_binary '',_binary ''),(314,'E10',1,_binary '',_binary ''),(315,'E11',1,_binary '',_binary ''),(316,'E12',1,_binary '',_binary ''),(317,'E13',1,_binary '',_binary ''),(318,'E14',1,_binary '',_binary ''),(319,'E15',1,_binary '',_binary '\0'),(320,'E16',1,_binary '',_binary '\0'),(321,'F1',1,_binary '',_binary '\0'),(322,'F2',1,_binary '',_binary '\0'),(323,'F3',1,_binary '',_binary ''),(324,'F4',1,_binary '',_binary ''),(325,'F5',1,_binary '',_binary ''),(326,'F6',1,_binary '',_binary ''),(327,'F7',1,_binary '',_binary ''),(328,'F8',1,_binary '',_binary ''),(329,'F9',1,_binary '',_binary ''),(330,'F10',1,_binary '',_binary ''),(331,'F11',1,_binary '',_binary ''),(332,'F12',1,_binary '',_binary ''),(333,'F13',1,_binary '',_binary ''),(334,'F14',1,_binary '',_binary ''),(335,'F15',1,_binary '',_binary '\0'),(336,'F16',1,_binary '',_binary '\0'),(337,'G1',1,_binary '',_binary '\0'),(338,'G2',1,_binary '',_binary '\0'),(339,'G3',1,_binary '',_binary ''),(340,'G4',1,_binary '',_binary ''),(341,'G5',1,_binary '',_binary ''),(342,'G6',1,_binary '',_binary ''),(343,'G7',1,_binary '',_binary ''),(344,'G8',1,_binary '',_binary ''),(345,'G9',1,_binary '',_binary ''),(346,'G10',1,_binary '',_binary ''),(347,'G11',1,_binary '',_binary ''),(348,'G12',1,_binary '',_binary ''),(349,'G13',1,_binary '',_binary ''),(350,'G14',1,_binary '',_binary ''),(351,'G15',1,_binary '',_binary '\0'),(352,'G16',1,_binary '',_binary '\0'),(353,'H1',1,_binary '',_binary '\0'),(354,'H2',1,_binary '',_binary '\0'),(355,'H3',1,_binary '',_binary ''),(356,'H4',1,_binary '',_binary ''),(357,'H5',1,_binary '',_binary ''),(358,'H6',1,_binary '',_binary ''),(359,'H7',1,_binary '',_binary ''),(360,'H8',1,_binary '',_binary ''),(361,'H9',1,_binary '',_binary ''),(362,'H10',1,_binary '',_binary ''),(363,'H11',1,_binary '',_binary ''),(364,'H12',1,_binary '',_binary ''),(365,'H13',1,_binary '',_binary ''),(366,'H14',1,_binary '',_binary ''),(367,'H15',1,_binary '',_binary '\0'),(368,'H16',1,_binary '',_binary '\0'),(3921,'A1',24,_binary '',_binary '\0'),(3922,'A2',24,_binary '',_binary '\0'),(3923,'A3',24,_binary '',_binary '\0'),(3924,'A4',24,_binary '',_binary '\0'),(3925,'A5',24,_binary '',_binary '\0'),(3926,'A6',24,_binary '',_binary '\0'),(3927,'A7',24,_binary '',_binary '\0'),(3928,'A8',24,_binary '',_binary '\0'),(3929,'A9',24,_binary '',_binary '\0'),(3930,'A10',24,_binary '',_binary '\0'),(3931,'A11',24,_binary '',_binary '\0'),(3932,'A12',24,_binary '',_binary '\0'),(3933,'A13',24,_binary '',_binary '\0'),(3934,'A14',24,_binary '',_binary '\0'),(3935,'A15',24,_binary '',_binary '\0'),(3936,'A16',24,_binary '',_binary '\0'),(3937,'B1',24,_binary '',_binary '\0'),(3938,'B2',24,_binary '',_binary '\0'),(3939,'B3',24,_binary '',_binary '\0'),(3940,'B4',24,_binary '',_binary '\0'),(3941,'B5',24,_binary '',_binary '\0'),(3942,'B6',24,_binary '',_binary '\0'),(3943,'B7',24,_binary '',_binary '\0'),(3944,'B8',24,_binary '',_binary '\0'),(3945,'B9',24,_binary '',_binary '\0'),(3946,'B10',24,_binary '',_binary '\0'),(3947,'B11',24,_binary '',_binary '\0'),(3948,'B12',24,_binary '',_binary '\0'),(3949,'B13',24,_binary '',_binary '\0'),(3950,'B14',24,_binary '',_binary '\0'),(3951,'B15',24,_binary '',_binary '\0'),(3952,'B16',24,_binary '',_binary '\0'),(3953,'C1',24,_binary '',_binary '\0'),(3954,'C2',24,_binary '',_binary '\0'),(3955,'C3',24,_binary '',_binary '\0'),(3956,'C4',24,_binary '',_binary '\0'),(3957,'C5',24,_binary '',_binary '\0'),(3958,'C6',24,_binary '',_binary '\0'),(3959,'C7',24,_binary '',_binary '\0'),(3960,'C8',24,_binary '',_binary '\0'),(3961,'C9',24,_binary '',_binary '\0'),(3962,'C10',24,_binary '',_binary '\0'),(3963,'C11',24,_binary '',_binary '\0'),(3964,'C12',24,_binary '',_binary '\0'),(3965,'C13',24,_binary '',_binary '\0'),(3966,'C14',24,_binary '',_binary '\0'),(3967,'C15',24,_binary '',_binary '\0'),(3968,'C16',24,_binary '',_binary '\0'),(3969,'D1',24,_binary '',_binary '\0'),(3970,'D2',24,_binary '',_binary '\0'),(3971,'D3',24,_binary '',_binary '\0'),(3972,'D4',24,_binary '',_binary '\0'),(3973,'D5',24,_binary '',_binary ''),(3974,'D6',24,_binary '',_binary ''),(3975,'D7',24,_binary '',_binary ''),(3976,'D8',24,_binary '',_binary ''),(3977,'D9',24,_binary '',_binary ''),(3978,'D10',24,_binary '',_binary ''),(3979,'D11',24,_binary '',_binary ''),(3980,'D12',24,_binary '',_binary ''),(3981,'D13',24,_binary '',_binary '\0'),(3982,'D14',24,_binary '',_binary '\0'),(3983,'D15',24,_binary '',_binary '\0'),(3984,'D16',24,_binary '',_binary '\0'),(3985,'E1',24,_binary '',_binary '\0'),(3986,'E2',24,_binary '',_binary '\0'),(3987,'E3',24,_binary '',_binary '\0'),(3988,'E4',24,_binary '',_binary '\0'),(3989,'E5',24,_binary '',_binary ''),(3990,'E6',24,_binary '',_binary ''),(3991,'E7',24,_binary '',_binary ''),(3992,'E8',24,_binary '',_binary ''),(3993,'E9',24,_binary '',_binary ''),(3994,'E10',24,_binary '',_binary ''),(3995,'E11',24,_binary '',_binary ''),(3996,'E12',24,_binary '',_binary ''),(3997,'E13',24,_binary '',_binary '\0'),(3998,'E14',24,_binary '',_binary '\0'),(3999,'E15',24,_binary '',_binary '\0'),(4000,'E16',24,_binary '',_binary '\0'),(4001,'F1',24,_binary '',_binary '\0'),(4002,'F2',24,_binary '',_binary '\0'),(4003,'F3',24,_binary '',_binary '\0'),(4004,'F4',24,_binary '',_binary '\0'),(4005,'F5',24,_binary '',_binary '\0'),(4006,'F6',24,_binary '',_binary '\0'),(4007,'F7',24,_binary '',_binary '\0'),(4008,'F8',24,_binary '',_binary '\0'),(4009,'F9',24,_binary '',_binary '\0'),(4010,'F10',24,_binary '',_binary '\0'),(4011,'F11',24,_binary '',_binary '\0'),(4012,'F12',24,_binary '',_binary '\0'),(4013,'F13',24,_binary '',_binary '\0'),(4014,'F14',24,_binary '',_binary '\0'),(4015,'F15',24,_binary '',_binary '\0'),(4016,'F16',24,_binary '',_binary '\0'),(4017,'G1',24,_binary '',_binary '\0'),(4018,'G2',24,_binary '',_binary '\0'),(4019,'G3',24,_binary '',_binary '\0'),(4020,'G4',24,_binary '',_binary '\0'),(4021,'G5',24,_binary '',_binary '\0'),(4022,'G6',24,_binary '',_binary '\0'),(4023,'G7',24,_binary '',_binary '\0'),(4024,'G8',24,_binary '',_binary '\0'),(4025,'G9',24,_binary '',_binary '\0'),(4026,'G10',24,_binary '',_binary '\0'),(4027,'G11',24,_binary '',_binary '\0'),(4028,'G12',24,_binary '',_binary '\0'),(4029,'G13',24,_binary '',_binary '\0'),(4030,'G14',24,_binary '',_binary '\0'),(4031,'G15',24,_binary '',_binary '\0'),(4032,'G16',24,_binary '',_binary '\0'),(4033,'H1',24,_binary '',_binary '\0'),(4034,'H2',24,_binary '',_binary '\0'),(4035,'H3',24,_binary '',_binary '\0'),(4036,'H4',24,_binary '',_binary '\0'),(4037,'H5',24,_binary '',_binary '\0'),(4038,'H6',24,_binary '',_binary '\0'),(4039,'H7',24,_binary '',_binary '\0'),(4040,'H8',24,_binary '',_binary '\0'),(4041,'H9',24,_binary '',_binary '\0'),(4042,'H10',24,_binary '',_binary '\0'),(4043,'H11',24,_binary '',_binary '\0'),(4044,'H12',24,_binary '',_binary '\0'),(4045,'H13',24,_binary '',_binary '\0'),(4046,'H14',24,_binary '',_binary '\0'),(4047,'H15',24,_binary '',_binary '\0'),(4048,'H16',24,_binary '',_binary '\0'),(4177,'A1',26,_binary '',_binary '\0'),(4178,'A2',26,_binary '',_binary '\0'),(4179,'A3',26,_binary '',_binary '\0'),(4180,'A4',26,_binary '',_binary '\0'),(4181,'A5',26,_binary '',_binary '\0'),(4182,'A6',26,_binary '',_binary '\0'),(4183,'A7',26,_binary '',_binary '\0'),(4184,'A8',26,_binary '',_binary '\0'),(4185,'A9',26,_binary '',_binary '\0'),(4186,'A10',26,_binary '',_binary '\0'),(4187,'A11',26,_binary '',_binary '\0'),(4188,'A12',26,_binary '',_binary '\0'),(4189,'A13',26,_binary '',_binary '\0'),(4190,'A14',26,_binary '',_binary '\0'),(4191,'A15',26,_binary '',_binary '\0'),(4192,'A16',26,_binary '',_binary '\0'),(4193,'B1',26,_binary '',_binary '\0'),(4194,'B2',26,_binary '',_binary '\0'),(4195,'B3',26,_binary '',_binary '\0'),(4196,'B4',26,_binary '',_binary '\0'),(4197,'B5',26,_binary '',_binary '\0'),(4198,'B6',26,_binary '',_binary '\0'),(4199,'B7',26,_binary '',_binary '\0'),(4200,'B8',26,_binary '',_binary '\0'),(4201,'B9',26,_binary '',_binary '\0'),(4202,'B10',26,_binary '',_binary '\0'),(4203,'B11',26,_binary '',_binary '\0'),(4204,'B12',26,_binary '',_binary '\0'),(4205,'B13',26,_binary '',_binary '\0'),(4206,'B14',26,_binary '',_binary '\0'),(4207,'B15',26,_binary '',_binary '\0'),(4208,'B16',26,_binary '',_binary '\0'),(4209,'C1',26,_binary '',_binary '\0'),(4210,'C2',26,_binary '',_binary '\0'),(4211,'C3',26,_binary '',_binary '\0'),(4212,'C4',26,_binary '',_binary '\0'),(4213,'C5',26,_binary '',_binary '\0'),(4214,'C6',26,_binary '',_binary '\0'),(4215,'C7',26,_binary '',_binary '\0'),(4216,'C8',26,_binary '',_binary '\0'),(4217,'C9',26,_binary '',_binary '\0'),(4218,'C10',26,_binary '',_binary '\0'),(4219,'C11',26,_binary '',_binary '\0'),(4220,'C12',26,_binary '',_binary '\0'),(4221,'C13',26,_binary '',_binary '\0'),(4222,'C14',26,_binary '',_binary '\0'),(4223,'C15',26,_binary '',_binary '\0'),(4224,'C16',26,_binary '',_binary '\0'),(4225,'D1',26,_binary '',_binary '\0'),(4226,'D2',26,_binary '',_binary '\0'),(4227,'D3',26,_binary '',_binary '\0'),(4228,'D4',26,_binary '',_binary '\0'),(4229,'D5',26,_binary '',_binary '\0'),(4230,'D6',26,_binary '',_binary '\0'),(4231,'D7',26,_binary '',_binary '\0'),(4232,'D8',26,_binary '',_binary '\0'),(4233,'D9',26,_binary '',_binary '\0'),(4234,'D10',26,_binary '',_binary '\0'),(4235,'D11',26,_binary '',_binary '\0'),(4236,'D12',26,_binary '',_binary '\0'),(4237,'D13',26,_binary '',_binary '\0'),(4238,'D14',26,_binary '',_binary '\0'),(4239,'D15',26,_binary '',_binary '\0'),(4240,'D16',26,_binary '',_binary '\0'),(4241,'E1',26,_binary '',_binary '\0'),(4242,'E2',26,_binary '',_binary '\0'),(4243,'E3',26,_binary '',_binary '\0'),(4244,'E4',26,_binary '',_binary '\0'),(4245,'E5',26,_binary '',_binary ''),(4246,'E6',26,_binary '',_binary ''),(4247,'E7',26,_binary '',_binary ''),(4248,'E8',26,_binary '',_binary ''),(4249,'E9',26,_binary '',_binary ''),(4250,'E10',26,_binary '',_binary ''),(4251,'E11',26,_binary '',_binary ''),(4252,'E12',26,_binary '',_binary ''),(4253,'E13',26,_binary '',_binary ''),(4254,'E14',26,_binary '',_binary '\0'),(4255,'E15',26,_binary '',_binary '\0'),(4256,'E16',26,_binary '',_binary '\0'),(4257,'F1',26,_binary '',_binary '\0'),(4258,'F2',26,_binary '',_binary '\0'),(4259,'F3',26,_binary '',_binary '\0'),(4260,'F4',26,_binary '',_binary '\0'),(4261,'F5',26,_binary '',_binary '\0'),(4262,'F6',26,_binary '',_binary '\0'),(4263,'F7',26,_binary '',_binary '\0'),(4264,'F8',26,_binary '',_binary '\0'),(4265,'F9',26,_binary '',_binary '\0'),(4266,'F10',26,_binary '',_binary '\0'),(4267,'F11',26,_binary '',_binary '\0'),(4268,'F12',26,_binary '',_binary '\0'),(4269,'F13',26,_binary '',_binary '\0'),(4270,'F14',26,_binary '',_binary '\0'),(4271,'F15',26,_binary '',_binary '\0'),(4272,'F16',26,_binary '',_binary '\0'),(4273,'G1',26,_binary '',_binary '\0'),(4274,'G2',26,_binary '',_binary '\0'),(4275,'G3',26,_binary '',_binary '\0'),(4276,'G4',26,_binary '',_binary '\0'),(4277,'G5',26,_binary '',_binary '\0'),(4278,'G6',26,_binary '',_binary '\0'),(4279,'G7',26,_binary '',_binary '\0'),(4280,'G8',26,_binary '',_binary '\0'),(4281,'G9',26,_binary '',_binary '\0'),(4282,'G10',26,_binary '',_binary '\0'),(4283,'G11',26,_binary '',_binary '\0'),(4284,'G12',26,_binary '',_binary '\0'),(4285,'G13',26,_binary '',_binary '\0'),(4286,'G14',26,_binary '',_binary '\0'),(4287,'G15',26,_binary '',_binary '\0'),(4288,'G16',26,_binary '',_binary '\0'),(4289,'H1',26,_binary '',_binary '\0'),(4290,'H2',26,_binary '',_binary '\0'),(4291,'H3',26,_binary '',_binary '\0'),(4292,'H4',26,_binary '',_binary '\0'),(4293,'H5',26,_binary '',_binary '\0'),(4294,'H6',26,_binary '',_binary '\0'),(4295,'H7',26,_binary '',_binary '\0'),(4296,'H8',26,_binary '',_binary '\0'),(4297,'H9',26,_binary '',_binary '\0'),(4298,'H10',26,_binary '',_binary '\0'),(4299,'H11',26,_binary '',_binary '\0'),(4300,'H12',26,_binary '',_binary '\0'),(4301,'H13',26,_binary '',_binary '\0'),(4302,'H14',26,_binary '',_binary '\0'),(4303,'H15',26,_binary '',_binary '\0'),(4304,'H16',26,_binary '',_binary '\0'),(4433,'A1',28,_binary '',_binary '\0'),(4434,'A2',28,_binary '',_binary '\0'),(4435,'A3',28,_binary '',_binary '\0'),(4436,'A4',28,_binary '',_binary '\0'),(4437,'A5',28,_binary '',_binary '\0'),(4438,'A6',28,_binary '',_binary '\0'),(4439,'A7',28,_binary '',_binary '\0'),(4440,'A8',28,_binary '',_binary '\0'),(4441,'A9',28,_binary '',_binary '\0'),(4442,'A10',28,_binary '',_binary '\0'),(4443,'A11',28,_binary '',_binary '\0'),(4444,'A12',28,_binary '',_binary '\0'),(4445,'A13',28,_binary '',_binary '\0'),(4446,'A14',28,_binary '',_binary '\0'),(4447,'A15',28,_binary '',_binary '\0'),(4448,'A16',28,_binary '',_binary '\0'),(4449,'B1',28,_binary '',_binary '\0'),(4450,'B2',28,_binary '',_binary '\0'),(4451,'B3',28,_binary '',_binary '\0'),(4452,'B4',28,_binary '',_binary '\0'),(4453,'B5',28,_binary '',_binary '\0'),(4454,'B6',28,_binary '',_binary '\0'),(4455,'B7',28,_binary '',_binary '\0'),(4456,'B8',28,_binary '',_binary '\0'),(4457,'B9',28,_binary '',_binary '\0'),(4458,'B10',28,_binary '',_binary '\0'),(4459,'B11',28,_binary '',_binary '\0'),(4460,'B12',28,_binary '',_binary '\0'),(4461,'B13',28,_binary '',_binary '\0'),(4462,'B14',28,_binary '',_binary '\0'),(4463,'B15',28,_binary '',_binary '\0'),(4464,'B16',28,_binary '',_binary '\0'),(4465,'C1',28,_binary '',_binary '\0'),(4466,'C2',28,_binary '',_binary '\0'),(4467,'C3',28,_binary '',_binary '\0'),(4468,'C4',28,_binary '',_binary '\0'),(4469,'C5',28,_binary '',_binary '\0'),(4470,'C6',28,_binary '',_binary '\0'),(4471,'C7',28,_binary '',_binary '\0'),(4472,'C8',28,_binary '',_binary '\0'),(4473,'C9',28,_binary '',_binary '\0'),(4474,'C10',28,_binary '',_binary '\0'),(4475,'C11',28,_binary '',_binary '\0'),(4476,'C12',28,_binary '',_binary '\0'),(4477,'C13',28,_binary '',_binary '\0'),(4478,'C14',28,_binary '',_binary '\0'),(4479,'C15',28,_binary '',_binary '\0'),(4480,'C16',28,_binary '',_binary '\0'),(4481,'D1',28,_binary '',_binary '\0'),(4482,'D2',28,_binary '',_binary '\0'),(4483,'D3',28,_binary '',_binary '\0'),(4484,'D4',28,_binary '',_binary '\0'),(4485,'D5',28,_binary '',_binary '\0'),(4486,'D6',28,_binary '',_binary '\0'),(4487,'D7',28,_binary '',_binary '\0'),(4488,'D8',28,_binary '',_binary '\0'),(4489,'D9',28,_binary '',_binary '\0'),(4490,'D10',28,_binary '',_binary '\0'),(4491,'D11',28,_binary '',_binary '\0'),(4492,'D12',28,_binary '',_binary '\0'),(4493,'D13',28,_binary '',_binary '\0'),(4494,'D14',28,_binary '',_binary '\0'),(4495,'D15',28,_binary '',_binary '\0'),(4496,'D16',28,_binary '',_binary '\0'),(4497,'E1',28,_binary '',_binary '\0'),(4498,'E2',28,_binary '',_binary '\0'),(4499,'E3',28,_binary '',_binary '\0'),(4500,'E4',28,_binary '',_binary ''),(4501,'E5',28,_binary '',_binary ''),(4502,'E6',28,_binary '',_binary ''),(4503,'E7',28,_binary '',_binary ''),(4504,'E8',28,_binary '',_binary ''),(4505,'E9',28,_binary '',_binary ''),(4506,'E10',28,_binary '',_binary ''),(4507,'E11',28,_binary '',_binary ''),(4508,'E12',28,_binary '',_binary ''),(4509,'E13',28,_binary '',_binary ''),(4510,'E14',28,_binary '',_binary '\0'),(4511,'E15',28,_binary '',_binary '\0'),(4512,'E16',28,_binary '',_binary '\0'),(4513,'F1',28,_binary '',_binary '\0'),(4514,'F2',28,_binary '',_binary '\0'),(4515,'F3',28,_binary '',_binary '\0'),(4516,'F4',28,_binary '',_binary ''),(4517,'F5',28,_binary '',_binary ''),(4518,'F6',28,_binary '',_binary ''),(4519,'F7',28,_binary '',_binary ''),(4520,'F8',28,_binary '',_binary ''),(4521,'F9',28,_binary '',_binary ''),(4522,'F10',28,_binary '',_binary ''),(4523,'F11',28,_binary '',_binary ''),(4524,'F12',28,_binary '',_binary ''),(4525,'F13',28,_binary '',_binary ''),(4526,'F14',28,_binary '',_binary '\0'),(4527,'F15',28,_binary '',_binary '\0'),(4528,'F16',28,_binary '',_binary '\0'),(4529,'G1',28,_binary '',_binary '\0'),(4530,'G2',28,_binary '',_binary '\0'),(4531,'G3',28,_binary '',_binary '\0'),(4532,'G4',28,_binary '',_binary '\0'),(4533,'G5',28,_binary '',_binary '\0'),(4534,'G6',28,_binary '',_binary '\0'),(4535,'G7',28,_binary '',_binary '\0'),(4536,'G8',28,_binary '',_binary '\0'),(4537,'G9',28,_binary '',_binary '\0'),(4538,'G10',28,_binary '',_binary '\0'),(4539,'G11',28,_binary '',_binary '\0'),(4540,'G12',28,_binary '',_binary '\0'),(4541,'G13',28,_binary '',_binary '\0'),(4542,'G14',28,_binary '',_binary '\0'),(4543,'G15',28,_binary '',_binary '\0'),(4544,'G16',28,_binary '',_binary '\0'),(4545,'H1',28,_binary '',_binary '\0'),(4546,'H2',28,_binary '',_binary '\0'),(4547,'H3',28,_binary '',_binary '\0'),(4548,'H4',28,_binary '',_binary '\0'),(4549,'H5',28,_binary '',_binary '\0'),(4550,'H6',28,_binary '',_binary '\0'),(4551,'H7',28,_binary '',_binary '\0'),(4552,'H8',28,_binary '',_binary '\0'),(4553,'H9',28,_binary '',_binary '\0'),(4554,'H10',28,_binary '',_binary '\0'),(4555,'H11',28,_binary '',_binary '\0'),(4556,'H12',28,_binary '',_binary '\0'),(4557,'H13',28,_binary '',_binary '\0'),(4558,'H14',28,_binary '',_binary '\0'),(4559,'H15',28,_binary '',_binary '\0'),(4560,'H16',28,_binary '',_binary '\0'),(4561,'A1',29,_binary '',_binary '\0'),(4562,'A2',29,_binary '',_binary '\0'),(4563,'A3',29,_binary '',_binary '\0'),(4564,'A4',29,_binary '',_binary '\0'),(4565,'A5',29,_binary '',_binary '\0'),(4566,'A6',29,_binary '',_binary '\0'),(4567,'A7',29,_binary '',_binary '\0'),(4568,'A8',29,_binary '',_binary '\0'),(4569,'A9',29,_binary '',_binary '\0'),(4570,'A10',29,_binary '',_binary '\0'),(4571,'A11',29,_binary '',_binary '\0'),(4572,'A12',29,_binary '',_binary '\0'),(4573,'A13',29,_binary '',_binary '\0'),(4574,'A14',29,_binary '',_binary '\0'),(4575,'A15',29,_binary '',_binary '\0'),(4576,'A16',29,_binary '',_binary '\0'),(4577,'B1',29,_binary '',_binary '\0'),(4578,'B2',29,_binary '',_binary '\0'),(4579,'B3',29,_binary '',_binary '\0'),(4580,'B4',29,_binary '',_binary '\0'),(4581,'B5',29,_binary '',_binary '\0'),(4582,'B6',29,_binary '',_binary '\0'),(4583,'B7',29,_binary '',_binary '\0'),(4584,'B8',29,_binary '',_binary '\0'),(4585,'B9',29,_binary '',_binary '\0'),(4586,'B10',29,_binary '',_binary '\0'),(4587,'B11',29,_binary '',_binary '\0'),(4588,'B12',29,_binary '',_binary '\0'),(4589,'B13',29,_binary '',_binary '\0'),(4590,'B14',29,_binary '',_binary '\0'),(4591,'B15',29,_binary '',_binary '\0'),(4592,'B16',29,_binary '',_binary '\0'),(4593,'C1',29,_binary '',_binary '\0'),(4594,'C2',29,_binary '',_binary '\0'),(4595,'C3',29,_binary '',_binary '\0'),(4596,'C4',29,_binary '',_binary '\0'),(4597,'C5',29,_binary '',_binary '\0'),(4598,'C6',29,_binary '',_binary '\0'),(4599,'C7',29,_binary '',_binary '\0'),(4600,'C8',29,_binary '',_binary '\0'),(4601,'C9',29,_binary '',_binary '\0'),(4602,'C10',29,_binary '',_binary '\0'),(4603,'C11',29,_binary '',_binary '\0'),(4604,'C12',29,_binary '',_binary '\0'),(4605,'C13',29,_binary '',_binary '\0'),(4606,'C14',29,_binary '',_binary '\0'),(4607,'C15',29,_binary '',_binary '\0'),(4608,'C16',29,_binary '',_binary '\0'),(4609,'D1',29,_binary '',_binary '\0'),(4610,'D2',29,_binary '',_binary '\0'),(4611,'D3',29,_binary '',_binary '\0'),(4612,'D4',29,_binary '',_binary '\0'),(4613,'D5',29,_binary '',_binary '\0'),(4614,'D6',29,_binary '',_binary ''),(4615,'D7',29,_binary '',_binary ''),(4616,'D8',29,_binary '',_binary ''),(4617,'D9',29,_binary '',_binary ''),(4618,'D10',29,_binary '',_binary ''),(4619,'D11',29,_binary '',_binary ''),(4620,'D12',29,_binary '',_binary '\0'),(4621,'D13',29,_binary '',_binary '\0'),(4622,'D14',29,_binary '',_binary '\0'),(4623,'D15',29,_binary '',_binary '\0'),(4624,'D16',29,_binary '',_binary '\0'),(4625,'E1',29,_binary '',_binary '\0'),(4626,'E2',29,_binary '',_binary '\0'),(4627,'E3',29,_binary '',_binary '\0'),(4628,'E4',29,_binary '',_binary '\0'),(4629,'E5',29,_binary '',_binary '\0'),(4630,'E6',29,_binary '',_binary ''),(4631,'E7',29,_binary '',_binary ''),(4632,'E8',29,_binary '',_binary ''),(4633,'E9',29,_binary '',_binary ''),(4634,'E10',29,_binary '',_binary ''),(4635,'E11',29,_binary '',_binary ''),(4636,'E12',29,_binary '',_binary '\0'),(4637,'E13',29,_binary '',_binary '\0'),(4638,'E14',29,_binary '',_binary '\0'),(4639,'E15',29,_binary '',_binary '\0'),(4640,'E16',29,_binary '',_binary '\0'),(4641,'F1',29,_binary '',_binary '\0'),(4642,'F2',29,_binary '',_binary '\0'),(4643,'F3',29,_binary '',_binary '\0'),(4644,'F4',29,_binary '',_binary '\0'),(4645,'F5',29,_binary '',_binary '\0'),(4646,'F6',29,_binary '',_binary ''),(4647,'F7',29,_binary '',_binary ''),(4648,'F8',29,_binary '',_binary ''),(4649,'F9',29,_binary '',_binary ''),(4650,'F10',29,_binary '',_binary ''),(4651,'F11',29,_binary '',_binary ''),(4652,'F12',29,_binary '',_binary '\0'),(4653,'F13',29,_binary '',_binary '\0'),(4654,'F14',29,_binary '',_binary '\0'),(4655,'F15',29,_binary '',_binary '\0'),(4656,'F16',29,_binary '',_binary '\0'),(4657,'G1',29,_binary '\0',_binary '\0'),(4658,'G2',29,_binary '',_binary '\0'),(4659,'G3',29,_binary '',_binary '\0'),(4660,'G4',29,_binary '',_binary '\0'),(4661,'G5',29,_binary '',_binary '\0'),(4662,'G6',29,_binary '',_binary '\0'),(4663,'G7',29,_binary '',_binary '\0'),(4664,'G8',29,_binary '',_binary '\0'),(4665,'G9',29,_binary '',_binary '\0'),(4666,'G10',29,_binary '',_binary '\0'),(4667,'G11',29,_binary '',_binary '\0'),(4668,'G12',29,_binary '',_binary '\0'),(4669,'G13',29,_binary '',_binary '\0'),(4670,'G14',29,_binary '',_binary '\0'),(4671,'G15',29,_binary '',_binary '\0'),(4672,'G16',29,_binary '\0',_binary '\0'),(4673,'H1',29,_binary '\0',_binary '\0'),(4674,'H2',29,_binary '\0',_binary '\0'),(4675,'H3',29,_binary '',_binary '\0'),(4676,'H4',29,_binary '',_binary '\0'),(4677,'H5',29,_binary '',_binary '\0'),(4678,'H6',29,_binary '',_binary '\0'),(4679,'H7',29,_binary '',_binary '\0'),(4680,'H8',29,_binary '',_binary '\0'),(4681,'H9',29,_binary '',_binary '\0'),(4682,'H10',29,_binary '',_binary '\0'),(4683,'H11',29,_binary '',_binary '\0'),(4684,'H12',29,_binary '',_binary '\0'),(4685,'H13',29,_binary '',_binary '\0'),(4686,'H14',29,_binary '',_binary '\0'),(4687,'H15',29,_binary '\0',_binary '\0'),(4688,'H16',29,_binary '\0',_binary '\0'),(4689,'A1',30,_binary '',_binary '\0'),(4690,'A2',30,_binary '',_binary '\0'),(4691,'A3',30,_binary '',_binary '\0'),(4692,'A4',30,_binary '',_binary '\0'),(4693,'A5',30,_binary '',_binary '\0'),(4694,'A6',30,_binary '',_binary '\0'),(4695,'A7',30,_binary '',_binary '\0'),(4696,'A8',30,_binary '',_binary '\0'),(4697,'A9',30,_binary '',_binary '\0'),(4698,'A10',30,_binary '',_binary '\0'),(4699,'A11',30,_binary '',_binary '\0'),(4700,'A12',30,_binary '',_binary '\0'),(4701,'A13',30,_binary '',_binary '\0'),(4702,'A14',30,_binary '',_binary '\0'),(4703,'A15',30,_binary '',_binary '\0'),(4704,'A16',30,_binary '',_binary '\0'),(4705,'B1',30,_binary '',_binary '\0'),(4706,'B2',30,_binary '',_binary '\0'),(4707,'B3',30,_binary '',_binary '\0'),(4708,'B4',30,_binary '',_binary '\0'),(4709,'B5',30,_binary '',_binary '\0'),(4710,'B6',30,_binary '',_binary '\0'),(4711,'B7',30,_binary '',_binary '\0'),(4712,'B8',30,_binary '',_binary '\0'),(4713,'B9',30,_binary '',_binary '\0'),(4714,'B10',30,_binary '',_binary '\0'),(4715,'B11',30,_binary '',_binary '\0'),(4716,'B12',30,_binary '',_binary '\0'),(4717,'B13',30,_binary '',_binary '\0'),(4718,'B14',30,_binary '',_binary '\0'),(4719,'B15',30,_binary '',_binary '\0'),(4720,'B16',30,_binary '',_binary '\0'),(4721,'C1',30,_binary '',_binary '\0'),(4722,'C2',30,_binary '',_binary '\0'),(4723,'C3',30,_binary '',_binary '\0'),(4724,'C4',30,_binary '',_binary '\0'),(4725,'C5',30,_binary '',_binary '\0'),(4726,'C6',30,_binary '',_binary '\0'),(4727,'C7',30,_binary '',_binary '\0'),(4728,'C8',30,_binary '',_binary '\0'),(4729,'C9',30,_binary '',_binary '\0'),(4730,'C10',30,_binary '',_binary '\0'),(4731,'C11',30,_binary '',_binary '\0'),(4732,'C12',30,_binary '',_binary '\0'),(4733,'C13',30,_binary '',_binary '\0'),(4734,'C14',30,_binary '',_binary '\0'),(4735,'C15',30,_binary '',_binary '\0'),(4736,'C16',30,_binary '',_binary '\0'),(4737,'D1',30,_binary '',_binary '\0'),(4738,'D2',30,_binary '',_binary '\0'),(4739,'D3',30,_binary '',_binary '\0'),(4740,'D4',30,_binary '',_binary '\0'),(4741,'D5',30,_binary '',_binary ''),(4742,'D6',30,_binary '',_binary ''),(4743,'D7',30,_binary '',_binary ''),(4744,'D8',30,_binary '',_binary ''),(4745,'D9',30,_binary '',_binary ''),(4746,'D10',30,_binary '',_binary ''),(4747,'D11',30,_binary '',_binary ''),(4748,'D12',30,_binary '',_binary ''),(4749,'D13',30,_binary '',_binary '\0'),(4750,'D14',30,_binary '',_binary '\0'),(4751,'D15',30,_binary '',_binary '\0'),(4752,'D16',30,_binary '',_binary '\0'),(4753,'E1',30,_binary '',_binary '\0'),(4754,'E2',30,_binary '',_binary '\0'),(4755,'E3',30,_binary '',_binary '\0'),(4756,'E4',30,_binary '',_binary '\0'),(4757,'E5',30,_binary '',_binary ''),(4758,'E6',30,_binary '',_binary ''),(4759,'E7',30,_binary '',_binary ''),(4760,'E8',30,_binary '',_binary ''),(4761,'E9',30,_binary '',_binary ''),(4762,'E10',30,_binary '',_binary ''),(4763,'E11',30,_binary '',_binary ''),(4764,'E12',30,_binary '',_binary ''),(4765,'E13',30,_binary '',_binary '\0'),(4766,'E14',30,_binary '',_binary '\0'),(4767,'E15',30,_binary '',_binary '\0'),(4768,'E16',30,_binary '',_binary '\0'),(4769,'F1',30,_binary '',_binary '\0'),(4770,'F2',30,_binary '',_binary '\0'),(4771,'F3',30,_binary '',_binary '\0'),(4772,'F4',30,_binary '',_binary '\0'),(4773,'F5',30,_binary '',_binary ''),(4774,'F6',30,_binary '',_binary ''),(4775,'F7',30,_binary '',_binary ''),(4776,'F8',30,_binary '',_binary ''),(4777,'F9',30,_binary '',_binary ''),(4778,'F10',30,_binary '',_binary ''),(4779,'F11',30,_binary '',_binary ''),(4780,'F12',30,_binary '',_binary ''),(4781,'F13',30,_binary '',_binary '\0'),(4782,'F14',30,_binary '',_binary '\0'),(4783,'F15',30,_binary '',_binary '\0'),(4784,'F16',30,_binary '',_binary '\0'),(4785,'G1',30,_binary '',_binary '\0'),(4786,'G2',30,_binary '',_binary '\0'),(4787,'G3',30,_binary '',_binary '\0'),(4788,'G4',30,_binary '',_binary '\0'),(4789,'G5',30,_binary '',_binary '\0'),(4790,'G6',30,_binary '',_binary '\0'),(4791,'G7',30,_binary '',_binary '\0'),(4792,'G8',30,_binary '',_binary '\0'),(4793,'G9',30,_binary '',_binary '\0'),(4794,'G10',30,_binary '',_binary '\0'),(4795,'G11',30,_binary '',_binary '\0'),(4796,'G12',30,_binary '',_binary '\0'),(4797,'G13',30,_binary '',_binary '\0'),(4798,'G14',30,_binary '',_binary '\0'),(4799,'G15',30,_binary '',_binary '\0'),(4800,'G16',30,_binary '',_binary '\0'),(4801,'H1',30,_binary '',_binary '\0'),(4802,'H2',30,_binary '',_binary '\0'),(4803,'H3',30,_binary '',_binary '\0'),(4804,'H4',30,_binary '',_binary '\0'),(4805,'H5',30,_binary '',_binary '\0'),(4806,'H6',30,_binary '',_binary '\0'),(4807,'H7',30,_binary '',_binary '\0'),(4808,'H8',30,_binary '',_binary '\0'),(4809,'H9',30,_binary '',_binary '\0'),(4810,'H10',30,_binary '',_binary '\0'),(4811,'H11',30,_binary '',_binary '\0'),(4812,'H12',30,_binary '',_binary '\0'),(4813,'H13',30,_binary '',_binary '\0'),(4814,'H14',30,_binary '',_binary '\0'),(4815,'H15',30,_binary '',_binary '\0'),(4816,'H16',30,_binary '',_binary '\0'),(4817,'A1',31,_binary '\0',_binary '\0'),(4818,'A2',31,_binary '\0',_binary '\0'),(4819,'A3',31,_binary '\0',_binary '\0'),(4820,'A4',31,_binary '',_binary '\0'),(4821,'A5',31,_binary '',_binary '\0'),(4822,'A6',31,_binary '',_binary '\0'),(4823,'A7',31,_binary '',_binary '\0'),(4824,'A8',31,_binary '',_binary '\0'),(4825,'A9',31,_binary '',_binary '\0'),(4826,'A10',31,_binary '',_binary '\0'),(4827,'A11',31,_binary '',_binary '\0'),(4828,'A12',31,_binary '',_binary '\0'),(4829,'A13',31,_binary '',_binary '\0'),(4830,'A14',31,_binary '\0',_binary '\0'),(4831,'A15',31,_binary '\0',_binary '\0'),(4832,'A16',31,_binary '\0',_binary '\0'),(4833,'B1',31,_binary '\0',_binary '\0'),(4834,'B2',31,_binary '',_binary '\0'),(4835,'B3',31,_binary '',_binary '\0'),(4836,'B4',31,_binary '',_binary '\0'),(4837,'B5',31,_binary '',_binary '\0'),(4838,'B6',31,_binary '',_binary '\0'),(4839,'B7',31,_binary '',_binary '\0'),(4840,'B8',31,_binary '',_binary '\0'),(4841,'B9',31,_binary '',_binary '\0'),(4842,'B10',31,_binary '',_binary '\0'),(4843,'B11',31,_binary '',_binary '\0'),(4844,'B12',31,_binary '',_binary '\0'),(4845,'B13',31,_binary '',_binary '\0'),(4846,'B14',31,_binary '',_binary '\0'),(4847,'B15',31,_binary '',_binary '\0'),(4848,'B16',31,_binary '\0',_binary '\0'),(4849,'C1',31,_binary '',_binary '\0'),(4850,'C2',31,_binary '',_binary '\0'),(4851,'C3',31,_binary '',_binary '\0'),(4852,'C4',31,_binary '',_binary '\0'),(4853,'C5',31,_binary '',_binary '\0'),(4854,'C6',31,_binary '',_binary '\0'),(4855,'C7',31,_binary '',_binary '\0'),(4856,'C8',31,_binary '',_binary '\0'),(4857,'C9',31,_binary '',_binary '\0'),(4858,'C10',31,_binary '',_binary '\0'),(4859,'C11',31,_binary '',_binary '\0'),(4860,'C12',31,_binary '',_binary '\0'),(4861,'C13',31,_binary '',_binary '\0'),(4862,'C14',31,_binary '',_binary '\0'),(4863,'C15',31,_binary '',_binary '\0'),(4864,'C16',31,_binary '',_binary '\0'),(4865,'D1',31,_binary '',_binary '\0'),(4866,'D2',31,_binary '',_binary '\0'),(4867,'D3',31,_binary '',_binary '\0'),(4868,'D4',31,_binary '',_binary '\0'),(4869,'D5',31,_binary '',_binary '\0'),(4870,'D6',31,_binary '',_binary '\0'),(4871,'D7',31,_binary '',_binary ''),(4872,'D8',31,_binary '',_binary '\0'),(4873,'D9',31,_binary '',_binary ''),(4874,'D10',31,_binary '',_binary '\0'),(4875,'D11',31,_binary '',_binary ''),(4876,'D12',31,_binary '',_binary '\0'),(4877,'D13',31,_binary '',_binary '\0'),(4878,'D14',31,_binary '',_binary '\0'),(4879,'D15',31,_binary '',_binary '\0'),(4880,'D16',31,_binary '',_binary '\0'),(4881,'E1',31,_binary '',_binary '\0'),(4882,'E2',31,_binary '',_binary '\0'),(4883,'E3',31,_binary '',_binary '\0'),(4884,'E4',31,_binary '',_binary '\0'),(4885,'E5',31,_binary '',_binary '\0'),(4886,'E6',31,_binary '',_binary '\0'),(4887,'E7',31,_binary '',_binary ''),(4888,'E8',31,_binary '',_binary '\0'),(4889,'E9',31,_binary '',_binary ''),(4890,'E10',31,_binary '',_binary '\0'),(4891,'E11',31,_binary '',_binary ''),(4892,'E12',31,_binary '',_binary '\0'),(4893,'E13',31,_binary '',_binary '\0'),(4894,'E14',31,_binary '',_binary '\0'),(4895,'E15',31,_binary '',_binary '\0'),(4896,'E16',31,_binary '',_binary '\0'),(4897,'F1',31,_binary '',_binary '\0'),(4898,'F2',31,_binary '',_binary '\0'),(4899,'F3',31,_binary '',_binary '\0'),(4900,'F4',31,_binary '',_binary '\0'),(4901,'F5',31,_binary '',_binary '\0'),(4902,'F6',31,_binary '',_binary '\0'),(4903,'F7',31,_binary '',_binary ''),(4904,'F8',31,_binary '',_binary '\0'),(4905,'F9',31,_binary '',_binary ''),(4906,'F10',31,_binary '',_binary '\0'),(4907,'F11',31,_binary '',_binary ''),(4908,'F12',31,_binary '',_binary '\0'),(4909,'F13',31,_binary '',_binary '\0'),(4910,'F14',31,_binary '',_binary '\0'),(4911,'F15',31,_binary '',_binary '\0'),(4912,'F16',31,_binary '',_binary '\0'),(4913,'G1',31,_binary '\0',_binary '\0'),(4914,'G2',31,_binary '',_binary '\0'),(4915,'G3',31,_binary '',_binary '\0'),(4916,'G4',31,_binary '',_binary '\0'),(4917,'G5',31,_binary '',_binary '\0'),(4918,'G6',31,_binary '',_binary '\0'),(4919,'G7',31,_binary '',_binary '\0'),(4920,'G8',31,_binary '',_binary '\0'),(4921,'G9',31,_binary '',_binary '\0'),(4922,'G10',31,_binary '',_binary '\0'),(4923,'G11',31,_binary '',_binary '\0'),(4924,'G12',31,_binary '',_binary '\0'),(4925,'G13',31,_binary '',_binary '\0'),(4926,'G14',31,_binary '',_binary '\0'),(4927,'G15',31,_binary '',_binary '\0'),(4928,'G16',31,_binary '\0',_binary '\0'),(4929,'H1',31,_binary '\0',_binary '\0'),(4930,'H2',31,_binary '\0',_binary '\0'),(4931,'H3',31,_binary '\0',_binary '\0'),(4932,'H4',31,_binary '',_binary '\0'),(4933,'H5',31,_binary '',_binary '\0'),(4934,'H6',31,_binary '',_binary '\0'),(4935,'H7',31,_binary '',_binary '\0'),(4936,'H8',31,_binary '',_binary '\0'),(4937,'H9',31,_binary '',_binary '\0'),(4938,'H10',31,_binary '',_binary '\0'),(4939,'H11',31,_binary '',_binary '\0'),(4940,'H12',31,_binary '',_binary '\0'),(4941,'H13',31,_binary '',_binary '\0'),(4942,'H14',31,_binary '\0',_binary '\0'),(4943,'H15',31,_binary '\0',_binary '\0'),(4944,'H16',31,_binary '\0',_binary '\0'),(4945,'A1',32,_binary '',_binary '\0'),(4946,'A2',32,_binary '',_binary '\0'),(4947,'A3',32,_binary '',_binary '\0'),(4948,'A4',32,_binary '',_binary '\0'),(4949,'A5',32,_binary '',_binary '\0'),(4950,'A6',32,_binary '',_binary '\0'),(4951,'A7',32,_binary '',_binary '\0'),(4952,'A8',32,_binary '',_binary '\0'),(4953,'A9',32,_binary '',_binary '\0'),(4954,'A10',32,_binary '',_binary '\0'),(4955,'A11',32,_binary '',_binary '\0'),(4956,'A12',32,_binary '',_binary '\0'),(4957,'A13',32,_binary '',_binary '\0'),(4958,'A14',32,_binary '',_binary '\0'),(4959,'A15',32,_binary '',_binary '\0'),(4960,'A16',32,_binary '',_binary '\0'),(4961,'B1',32,_binary '',_binary '\0'),(4962,'B2',32,_binary '',_binary '\0'),(4963,'B3',32,_binary '',_binary '\0'),(4964,'B4',32,_binary '',_binary '\0'),(4965,'B5',32,_binary '',_binary '\0'),(4966,'B6',32,_binary '',_binary '\0'),(4967,'B7',32,_binary '',_binary '\0'),(4968,'B8',32,_binary '',_binary '\0'),(4969,'B9',32,_binary '',_binary '\0'),(4970,'B10',32,_binary '',_binary '\0'),(4971,'B11',32,_binary '',_binary '\0'),(4972,'B12',32,_binary '',_binary '\0'),(4973,'B13',32,_binary '',_binary '\0'),(4974,'B14',32,_binary '',_binary '\0'),(4975,'B15',32,_binary '',_binary '\0'),(4976,'B16',32,_binary '',_binary '\0'),(4977,'C1',32,_binary '',_binary '\0'),(4978,'C2',32,_binary '',_binary '\0'),(4979,'C3',32,_binary '',_binary '\0'),(4980,'C4',32,_binary '',_binary '\0'),(4981,'C5',32,_binary '',_binary '\0'),(4982,'C6',32,_binary '',_binary '\0'),(4983,'C7',32,_binary '',_binary '\0'),(4984,'C8',32,_binary '',_binary '\0'),(4985,'C9',32,_binary '',_binary '\0'),(4986,'C10',32,_binary '',_binary '\0'),(4987,'C11',32,_binary '',_binary '\0'),(4988,'C12',32,_binary '',_binary '\0'),(4989,'C13',32,_binary '',_binary '\0'),(4990,'C14',32,_binary '',_binary '\0'),(4991,'C15',32,_binary '',_binary '\0'),(4992,'C16',32,_binary '',_binary '\0'),(4993,'D1',32,_binary '',_binary '\0'),(4994,'D2',32,_binary '',_binary '\0'),(4995,'D3',32,_binary '',_binary '\0'),(4996,'D4',32,_binary '',_binary '\0'),(4997,'D5',32,_binary '',_binary '\0'),(4998,'D6',32,_binary '',_binary '\0'),(4999,'D7',32,_binary '',_binary '\0'),(5000,'D8',32,_binary '',_binary '\0'),(5001,'D9',32,_binary '',_binary '\0'),(5002,'D10',32,_binary '',_binary '\0'),(5003,'D11',32,_binary '',_binary '\0'),(5004,'D12',32,_binary '',_binary '\0'),(5005,'D13',32,_binary '',_binary '\0'),(5006,'D14',32,_binary '',_binary '\0'),(5007,'D15',32,_binary '',_binary '\0'),(5008,'D16',32,_binary '',_binary '\0'),(5009,'E1',32,_binary '',_binary '\0'),(5010,'E2',32,_binary '',_binary '\0'),(5011,'E3',32,_binary '',_binary '\0'),(5012,'E4',32,_binary '',_binary '\0'),(5013,'E5',32,_binary '',_binary '\0'),(5014,'E6',32,_binary '',_binary '\0'),(5015,'E7',32,_binary '',_binary ''),(5016,'E8',32,_binary '',_binary ''),(5017,'E9',32,_binary '',_binary ''),(5018,'E10',32,_binary '',_binary ''),(5019,'E11',32,_binary '',_binary ''),(5020,'E12',32,_binary '',_binary '\0'),(5021,'E13',32,_binary '',_binary '\0'),(5022,'E14',32,_binary '',_binary '\0'),(5023,'E15',32,_binary '',_binary '\0'),(5024,'E16',32,_binary '',_binary '\0'),(5025,'F1',32,_binary '',_binary '\0'),(5026,'F2',32,_binary '',_binary '\0'),(5027,'F3',32,_binary '',_binary '\0'),(5028,'F4',32,_binary '',_binary '\0'),(5029,'F5',32,_binary '',_binary '\0'),(5030,'F6',32,_binary '',_binary '\0'),(5031,'F7',32,_binary '',_binary '\0'),(5032,'F8',32,_binary '',_binary '\0'),(5033,'F9',32,_binary '',_binary '\0'),(5034,'F10',32,_binary '',_binary '\0'),(5035,'F11',32,_binary '',_binary '\0'),(5036,'F12',32,_binary '',_binary '\0'),(5037,'F13',32,_binary '',_binary '\0'),(5038,'F14',32,_binary '',_binary '\0'),(5039,'F15',32,_binary '',_binary '\0'),(5040,'F16',32,_binary '',_binary '\0'),(5041,'G1',32,_binary '\0',_binary '\0'),(5042,'G2',32,_binary '',_binary '\0'),(5043,'G3',32,_binary '',_binary '\0'),(5044,'G4',32,_binary '',_binary '\0'),(5045,'G5',32,_binary '',_binary '\0'),(5046,'G6',32,_binary '',_binary '\0'),(5047,'G7',32,_binary '',_binary '\0'),(5048,'G8',32,_binary '',_binary '\0'),(5049,'G9',32,_binary '',_binary '\0'),(5050,'G10',32,_binary '',_binary '\0'),(5051,'G11',32,_binary '',_binary '\0'),(5052,'G12',32,_binary '',_binary '\0'),(5053,'G13',32,_binary '',_binary '\0'),(5054,'G14',32,_binary '',_binary '\0'),(5055,'G15',32,_binary '',_binary '\0'),(5056,'G16',32,_binary '\0',_binary '\0'),(5057,'H1',32,_binary '\0',_binary '\0'),(5058,'H2',32,_binary '\0',_binary '\0'),(5059,'H3',32,_binary '',_binary '\0'),(5060,'H4',32,_binary '',_binary '\0'),(5061,'H5',32,_binary '',_binary '\0'),(5062,'H6',32,_binary '',_binary '\0'),(5063,'H7',32,_binary '',_binary '\0'),(5064,'H8',32,_binary '',_binary '\0'),(5065,'H9',32,_binary '',_binary '\0'),(5066,'H10',32,_binary '',_binary '\0'),(5067,'H11',32,_binary '',_binary '\0'),(5068,'H12',32,_binary '',_binary '\0'),(5069,'H13',32,_binary '',_binary '\0'),(5070,'H14',32,_binary '',_binary '\0'),(5071,'H15',32,_binary '\0',_binary '\0'),(5072,'H16',32,_binary '\0',_binary '\0');
/*!40000 ALTER TABLE seat ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS ticket;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE ticket (
  id int NOT NULL AUTO_INCREMENT,
  qr_imageurl varchar(255) DEFAULT NULL,
  bill_id int DEFAULT NULL,
  schedule_id int NOT NULL,
  seat_id int NOT NULL,
  PRIMARY KEY (id),
  KEY FKf9rrxu78kmw44u3xfarqpaa2r (bill_id),
  KEY FKdmmaqgvu0kjjlpsivmgnvurl5 (schedule_id),
  KEY FKqahao9a85drt47ikjp0b8syvh (seat_id),
  CONSTRAINT FKdmmaqgvu0kjjlpsivmgnvurl5 FOREIGN KEY (schedule_id) REFERENCES `schedule` (id) ON DELETE CASCADE,
  CONSTRAINT FKf9rrxu78kmw44u3xfarqpaa2r FOREIGN KEY (bill_id) REFERENCES bill (id) ON DELETE CASCADE,
  CONSTRAINT FKqahao9a85drt47ikjp0b8syvh FOREIGN KEY (seat_id) REFERENCES seat (id) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES ticket WRITE;
/*!40000 ALTER TABLE ticket DISABLE KEYS */;
INSERT INTO ticket VALUES (128,'https://scontent-sin6-2.xx.fbcdn.net/v/t1.15752-9/268794058_655331555823095_3657556108194277679_n.png?_nc_cat=105&ccb=1-5&_nc_sid=ae9488&_nc_ohc=BrNXGO8HufkAX_OGjWc&_nc_ht=scontent-sin6-2.xx&oh=03_AVK_zaJj7pziY9nLrVqoIQJAzbomu4KPgED1PxFFpYfCrQ&oe=61F778D8',90,49,4189),(129,'https://scontent-sin6-2.xx.fbcdn.net/v/t1.15752-9/268794058_655331555823095_3657556108194277679_n.png?_nc_cat=105&ccb=1-5&_nc_sid=ae9488&_nc_ohc=BrNXGO8HufkAX_OGjWc&_nc_ht=scontent-sin6-2.xx&oh=03_AVK_zaJj7pziY9nLrVqoIQJAzbomu4KPgED1PxFFpYfCrQ&oe=61F778D8',90,49,4188);
/*!40000 ALTER TABLE ticket ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS user;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  id int NOT NULL AUTO_INCREMENT,
  full_name varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  phone varchar(255) DEFAULT NULL,
  username varchar(255) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY UK_sb8bbouer5wak8vyiiy4pf2bx (username)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES user WRITE;
/*!40000 ALTER TABLE user DISABLE KEYS */;
INSERT INTO user VALUES (4,'Hieu Minh Admin','$2a$10$Vdh/3KR3VjtYrEeceDdu4u9LOj1aR79AeAiHn8FYwgzHdj7A4tyGi','0763735425','hieudepzai345@gmail.com'),(29,'ADMIN','$2a$12$p2uMeAwUCjJLxZ78QC67bOn/iqiPmqkW6nlYqxhSyj.m5zDcLMe1W',NULL,'admin@gmail.com'),(50,'quay','$2a$10$q0tpne695ylFWIthEkgA.u6kfeoRqb1hOIv.0OhZylaV.JrFugcLK','0748946515','anhemnhaquay113@gmail.com'),(53,'Hiếu ĐZ','$2a$10$nznp7iKBYDCyS59V92A1X.f4rsMjLWfu03KegZ3CEMuxXXYPxV28a','07637354245','stuntara123@gmail.com'),(54,'user1','$2a$10$145NkbJ1rLrg/g5X1tclXe2EICTXbGtkCwbKI.TvmCF2r4M9kYoFe','0763735424','user1@gmail.com');
/*!40000 ALTER TABLE user ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS users_roles;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE users_roles (
  user_id int NOT NULL,
  role_id int NOT NULL,
  PRIMARY KEY (user_id,role_id),
  KEY FKj6m8fwv7oqv74fcehir1a9ffy (role_id),
  CONSTRAINT FKgd3iendaoyh04b95ykqise6qh FOREIGN KEY (user_id) REFERENCES `user` (id),
  CONSTRAINT FKj6m8fwv7oqv74fcehir1a9ffy FOREIGN KEY (role_id) REFERENCES roles (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES users_roles WRITE;
/*!40000 ALTER TABLE users_roles DISABLE KEYS */;
INSERT INTO users_roles VALUES (4,1),(29,1),(50,1),(53,1),(54,1),(4,2),(29,2);
/*!40000 ALTER TABLE users_roles ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-03  2:12:56
