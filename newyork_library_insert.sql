USE new_york_library;
/***   PATRONS data   ******************************************************/

INSERT INTO PATRONS VALUES (
	NULL, 'Peter', 'Parker', '20 Ingram Street', 'Queens', 'NY', 11375, 3475551212, 17, 'M', 0);
INSERT INTO PATRONS VALUES (
	NULL, 'Wade', 'Wilson', '6969 Awesome Road', 'Manhattan', 'NY', 10022, 2125556969, 30, 'M', 792.15);
INSERT INTO PATRONS VALUES (
	NULL, 'Tony', 'Stark', '999 Avengers Avenue', 'Manhattan', 'NY', 10022, 2125550001, 32, 'M', 0);
INSERT INTO PATRONS VALUES (
	NULL, 'Matt', 'Murdock', '123 45th Street', 'Hells Kitchen', 'NY', 10036, 2125551212, 27, 'M', 10.50);
INSERT INTO PATRONS VALUES (
	NULL, 'Stephen', 'Strange', '177A Bleecker Street', 'New York', 'NY', 10014, 6465557777, NULL, 'M', 5.60);
INSERT INTO PATRONS VALUES (
	NULL, 'Reed', 'Richards', '320 Madison Avenue', 'Manhattan', 'NY', 10022, 2125559874, NULL, 'M', 0);
INSERT INTO PATRONS VALUES (
	NULL, 'Mary Jane', 'Watson', '109 Summer Street', 'Queens', 'NY', 11375, 3475558888, 16, 'F', -12.32);
INSERT INTO PATRONS VALUES (
	NULL, 'Jessica', 'Drew', '712 9th Avenue', 'New York', 'NY', 10011, 6465558557, 28, 'F', 1.27);
INSERT INTO PATRONS VALUES (
	NULL, 'Natasha', 'Romanova', '1111 Times Avenue', 'Manhattan', 'NY', 10022, 2125553356, NULL, NULL, 0);
INSERT INTO PATRONS VALUES (
	NULL, 'Jessica', 'Jones', '12 Lenox Avenue', 'New York', 'NY', 10027, 2125554545, 29, 'F', 0);

/***   BIBLIOGRAPHY data   **********************************************************/

INSERT INTO BIBLIOGRAPHY VALUES (
	'000.123', 'Head First SQL: Your Brain on SQL', 'Lynn Beighley', 'Books', 'Computer Science', 1, 'Sebastopol, CA', 2007, 3);
INSERT INTO BIBLIOGRAPHY VALUES (
	'100.250', 'This Is Your Brain on Music: The Science of a Human Obsession', 'Daniel J. Levitin', 'Books', 'Psychology', 1, 'New York, NY', 2007, 1);
INSERT INTO BIBLIOGRAPHY VALUES (
	'200.777', 'World Religions: The Great Faiths Explored and Explained', 'John Bowker', 'Books', 'Religion', 1, 'Sebastopol, CA', 1997, 1);
INSERT INTO BIBLIOGRAPHY VALUES (
	'300.112', 'Anthropology: Why It Matters', 'Tim Ingold', 'Books', 'Anthropology', 1, 'Cambridge, UK', 2018, 3);
INSERT INTO BIBLIOGRAPHY VALUES (
	'400.123', 'Arabic For Dummies', 'Amine Bouchentouf', 'Books', 'Language', 2, 'Hoboken, NJ', 2013, 5);
INSERT INTO BIBLIOGRAPHY VALUES (
	'500.884', 'Physics and Radiobiology of Nuclear Medicine', 'Gopal B. Saha', 'Books', 'Physics', 4, 'New York, NY', 2013, 2);
INSERT INTO BIBLIOGRAPHY VALUES (
	'600.010', 'The Singularity Is Near: When Humans Transcend Biology', 'Ray Kurzweil', 'Books', 'Technology', 1, 'New York, NY', 2005, 5);
INSERT INTO BIBLIOGRAPHY VALUES (
	'700.556', 'The LEGO Architect', 'Tom Alphin', 'Books', 'Recreation', 1, 'San Francisco, CA', 2015, 2);
INSERT INTO BIBLIOGRAPHY VALUES (
	'800.875', 'A Game of Thrones', 'George R. R. Martin', 'Books', 'Literature', 1, 'New York, NY', 1996, 12);
INSERT INTO BIBLIOGRAPHY VALUES (
	'900.448', 'Grunge Is Dead: The Oral History of Seattle Rock Music', 'Greg Prato', 'Books', 'History', 1, 'Toronto, Ontario', 2009, 2);
    
INSERT INTO BIBLIOGRAPHY VALUES (
	'GN799.100', 'Deadpool vs. Thanos', 'Tim Seeley', 'G. Novels', 'Art', 1, 'New York, NY', 2015, 2);
