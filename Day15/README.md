Day15 (2017-10-26)
=============

### DB 설치하고 이클립스에 연동하는 것만 하고 끝~

1. MySQL Server 설치
2. mySQLConnector.jar 파일 복사 (Java설치폴더/lib)
3. basicjsp DB 생성
4. Eclipse 안에서 basicjsp 연동
    (mySQLConnect.jar 복사)
5. sql문 테스트

####
```sql
grant select, insert, update, delete, create, drop, alter
on basicjsp.* to 'jspid'@'localhost'
identified by 'jsppass';
```