INSERT INTO petEvent(petname, eventdate, eventtype, remark)
VALUES ('Fluffy', '2020-10-15', 'vet', 'antibiotics'),
       ('Hammy', '2020-10-15', 'vet', 'antibiotics');

INSERT INTO petEvent(petname, eventdate, eventtype, remark)
VALUES ('Fluffy', '1995-05-15', 'litter', '5 kittens, 2 male'),
       ('Claws', '1997-08-03', 'vet', 'broken rib'),
       ('Puffball', '2020-09-01', 'death', NULL);

DELETE FROM petPet WHERE owner = 'Harold'
