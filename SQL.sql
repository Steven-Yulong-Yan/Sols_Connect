/************************
***** START SET UP ******
*************************/

declare @Products table (
	ProductId int,
	ProductCode varchar(10),
	ProductDescription nvarchar(500)
	)

declare @Keywords table(
	KeywordId int,
	Keyword nvarchar(50)
)

declare @ProductKeyWords table (
	ProductId int,
	KeyWordId int
)

insert into @Products (ProductId, ProductCode, ProductDescription)
values (1, 'SHOVEL01', 'A shovel'),
	(2, 'SHOVEL02', 'A shovel'),
	(3, 'PICK01', 'A pick'),
	(4, 'PICK02', 'A pick'),
	(5, 'RAKE01', 'A rake'),
	(6, 'RAKE02', 'A rake')

Insert into @Keywords (KeywordId, Keyword)
values (1, 'Blue'),
	(2, 'Red'),
	(3, 'Yellow'),
	(4, 'Metal'),
	(5, 'Plastic')

Insert into @ProductKeyWords (ProductId, KeyWordId)
values (1, 1),
	(1, 4),
	(2, 1),
	(2, 5),
	(2, 5),
	(3, 2),
	(3, 2),
	(3, 5),
	(4, 1),
	(4, 4),
	(5, 1),
	(5, 4),
	(5, 4),
	(6, 2),
	(6, 4)

/************************
****** END SET UP *******
*************************/

/*
	Code in the space below each comment.

Q1. List each keyword with how many Times it has been used
*/
SELECT K.Keyword Keywords, COUNT(K.Keyword) Number_of_Times_Used
FROM @Keywords K
JOIN @ProductKeywords PK ON K.KeywordId = PK.KeyWordId
GROUP BY K.Keyword

/*
Q2. List each keyword and the number of products it is on. Make sure you do not count products more than once per keyword.
*/
SELECT K.Keyword Keywords, COUNT(DISTINCT PK.ProductId) Number_of_Products
FROM @Keywords K
JOIN @ProductKeywords PK ON K.KeywordId = PK.KeyWordId
GROUP BY K.Keyword

/*
Q3. List all products that have a keyword of "Metal" or "Blue"
*/
SELECT *
FROM @Products P
WHERE P.ProductId IN (
    SELECT PK.ProductId
    FROM @ProductKeywords PK
    JOIN @Keywords K ON PK.KeyWordId = K.KeywordId
    WHERE K.Keyword = 'Metal' OR K.Keyword = 'Blue'
)

/*
Q4. List all products that have a keyword of "Metal" and "Blue"
*/
SELECT *
FROM @Products P
WHERE P.ProductId IN (
    SELECT PK.ProductId
    FROM @ProductKeywords PK
    JOIN @Keywords K ON PK.KeyWordId = K.KeywordId
    WHERE K.Keyword = 'Metal'
)
AND P.ProductId IN (
    SELECT PK.ProductId
    FROM @ProductKeywords PK
    JOIN @Keywords K ON PK.KeyWordId = K.KeywordId
    WHERE K.Keyword = 'Blue'
)
