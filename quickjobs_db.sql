-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-05-15 04:53:03.543

-- tables
-- Table: H_Request
CREATE TABLE H_Request (
    Id_Request serial  NOT NULL,
    Begin_Date timestamp  NOT NULL,
    End_Date timestamp  NOT NULL,
    Begin_Hour time  NOT NULL,
    End_Hour time  NOT NULL,
    Hours int  NOT NULL,
    Price_Hour decimal(10,5)  NOT NULL,
    Total_Price decimal(10,5)  NOT NULL,
    qj_Reuest_Status int  NOT NULL,
    qj_Request_tx_user varchar(500)  NOT NULL,
    qj_Request_tx_host varchar(500)  NOT NULL,
    qj_Request_tx_date timestamp  NOT NULL,
    CONSTRAINT H_Request_pk PRIMARY KEY (Id_Request)
);

-- Table: H_Request_Payment
CREATE TABLE H_Request_Payment (
    Id_Request_Payment serial  NOT NULL,
    qj_Request_Payment_Status int  NOT NULL,
    qj_Request_Payment_tx_user varchar(500)  NOT NULL,
    qj_Request_Payment_tx_host varchar(500)  NOT NULL,
    qj_Request_Payment_tx_date timestamp  NOT NULL,
    CONSTRAINT H_Request_Payment_pk PRIMARY KEY (Id_Request_Payment)
);

-- Table: H_of_qj_City
CREATE TABLE H_of_qj_City (
    id_City serial  NOT NULL,
    City varchar(500)  NOT NULL,
    qj_City_Status int  NOT NULL,
    qj_City_tx_user varchar(500)  NOT NULL,
    qj_City_tx_host varchar(500)  NOT NULL,
    qj_City_tx_date timestamp  NOT NULL,
    CONSTRAINT H_of_qj_City_pk PRIMARY KEY (id_City)
);

-- Table: H_qj_Address
CREATE TABLE H_qj_Address (
    Id_Address serial  NOT NULL,
    qj_Person_Id_Person int  NOT NULL,
    Street varchar(500)  NOT NULL,
    Avenue varchar(500)  NOT NULL,
    Neighbor varchar(500)  NOT NULL,
    Number varchar(50)  NOT NULL,
    Floor varchar(50)  NOT NULL,
    Apartment_Number varchar(50)  NOT NULL,
    "References" varchar(1000)  NOT NULL,
    qj_Address_Status int  NOT NULL,
    qj_Address_tx_user varchar(500)  NOT NULL,
    qj_Address_tx_host varchar(500)  NOT NULL,
    qj_Address_tx_date timestamp  NOT NULL,
    CONSTRAINT H_qj_Address_pk PRIMARY KEY (Id_Address)
);

-- Table: H_qj_Address_City
CREATE TABLE H_qj_Address_City (
    qj_Id_Address_City varchar(500)  NOT NULL,
    qj_Address_City_Status int  NOT NULL,
    qj_Address_City_tx_user varchar(500)  NOT NULL,
    qj_Address_City_tx_host varchar(500)  NOT NULL,
    qj_Address_City_tx_date timestamp  NOT NULL,
    CONSTRAINT H_qj_Address_City_pk PRIMARY KEY (qj_Id_Address_City)
);

-- Table: H_qj_Contract
CREATE TABLE H_qj_Contract (
    Id_Contract serial  NOT NULL,
    Contract varchar(5000)  NOT NULL,
    Date timestamp  NOT NULL,
    Hour time  NOT NULL,
    Signature_Customer varchar(500)  NOT NULL,
    Signature_Worker varchar(500)  NOT NULL,
    qj_Contract_Status int  NOT NULL,
    qj_Contract_tx_user varchar(500)  NOT NULL,
    qj_Contract_tx_host varchar(500)  NOT NULL,
    qj_Contract_tx_date timestamp  NOT NULL,
    CONSTRAINT H_qj_Contract_pk PRIMARY KEY (Id_Contract)
);

