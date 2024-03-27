SELECT 
    c.Customer_ID,
    c.Gender,
    c.Customer_Region,
    c.Membership_Duration,
    SUM(o.Quantity * o.Average_Amount + o.Shipping_Fee) AS Total_Purchase_Amount
FROM 
    Customer_info c
JOIN 
    Onlinesales_info o ON c.Customer_ID = o.Customer_ID
GROUP BY 
    c.Customer_ID, c.Gender, c.Customer_Region, c.Membership_Duration;