INSERT INTO BIBLIOGRAPHY VALUES (
	'GN799.511', 'Batman: A Death in the Family', 'Jim Starlin', 'G. Novels', 'Art', 1, 'New York, NY', 2011, 2);
INSERT INTO BIBLIOGRAPHY VALUES (
	'CD780.225', 'Kamikaze', 'Eminem', 'CDs', 'Art', 1, 'New York, NY', 2018, 3);
INSERT INTO BIBLIOGRAPHY VALUES (
	'CD780.668', 'Born This Way', 'Lady Gaga', 'CDs', 'Art', 1, 'Santa Monica, CA', 2011, 3);
INSERT INTO BIBLIOGRAPHY VALUES (
	'DV770.998', 'Avengers: Infinity War', 'Joe Russo', 'Film', 'Art', 1, 'Los Angeles, CA', 2018, 4);
INSERT INTO BIBLIOGRAPHY VALUES (
	'DV770.138', 'Ready Player One', 'Stephen Speilberg', 'Film', 'Art', 1, 'Los Angeles, CA', 2018, 4);
INSERT INTO BIBLIOGRAPHY VALUES (
	'AB875.500', 'The Dark Tower', 'Stephen King', 'Audiobooks', 'Literature', 1, 'New York, NY', 2004, 3);
INSERT INTO BIBLIOGRAPHY VALUES (
	'AB876.111', 'Eye of the World', 'Robert Jordan', 'Audiobooks', 'Literature', 1, 'New York, NY', 2006, 2);
INSERT INTO BIBLIOGRAPHY VALUES (
	'J510.500', 'The Cartoon Guide to Chemistry', 'Larry Gonick', 'Juvenile', 'Literature', 1, 'New York, NY', 2005, 3);
INSERT INTO BIBLIOGRAPHY VALUES (
	'J970.144', '50 American Heroes Every Kid Should Meet', 'Dennis Denenberg', 'Juvenile', 'History', 2, 'New York, NY', 2016, 2);


/***   ORDERS data   ********************************************************/

INSERT INTO ORDERS VALUES (
	NULL, '800.875', 'James Larson', '2018-08-11', 10, 3.50, 30.50);
INSERT INTO ORDERS VALUES (
	NULL, '100.250', 'James Larson', '2018-09-12', 1, 19.99, 19.99);
INSERT INTO ORDERS VALUES (
	NULL, 'GN799.100', 'James Larson', '2018-10-31', 2, 14.99, 29.98);
INSERT INTO ORDERS VALUES (
	NULL, '600.010', 'Jake Zavala', '2018-09-01', 5, 29.99, 149.95);
INSERT INTO ORDERS VALUES (
	NULL, 'DV770.998', 'Jake Zavala', '2018-10-12', 4, 19.99, 79.96);

/***   ITEM_DATA data   *********************************************************/

INSERT INTO ITEM_DATA VALUES (
	1, '000.123', NULL, 'Y', '2018-01-11', 'Good');
INSERT INTO ITEM_DATA VALUES (
	2, '000.123', NULL, 'Y', '2018-03-12', 'Good');
INSERT INTO ITEM_DATA VALUES (
	3, '000.123', NULL, 'Y', '2018-06-20', 'Poor');

INSERT INTO ITEM_DATA VALUES (
	4, '100.250', 2, 'N', '2018-12-27', 'Good');
    
INSERT INTO ITEM_DATA VALUES (
	5, '200.777', NULL, 'Y', NULL, 'New');

INSERT INTO ITEM_DATA VALUES (
	6, '300.112', NULL, 'Y', '2018-01-11', 'Good');
INSERT INTO ITEM_DATA VALUES (
	7, '300.112', NULL, 'N', '2018-12-11', 'Poor');
INSERT INTO ITEM_DATA VALUES (
	8, '300.112', NULL, 'N', '2018-12-16', 'Poor');
    
INSERT INTO ITEM_DATA VALUES (
	9, '400.123', NULL, 'Y', '2018-03-08', 'Good');
INSERT INTO ITEM_DATA VALUES (
	10, '400.123', NULL, 'Y', '2018-02-12', 'Good');
INSERT INTO ITEM_DATA VALUES (
	11, '400.123', NULL, 'Y', NULL, 'New');
INSERT INTO ITEM_DATA VALUES (
	12, '400.123', NULL, 'N', '2018-12-10', 'Poor');
INSERT INTO ITEM_DATA VALUES (
	13, '400.123', NULL, 'N', '2018-12-20', 'Good');
    
INSERT INTO ITEM_DATA VALUES (
	14, '500.884', NULL, 'Y', '2018-01-01', 'Good');
