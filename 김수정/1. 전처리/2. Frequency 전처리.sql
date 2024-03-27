CREATE TABLE Frequency AS
SELECT 
    c.Customer_ID,
    COUNT(r.Transaction_ID) AS Transaction_Count,
    c.Gender,
    c.Customer_Region,
    c.Membership_Duration
FROM 
    Customer_info c
LEFT JOIN 
    recency r ON c.Customer_ID = r.Customer_ID
GROUP BY 
    c.Customer_ID, c.Gender, c.Customer_Region, c.Membership_Duration;