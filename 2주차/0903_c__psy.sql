--- DDL(데이터 정의어)
--- 테이블 변경
--- 컬럼(속성) 추가
ALTER TABLE 고객
        ADD 가입날짜 DATE;


--- 컬럼 삭제
ALTER TABLE 고객
        DROP COLUMN 가입날짜;
  
        
--- 제약조건
ALTER TABLE 고객
        ADD CONSTRAINT CHECK_AGE CHECK(나이>=20);
        
--- 제약조건 삭제
ALTER TABLE 고객
        DROP CONSTRAINT CHECK_AGE;
        
--- 테이블 삭제 
DROP TABLE 배송업체;

---DML(데이터 조작어)
---INSERT(테이블에 데이터를 삽입)

--- 고객 테이블에 데이터형 삽입
--- 모든 컬럼에 값이 삽입

--- 1번 방법 : 테이블명() 안에 모든 칼럼리스트를 나열
INSERT INTO 고객(고객아이디, 고객이름, 나이, 등급, 직업, 적립금)
        VALUES('banana', '김선우', 25, 'vip', '간호사', 2500); 
        
--- 2번 방법 : 테이블명() 안에 모든 칼럼리스트 생략
INSERT INTO 고객
        VALUES('carrot', '고명석', 28, 'gold', '교사', 4500); 
        
--- 3번 방법 : 컬럼의 순서를 변경
INSERT INTO 고객(고객아이디, 고객이름, 직업, 등급, 적립금, 나이)
        VALUES('orange', '김용욱', '학생', 'silver', 0, 22); 
       
--- 4번 방법 : 컬럼 일부를 리스트에서 생략해서 삽입 
 INSERT INTO 고객(고객아이디, 고객이름, 등급, 직업)
       VALUES('melon', '성원용', 'gold', '간호사'); 
       
 INSERT INTO 고객(고객아이디, 고객이름, 등급, 직업, 적립금)
       VALUES('peach', '오형준', 'silver', '의사', 300); 
       
 INSERT INTO 고객(고객아이디, 고객이름, 나이, 등급, 직업, 적립금)
        VALUES('pear', '채광주', 31, 'silver', '회사원', 500);
        
INSERT INTO 고객(고객아이디, 고객이름, 나이, 등급, 직업, 적립금)
        VALUES('strawberry', '최유경', 30, 'vip', '공무원', 100); 
  
        
SELECT * FROM 고객;

SELECT * FROM 제품;

 
INSERT INTO 제품 VALUES ('p02', '매운쫄면', 2500, 5500, '민국푸드');
INSERT INTO 제품 VALUES ('p03', '콩떡파이', 3600, 2600, '한빛제과');
INSERT INTO 제품 VALUES ('p04', '맛난초콜릿', 1250, 2500, '한빛제과');
INSERT INTO 제품 VALUES ('p05', '얼큰라면', 2200, 1200, '대한식품');
INSERT INTO 제품 VALUES ('p06', '통통우동', 1000, 1550, '민국푸드');
INSERT INTO 제품 VALUES ('p07', '달콤비스킷', 1650, 1500, '한빛제과');

--- 주문 테이블에 데이터 삽입

SELECT * FROM 주문;

INSERT INTO 주문 VALUES ('o03', 'banana','p06', 45, '경기도 부천시','26/09/01');
INSERT INTO 주문 VALUES ('o04', 'carrot','p02', 8, '부산시 금정구','26/07/30');
INSERT INTO 주문 VALUES ('o05', 'melon','p06', 36, '경기도 용인시','26/08/01');
INSERT INTO 주문 VALUES ('o06', 'banana','p01', 19, '충청북도 보은군','26/07/07');
INSERT INTO 주문 VALUES ('o07', 'apple','p03', 22, '서울시 영등포구','26/09/03');
INSERT INTO 주문 VALUES ('o08', 'pear','p02', 50, '강원도 춘천시','26/06/03');
INSERT INTO 주문 VALUES ('o09', 'banana','p04', 15, '전라남도 목포시','26/07/08');
INSERT INTO 주문 VALUES ('o10', 'carrot','p03', 20, '경기도 안양시','26/08/20');





