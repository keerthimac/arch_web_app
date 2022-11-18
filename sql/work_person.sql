create database arch_database;


CREATE TABLE work_person(
    work_person_id INT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    nick_name VARCHAR(50),
    PRIMARY KEY (work_person_id)
);

CREATE TABLE telephone_number_type(
    telephone_number_type_id INT NOT NULL,
    telephone_number_type VARCHAR(50) NOT NULL,
    PRIMARY KEY (telephone_number_type_id)
);

CREATE TABLE work_person_telephone(
    work_person_id INT NOT NULL,
    telephone VARCHAR(50) NOT NULL,
    telephone_number_type_id INT NOT NULL,
    PRIMARY KEY (work_person_id, telephone),
    FOREIGN KEY (work_person_id) REFERENCES work_person(work_person_id),
    FOREIGN KEY (telephone_number_type_id) REFERENCES telephone_number_type(telephone_number_type_id)
);