INSERT INTO ITEM_DATA VALUES (
	15, '500.884', NULL, 'Y', NULL, 'New');
    
INSERT INTO ITEM_DATA VALUES (
	16, '600.010', 4, 'Y', '2018-09-30', 'Poor');
INSERT INTO ITEM_DATA VALUES (
	17, '600.010', 4, 'Y', '2018-10-15', 'Good');
INSERT INTO ITEM_DATA VALUES (
	18, '600.010', 4, 'Y', '2018-11-11', 'Good');
INSERT INTO ITEM_DATA VALUES (
	19, '600.010', 4, 'Y', NULL, 'Good');
INSERT INTO ITEM_DATA VALUES (
	20, '600.010', 4, 'N', '2018-12-21', 'Good');
    
INSERT INTO ITEM_DATA VALUES (
	21, '700.556', NULL, 'Y', '2018-09-30', 'Good');
INSERT INTO ITEM_DATA VALUES (
	22, '700.556', NULL, 'Y', '2018-09-18', 'Good');
    
INSERT INTO ITEM_DATA VALUES (
	23, '800.875', NULL, 'N', '2018-01-20', 'Missing');
INSERT INTO ITEM_DATA VALUES (
	24, '800.875', NULL, 'N', '2018-05-06', 'Missing');
INSERT INTO ITEM_DATA VALUES (
	25, '800.875', NULL, 'Y', NULL, 'New');
INSERT INTO ITEM_DATA VALUES (
	26, '800.875', NULL, 'Y', NULL, 'New');
INSERT INTO ITEM_DATA VALUES (
	27, '800.875', NULL, 'Y', '2018-09-30', 'Good');
INSERT INTO ITEM_DATA VALUES (
	28, '800.875', NULL, 'Y', '2018-10-12', 'Good');
INSERT INTO ITEM_DATA VALUES (
	29, '800.875', NULL, 'Y', '2018-11-12', 'Good');
INSERT INTO ITEM_DATA VALUES (
	30, '800.875', NULL, 'Y', '2018-12-10', 'Good');
INSERT INTO ITEM_DATA VALUES (
	31, '800.875', NULL, 'Y', '2018-11-30', 'Good');
INSERT INTO ITEM_DATA VALUES (
	32, '800.875', NULL, 'N', '2018-12-27', 'Good');
INSERT INTO ITEM_DATA VALUES (
	33, '800.875', NULL, 'N', '2018-12-20', 'Good');
INSERT INTO ITEM_DATA VALUES (
	34, '800.875', NULL, 'N', '2018-12-28', 'Good');
    
INSERT INTO ITEM_DATA VALUES (
	35, '900.448', NULL, 'Y', '2018-03-12', 'Poor');
INSERT INTO ITEM_DATA VALUES (
	36, '900.448', NULL, 'Y', '2018-12-12', 'Good');
    
INSERT INTO ITEM_DATA VALUES (
	37, 'AB875.500', NULL, 'Y', NULL, 'New');
INSERT INTO ITEM_DATA VALUES (
	38, 'AB875.500', NULL, 'Y', '2018-03-30', 'Good');
INSERT INTO ITEM_DATA VALUES (
	39, 'AB875.500', NULL, 'N', '2018-12-01', 'Good');
    
INSERT INTO ITEM_DATA VALUES (
	40, 'AB876.111', NULL, 'Y', '2018-04-11', 'Good');
INSERT INTO ITEM_DATA VALUES (
	41, 'AB876.111', NULL, 'Y', '2018-04-20', 'Good');

INSERT INTO ITEM_DATA VALUES (
	42, 'CD780.225', NULL, 'N', '2018-12-22', 'Good');
INSERT INTO ITEM_DATA VALUES (
	43, 'CD780.225', NULL, 'N', '2018-12-21', 'Good');
INSERT INTO ITEM_DATA VALUES (
	44, 'CD780.225', NULL, 'N', '2018-12-15', 'Good');
    
INSERT INTO ITEM_DATA VALUES (
	45, 'CD780.668', NULL, 'Y', '2018-03-15', 'Good');
INSERT INTO ITEM_DATA VALUES (
	46, 'CD780.668', NULL, 'Y', '2018-08-11', 'Good');
INSERT INTO ITEM_DATA VALUES (
	47, 'CD780.668', NULL, 'Y', '2018-10-15', NULL);
    
INSERT INTO ITEM_DATA VALUES (
	48, 'DV770.138', NULL, 'Y', '2018-09-11', 'Good');
INSERT INTO ITEM_DATA VALUES (
	49, 'DV770.138', NULL, 'Y', NULL, 'New');
