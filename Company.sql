Create DATABASE company 
Go

use company
Go


CREATE TABLE emp (       empid INT(11) NOT NULL,
                         lastname VARCHAR(20),
                         firstname VARCHAR(10),
                         title VARCHAR(40),
                         titleofcourtesy VARCHAR(25),
                         birthdate DATETIME,
                         hiredate DATETIME,
                         address VARCHAR(60),
                         city VARCHAR(15),
                         region VARCHAR(15),
                         postalcode VARCHAR(10),
                         country VARCHAR(10),
                         phone VARCHAR(24),
                         mgrid INT(11),
                         PRIMARY KEY (empid),
                         FOREIGN KEY (mgrid) REFERENCES emp(empid) ON DELETE CASCADE) ;
                         
 INSERT INTO emp(empid, lastname,firstname, title, titleofcourtesy,birthdate,hiredate,address,city,region,postalcode,country,phone,mgrid) VALUES (11, "Tanuan", "Meyer", "mgr","MR","1980-11-15","2010-04-21","12 Oakridge cres., Kitchener","Kitchener","Ontario","N2A 0E4","Canada","202-414-8895",NULL);   
 INSERT INTO emp(empid, lastname,firstname, title, titleofcourtesy,birthdate,hiredate,address,city,region,postalcode,country,phone,mgrid) VALUES (12, "Ross", "Mark","mgr" ,"MR","1985-08-22","2011-12-01","11-402 Mohawk ave., Waterloo","Waterloo","Ontario","N2J 3X2","Canada","269-841-2333",11);   
 INSERT INTO emp(empid, lastname,firstname, title, titleofcourtesy,birthdate,hiredate,address,city,region,postalcode,country,phone,mgrid) VALUES (13, "Radisic", "Edy","emp","MR","1987-03-07","2000-02-08","11 Chandler drive, Kitchener","Kitchener","Ontario","N2A 0E2","Canada","212-404-1195",12);   
 INSERT INTO emp(empid, lastname,firstname, title, titleofcourtesy,birthdate,hiredate,address,city,region,postalcode,country,phone,mgrid) VALUES (14, "Stoltchnev", "Alex", "mgr","MR","1982-07-01","2012-06-17","11-202 Glenridge drive, Waterloo","Waterloo","Ontario","N2A 0A9","Canada","223-672-8695",12);   
 INSERT INTO emp(empid, lastname,firstname, title, titleofcourtesy,birthdate,hiredate,address,city,region,postalcode,country,phone,mgrid) VALUES (15, "Sutherland", "Steve","emp" ,"MR","1971-05-22","1998-07-22","145 Heidi ave., Cambridge","Cambridge","Ontario","N1P 0A1","Canada","212-561-1643",11);                            

SELECT * FROM ordd;

create table ship(
				  shipperid INT(11),
                  companyname VARCHAR(40),
                  phone VARCHAR(24),
                  PRIMARY KEY (shipperid));
                 
INSERT INTO ship(shipperid, companyname, phone) VALUES(21,"FedEx", "231-444-1243");  
INSERT INTO ship(shipperid, companyname, phone) VALUES(22,"DHL","356-865-4596");  
INSERT INTO ship(shipperid, companyname, phone) VALUES(23,"CanadaPost","758-624-9562");  
INSERT INTO ship(shipperid, companyname, phone) VALUES(24,"BlueDart","458-854-8542");  
INSERT INTO ship(shipperid, companyname, phone) VALUES(25,"UPS","463-847-1195");   

SELECT * FROM ship             

create table cust(
					   custid INT(11) NOT null,
                       companyname varchar(40) ,
    		           contactname varchar(30) ,
    		           contacttitle varchar(30),
                       address varchar(60),
                       city varchar(15)  ,
                       Region varchar(15) ,
                       postalcode varchar(10),
                       Country varchar(15),
                       phone varchar(24),
                       fax varchar(24),
                       PRIMARY KEY (custid));
                       
 
  
