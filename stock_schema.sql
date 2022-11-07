CREATE TABLE vde_11 (
	stock_id FLOAT NOT NULL,
	stock_date DATE NOT NULL,
	stock_open FLOAT NOT NULL,
	stock_high  FLOAT NOT NULL,
	stock_low FLOAT NOT NULL,
	stock_close FLOAT NOT NULL,
	stock_adjclose FLOAT NOT NULL,
	stock_volume FLOAT NOT NULL,
	PRIMARY KEY (stock_date)
	);
	
CREATE TABLE vde_04 (
	stock_id FLOAT NOT NULL,
	stock_date DATE NOT NULL,
	stock_open FLOAT NOT NULL,
	stock_high  FLOAT NOT NULL,
	stock_low FLOAT NOT NULL,
	stock_close FLOAT NOT NULL,
	stock_adjclose FLOAT NOT NULL,
	stock_volume FLOAT NOT NULL,
	PRIMARY KEY (stock_date)
	);
	
select * from vde_04;
select * from vde_11;
	
SELECT vde_04.stock_date,
	vde_04.stock_open,
	 vde_04.stock_close
INTO vde_all
FROM vde_04
LEFT join vde_11
ON vde_04.stock_id = vde_11.stock_id;
select * from vde_all;
CREATE TABLE spy (
	stock_id FLOAT NOT NULL,
	stock_date DATE NOT NULL,
	stock_open FLOAT NOT NULL,
	stock_high  FLOAT NOT NULL,
	stock_low FLOAT NOT NULL,
	stock_close FLOAT NOT NULL,
	stock_adjclose FLOAT NOT NULL,
	stock_volume FLOAT NOT NULL,
	PRIMARY KEY (stock_date)
	);
	
SELECT * FROM spy;
	
CREATE TABLE vht (
	stock_id FLOAT NOT NULL,
	stock_date DATE NOT NULL,
	stock_open FLOAT NOT NULL,
	stock_high  FLOAT NOT NULL,
	stock_low FLOAT NOT NULL,
	stock_close FLOAT NOT NULL,
	stock_adjclose FLOAT NOT NULL,
	stock_volume FLOAT NOT NULL,
	PRIMARY KEY (stock_date)
	);
	
SELECT * FROM vht;