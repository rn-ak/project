CREATE TABLE Recency AS
SELECT o.*, c.Gender, c.Customer_Region, c.Membership_Duration
FROM onlinesales_info o
INNER JOIN Customer_info c ON o.Customer_ID = c.Customer_ID;