-- Table: H_qj_Country
CREATE TABLE H_qj_Country (
    id_Country serial  NOT NULL,
    Country varchar(500)  NOT NULL,
    Country_Area_Code varchar(500)  NOT NULL,
    qj_Country_Status int  NOT NULL,
    qj_Country_tx_user varchar(500)  NOT NULL,
    qj_Country_tx_host varchar(500)  NOT NULL,
    qj_Country_tx_date timestamp  NOT NULL,
    CONSTRAINT H_qj_Country_pk PRIMARY KEY (id_Country)
);

-- Table: H_qj_Documents
CREATE TABLE H_qj_Documents (
    Id_Docuement serial  NOT NULL,
    DNI_Front varchar(500)  NOT NULL,
    DNI_Back varchar(500)  NOT NULL,
    Licence_Front varchar(500)  NOT NULL,
    Licence_Back varchar(500)  NOT NULL,
    Photo_Profile varchar(500)  NOT NULL,
    qj_Documents_Status int  NOT NULL,
    qj_Documents_tx_user varchar(500)  NOT NULL,
    qj_Documents_tx_host varchar(500)  NOT NULL,
    qj_Documents_tx_date timestamp  NOT NULL,
    CONSTRAINT H_qj_Documents_pk PRIMARY KEY (Id_Docuement)
);

-- Table: H_qj_Group
CREATE TABLE H_qj_Group (
    Id_group serial  NOT NULL,
    "Group" varchar(200)  NOT NULL,
    qj_Group_Status int  NOT NULL,
    qj_Group_tx_user varchar(500)  NOT NULL,
    qj_Group_tx_host varchar(500)  NOT NULL,
    qj_Group_tx_date timestamp  NOT NULL,
    CONSTRAINT H_qj_Group_pk PRIMARY KEY (Id_group)
);

-- Table: H_qj_Group_Person
CREATE TABLE H_qj_Group_Person (
    Id_Person_Group serial  NOT NULL,
    qj_Status int  NOT NULL,
    qj_tx_user varchar(500)  NOT NULL,
    qj_tx_host varchar(500)  NOT NULL,
    qj_tx_date timestamp  NOT NULL,
    CONSTRAINT H_qj_Group_Person_pk PRIMARY KEY (Id_Person_Group)
);

-- Table: H_qj_Payment
CREATE TABLE H_qj_Payment (
    Id_Payment serial  NOT NULL,
    Paymet varchar(500)  NOT NULL,
    qj_Payment_Status int  NOT NULL,
    qj_Payment_tx_user varchar(500)  NOT NULL,
    qj_Payment_tx_host varchar(500)  NOT NULL,
    qj_Payment_tx_date timestamp  NOT NULL,
    CONSTRAINT H_qj_Payment_pk PRIMARY KEY (Id_Payment)
);

-- Table: H_qj_Person
CREATE TABLE H_qj_Person (
    Id_Person serial  NOT NULL,
    Names varchar(500)  NOT NULL,
    Surnames varchar(500)  NOT NULL,
    Birth_of_Day varchar(500)  NOT NULL,
    Dni int  NOT NULL,
    Img_Profile varchar(500)  NOT NULL,
    Cellphone varchar(500)  NOT NULL,
    qj_Person_Status int  NOT NULL,
    qj_Person_tx_user varchar(500)  NOT NULL,
    qj_Person_tx_host varchar(500)  NOT NULL,
    qj_Person_tx_date timestamp  NOT NULL,
    CONSTRAINT H_qj_Person_pk PRIMARY KEY (Id_Person)
);

-- Table: H_qj_Person_Request
CREATE TABLE H_qj_Person_Request (
    Id_Person_Request serial  NOT NULL,
    qj_Person_Request_Status int  NOT NULL,
    qj_Person_Request_tx_user varchar(500)  NOT NULL,
    qj_Person_Request_tx_host varchar(500)  NOT NULL,
    qj_Person_Request_tx_date timestamp  NOT NULL,
    CONSTRAINT H_qj_Person_Request_pk PRIMARY KEY (Id_Person_Request)
);

-- Table: H_qj_Quality
CREATE TABLE H_qj_Quality (
    id_Quality serial  NOT NULL,
    Quality varchar(500)  NOT NULL,
    Comment varchar(500)  NOT NULL,
    qj_Quality_Status int  NOT NULL,
    qj_Quality_tx_user varchar(500)  NOT NULL,
    qj_Quality_tx_host varchar(500)  NOT NULL,
    qj_Quality_tx_date timestamp  NOT NULL,
    CONSTRAINT H_qj_Quality_pk PRIMARY KEY (id_Quality)
);

