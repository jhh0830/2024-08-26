-- JDBC 수업용 계정 생성
CREATE USER JDBC IDENTIFIED BY JDBC;
-- 최소한의 권한 부여
GRANT CONNECT, RESOURCE TO JDBC;