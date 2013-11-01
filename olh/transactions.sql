-- drop the table if already present
DROP TABLE MARKET_BASKET_TRANSACTIONS;

-- this should really be a range partitioned table
CREATE TABLE MARKET_BASKET_TRANSACTIONS
(
	"TRANSACTION_TIME"	NUMBER,
	"CUSTOMER_NAME"		VARCHAR2(50),
	"ITEM"			VARCHAR2(255)
)
PARTITION BY HASH(TRANSACTION_TIME);
QUIT;