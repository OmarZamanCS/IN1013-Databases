CREATE TABLE petPet (
    petname varchar(20),
    owner varchar(255),
    species varchar(1),
    gender varchar(255),
    birth DATE,
    death DATE,
    PRIMARY KEY (petname) 
);

CREATE TABLE petEvent (
    petname varchar(20),
    eventdate DATE,
    eventtype varchar(40),
    remark varchar(255),
    FOREIGN KEY (petname) REFERENCES petPet(petname),
    PRIMARY KEY (petname, eventdate)
);