DROP TABLE member;

CREATE TABLE member(
    userId varchar2(20) primary key,
    userPw varchar2(255) not null,
    userName varchar2(20) not null,
    email varchar2(200) not null,
    nickname varchar2(50) unique,
    major varchar2(200),
    joinDate date default sysdate
);

INSERT INTO member (userId, userPw, userName, email, nickname) VALUES ('aaa','111','±è°¡Èñ','gahee3839@naver.com','±è±è±è');
INSERT INTO member (userId, userPw, userName, email, nickname,joinDate) VALUES ('bbb','222','±è°¡¿µ','ga3839@naver.com','¿µ¿µ¿µ',TO_DATE('21/01/01'));
select * from member ORDER BY joinDate DESC;

commit;