INSERT INTO  cust VALUES (31, "Kaiser", "Dan", "MR", "12 Whitney Drive,Kitchener","Waterloo","Kitchener","N2J3X2","Canada","222-444-8695","958-785-8412");
INSERT INTO  cust VALUES (32, "Ericsson", "John", "MR", "1115 Oakcrossing drive , London","London","London","N3K5X2","Canada","223-122-8559","958-785-2575");
INSERT INTO  cust VALUES (33, "Capgemini", "Brown", "MR", "202 Courtis Ave. , Kitchener","Waterloo","Kitchener","N2V3X2","Canada","222-345-8685","995-796-8412");
INSERT INTO  cust VALUES (34, "SAP", "Peter", "MR", "121 Becking Street , Kitchener","Toronto","Toronto","N2J5B2","Canada","222-262-5487","958-785-8112");
INSERT INTO  cust VALUES (35, "D2L", "Jack", "MR","21-157 Bondridge Ave., Kitchener","Waterloo","Kitchener","N5S3X6","Canada","212-121-3539","998-785-8412");
                  
create table sup(
				 supplierid INT(11),
                 companyname VARCHAR(40),
                 contactname VARCHAR(30),
                 contacttitle VARCHAR(30),
                 address VARCHAR(60),
                 city VARCHAR(15),
                 region VARCHAR(15),
                 postalcode VARCHAR(10),
                 country VARCHAR(15),
                 phone VARCHAR(24),
                 fax VARCHAR(24),
                 PRIMARY KEY (supplierid));
                 
INSERT INTO sup(supplierid, companyname, contactname, contacttitle,address,city,region,postalcode, country, phone, fax) VALUES (41,"Sony","Martin","MR","115 Gordon Baker Rd", "North York","Ontario","N1X 2BY","Canada","416-499-1414","909-542-1414");  
INSERT INTO sup(supplierid, companyname, contactname, contacttitle,address,city,region,postalcode, country, phone, fax) VALUES (42,"Philips","Doug","MR","281 Hillmount Rd", "Markham","Ontario","N5C 6DA","Canada","888-744-5477","909-744-5477");  
INSERT INTO sup(supplierid, companyname, contactname, contacttitle,address,city,region,postalcode, country, phone, fax) VALUES (43,"Sanyo","Norm","MR"," 33 Industrial Dr", "Elmira","Ontario","N8D 0CW ","Canada","519-669-1591","909-669-1591");  
INSERT INTO sup(supplierid, companyname, contactname, contacttitle,address,city,region,postalcode, country, phone, fax) VALUES (44,"Samsung","Todd","MR","2050 Derry Rd W", "Mississauga","N9S 1XU","Ontario","Canada","800-726-7864","909-726-7864");  
INSERT INTO sup(supplierid, companyname, contactname, contacttitle,address,city,region,postalcode, country, phone, fax) VALUES (45,"Blackberry","Wong","MR","2200 University Avenue East","N8E 3NU", "Waterloo","Ontario","Canada","519-888-7465","909-888-7465");                 

                  
CREATE TABLE cat(      categoryid INT(11) NOT NULL,
                       categoryname VARCHAR(40),
                       description VARCHAR(200),
                       PRIMARY KEY (categoryid));
                       
INSERT INTO cat(categoryid, categoryname, description) VALUES(51,"Mobile Phones","Purchase smartphones of all major brands");    
INSERT INTO cat(categoryid, categoryname, description) VALUES(52,"Laptops","Find the laptop of your desired specification"); 
INSERT INTO cat(categoryid, categoryname, description) VALUES(53,"Projectors","Find the latest innovative projectors from major brands"); 
INSERT INTO cat(categoryid, categoryname, description) VALUES(54,"Television sets","Choose from the huge list of LCD,LED or OLED technology driven televisions"); 
INSERT INTO cat(categoryid, categoryname, description) VALUES(55,"WiFi Routers","Find all varieties of wired/wireless WiFi routers");                    
       


create table ord( orderid INT(11) not NULL,
                  custid INT(11),
                  empid INT(11),
                  orderdate DATETIME,
                  requireddate DATETIME,
                  shippeddate DATETIME,
                  shipperid INT(11),
                  freight DOUBLE,
                  shipname VARCHAR(40),
                  shipaddress VARCHAR(60),
                  shipcity VARCHAR(15),
                  shipregion VARCHAR(15),
                  shippostalcode VARCHAR(10),
                  shipcountry VARCHAR(15),
                  PRIMARY KEY (orderid));
                  
ALTER TABLE ord
ADD FOREIGN KEY (shipperid) REFERENCES ship(shipperid),
ADD FOREIGN KEY (empid) REFERENCES emp(empid),
ADD FOREIGN KEY (custid) REFERENCES cust(custid)
ON DELETE CASCADE;

