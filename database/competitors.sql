SELECT * FROM competitors
WHERE ticker='AAPL';

CREATE TABLE competitors(
	ticker VARCHAR(10) NOT NULL,
    competitor VARCHAR(10) NOT NULL,
	FOREIGN KEY (ticker) references profiles (id)
);

INSERT INTO competitors(ticker, competitor)
VALUES
('AAPL', 'Samsung'),
('AAPL', 'XIACF'),
('AAPL', 'LNVGY'),
('AAPL', 'LNVGY'),
('AAPL', 'LNVGY'),
('AAPL', 'DELL'),
('ADBE', 'ADSK'),
('ADBE', 'CRM'),
('ADBE', 'SAP'),
('ADBE', 'CREL'),
('AMZN', 'MSFT'),
('AMZN', 'GOOGLL'),
('AMZN', 'BABA'),
('AMZN', 'WMT'),
('BKNG', 'ABNB'),
('BKNG', 'TRIP'),
('BKNG', 'TRVG'),
('BKNG', 'EXPE'),
('COST', 'WMT'),
('COST', 'HD'),
('COST', 'TGT'),
('COST', 'BJ'),
('CRM', 'MSFT'),
('CRM', 'ORCL'),
('CRM', 'SAP'),
('CRM', 'ADBE'),
('DIS', 'CMCSA'),
('DIS', 'NFLX'),
('DIS', 'AMZN'),
('DIS', 'AAPL'),
('FB', 'GOOGL'),
('FB', 'TWTR'),
('FB', 'ByteDance'),
('FB', 'SNAP'),
('GOOGL', 'AMZN'),
('GOOGL', 'FB'),
('GOOGL', 'MSFT'),
('GOOGL', 'BABA'),
('IBM', 'ACN'),
('IBM', 'HPQ'),
('IBM', 'XRX'),
('IBM', 'ORCL'),
('JNJ', 'MRK'),
('JNJ', 'UL'),
('JNJ', 'PFE'),
('JNJ', 'PG'),
('KO', 'PEP'),
('KO', 'PG'),
('KO', 'UL'),
('KO', 'MNST'),
('MCD', 'SBUX'),
('MCD', 'QSR'),
('MCD', 'KFC'),
('MCD', 'Subway'),
('MSFT', 'AMZN'),
('MSFT', 'AAPL'),
('MSFT', 'GOOGL'),
('MSFT', 'SAP'),
('NFLX', 'DIS'),
('NFLX', 'AMZN'),
('NFLX', 'GOOGLL'),
('NFLX', 'CMCSA'),
('NKE', 'ADDYY'),
('NKE', 'RBK'),
('NKE', 'PUM'),
('NKE', 'UA'),
('NVDA', 'AMD'),
('NVDA', 'INTC'),
('NVDA', 'QCOM'),
('NVDA', 'AVGO'),
('PYPL', 'GOOGLL'),
('PYPL', 'Skrill'),
('PYPL', 'Wepay'),
('PYPL', 'PAYO'),
('SBUX', 'MCD'),
('SBUX', 'CMG'),
('SBUX', 'YUM'),
('SBUX', 'DPZ'),
('TSLA', 'TM'),
('TSLA', 'GM'),
('TSLA', 'HMC'),
('TSLA', 'F'),
('WMT', 'BABA'),
('WMT', 'HD'),
('WMT', 'COST'),
('WMT', 'AMZN')