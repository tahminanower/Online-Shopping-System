DROP TABLE ORDERS;
DROP TABLE USERS;
DROP TABLE PRODUCTS;


-- 1.1 User Table
CREATE TABLE USERS (
    USERID INT GENERATED BY DEFAULT ON NULL AS IDENTITY,
    USERNAME VARCHAR2(50) UNIQUE,
    PASSWORD VARCHAR2(50),
    ROLE VARCHAR2(10),
    FULLNAME VARCHAR2(100),
    EMAIL VARCHAR2(100),
    ADDRESS VARCHAR2(255),
    PRIMARY KEY (USERID)
);


-- 1.2 Product Table
CREATE TABLE PRODUCTS (
    PRODUCTID INT GENERATED BY DEFAULT ON NULL AS IDENTITY,
    NAME VARCHAR2(100),
    PRICE FLOAT,
    QUANTITY INT,
    PRIMARY KEY (PRODUCTID), 
	CATEGORY VARCHAR2(100) NOT NULL, 
	DESCRIPTION VARCHAR2(200)
);



-- 1.5 Order Table
CREATE TABLE ORDERS (
    ORDERID INT GENERATED BY DEFAULT ON NULL AS IDENTITY,
    USERID INT,
    PRODUCTID INT,
    QUANTITY INT,
    ORDERDATE DATE,
    PRIMARY KEY (ORDERID),
    FOREIGN KEY (USERID) REFERENCES USERS(USERID),
    FOREIGN KEY (PRODUCTID) REFERENCES PRODUCTS(PRODUCTID)
);


INSERT INTO PRODUCTS (NAME, PRICE, QUANTITY, CATEGORY, DESCRIPTION) VALUES ('Niko Air Max', 899.0, 60, 'MENS', 'Classic style, ultimate comfort.');
INSERT INTO PRODUCTS (NAME, PRICE, QUANTITY, CATEGORY, DESCRIPTION) VALUES ('Niko Air Force 1', 1400.0, 60, 'MENS', 'Iconic design, everyday wear.');
INSERT INTO PRODUCTS (NAME, PRICE, QUANTITY, CATEGORY, DESCRIPTION) VALUES ('Niko Air Max 90', 799, 60, 'LADIES', 'Timeless style, maximum cushioning.');
INSERT INTO PRODUCTS (NAME, PRICE, QUANTITY, CATEGORY, DESCRIPTION) VALUES ('Niko Air Max 97', 159.0, 60, 'KIDS', 'Sleek design, futuristic flair.');
INSERT INTO PRODUCTS (NAME, PRICE, QUANTITY, CATEGORY, DESCRIPTION) VALUES ('Niko Air Max 270', 149.0, 60, 'KIDS', 'Maximum comfort, modern aesthetics.');
INSERT INTO PRODUCTS (NAME, PRICE, QUANTITY, CATEGORY, DESCRIPTION) VALUES ('Niko Men''s Air Max Systm', 139.0, 60, 'LADIES', 'Dynamic support, bold style.');
INSERT INTO PRODUCTS (NAME, PRICE, QUANTITY, CATEGORY, DESCRIPTION) VALUES ('Niko Air Force 1 ''07', 129.0, 60, 'LADIES', 'Classic hoops style, premium feel.');
INSERT INTO PRODUCTS (NAME, PRICE, QUANTITY, CATEGORY, DESCRIPTION) VALUES ('Niko Men''s Air Max 1 Slide', 79.0, 60, 'MENS', 'Slip-on comfort, stylish flair.');
INSERT INTO PRODUCTS (NAME, PRICE, QUANTITY, CATEGORY, DESCRIPTION) VALUES ('Niko Air Flex Pro', 249.99, 60, 'MEN', 'Flexible performance for athletes.');
INSERT INTO PRODUCTS (NAME, PRICE, QUANTITY, CATEGORY, DESCRIPTION) VALUES ('Niko Quantum Shift Turbo', 799.99, 60,  'MEN', 'Turbocharged energy return.');
INSERT INTO PRODUCTS (NAME, PRICE, QUANTITY, CATEGORY, DESCRIPTION) VALUES ('Niko FusionGlide AeroLite', 329.99, 60, 'MEN', 'AeroLite technology for smooth strides.');
INSERT INTO PRODUCTS (NAME, PRICE, QUANTITY, CATEGORY, DESCRIPTION) VALUES ('Niko Kids SwiftMotion Elite', 99.99, 60, 'KID', 'Elite comfort for active kids.');
INSERT INTO PRODUCTS (NAME, PRICE, QUANTITY, CATEGORY, DESCRIPTION) VALUES ('Niko QuantumGlide Boost Junior',  60, 179.99, 'KID', 'Boost technology for young athletes.');
INSERT INTO PRODUCTS (NAME, PRICE, QUANTITY, CATEGORY, DESCRIPTION) VALUES ('Niko FreeFlow Stride Kids', 69.99, 60, 'KID', 'Natural motion for playful adventures.');
INSERT INTO PRODUCTS (NAME, PRICE, QUANTITY, CATEGORY, DESCRIPTION) VALUES ('Niko SolarPulse Precision Women', 179.99, 60,  'LADIES', 'Precision fit with SolarPulse cushioning.');
INSERT INTO PRODUCTS (NAME, PRICE, QUANTITY, CATEGORY, DESCRIPTION) VALUES ('Niko InfinityFit PrecisionX Women', 249.99, 60,  'LADIES', 'X-series precision for stylish comfort.');
INSERT INTO PRODUCTS (NAME, PRICE, QUANTITY, CATEGORY, DESCRIPTION) VALUES ('Niko AirZoom Fusion X Women', 199.99, 60, 'LADIES', 'Fusion X design for active women.');

COMMIT;





