-- ��ũ��Ʈ �ۼ� �� ���� ����
-- 1. �׻� DROP ������ ���� �ۼ��Ѵ�!!
-- ���Ŀ� ������� ���̺� �Ǵ� ������ ���� �̸���
-- �ߺ��Ǽ� ��ũ��Ʈ ���� �߰��� ������ ���� Ȯ���� ���̱�
-- 2. �׻� ���̺� CREATE ���� �ۼ� ������ �θ� ���̺� --> �ڽ� ���̺�
-- ������ ����Ѵ�!! (�ܷ�Ű �������� ����)
-- �ݴ�� DROP ���� �������� �ڽ����̺� --> �θ����̺� ������ ���



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

-- ���� �ܰ迡���� ������� ���̺� ���� �����͸� � �־�ΰ�
-- �׽�Ʈ �ϴ� ���� ����.
--> ���õ����� == ���̵�����

INSERT INTO MEMBER VALUES(SEQ_USERNO.NEXTVAL
                        , 'admin'
                        , '1234'
                        , '������'
                        , 'M'
                        , 45
                        , 'admin@naver.com'
                        , '01012341111'
                        , '����� ������'
                        , '�����ڱ�,����'
                        , '2021/01/25');
INSERT INTO MEMBER VALUES(SEQ_USERNO.NEXTVAL
                        , 'user01'
                        , 'pass01'
                        , 'ȫ���'
                        , 'F'
                        , 23
                        , NULL
                        , '01064789999'
                        , NULL
                        , '��ȭ����'
                        , '2021/07/13');
-- �׻� ��ũ��Ʈ ���� ������ COMMIT ��ɹ��� ���ִ� ���� ����!!
COMMIT;

-- ��ũ��Ʈ ���� �Ϸ� �� ��ü ��ȸ
SELECT * FROM MEMBER;

-------------------------------------------------------------------

-- 1. ȸ�� �߰��� ������


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


-- 2. ȸ�� ��ü ��ȸ�� ������
SELECT * FROM MEMBER;

-- 3. ȸ�� ���̵�� �˻��� ������
SELECT *
FROM MEMBER
WHERE USERID= 'XXX';

-- 4. ȸ�� �̸� Ű���� �˻��� ������
SELECT * FROM MEMBER WHERE USERNAME LIKE '%XXX%';

-- 5. ȸ�� ���� ����� ������
UPDATE MEMBER 
 SET USERPWD = 'XXX'
   , EMAIL = 'XXXXXXXXXX'
   , PHONE = 'XXX'
   , ADDRESS = 'XXXXXXXXXX'
 WHERE USERID = 'XXX';
 
DELETE MEMBER
