-- Table: H_qj_Request_Quality
CREATE TABLE H_qj_Request_Quality (
    Id_Reques_Quality serial  NOT NULL,
    qj_Request_Quality_Status int  NOT NULL,
    qj_Request_Quality_tx_user varchar(500)  NOT NULL,
    qj_Request_Quality_tx_host varchar(500)  NOT NULL,
    qj_Request_Quality_tx_date timestamp  NOT NULL,
    CONSTRAINT H_qj_Request_Quality_pk PRIMARY KEY (Id_Reques_Quality)
);

-- Table: H_qj_Rol
CREATE TABLE H_qj_Rol (
    id_Rol serial  NOT NULL,
    Rol varchar(500)  NOT NULL,
    qj_Rol_Status int  NOT NULL,
    qj_Rol_tx_user varchar(500)  NOT NULL,
    qj_Rol_tx_host varchar(500)  NOT NULL,
    qj_Rol_tx_date timestamp  NOT NULL,
    CONSTRAINT H_qj_Rol_pk PRIMARY KEY (id_Rol)
);

-- Table: H_qj_Rol_Group
CREATE TABLE H_qj_Rol_Group (
    Id_Group_Rol serial  NOT NULL,
    qj_Rol_Group_Status int  NOT NULL,
    qj_Rol_Group_tx_user varchar(500)  NOT NULL,
    qj_Rol_Group_tx_host varchar(500)  NOT NULL,
    qj_Rol_Group_tx_date timestamp  NOT NULL,
    CONSTRAINT H_qj_Rol_Group_pk PRIMARY KEY (Id_Group_Rol)
);

-- Table: H_qj_Service
CREATE TABLE H_qj_Service (
    Id_Service serial  NOT NULL,
    Service varchar(500)  NOT NULL,
    Price_Hour decimal(20,15)  NOT NULL,
    ImageIcon varchar(500)  NOT NULL,
    qj_Service_Status int  NOT NULL,
    qj_Service_tx_user varchar(500)  NOT NULL,
    qj_Service_tx_host varchar(500)  NOT NULL,
    qj_Service_tx_date timestamp  NOT NULL,
    CONSTRAINT H_qj_Service_pk PRIMARY KEY (Id_Service)
);

-- Table: H_qj_Service_Request
CREATE TABLE H_qj_Service_Request (
    Id_Service_Request serial  NOT NULL,
    qj_Service_Request_Status int  NOT NULL,
    qj_Service_Request_tx_user varchar(500)  NOT NULL,
    qj_Service_Request_tx_host varchar(500)  NOT NULL,
    qj_Service_Request_tx_date timestamp  NOT NULL,
    CONSTRAINT H_qj_Service_Request_pk PRIMARY KEY (Id_Service_Request)
);

-- Table: Hf_qj_User
CREATE TABLE Hf_qj_User (
    Id_User serial  NOT NULL,
    "User" varchar(500)  NOT NULL,
    Password varchar(500)  NOT NULL,
    qj_User_Status int  NOT NULL,
    qj_User_tx_user varchar(500)  NOT NULL,
    qj_User_tx_host varchar(500)  NOT NULL,
    qj_User_tx_date timestamp  NOT NULL,
    CONSTRAINT Hf_qj_User_pk PRIMARY KEY (Id_User)
);

-- Table: qj_Address
CREATE TABLE qj_Address (
    Id_Address serial  NOT NULL,
    Street varchar(500)  NOT NULL,
    Avenue varchar(500)  NOT NULL,
    Neighbor varchar(500)  NOT NULL,
    Number varchar(50)  NOT NULL,
    Floor varchar(50)  NOT NULL,
    Apartment_Number varchar(50)  NOT NULL,
    "References" varchar(1000)  NOT NULL,
    qj_Address_Status int  NOT NULL,
    qj_Address_tx_user varchar(500)  NOT NULL,
    qj_Address_tx_host varchar(500)  NOT NULL,
    qj_Address_tx_date timestamp  NOT NULL,
    qj_Person_Id_Person int  NOT NULL,
    CONSTRAINT qj_Address_pk PRIMARY KEY (Id_Address)
);

