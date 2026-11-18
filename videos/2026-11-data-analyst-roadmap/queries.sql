-- تعداد سفارش‌های آبان
SELECT COUNT(*)
FROM orders
WHERE order_date BETWEEN '1405/08/01' AND '1405/08/30';

-- کوئری هوش مصنوعی (بی‌خطا اجرا می‌شه، ولی هر سفارش چندکالایی رو چند بار می‌شمره)
SELECT COUNT(o.order_id) AS orders_count,
       SUM(i.qty) AS items_sold
FROM orders o
JOIN items i ON i.order_id = o.order_id
WHERE o.order_date BETWEEN '1405/08/01' AND '1405/08/30';

-- درستش: هر سفارش فقط یک بار
SELECT COUNT(DISTINCT o.order_id) AS orders_count,
       SUM(i.qty) AS items_sold
FROM orders o
JOIN items i ON i.order_id = o.order_id
WHERE o.order_date BETWEEN '1405/08/01' AND '1405/08/30';

-- همون Pivot Table در pandas
