SELECT * FROM profiles

CREATE TABLE profiles(
    id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(255)
);

INSERT INTO profiles(id, name)
VALUES
    ('AAPL', 'Apple'),
    ('MSFT', 'Microsoft')