-- Table: qj_Address_City
CREATE TABLE qj_Address_City (
    qj_Id_Address_City varchar(500)  NOT NULL,
    qj_Address_City_Status int  NOT NULL,
    qj_Address_City_tx_user varchar(500)  NOT NULL,
    qj_Address_City_tx_host varchar(500)  NOT NULL,
    qj_Address_City_tx_date timestamp  NOT NULL,
    qj_Address_Id_Address int  NOT NULL,
    qj_City_id_City int  NOT NULL,
    CONSTRAINT qj_Address_City_pk PRIMARY KEY (qj_Id_Address_City)
);

-- Table: qj_City
CREATE TABLE qj_City (
    id_City serial  NOT NULL,
    City varchar(500)  NOT NULL,
    qj_City_Status int  NOT NULL,
    qj_City_tx_user varchar(500)  NOT NULL,
    qj_City_tx_host varchar(500)  NOT NULL,
    qj_City_tx_date timestamp  NOT NULL,
    CONSTRAINT qj_City_pk PRIMARY KEY (id_City)
);

-- Table: qj_Contract
CREATE TABLE qj_Contract (
    Id_Contract serial  NOT NULL,
    Contract varchar(5000)  NOT NULL,
    Date timestamp  NOT NULL,
    Hour time  NOT NULL,
    Signature_Customer varchar(500)  NOT NULL,
    Signature_Worker varchar(500)  NOT NULL,
    qj_Contract_Status int  NOT NULL,
    qj_Contract_tx_user varchar(500)  NOT NULL,
    qj_Contract_tx_host varchar(500)  NOT NULL,
    qj_Contract_tx_date timestamp  NOT NULL,
    qj_Request_Id_Request int  NOT NULL,
    CONSTRAINT qj_Contract_pk PRIMARY KEY (Id_Contract)
);

-- Table: qj_Country
CREATE TABLE qj_Country (
    id_Country serial  NOT NULL,
    Country varchar(500)  NOT NULL,
    Country_Area_Code varchar(500)  NOT NULL,
    qj_Country_Status int  NOT NULL,
    qj_Country_tx_user varchar(500)  NOT NULL,
    qj_Country_tx_host varchar(500)  NOT NULL,
    qj_Country_tx_date timestamp  NOT NULL,
    CONSTRAINT qj_Country_pk PRIMARY KEY (id_Country)
);

-- Table: qj_Documents
CREATE TABLE qj_Documents (
    Id_Docuement serial  NOT NULL,
    DNI_Front varchar(500)  NOT NULL,
    DNI_Back varchar(500)  NOT NULL,
    Licence_Front varchar(500)  NOT NULL,
    Licence_Back varchar(500)  NOT NULL,
    Photo_Profile varchar(500)  NOT NULL,
    qj_Documents_Status int  NOT NULL,
    qj_Documents_tx_user varchar(500)  NOT NULL,
    qj_Documents_tx_host varchar(500)  NOT NULL,
    qj_Documents_tx_date timestamp  NOT NULL,
    CONSTRAINT qj_Documents_pk PRIMARY KEY (Id_Docuement)
);

-- Table: qj_Group
CREATE TABLE qj_Group (
    Id_group serial  NOT NULL,
    "Group" varchar(200)  NOT NULL,
    qj_Group_Status int  NOT NULL,
    qj_Group_tx_user varchar(500)  NOT NULL,
    qj_Group_tx_host varchar(500)  NOT NULL,
    qj_Group_tx_date timestamp  NOT NULL,
    CONSTRAINT qj_Group_pk PRIMARY KEY (Id_group)
);

-- Table: qj_Group_Person
CREATE TABLE qj_Group_Person (
    Id_Person_Group serial  NOT NULL,
    qj_Status int  NOT NULL,
    qj_tx_user varchar(500)  NOT NULL,
    qj_tx_host varchar(500)  NOT NULL,
    qj_tx_date timestamp  NOT NULL,
    qj_Person_Id_Person int  NOT NULL,
    qj_Group_Id_group int  NOT NULL,
    CONSTRAINT qj_Group_Person_pk PRIMARY KEY (Id_Person_Group)
);

-- Table: qj_Payment
CREATE TABLE qj_Payment (
    Id_Payment serial  NOT NULL,
    Paymet varchar(500)  NOT NULL,
    qj_Payment_Status int  NOT NULL,
    qj_Payment_tx_user varchar(500)  NOT NULL,
    qj_Payment_tx_host varchar(500)  NOT NULL,
    qj_Payment_tx_date timestamp  NOT NULL,
    CONSTRAINT qj_Payment_pk PRIMARY KEY (Id_Payment)
);

-- Table: qj_Person
CREATE TABLE qj_Person (
    Id_Person serial  NOT NULL,
    Names varchar(500)  NOT NULL,
    Surnames varchar(500)  NOT NULL,
    Birth_of_Day varchar(500)  NOT NULL,
    Dni int  NOT NULL,
    Img_Profile varchar(500)  NOT NULL,
    Cellphone varchar(500)  NOT NULL,
    qj_Person_Status int  NOT NULL,
    qj_Person_tx_user varchar(500)  NOT NULL,
    qj_Person_tx_host varchar(500)  NOT NULL,
    qj_Person_tx_date timestamp  NOT NULL,
    qj_Documents_Id_Docuement int  NOT NULL,
    qj_User_Id_User int  NOT NULL,
    CONSTRAINT qj_Person_pk PRIMARY KEY (Id_Person)
);

-- Table: qj_Person_Request
CREATE TABLE qj_Person_Request (
    Id_Person_Request serial  NOT NULL,
    qj_Person_Request_Status int  NOT NULL,
    qj_Person_Request_tx_user varchar(500)  NOT NULL,
    qj_Person_Request_tx_host varchar(500)  NOT NULL,
    qj_Person_Request_tx_date timestamp  NOT NULL,
    qj_Person_Id_Person int  NOT NULL,
    qj_Request_Id_Request int  NOT NULL,
    CONSTRAINT qj_Person_Request_pk PRIMARY KEY (Id_Person_Request)
);

-- Table: qj_Quality
CREATE TABLE qj_Quality (
    id_Quality serial  NOT NULL,
    Quality varchar(500)  NOT NULL,
    Comment varchar(500)  NOT NULL,
    qj_Quality_Status int  NOT NULL,
    qj_Quality_tx_user varchar(500)  NOT NULL,
    qj_Quality_tx_host varchar(500)  NOT NULL,
    qj_Quality_tx_date timestamp  NOT NULL,
    CONSTRAINT qj_Quality_pk PRIMARY KEY (id_Quality)
);

-- Table: qj_Request
CREATE TABLE qj_Request (
    Id_Request serial  NOT NULL,
    Begin_Date timestamp  NOT NULL,
    End_Date timestamp  NOT NULL,
    Begin_Hour time  NOT NULL,
    End_Hour time  NOT NULL,
    Hours int  NOT NULL,
    Price_Hour decimal(10,5)  NOT NULL,
    Total_Price decimal(10,5)  NOT NULL,
    qj_Reuest_Status int  NOT NULL,
    qj_Request_tx_user varchar(500)  NOT NULL,
    qj_Request_tx_host varchar(500)  NOT NULL,
    qj_Request_tx_date timestamp  NOT NULL,
    CONSTRAINT qj_Request_pk PRIMARY KEY (Id_Request)
);

-- Table: qj_Request_Payment
CREATE TABLE qj_Request_Payment (
    Id_Request_Payment serial  NOT NULL,
    qj_Request_Payment_Status int  NOT NULL,
    qj_Request_Payment_tx_user varchar(500)  NOT NULL,
    qj_Request_Payment_tx_host varchar(500)  NOT NULL,
    qj_Request_Payment_tx_date timestamp  NOT NULL,
    qj_Payment_Id_Payment int  NOT NULL,
    qj_Request_Id_Request int  NOT NULL,
    CONSTRAINT qj_Request_Payment_pk PRIMARY KEY (Id_Request_Payment)
);

-- Table: qj_Request_Quality
CREATE TABLE qj_Request_Quality (
    Id_Reques_Quality serial  NOT NULL,
    qj_Request_Quality_Status int  NOT NULL,
    qj_Request_Quality_tx_user varchar(500)  NOT NULL,
    qj_Request_Quality_tx_host varchar(500)  NOT NULL,
    qj_Request_Quality_tx_date timestamp  NOT NULL,
    qj_Request_Id_Request int  NOT NULL,
    qj_Quality_id_Quality int  NOT NULL,
    CONSTRAINT qj_Request_Quality_pk PRIMARY KEY (Id_Reques_Quality)
);

-- Table: qj_Rol
CREATE TABLE qj_Rol (
    id_Rol serial  NOT NULL,
    Rol varchar(500)  NOT NULL,
    qj_Rol_Status int  NOT NULL,
    qj_Rol_tx_user varchar(500)  NOT NULL,
    qj_Rol_tx_host varchar(500)  NOT NULL,
    qj_Rol_tx_date timestamp  NOT NULL,
    CONSTRAINT qj_Rol_pk PRIMARY KEY (id_Rol)
);

-- Table: qj_Rol_Group
CREATE TABLE qj_Rol_Group (
    Id_Group_Rol serial  NOT NULL,
    qj_Rol_Group_Status int  NOT NULL,
    qj_Rol_Group_tx_user varchar(500)  NOT NULL,
    qj_Rol_Group_tx_host varchar(500)  NOT NULL,
    qj_Rol_Group_tx_date timestamp  NOT NULL,
    qj_Group_Id_group int  NOT NULL,
    qj_Rol_id_Rol int  NOT NULL,
    CONSTRAINT qj_Rol_Group_pk PRIMARY KEY (Id_Group_Rol)
);

-- Table: qj_Service
CREATE TABLE qj_Service (
    Id_Service serial  NOT NULL,
    Service varchar(500)  NOT NULL,
    Price_Hour decimal(20,15)  NOT NULL,
    ImageIcon varchar(500)  NOT NULL,
    qj_Service_Status int  NOT NULL,
    qj_Service_tx_user varchar(500)  NOT NULL,
    qj_Service_tx_host varchar(500)  NOT NULL,
    qj_Service_tx_date timestamp  NOT NULL,
    CONSTRAINT qj_Service_pk PRIMARY KEY (Id_Service)
);

-- Table: qj_Service_Request
CREATE TABLE qj_Service_Request (
    Id_Service_Request serial  NOT NULL,
    qj_Service_Request_Status int  NOT NULL,
    qj_Service_Request_tx_user varchar(500)  NOT NULL,
    qj_Service_Request_tx_host varchar(500)  NOT NULL,
    qj_Service_Request_tx_date timestamp  NOT NULL,
    qj_Service_Id_Service int  NOT NULL,
    qj_Request_Id_Request int  NOT NULL,
    CONSTRAINT qj_Service_Request_pk PRIMARY KEY (Id_Service_Request)
);

-- Table: qj_User
CREATE TABLE qj_User (
    Id_User serial  NOT NULL,
    "User" varchar(500)  NOT NULL,
    Password varchar(500)  NOT NULL,
    qj_User_Status int  NOT NULL,
    qj_User_tx_user varchar(500)  NOT NULL,
    qj_User_tx_host varchar(500)  NOT NULL,
    qj_User_tx_date timestamp  NOT NULL,
    CONSTRAINT qj_User_pk PRIMARY KEY (Id_User)
);

-- foreign keys
-- Reference: qj_Address_City_qj_Address (table: qj_Address_City)
ALTER TABLE qj_Address_City ADD CONSTRAINT qj_Address_City_qj_Address
    FOREIGN KEY (qj_Address_Id_Address)
    REFERENCES qj_Address (Id_Address)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: qj_Address_City_qj_City (table: qj_Address_City)
ALTER TABLE qj_Address_City ADD CONSTRAINT qj_Address_City_qj_City
    FOREIGN KEY (qj_City_id_City)
    REFERENCES qj_City (id_City)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: qj_Address_qj_Person (table: qj_Address)
ALTER TABLE qj_Address ADD CONSTRAINT qj_Address_qj_Person
    FOREIGN KEY (qj_Person_Id_Person)
    REFERENCES qj_Person (Id_Person)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: qj_Contract_qj_Request (table: qj_Contract)
