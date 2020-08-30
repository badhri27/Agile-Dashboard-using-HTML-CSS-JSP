CREATE TABLE `meeting` (
  `meetingid` int NOT NULL,
  `meetingtitle` varchar(45) NOT NULL,
  `meetingdate` varchar(45) NOT NULL,
  `meetingnote1` varchar(265) NOT NULL,
  `meetingnote2` varchar(265) NOT NULL,
  `meetingnote3` varchar(265) NOT NULL,
  PRIMARY KEY (`meetingid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci