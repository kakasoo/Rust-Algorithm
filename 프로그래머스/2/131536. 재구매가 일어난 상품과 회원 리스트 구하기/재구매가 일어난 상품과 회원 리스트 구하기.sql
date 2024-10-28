SELECT sale.USER_ID, sale.PRODUCT_ID FROM ONLINE_SALE AS sale WHERE (
    SELECT 
        COUNT(*) 
    FROM ONLINE_SALE AS sub 
    WHERE sub.USER_ID = sale.USER_ID AND sub.PRODUCT_ID = sale.PRODUCT_ID
    ) >= 2
    GROUP BY sale.USER_ID, sale.PRODUCT_ID
    ORDER BY sale.USER_ID asc, sale.PRODUCT_ID desc;