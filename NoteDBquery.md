DESCRIBE table_name;
SHOW CREATE TABLE table_name;
SHOW TABLES LIKE '%key_word%';
SHOW INDEX FROM table_name;
SELECT * FROM table_name;


SELECT * FROM table_name ORDER BY 1 DESC;
SELECT * FROM table_name ORDER BY 1 DESC;
SELECT * FROM table_name ORDER BY 1 DESC;



---
### articles join comments
```
SELECT * FROM articles AS arts
INNER JOIN comments as coms ON (coms.article_id = arts.id)
ORDER BY arts.id DESC;
```