
use new_york_library;
/*
 1. Please deliver a table detailing the PatronID, First and Last names, full address 
    (street address, city, state and zip code) and phone number of all of the Patrons of the 
	library.
*/

SELECT PatronID, FirstName, LastName, StreetAddress,
	   City, State, ZipCode, PhoneNumber
FROM patrons;

/*
2. Next, I'd like to see a table showing me by Call Number which titles are missing from the 
   library.(HINT: Look in the ITEM_DATA table under the ItemConditon)
*/
SELECT CallNum
FROM item_data
WHERE ItemCondition = "missing";

/*
 3. It would be helpful to have a table showing us all the Patrons who have late fees over zero
    dollars and cents in order of the one with the most late fees first and in descending order. 
    Please show us their first name, last name, phone number and how much their late fee is.
*/

SELECT FirstName, LastName, PhoneNumber, LateFees
FROM patrons
WHERE LateFees > 0
ORDER BY LateFees DESC;

/*
 4. For our next table, we are trying to get an idea of how many books older than 2015 we have grouped 
    by their subject area. Please show us a table with the subject area and the sum total of books in
    that subject area (name this "TotalQty" in the table) in descending order. (please read this one carefully)   
*/

SELECT SubjectArea, COUNT(CallNum) AS TotalQty
FROM bibliography
WHERE YearOfPublication < '2015'
GROUP BY SubjectArea
ORDER BY TotalQty DESC;

/*
  5. Now we just need a list of the call numbers of titles from the item_data table whose item condition is 
     either poor or missing but also were not ordered recently. We can tell if an item hasn't been ordered 
     recently from the item_data table if it has null in the OrderID column. Please only return the call numbers 
     of items which have more than 1 item in either missing or poor item condition and group them by call number. 
     The two columns returned should be the call number and the count of items in condition poor or missing for
     that call number,this column labeled ctCallNum. (You will NOT need a subquery or join for this answer)
     (HINT: It will include a HAVING clause)
*/

SELECT CallNum, COUNT(CallNum) AS ctCallNum
FROM item_data
WHERE (ItemCondition = 'poor' or ItemCondition = 'missing') AND OrderID is null
GROUP BY CallNum
HAVING ctCallNum > 1;

/* 6. We also need a table that shows us the total sum of all late fees owed to the library,the average amount
     of patron's late fees, the minimum late fee and the maximum late fee. Name each of these accordingly: TotalLateFees,
     AverageLateFee, MinLateFee, MaxLateFee. Also, if any patron is somehow in the negatives of their late fees, do 
     not include them in this calculation. (Note: exclude the patron who overpaid by using the LateFees column please)
*/

SELECT SUM(LateFees) AS TotalLateFees, AVG(LateFees) AS AverageLateFee, 
       MIN(LateFees) AS MinLateFee, MAX(LateFees) AS MaxLateFee
FROM patrons
WHERE LateFees >= 0;

/* 7. Please deliver a table of the titles of the items ordered after October 1st, 2018 as well as their current quantity
       in descending order by quantity. (Please use a subquery for this one)
*/

SELECT Title, Quantity
FROM bibliography
WHERE CallNum IN ( SELECT CallNum
				  FROM orders
                  WHERE DatePurchased >'2018/10/01')
ORDER BY Quantity DESC;

/*
  8. (Use IMPLICIT INNER JOIN) We now need a table that shows the ItemID, Title, and if its available. 
     Please order the items by Availability in Descending order, showing us the ones available at the top.
     
*/

SELECT ItemID, Title, Availability
FROM item_data, bibliography
WHERE item_data.CallNum = bibliography.CallNum
ORDER BY Availability DESC;

/*
  9. (Use EXPLICIT INNER JOIN) We need a table showing us the complete data about what requests are made. 
     Please produce a table that has a patron's first and last name, phone number, late fees, call number
     of the book they requested (shown in table as RequestedCallNum), and its title (shown as RequestedTitle)
     and then have it be in descending order. (Tables for this query: Requests, Patrons, Bibliography. 
     Its a nested join that will require two join statements)
*/

SELECT FirstName, LastName, PhoneNumber, LateFees, 
       requests.CallNum AS RequestedCallNum, Title AS RequestedTitle
FROM patrons
JOIN requests ON patrons.PatronID = requests.PatronID
JOIN bibliography ON requests.CallNum = bibliography.CallNum
ORDER BY RequestedTitle DESC;


/* 10.Finally, I want to see a table of all the patron's currently checked out items. Please have a row 
      for each item checked out (so you will see multiple patron names) and even if a Patron has nothing
      checked out, I want to see them on the list with NULL as the ItemID and Due Date. Please return the
      First Name, Last Name, ItemID and the Due Date of the item. Lastly, order the rows by Due Date. 
      (You will need to use and OUTER JOIN but whether its RIGHT or LEFT is for you to figure out)
*/

SELECT FirstName, LastName, ItemID, DueDate
FROM patrons
LEFT OUTER JOIN checked_out ON patrons.PatronID = checked_out.PatronID
ORDER BY DueDate;

/* Extra Credit: Do #10 again but this time also include the columns DateLastCheckedOut from the ITEM_DATA table 
   and Title from the BIBLIOGRAPHY table. This query requires 3 nested joins. Partial credit will be given for
   those who attempt this and get close. Worth 10 points if done perfectly.
*/

SELECT FirstName, LastName, checked_out.ItemID, DueDate, DateLastCheckedOut, Title
FROM patrons
LEFT OUTER JOIN checked_out ON patrons.PatronID = checked_out.PatronID
LEFT OUTER JOIN item_data   ON checked_out.ItemID = item_data.ItemID
LEFT OUTER JOIN bibliography ON item_data.CallNum = bibliography.CallNum
ORDER BY DueDate;

