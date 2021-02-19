CREATE  DATABASE HMS_55470
USE HMS_55470;
CREATE TABLE DOCTOR_MASTER(doctor_id Varchar(15) PRIMARY KEY NOT NULL ,doctor_name VARCHAR (30) NOT NULL, Dept VARCHAR (30) NOT NULL );
insert into DOCTOR_MASTER values('D0001','Ram','ENT'),(
'D0002','Ranjan','ENT'),('D0003','Smita','Eye'),('D0004','Bhavan','Surgery');
select * from doctor_master;
insert into DOCTOR_MASTER values('D0005','Sheela','Surgery'),('D0006',
'Nethra','Surgery');
CREATE TABLE ROOM_MASTER(room_no Varchar(15) PRIMARY KEY NOT NULL ,room_type VARCHAR (30) NOT NULL, room_status VARCHAR (30) NOT NULL );
insert into ROOM_MASTER values('R0001','AC','occupied'),('R0002','Suite','vacant'),
('R0003','NonAc','vacant'),('R0004','NonAC','occupied'),
('R0005','AC','vacant'),('R0006','AC','occupied');

CREATE TABLE PATIENT_MASTER(pid Varchar(15) PRIMARY KEY NOT 
NULL , p_name VARCHAR(15) NOT NULL  , age integer NOT NULL , weight integer NOT 
NULL, Gender VARCHAR (10) NOT NULL ,
 Address VARCHAR (50) NOT NULL, phoneno VARCHAR (10) NOT NULL
 ,Disease VARCHAR (50) NOT NULL,doctor_id Varchar(5),
 CONSTRAINT f_k FOREIGN KEY (doctor_id) REFERENCES
 DOCTOR_MASTER(doctor_id));
 insert into PATIENT_MASTER values('P0001','Gita',35,65,'F','Chennai',9867145678,
 'Eye infection','D0003'),('P0002','Ashish',40,70,'M','Delhi',9845675678,'Asthma','D0003'),
 ('P0003','Radha',25,60,'F','Chennai',986716678,'Pain in heart','D0005'),
 ('P0004','Chandra',28,55,'F','Bangalore',9978675567,'Asthma','D0001'),
 ('P0005','Goyal',42,65,'M','Delhi',8967533223,'Pain in stomach','D0004');
 
 CREATE TABLE ROOM_ALLOCATION(room_no Varchar(15) ,pid VARCHAR(15) , 
 admission_date date NOT NULL , Release_date date,
 CONSTRAINT  FOREIGN KEY (room_no) REFERENCES room_master(room_no),
 CONSTRAINT  FOREIGN KEY (pid) REFERENCES PATIENT_MASTER(pid));
 insert into room_allocation values('R0001','P0001','2016-10-15','2016-10-26');
 select * from room_allocation;
 insert into room_allocation values('R0002','P0002','2016-11-15','2016-11-26'),
 ('R0002','P0003','2016-12-01','2016-12-30'),('R0004','P0001','2017-01-01','2017-01-30');
 
 

SELECT ROOM_ALLOCATION.pid, p_name,admission_date
FROM PATIENT_MASTER
INNER JOIN ROOM_ALLOCATION ON PATIENT_MASTER.pid = ROOM_ALLOCATION.pid where
month(admission_date)='01';

 select * from PATIENT_MASTER where Gender='F' and Disease not in('Asthma');
 
 select count(pid),Gender from PATIENT_MASTER group by Gender;
 
 SELECT PATIENT_MASTER.pid,p_name,PATIENT_MASTER.doctor_id,doctor_name,room_no,
 admission_date,room_type
FROM
    PATIENT_MASTER
INNER JOIN DOCTOR_MASTER 
    USING (doctor_id)
INNER JOIN ROOM_ALLOCATION
    USING (pid)
 INNER JOIN  room_master
      USING (room_no);
      
 SELECT room_no from room_master where room_no not in (select room_no from ROOM_ALLOCATION);

SELECT room_no,room_type from room_master where room_no  in (select room_no from ROOM_ALLOCATION group by room_no having count(room_no)>=2 );
 
 
  
 