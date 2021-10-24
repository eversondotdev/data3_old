DROP TABLE revenue_by_segment

SELECT *
FROM revenue_by_segment
WHERE year = 2020 AND ticker_id = 'AAPL'

CREATE TABLE revenue_by_segment(
	ticker_id VARCHAR(10) NOT NULL,
	year SMALLINT NOT NULL,
    segment VARCHAR(255) NOT NULL,
    value INT NOT NULL,
	FOREIGN KEY (ticker_id) references profiles (ticker_id)
);

INSERT INTO revenue_by_segment(ticker_id,year,segment,value)
VALUES
('AAPL',2020,'IPhone',137781),
('AAPL',2019,'IPhone',142381),
('AAPL',2018,'IPhone',164888),
('AAPL',2020,'Mac',28622),
('AAPL',2019,'Mac',25740),
('AAPL',2018,'Mac',25198),
('AAPL',2020,'IPad',23724),
('AAPL',2019,'IPad',21280),
('AAPL',2018,'IPad',18380),
('AAPL',2020,'Wearables, Home and Accessories',30620),
('AAPL',2019,'Wearables, Home and Accessories',24482),
('AAPL',2018,'Wearables, Home and Accessories',17381),
('AAPL',2020,'Services',53768),
('AAPL',2019,'Services',46291),
('AAPL',2018,'Services',39748),
('ADBE',2020,'Creative Cloud Subscriptions',11626),
('ADBE',2019,'Creative Cloud Subscriptions',9634),
('ADBE',2018,'Creative Cloud Subscriptions',7604),
('ADBE',2020,'Product Licenses',507),
('ADBE',2019,'Product Licenses',648),
('ADBE',2018,'Product Licenses',622),
('AMZN',2020,'Online Stores',197346),
('AMZN',2019,'Online Stores',141247),
('AMZN',2018,'Online Stores',122987),
('AMZN',2020,'Phisical Stores',16227),
('AMZN',2019,'Phisical Stores',17192),
('AMZN',2018,'Phisical Stores',17224),
('AMZN',2020,'Third-party seler services',80461),
('AMZN',2019,'Third-party seler services',53762),
('AMZN',2018,'Third-party seler services',42745),
('AMZN',2020,'Subscription Services (Prime and others)',25207),
('AMZN',2019,'Subscription Services (Prime and others)',19219),
('AMZN',2018,'Subscription Services (Prime and others)',14168),
('AMZN',2020,'AWS',45370),
('AMZN',2019,'AWS',35026),
('AMZN',2018,'AWS',25655),
('AMZN',2020,'Other (Advertising Services)',21453),
('AMZN',2019,'Other (Advertising Services)',14085),
('AMZN',2018,'Other (Advertising Services)',10108),
('BKNG',2020,'Agency (Reservation Commissions)',4314),
('BKNG',2019,'Agency (Reservation Commissions)',10117),
('BKNG',2018,'Agency (Reservation Commissions)',10480),
('BKNG',2020,'Merchant (Book Accommodation or Rental Car Reservations)',2117),
('BKNG',2019,'Merchant (Book Accommodation or Rental Car Reservations)',3830),
('BKNG',2018,'Merchant (Book Accommodation or Rental Car Reservations)',2987),
('BKNG',2020,'Advertising',365),
('BKNG',2019,'Advertising',1119),
('BKNG',2018,'Advertising',1060),
('COST',2020,'Net Sales',163220),
('COST',2019,'Net Sales',149351),
('COST',2018,'Net Sales',138434),
('COST',2020,'Membership fees',3541),
('COST',2019,'Membership fees',3352),
('COST',2018,'Membership fees',3142),
('DIS',2020,'Media Networks (Disney, ESPN, National Geographic)',28393),
('DIS',2019,'Media Networks (Disney, ESPN, National Geographic)',24827),
('DIS',2018,'Media Networks (Disney, ESPN, National Geographic)',21992),
('DIS',2020,'Parks, Experiences and Products (Disneyland)',16502),
('DIS',2019,'Parks, Experiences and Products (Disneyland)',26225),
('DIS',2018,'Parks, Experiences and Products (Disneyland)',24701),
('DIS',2020,'Studio Entertainment (Walt Disney Pictures, Fox, Lucasfilm, Pixar)',9636),
('DIS',2019,'Studio Entertainment (Walt Disney Pictures, Fox, Lucasfilm, Pixar)',11127),
('DIS',2018,'Studio Entertainment (Walt Disney Pictures, Fox, Lucasfilm, Pixar)',10065),
('DIS',2020,'Direct-to-Consumer & International (Disney+ and Other streaming services)',10857),
('DIS',2019,'Direct-to-Consumer & International (Disney+ and Other streaming services)',7428),
('DIS',2018,'Direct-to-Consumer & International (Disney+ and Other streaming services)',2746),
('FB',2020,'Advertising',84169),
('FB',2019,'Advertising',69655),
('FB',2018,'Advertising',55013),
('FB',2020,'Others (Devices, Payments Infra, Etc)',1796),
('FB',2019,'Others (Devices, Payments Infra, Etc)',1042),
('FB',2018,'Others (Devices, Payments Infra, Etc)',825),
('GOOGL',2020,'Google Services (Advertising, Google Play and Subscriptions)',168635),
('GOOGL',2019,'Google Services (Advertising, Google Play and Subscriptions)',151825),
('GOOGL',2018,'Google Services (Advertising, Google Play and Subscriptions)',130524),
('GOOGL',2020,'Google Cloud (GCP and Workspace)',13059),
('GOOGL',2019,'Google Cloud (GCP and Workspace)',8918),
('GOOGL',2018,'Google Cloud (GCP and Workspace)',5838),
('GOOGL',2020,'Other Bets (licensing and R&D services)',657),
('GOOGL',2019,'Other Bets (licensing and R&D services)',659),
('GOOGL',2018,'Other Bets (licensing and R&D services)',595),
('GOOGL',2020,'Hedging gains',176),
('GOOGL',2019,'Hedging gains',455),
('GOOGL',2018,'Hedging gains',-138),
('IBM',2020,'Data Plataforms & Cognitive Software',23376),
('IBM',2019,'Data Plataforms & Cognitive Software',22891),
('IBM',2018,'Data Plataforms & Cognitive Software',21857),
('IBM',2020,'Consulting, Application Management, Process Services',16162),
('IBM',2019,'Consulting, Application Management, Process Services',16768),
('IBM',2018,'Consulting, Application Management, Process Services',16795),
('IBM',2020,'Infrastructure, Cloud Services and Support',25812),
('IBM',2019,'Infrastructure, Cloud Services and Support',27361),
('IBM',2018,'Infrastructure, Cloud Services and Support',29146),
('IBM',2020,'Systems Hardware and Software',6978),
('IBM',2019,'Systems Hardware and Software',7604),
('IBM',2018,'Systems Hardware and Software',8034),
('IBM',2020,'Global Financing',1123),
('IBM',2019,'Global Financing',1400),
('IBM',2018,'Global Financing',1590),
('IBM',2020,'Other',169),
('IBM',2019,'Other',1092),
('IBM',2018,'Other',2169),
('JNJ',2020,'Consumer Health',14053),
('JNJ',2019,'Consumer Health',13898),
('JNJ',2018,'Consumer Health',13853),
('JNJ',2020,'Pharmaceutical',45572),
('JNJ',2019,'Pharmaceutical',42198),
('JNJ',2018,'Pharmaceutical',40734),
('JNJ',2020,'Medical Devices',22959),
('JNJ',2019,'Medical Devices',25963),
('JNJ',2018,'Medical Devices',26994),
('MCD',2020,'Company-operated Restaurants',8139),
('MCD',2019,'Company-operated Restaurants',9421),
('MCD',2018,'Company-operated Restaurants',10013),
('MCD',2020,'Franchised Restaurants (Rent, Royalties and Initial Fees)',10726),
('MCD',2019,'Franchised Restaurants (Rent, Royalties and Initial Fees)',11656),
('MCD',2018,'Franchised Restaurants (Rent, Royalties and Initial Fees)',11012),
('MCD',2020,'Other (Technology and Brand Licensing)',343),
('MCD',2019,'Other (Technology and Brand Licensing)',288),
('MCD',2018,'Other (Technology and Brand Licensing)',233),
('MSFT',2020,'Server products and cloud services (Azure)',41379),
('MSFT',2019,'Server products and cloud services (Azure)',32622),
('MSFT',2018,'Server products and cloud services (Azure)',26129),
('MSFT',2020,'Office products and cloud services',35316),
('MSFT',2019,'Office products and cloud services',31769),
('MSFT',2018,'Office products and cloud services',28316),
('MSFT',2020,'Windows',22294),
('MSFT',2019,'Windows',20395),
('MSFT',2018,'Windows',19518),
('MSFT',2020,'Gaming',11575),
('MSFT',2019,'Gaming',11386),
('MSFT',2018,'Gaming',10353),
('MSFT',2020,'LinkedIn',8077),
('MSFT',2019,'LinkedIn',6754),
('MSFT',2018,'LinkedIn',5259),
('MSFT',2020,'Search advertising',7740),
('MSFT',2019,'Search advertising',7628),
('MSFT',2018,'Search advertising',7012),
('MSFT',2020,'Devices',6457),
('MSFT',2019,'Devices',6095),
('MSFT',2018,'Devices',5134),
('MSFT',2020,'Enterprise Services',6409),
('MSFT',2019,'Enterprise Services',6124),
('MSFT',2018,'Enterprise Services',5846),
('MSFT',2020,'Other (cloud-based solutions, support, consulting sevices)',3768),
('MSFT',2019,'Other (cloud-based solutions, support, consulting sevices)',3070),
('MSFT',2018,'Other (cloud-based solutions, support, consulting sevices)',2793),
('NFLX',2020,'Streaming Memberships',24756),
('NFLX',2019,'Streaming Memberships',19859),
('NFLX',2018,'Streaming Memberships',15428),
('NFLX',2020,'DVD revenues',239),
('NFLX',2019,'DVD revenues',297),
('NFLX',2018,'DVD revenues',365),
('NKE',2020,'Footwear',24947),
('NKE',2019,'Footwear',25880),
('NKE',2018,'Footwear',22268),
('NKE',2020,'Apparel',11042),
('NKE',2019,'Apparel',11668),
('NKE',2018,'Apparel',10733),
('NKE',2020,'Equipment',1305),
('NKE',2019,'Equipment',1428),
('NKE',2018,'Equipment',1396),
('NKE',2020,'Other',1865),
('NKE',2019,'Other',1941),
('NKE',2018,'Other',2000),
('NVDA',2020,'Gaming (GPUs)',7759),
('NVDA',2019,'Gaming (GPUs)',5518),
('NVDA',2018,'Gaming (GPUs)',6246),
('NVDA',2020,'Professional Visualization',1053),
('NVDA',2019,'Professional Visualization',1212),
('NVDA',2018,'Professional Visualization',1130),
('NVDA',2020,'Data Center',6696),
('NVDA',2019,'Data Center',2983),
('NVDA',2018,'Data Center',2932),
('NVDA',2020,'Automotive',536),
('NVDA',2019,'Automotive',700),
('NVDA',2018,'Automotive',641),
('NVDA',2020,'OEM & Other',631),
('NVDA',2019,'OEM & Other',505),
('NVDA',2018,'OEM & Other',767),
('PYPL',2020,'Transactions Fees',19918),
('PYPL',2019,'Transactions Fees',16099),
('PYPL',2018,'Transactions Fees',13709),
('PYPL',2020,'Other (partnerships, referral, subscription, gateway, Etc)',1536),
('PYPL',2019,'Other (partnerships, referral, subscription, gateway, Etc)',1673),
('PYPL',2018,'Other (partnerships, referral, subscription, gateway, Etc)',1742),
('SBUX',2020,'Company-operated stores',19164),
('SBUX',2019,'Company-operated stores',21544),
('SBUX',2018,'Company-operated stores',19690),
('SBUX',2020,'Licensed stores',2327),
('SBUX',2019,'Licensed stores',2875),
('SBUX',2018,'Licensed stores',2652),
('SBUX',2020,'Other (Packaged Coffee, Tea and ready-to-drink Beverages)',2026),
('SBUX',2019,'Other (Packaged Coffee, Tea and ready-to-drink Beverages)',2089),
('SBUX',2018,'Other (Packaged Coffee, Tea and ready-to-drink Beverages)',2377),
('TSLA',2020,'Electric Vehicles',27236),
('TSLA',2019,'Electric Vehicles',20821),
('TSLA',2018,'Electric Vehicles',18515),
('TSLA',2020,'Energy Generation and Storage',1994),
('TSLA',2019,'Energy Generation and Storage',1531),
('TSLA',2018,'Energy Generation and Storage',1555),
('TSLA',2020,'Other (Vehicle Services, Sales of used vehicles, Retail Merchandise, Vehicle Insurance).',2306),
('TSLA',2019,'Other (Vehicle Services, Sales of used vehicles, Retail Merchandise, Vehicle Insurance).',2226),
('TSLA',2018,'Other (Vehicle Services, Sales of used vehicles, Retail Merchandise, Vehicle Insurance).',1391),
('WMT',2020,'Net Sales',555233),
('WMT',2019,'Net Sales',519926),
('WMT',2018,'Net Sales',510329),
('WMT',2020,'Membership',3918),
('WMT',2019,'Membership',4038),
('WMT',2018,'Membership',4076),
('CRM',2020,'Subscription and support',19976),
('CRM',2019,'Subscription and support',16043),
('CRM',2018,'Subscription and support',12413),
('CRM',2020,'Professional services and other',1276),
('CRM',2019,'Professional services and other',1055),
('CRM',2018,'Professional services and other',869),
('KO',2020,'Europe, Middle East & Africa',6057),
('KO',2019,'Europe, Middle East & Africa',7058),
('KO',2018,'Europe, Middle East & Africa',7099),
('KO',2020,'Latin America',3499),
('KO',2019,'Latin America',4118),
('KO',2018,'Latin America',4010),
('KO',2020,'North America',11477),
('KO',2019,'North America',11915),
('KO',2018,'North America',11630),
('KO',2020,'Asia Pacific',4722),
('KO',2019,'Asia Pacific',5327),
('KO',2018,'Asia Pacific',5185),
('KO',2020,'Global Ventures',1991),
('KO',2019,'Global Ventures',2562),
('KO',2018,'Global Ventures',770),
('KO',2020,'Bottling Investments',6265),
('KO',2019,'Bottling Investments',7440),
('KO',2018,'Bottling Investments',6787),
('KO',2020,'Corporate',46),
('KO',2019,'Corporate',94),
('KO',2018,'Corporate',92),
('KO',2020,'Eliminations',-1043),
('KO',2019,'Eliminations',-1248),
('KO',2018,'Eliminations',-1273);