-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-06-12 20:14:29.112

-- tables
-- Table: t1
CREATE TABLE t1 (
    id int4range  NOT NULL,
    CONSTRAINT t1_pk PRIMARY KEY (id)
);

-- Table: t2
CREATE TABLE t2 (
    id int  NOT NULL,
    t1_id int4range  NOT NULL,
    CONSTRAINT t2_pk PRIMARY KEY (id)
);

-- Table: t3
CREATE TABLE t3 (
    id int  NOT NULL,
    CONSTRAINT t3_pk PRIMARY KEY (id)
);

-- Table: t4
CREATE TABLE t4 (
    id int  NOT NULL,
    t1_id int  NOT NULL,
    CONSTRAINT t4_pk PRIMARY KEY (id)
);

-- Table: t5
CREATE TABLE t5 (
    id int  NOT NULL,
    CONSTRAINT t5_pk PRIMARY KEY (id)
);

-- Table: t6
CREATE TABLE t6 (
    id int  NOT NULL,
    t5_id int  NOT NULL,
    CONSTRAINT t6_pk PRIMARY KEY (id)
);

-- Table: t7
CREATE TABLE t7 (
    id int  NOT NULL,
    CONSTRAINT t7_pk PRIMARY KEY (id)
);

-- Table: t8
CREATE TABLE t8 (
    id int  NOT NULL,
    t7_id int  NOT NULL,
    CONSTRAINT t8_pk PRIMARY KEY (id)
);

-- Table: t9
CREATE TABLE t9 (
    c1 int  NOT NULL,
    c2 bigint  NOT NULL,
    c3 varchar(30)  NOT NULL,
    c4 char(30)  NOT NULL,
    c5 date  NOT NULL,
    c6 time  NOT NULL,
    c7 timestamp  NOT NULL,
    c8 text  NOT NULL,
    c9 bytea  NOT NULL,
    c10 json  NOT NULL,
    c11 boolean  NOT NULL,
    CONSTRAINT t9_pk PRIMARY KEY (c1)
);

-- foreign keys
-- Reference: t2_t1 (table: t2)
ALTER TABLE t2 ADD CONSTRAINT t2_t1
    FOREIGN KEY (t1_id)
    REFERENCES t1 (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: t3_t4 (table: t4)
ALTER TABLE t4 ADD CONSTRAINT t3_t4
    FOREIGN KEY (t1_id)
    REFERENCES t3 (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: t6_t5 (table: t6)
ALTER TABLE t6 ADD CONSTRAINT t6_t5
    FOREIGN KEY (t5_id)
    REFERENCES t5 (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: t8_t7 (table: t8)
ALTER TABLE t8 ADD CONSTRAINT t8_t7
    FOREIGN KEY (t7_id)
    REFERENCES t7 (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

