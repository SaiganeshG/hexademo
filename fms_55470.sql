create database fms_55470

Use fms_55470

create table Passenger(passenger_id varchar(30) PRIMARY KEY NOT NULL ,
passenger_name varchar(30) NOT NULL,passenger_email  varchar(30) NOT NULL,
passenger_dob date NOT NULL)

CREATE TABLE Flight(Flight_id varchar(15) PRIMARY KEY NOT NULL, flightsource varchar(15) NOT NULL,flightdest varchar(15) NOT NULL,flightdate varchar(15) NOT NULL,flightseat varchar(15) NOT NULL,ticketcost varchar(15) NOT NULL);

CREATE TABLE Booking(booking_id Varchar(15) unique NOT NULL,
bookdate date not null ,Flight_id varchar (10),
CONSTRAINT  FOREIGN KEY (Flight_id) REFERENCES Flight(Flight_id));

CREATE TABLE booking_details(booking_id varchar(15),passenger_id varchar(15),
CONSTRAINT  FOREIGN KEY (booking_id) REFERENCES Booking(booking_id),
CONSTRAINT  FOREIGN KEY (passenger_id) REFERENCES Passenger(passenger_id));



INSERT INTO passenger VALUES ('P0001', 'Ram', 'Ram@gmail.com', '1980-12-01');
INSERT INTO passenger  VALUES ('P0002', 'Rajan', 'Rajan@gmail.com', '1939-09-11');
INSERT INTO passenger VALUES ('P0003', 'Smita', 'Smita@gmail.com', '1988-02-06');
INSERT INTO passenger VALUES ('P0004', 'Bhavan', 'Bhavan@gmail.com', '1973-09-18');
INSERT INTO passenger VALUES ('P0005', 'Sheela', 'Sheela@gmail.com', '1976-05-09');
INSERT INTO passenger VALUES ('P0006', 'Nethra', 'Nethra@gmail.com', '1955-09-08');

INSERT INTO Flight VALUES ('F0001', 'Kolkatta', 'Hyderbad', '2012-12-01', '100', '2000');
INSERT INTO Flight VALUES ('F0002', 'Chennai', 'Hyderbad', '2012-12-02', '100', '3000');
INSERT INTO Flight VALUES ('F0003', 'Pune', 'Kolkatta', '2012-12-02', '100', '2500');
INSERT INTO Flight VALUES ('F0004', 'Banglaore', 'Pune', '2012-11-18', '100', '2300');
INSERT INTO Flight VALUES ('F0005', 'Hyderbad', 'Bangalore', '2012-04-09', '100', '2600');
INSERT INTO Flight VALUES ('F0006', 'Pune', 'Hyderbad', '2012-08-08', '100', '3500');
INSERT INTO Flight VALUES ('F0007', 'Pune', 'Kolkatta', '2012-12-04', '100', '2900');
INSERT INTO Flight VALUES ('F0008', 'Kolkatta', 'Hyderbad', '2012-12-06', '100', '3500');

INSERT INTO Booking VALUES ('B0001', '2012-12-01', 'F0001');
INSERT INTO Booking VALUES ('B0002', '2012-12-02', 'F0004');
INSERT INTO Booking VALUES ('B0003', '2012-12-03', 'F0005');
INSERT INTO Booking VALUES ('B0004', '2012-12-04', 'F0003');
INSERT INTO Booking VALUES ('B0005', '2012-12-02', 'F0001');
INSERT INTO Booking VALUES ('B0006', '2012-12-02', 'F0004');
INSERT INTO Booking VALUES ('B0007', '2016-12-02', 'F0003');

INSERT INTO booking_details VALUES ('B0001', 'P0001');
INSERT INTO booking_details VALUES ('B0001', 'P0002');
INSERT INTO booking_details VALUES ('B0001', 'P0003');
INSERT INTO booking_details VALUES ('B0002','P0004');
INSERT INTO booking_details VALUES ('B0002', 'P0005');
INSERT INTO booking_details VALUES ('B0003', 'P0006');
INSERT INTO booking_details VALUES ('B0003', 'P0001');
INSERT INTO booking_details VALUES ('B0004','P0002');
INSERT INTO booking_details VALUES ('B0005','P0003');

select passenger_name from Passenger where passenger_name like '_e%';

select passenger_name from Passenger where Passenger_dob=

  (select max(passenger_dob) max from Passenger);
  
  Select  count(*) no_of_flights  from Flight where flightsource="Kolkatta";

select flight_id,count(*) NO_OF_BOOKINGS from Booking group by flight_id;









