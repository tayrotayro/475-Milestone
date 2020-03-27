DROP TABLE IF EXISTS Trains, Stations, Schedules, Conductors, PassengerSchedule, Passengers;


Create Table PassengerSchedule 
(
    scheduleID varchar(6) Not Null,
    passengerID varchar(6) Not Null,
    PRIMARY Key(scheduleID,passengerID)
);

Create Table Conductors 
(
    conductorID VARCHAR(6) Not Null,
    fullName VARCHAR(40) Not Null,
    age INTEGER,
    certificationLevel VARCHAR(40),
    PRIMARY KEY(conductorID)
);

Create Table Trains
(
    trainID VARCHAR(6) Not Null,
    scheduleID VARCHAR(6), 
    trainType VARCHAR(30), 
    PRIMARY KEY (trainID)
   -- CONSTRAINT FK_constr_1 FOREIGN KEY (scheduleID) REFERENCES Schedules(scheduleID)
);


Create Table Stations 
(
    stationID VARCHAR(6) Not Null,
    city VARCHAR(40),
    stateAbr VARCHAR(2),
    trainID varchar(6) not null,
    PRIMARY KEY (stationID)
   -- CONSTRAINT FK_constr_2 FOREIGN KEY (trainID) REFERENCES Trains(trainID)
);



Create Table Passengers 
(
    /*CONSTRAINT FK_constr_3 FOREIGN KEY (trainID) REFERENCES Trains(trainID)*/
    passengerID varchar(6) Not Null,
    trainID varchar(6),
    fullName varchar(40),
    age INTEGER,
    PRIMARY KEY(passengerID) 
);



Create Table Schedules 
(
    scheduleID varchar(6) Not Null,
    trainID varchar(6) Not Null,
    startLocation varchar(40) Not Null,
    endLocation varchar(40),
    finalDestination varchar(40) Not Null,
    startTime DateTime,
    conductorID varchar(6),
    passengerID varchar(6)
   -- CONSTRAINT FK_constr_4 FOREIGN KEY (trainID) REFERENCES Trains(trainID),
   -- CONSTRAINT FK_constr_5 FOREIGN KEY (startLocation) REFERENCES Stations(stationID),
   -- CONSTRAINT FK_constr_6 FOREIGN KEY (endLocation) REFERENCES Stations(stationID),
   -- CONSTRAINT FK_constr_7 FOREIGN KEY (finalDestination) REFERENCES Stations(stationID),
   -- CONSTRAINT FK_constr_8 FOREIGN KEY (conductorID) REFERENCES Conductors(conductorID),
   -- CONSTRAINT FK_constr_9 FOREIGN KEY (passengerID) REFERENCES Passengers(passengerID)

);
