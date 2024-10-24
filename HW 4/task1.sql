CREATE TABLE petPet (
    petname varchar(255),
    owner varchar(255),
    species varchar(255),
    gender varchar(255,)
    birth DATE,
    death DATE,
    PRIMARY KEY (petname) 
);

CREATE TABLE petEvent (
    petname varchar(255),
    eventdate DATE,
    eventtype varchar(255),
    remark varchar(255)
    FOREIGN KEY (petname)
    PRIMARY KEY (petname, eventdate)
);