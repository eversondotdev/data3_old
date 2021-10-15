DROP TABLE revenue_by_segment

SELECT *
FROM revenue_by_segment
WHERE year = 2020 AND ticker = 'AAPL'

CREATE TABLE revenue_by_segment(
	ticker VARCHAR(10) NOT NULL,
	year SMALLINT NOT NULL,
    segment VARCHAR(255) NOT NULL,
    value INT NOT NULL,
	FOREIGN KEY (ticker) references profiles (id)
);

INSERT INTO revenue_by_segment(ticker,year,segment,value)
VALUES
('ADBE',2020,'Creative Cloud Subscriptions',11626),
('ADBE',2019,'Creative Cloud Subscriptions',9634),
('ADBE',2018,'Creative Cloud Subscriptions',7604),
('ADBE',2020,'Product Licenses',507),
('ADBE',2019,'Product Licenses',648),
('ADBE',2018,'Product Licenses',622)