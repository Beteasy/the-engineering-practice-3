use kaoqin;
insert into attendance values(2016001001,'小小',2,1,1,'2019-12-04 19:37:00','2019-12-04 20:37:00',1);
insert into attendance values(2017001001,'小李',1,1,1,'2019-12-04 19:37:00','2019-12-04 20:37:00',1);
insert into attendance values(2017001002,'小皮',1,1,2,'2019-12-04 19:37:00','2019-12-04 20:37:00',1);
insert into attendance values(2017001003,'小强',1,1,3,'2019-12-04 19:37:00','2019-12-04 20:37:00',1);
insert into attendance(stuNo,stuName,grade,classId,courNo,arriveTime,leaveTime) values(2017001001,'小李',1,1,2,'2019-12-05 8:20:00','2019-12-05 9:05:00');
insert into attendance(stuNo,stuName,grade,classId,courNo,arriveTime,leaveTime) values(2017001001,'小张',1,1,3,'2019-12-06 9:05:00','2019-12-06 10:00:00');
insert into attendance(stuNo,stuName,grade,classId,courNo,arriveTime,leaveTime) values(2017001001,'小张',1,1,1,'2019-12-06 11:15:00','2019-12-06 12:00:00');
insert into attendance(stuNo,stuName,grade,classId,courNo,arriveTime,leaveTime) values(2017001001,'小栋',1,1,4,'2019-12-07 10:20:00','2019-12-07 11:05:00');
insert into attendance(stuNo,stuName,grade,classId,courNo,arriveTime,leaveTime) values(2017001001,'小李',1,1,3,'2019-12-06 9:05:00','2019-12-06 10:00:00');
insert into attendance(stuNo,stuName,grade,classId,courNo,arriveTime,leaveTime) values(2017001001,'小李',1,1,4,'2019-12-07 10:20:00','2019-12-07 11:05:00');
insert into attendance(stuNo,stuName,grade,classId,courNo,arriveTime,leaveTime) values(2017001001,'小李',1,1,1,'2019-12-09 8:20:00','2019-12-05 9:05:00');


select * from student;
select * from attendance;
select * from attendance where grade=2 and arriveTime like '%2019-12-04%' and courNo=1;
select * from attendance where grade=1 and arriveTime like '%2019-12-04%' and courNo=1;
