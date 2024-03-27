SELECT
    M.Date,
    M.Offline_Cost,
    M.Online_Cost,
    O.Shipping_Fee,
    T.GST
FROM
    Marketing_info M
JOIN
    Onlinesales_info O ON M.Date = O.Transaction_Date
JOIN
    Tax_info T ON O.Product_Category = T.Product_Category;