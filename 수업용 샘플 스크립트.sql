-- 스크립트 작성 시 주의 사항
-- 1. 항상 DROP 구문을 먼저 작성한다!!
-- 추후에 만들어질 테이블 또는 시퀀스 등의 이름이
-- 중복되서 스크립트 실행 중간에 오류가 터질 확률을 줄이기
-- 2. 항상 테이블 CREATE 구문 작성 순서는 부모 테이블 --> 자식 테이블
-- 순서로 기술한다!! (외래키 제약조건 때문)
-- 반대로 DROP 구문 같은경우는 자식테이블 --> 부모테이블 순서로 기술



DROP TABLE MEMBER;

CREATE TABLE MEMBER (
    USERNO NUMBER PRIMARY KEY,
    USERID VARCHAR2(15) NOT NULL UNIQUE,
    USERPWD VARCHAR2(20) NOT NULL,
    USERNAME VARCHAR2(20) NOT NULL,
    GENDER CHAR(1) CHECK (GENDER IN ('M','F')),
    AGE NUMBER,
    EMAIL VARCHAR2(30),
    PHONE CHAR(11),
    ADDRESS VARCHAR2(100),
    HOBBY VARCHAR2(50),
    ENROLLDATE DATE DEFAULT SYSDATE NOT NULL
);

DROP SEQUENCE SEQ_USERNO;

CREATE SEQUENCE SEQ_USERNO
NOCACHE;

-- 개발 단계에서는 만들어진 테이블에 샘플 데이터를 몇개 넣어두고
-- 테스트 하는 것이 좋다.
--> 샘플데이터 == 더미데이터

INSERT INTO MEMBER VALUES(SEQ_USERNO.NEXTVAL
                        , 'admin'
                        , '1234'
                        , '관리자'
                        , 'M'
                        , 45
                        , 'admin@naver.com'
                        , '01012341111'
                        , '서울시 마포구'
                        , '낮잠자기,러닝'
                        , '2021/01/25');
INSERT INTO MEMBER VALUES(SEQ_USERNO.NEXTVAL
                        , 'user01'
                        , 'pass01'
                        , '홍길녀'
                        , 'F'
                        , 23
                        , NULL
                        , '01064789999'
                        , NULL
                        , '영화보기'
                        , '2021/07/13');
-- 항상 스크립트 구문 끝에는 COMMIT 명령문을 써주는 것이 좋다!!
COMMIT;

-- 스크립트 실행 완료 후 전체 조회
SELECT * FROM MEMBER;

-------------------------------------------------------------------

-- 1. 회원 추가용 쿼리문


INSERT INTO MEMBER VALUES(SEQ_USERNO.NEXTVAL
                        , 'XXX'
                        , 'XXX'
                        , 'XXX'
                        , 'X'
                        , XX
                        , 'XXXX'
                        , 'XXXX'
                        , 'XXXX'
                        , 'XXX'
                        , DEFAULT);


-- 2. 회원 전체 조회용 쿼리문
SELECT * FROM MEMBER;

-- 3. 회원 아이디로 검색용 쿼리문
SELECT *
FROM MEMBER
WHERE USERID= 'XXX';

-- 4. 회원 이름 키워드 검색용 쿼리문
SELECT * FROM MEMBER WHERE USERNAME LIKE '%XXX%';

-- 5. 회원 정보 변경용 쿼리문
UPDATE MEMBER 
 SET USERPWD = 'XXX'
   , EMAIL = 'XXXXXXXXXX'
   , PHONE = 'XXX'
   , ADDRESS = 'XXXXXXXXXX'
 WHERE USERID = 'XXX';
 
DELETE MEMBER
















