WITH yearly_sales AS (
    SELECT
        [Year],
        SUM(Sales) AS total_sales
    FROM dbo.sales_clean
    GROUP BY [Year]
)
SELECT
    [Year],
    '$' + FORMAT(total_sales, 'N2') AS Total_Sales,
    '$' + FORMAT(
        total_sales - LAG(total_sales) OVER (ORDER BY [Year]),
        'N2'
    ) AS YoY_Change_Amount,
    FORMAT(
        (total_sales - LAG(total_sales) OVER (ORDER BY [Year]))
        / NULLIF(LAG(total_sales) OVER (ORDER BY [Year]), 0) * 100,
        'N2'
    ) + '%' AS YoY_Growth_Percent
FROM yearly_sales
ORDER BY [Year];
