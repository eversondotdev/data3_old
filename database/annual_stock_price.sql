SELECT * FROM annual_stock_price

CREATE TABLE annual_stock_price(
    ticker VARCHAR(10) NOT NULL,
	date_2020 FLOAT,
	date_2019 FLOAT,
	date_2018 FLOAT,
	date_2017 FLOAT,
	date_2016 FLOAT,
	date_2015 FLOAT,
	date_2014 FLOAT,
	date_2013 FLOAT,
	date_2012 FLOAT,
	date_2011 FLOAT,
	date_2010 FLOAT,
	date_2009 FLOAT,
	date_2008 FLOAT,
	date_2007 FLOAT,
	date_2006 FLOAT,
	date_2005 FLOAT,
	date_2004 FLOAT,
	date_2003 FLOAT,
	date_2002 FLOAT,
	date_2001 FLOAT,
	date_2000 FLOAT,
	FOREIGN KEY (ticker) references profiles (id)
)

INSERT INTO annual_stock_price(
ticker,
date_2020,
date_2019,
date_2018,
date_2017,
date_2016,
date_2015,
date_2014,
date_2013,
date_2012,
date_2011,
date_2010,
date_2009,
date_2008,
date_2007,
date_2006,
date_2005,
date_2004,
date_2003,
date_2002,
date_2001,
date_2000
)
VALUES
('AAPL',133.72,72.88,39.44,42.77,29.18,26.83,28.13,19.8,19.01,14.47,11.56,7.56,3.08,7.07,2.89,2.55,1.16,0.38,0.25,0.39,0.26),
('ADBE',497.45,328.34,226.24,175.55,103.68,95.28,73.08,59.55,37.68,28.31,30.57,37.18,21.05,42.73,41.53,36.92,31.59,20.04,12.45,15.53,30.81)
