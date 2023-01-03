-- first create table food, then it sorts by quantity and shows values of quantity which are greater than 4
CREATE TABLE Food (id INTEGER PRIMARY KEY, item TEXT, quantity INTEGER);

INSERT INTO Food VALUES (1, "Pizza", 10);
INSERT INTO Food VALUES (2, "Burger", 4);
INSERT INTO Food VALUES (3, "Fries", 7);

SELECT * FROM Food WHERE quantity > 4 ORDER BY quantity;

-- first create groceries table, print the sum of quantity column, if added 'group by' then it will print sum 
-- according to relation of aisle you can also print aisle column and related sum by adding it after 'select'
CREATE TABLE groceries (id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER, aisle INTEGER);
INSERT INTO groceries VALUES (1, "Bananas", 56, 7);
INSERT INTO groceries VALUES(2, "Peanut Butter", 1, 2);
INSERT INTO groceries VALUES(3, "Dark Chocolate Bars", 2, 2);
INSERT INTO groceries VALUES(4, "Ice cream", 1, 12);
INSERT INTO groceries VALUES(5, "Cherries", 6, 2);
INSERT INTO groceries VALUES(6, "Chocolate syrup", 1, 4);

-- SELECT * FROM groceries;
SELECT aisle, SUM(quantity) FROM groceries GROUP BY aisle;