ALTER TABLE qj_Contract ADD CONSTRAINT qj_Contract_qj_Request
    FOREIGN KEY (qj_Request_Id_Request)
    REFERENCES qj_Request (Id_Request)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: qj_Group_Person_qj_Group (table: qj_Group_Person)
ALTER TABLE qj_Group_Person ADD CONSTRAINT qj_Group_Person_qj_Group
    FOREIGN KEY (qj_Group_Id_group)
    REFERENCES qj_Group (Id_group)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: qj_Group_Person_qj_Person (table: qj_Group_Person)
ALTER TABLE qj_Group_Person ADD CONSTRAINT qj_Group_Person_qj_Person
    FOREIGN KEY (qj_Person_Id_Person)
    REFERENCES qj_Person (Id_Person)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: qj_Person_Request_qj_Person (table: qj_Person_Request)
ALTER TABLE qj_Person_Request ADD CONSTRAINT qj_Person_Request_qj_Person
    FOREIGN KEY (qj_Person_Id_Person)
    REFERENCES qj_Person (Id_Person)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: qj_Person_Request_qj_Request (table: qj_Person_Request)
ALTER TABLE qj_Person_Request ADD CONSTRAINT qj_Person_Request_qj_Request
    FOREIGN KEY (qj_Request_Id_Request)
    REFERENCES qj_Request (Id_Request)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: qj_Person_qj_Documents (table: qj_Person)
ALTER TABLE qj_Person ADD CONSTRAINT qj_Person_qj_Documents
    FOREIGN KEY (qj_Documents_Id_Docuement)
    REFERENCES qj_Documents (Id_Docuement)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: qj_Person_qj_User (table: qj_Person)
ALTER TABLE qj_Person ADD CONSTRAINT qj_Person_qj_User
    FOREIGN KEY (qj_User_Id_User)
    REFERENCES qj_User (Id_User)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: qj_Request_Payment_qj_Payment (table: qj_Request_Payment)
ALTER TABLE qj_Request_Payment ADD CONSTRAINT qj_Request_Payment_qj_Payment
    FOREIGN KEY (qj_Payment_Id_Payment)
    REFERENCES qj_Payment (Id_Payment)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: qj_Request_Payment_qj_Request (table: qj_Request_Payment)
ALTER TABLE qj_Request_Payment ADD CONSTRAINT qj_Request_Payment_qj_Request
    FOREIGN KEY (qj_Request_Id_Request)
    REFERENCES qj_Request (Id_Request)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: qj_Request_Quality_qj_Quality (table: qj_Request_Quality)
ALTER TABLE qj_Request_Quality ADD CONSTRAINT qj_Request_Quality_qj_Quality
    FOREIGN KEY (qj_Quality_id_Quality)
    REFERENCES qj_Quality (id_Quality)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: qj_Request_Quality_qj_Request (table: qj_Request_Quality)
ALTER TABLE qj_Request_Quality ADD CONSTRAINT qj_Request_Quality_qj_Request
    FOREIGN KEY (qj_Request_Id_Request)
    REFERENCES qj_Request (Id_Request)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: qj_Rol_Group_qj_Group (table: qj_Rol_Group)
ALTER TABLE qj_Rol_Group ADD CONSTRAINT qj_Rol_Group_qj_Group
    FOREIGN KEY (qj_Group_Id_group)
    REFERENCES qj_Group (Id_group)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: qj_Rol_Group_qj_Rol (table: qj_Rol_Group)
ALTER TABLE qj_Rol_Group ADD CONSTRAINT qj_Rol_Group_qj_Rol
    FOREIGN KEY (qj_Rol_id_Rol)
    REFERENCES qj_Rol (id_Rol)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: qj_Service_Request_qj_Request (table: qj_Service_Request)
ALTER TABLE qj_Service_Request ADD CONSTRAINT qj_Service_Request_qj_Request
    FOREIGN KEY (qj_Request_Id_Request)
    REFERENCES qj_Request (Id_Request)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: qj_Service_Request_qj_Service (table: qj_Service_Request)
ALTER TABLE qj_Service_Request ADD CONSTRAINT qj_Service_Request_qj_Service
    FOREIGN KEY (qj_Service_Id_Service)
    REFERENCES qj_Service (Id_Service)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