INSERT INTO ITEM_DATA VALUES (
	50, 'DV770.138', NULL, 'N', '2018-12-22', 'Good');
INSERT INTO ITEM_DATA VALUES (
	51, 'DV770.138', NULL, 'N', '2018-12-29', 'Good');
    
INSERT INTO ITEM_DATA VALUES (
	52, 'DV770.998', 5, 'Y', '2018-11-21', 'Good');
INSERT INTO ITEM_DATA VALUES (
	53, 'DV770.998', 5, 'Y', '2018-11-30', 'Good');
INSERT INTO ITEM_DATA VALUES (
	54, 'DV770.998', 5, 'Y', '2018-11-01', 'Good');
INSERT INTO ITEM_DATA VALUES (
	55, 'DV770.998', 5, 'N', '2018-12-29', 'Good');
    
INSERT INTO ITEM_DATA VALUES (
	56, 'GN799.100', 3, 'Y', '2018-11-12', 'Poor');
INSERT INTO ITEM_DATA VALUES (
	57, 'GN799.100', 3, 'N', '2018-12-30', 'Good');
    
INSERT INTO ITEM_DATA VALUES (
	58, 'GN799.511', NULL, 'Y', '2018-01-30', 'Poor');
INSERT INTO ITEM_DATA VALUES (
	59, 'GN799.511', NULL, 'N', '2018-12-28', 'Good');
    
INSERT INTO ITEM_DATA VALUES (
	60, 'J510.500', NULL, 'Y', '2018-03-25', 'Good');
INSERT INTO ITEM_DATA VALUES (
	61, 'J510.500', NULL, 'Y', '2018-06-21', 'Missing');
INSERT INTO ITEM_DATA VALUES (
	62, 'J510.500', NULL, 'Y', '2018-07-09', 'Poor');
    
INSERT INTO ITEM_DATA VALUES (
	63, 'J970.144', NULL, 'Y', NULL, 'New');
INSERT INTO ITEM_DATA VALUES (
	64, 'J970.144', NULL, 'N', '2018-12-27', 'Good');


/***   CHECKED_OUT data   *********************************************************/

INSERT INTO CHECKED_OUT VALUES (
	NULL, 1, 4, '2019-01-10');
INSERT INTO CHECKED_OUT VALUES (
	NULL, 7, 7, '2019-12-28');
INSERT INTO CHECKED_OUT VALUES (
	NULL, 6, 8, '2019-12-30');
INSERT INTO CHECKED_OUT VALUES (
	NULL, 6, 20, '2019-01-05');
INSERT INTO CHECKED_OUT VALUES (
	NULL, 7, 32, '2019-01-10');
INSERT INTO CHECKED_OUT VALUES (
	NULL, 1, 33, '2019-01-03');
INSERT INTO CHECKED_OUT VALUES (
	NULL, 10, 34, '2019-01-11');
INSERT INTO CHECKED_OUT VALUES (
	NULL, 4, 39, '2019-12-15');
INSERT INTO CHECKED_OUT VALUES (
	NULL, 9, 42, '2019-01-05');
INSERT INTO CHECKED_OUT VALUES (
	NULL, 5, 43, '2019-01-04');
INSERT INTO CHECKED_OUT VALUES (
	NULL, 4, 44, '2019-12-29');
INSERT INTO CHECKED_OUT VALUES (
	NULL, 8, 50, '2019-01-05');
INSERT INTO CHECKED_OUT VALUES (
	NULL, 2, 51, '2019-01-13');
INSERT INTO CHECKED_OUT VALUES (
	NULL, 2, 55, '2019-01-13');
INSERT INTO CHECKED_OUT VALUES (
	NULL, 2, 57, '2019-01-13');
INSERT INTO CHECKED_OUT VALUES (
	NULL, 1, 59, '2019-01-11');
INSERT INTO CHECKED_OUT VALUES (
	NULL, 8, 64, '2019-01-10');
    

/***   REQUESTS data   *********************************************************/

INSERT INTO REQUESTS VALUES (
	NULL, '000.123', 8, 1);
INSERT INTO REQUESTS VALUES (
	NULL, 'DV770.138', 2, 1);
INSERT INTO REQUESTS VALUES (
	NULL, 'DV770.138', 10, 2);
INSERT INTO REQUESTS VALUES (
	NULL, 'DV770.138', 9, 3);
INSERT INTO REQUESTS VALUES (
	NULL, 'CD780.225', 6, 1);
INSERT INTO REQUESTS VALUES (
	NULL, 'CD780.225', 10, 2);
INSERT INTO REQUESTS VALUES (
	NULL, '700.556', 7, 1);
INSERT INTO REQUESTS VALUES (
	NULL, 'GN799.100', 1, 1);

