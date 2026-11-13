-- 1. 데이터베이스 생성
DROP DATABASE IF EXISTS kant_shop;

CREATE DATABASE kant_shop;

-- 2.  새로 만든 데이터베이스에 접속 (특정 DB를 사용하겠다.) 
\c kant_shop


-- 3. 상품 테이블 생성  VARCHAR :CHAR의 값이 가변적일때 사용
CREATE TABLE product
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price INT NOT NULL,
    stock INT NOT NULL
);

-- 4. 상품 초기 데이터 입력
INSERT INTO product (name, price, stock) VALUES
('무선 이어폰', 35000, 100),
('무선 이어폰', 89000, 3),
('텀블러', 15000, 10),
('보조배터리', 32000, 5),
('마우스패드', 9000, 0),
('USB 허브', 30000, 10);