INSERT INTO ord(orderid, custid, empid, orderdate, requireddate,shippeddate,shipperid,freight,shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry ) VALUES(61,31,11,"2019-01-15","2019-01-20","2019-01-17",21,25865,"Dan","12 Whitney Drive,Kitchener","Waterloo","Kitchener","N2J3X2","Canada");
INSERT INTO ord(orderid, custid, empid, orderdate, requireddate,shippeddate,shipperid,freight,shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry ) VALUES(62,32,12,"2019-01-20","2019-01-26","2019-01-23",22,84756,"John","1115 Oakcrossing drive , London","London","London","N3K5X2","Canada");
INSERT INTO ord(orderid, custid, empid, orderdate, requireddate,shippeddate,shipperid,freight,shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry ) VALUES(63,33,13,"2019-01-18","2019-01-23","2019-01-21",23,61576,"Brown","202 Courtis Ave. , Kitchener","Waterloo","Kitchener","N2V3X2","Canada");
INSERT INTO ord(orderid, custid, empid, orderdate, requireddate,shippeddate,shipperid,freight,shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry ) VALUES(64,34,14,"2019-01-21","2019-01-25","2019-01-23",24,95735,"Peter","121 Becking Street , Kitchener","Toronto","Toronto","N2J5B2","Canada");
INSERT INTO ord(orderid, custid, empid, orderdate, requireddate,shippeddate,shipperid,freight,shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry ) VALUES(65,35,15,"2019-01-16","2019-01-20","2019-01-18",25,74195,"Jack","21-157 Bondridge Ave., Kitchener","Waterloo","Kitchener","N5S3X6","Canada");

create table prod(
				  productid INT(11),
                  productname VARCHAR(40),
                  supplierid INT(11),
                  categoryid INT(11),
                  unitprice DOUBLE,
                  discontinued BIT(1),
                  PRIMARY KEY (productid));
                  
                  
                  
ALTER TABLE prod
ADD FOREIGN KEY (supplierid) REFERENCES sup(supplierid),
ADD FOREIGN KEY (categoryid) REFERENCES cat(categoryid)
ON DELETE CASCADE;	

INSERT INTO prod(productid,productname,supplierid,categoryid,unitprice,discontinued) VALUES(71,"Samsung 55 inch 4K QLED Tizen Smart TV",44,54,1500.00,0);
INSERT INTO prod(productid,productname,supplierid,categoryid,unitprice,discontinued) VALUES(72,"Sony VPLHW45ES 1080p 3D SXRD Projector",41,53,2798.00,0);
INSERT INTO prod(productid,productname,supplierid,categoryid,unitprice,discontinued) VALUES(73,"Blackberry Key 2 LE",45,51,600.00,0);
INSERT INTO prod(productid,productname,supplierid,categoryid,unitprice,discontinued) VALUES(74,"Sanyo Core i5 7th Gen laptop",43,52,700.00,0);
INSERT INTO prod(productid,productname,supplierid,categoryid,unitprice,discontinued) VALUES(75,"Philips Wireless router",42,55,250.00,0);

create table ordd(   orderid INT(11) not NULL,
                     productid INT(11),
                     unitprice double,
                     qty SMALLINT(6),
                     discount DECIMAL(4,3));
                     
ALTER TABLE ordd 
ADD FOREIGN KEY (orderid) REFERENCES ord(orderid),
ADD FOREIGN KEY (productid) REFERENCES prod(productid) ON DELETE CASCADE;  

INSERT INTO ordd(orderid,productid,unitprice,qty,discount) VALUES(61,71,1500.00,1,9.000);
INSERT INTO ordd(orderid,productid,unitprice,qty,discount) VALUES(62,72,2798.00,1,8.000);              
INSERT INTO ordd(orderid,productid,unitprice,qty,discount) VALUES(63,73,600.00,1,5.000);
INSERT INTO ordd(orderid,productid,unitprice,qty,discount) VALUES(64,74,700.00,1,3.000);
INSERT INTO ordd(orderid,productid,unitprice,qty,discount) VALUES(65,75,250.00,1,2.000);


   SELECT
    CONCAT(table_name, '.', column_name) AS 'foreign key',
    CONCAT(referenced_table_name, '.', referenced_column_name) AS 'references',
    constraint_name AS 'constraint name'
FROM
    information_schema.key_column_usage
WHERE
    referenced_table_name IS NOT NULL;
    
		


  

             
                     
                     
                     
                     

