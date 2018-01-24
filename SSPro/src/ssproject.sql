-- ���̺� ���� 20180118 ����  ����

DROP TABLE ASK;

CREATE TABLE ASK
(
    ASK_ID    VARCHAR2(10) NOT NULL,
    ASK_STARTDATE    DATE NOT NULL,
    ASK_FINISHDATE    DATE NOT NULL,
    ASK_MEMO    VARCHAR2(1000) NOT NULL,
    ASK_IMAGE1    VARCHAR2(300) NOT NULL,
    ASK_IMAGE2    VARCHAR2(300),
    ASK_IMAGE3    VARCHAR2(300),
    AMEMBER_ID    VARCHAR2(10) NOT NULL,
    SPACEPOST_ID    VARCHAR2(10) NOT NULL,
    ASK_STATE    VARCHAR2(20) NOT NULL -- ���, ����, Ȯ�� 
);


DROP TABLE BLACKLIST;

CREATE TABLE BLACKLIST
(
    BLACKLIST_ID    VARCHAR2(10) NOT NULL,
    BLACKLIST_COUNT    VARCHAR2(3) NOT NULL,
    AMEMBER_ID    VARCHAR2(10) NOT NULL
);


DROP TABLE HASHTAG;

CREATE TABLE HASHTAG
(
    SPACEPOST_ID    VARCHAR2(10) NOT NULL,
    HASHTAG_ID    VARCHAR2(10) NOT NULL,
    HASHTAG_NAME    VARCHAR2(50) NOT NULL
);


DROP TABLE SS;

CREATE TABLE SS
(
    SS_ID    VARCHAR2(10) NOT NULL,
    SS_NAME    VARCHAR2(50) NOT NULL,
    SS_PHONE    VARCHAR2(15) NOT NULL,
    SS_ADDRESS    VARCHAR2(300) NOT NULL,
    SS_MEMO    VARCHAR2(500) NOT NULL
);


DROP TABLE SPACE_REVIEW;

CREATE TABLE SPACE_REVIEW
(
    RSPACE_ID    VARCHAR2(10) NOT NULL,
    RSPACE_SCORE    NUMBER(3) NOT NULL,
    RSPACE_MEMO    VARCHAR2(300) NOT NULL,
    SPACEPOST_ID    VARCHAR2(10) NOT NULL,
    AMEMBER_ID    VARCHAR2(10) NOT NULL
);


DROP TABLE WORK_REVIEW;

CREATE TABLE WORK_REVIEW
(
    RWORK_ID    VARCHAR2(10) NOT NULL,
    RWORK_SCORE    NUMBER(3) NOT NULL,
    RWORK_MEMO    VARCHAR2(300) NOT NULL,
    SMEMBER_ID    VARCHAR2(10) NOT NULL,
    AMEMBER_ID    VARCHAR2(10) NOT NULL
);

DROP TABLE SPACEPOST;

CREATE TABLE SPACEPOST
(
    SPACEPOST_ID    VARCHAR2(10) NOT NULL,
    SMEMBER_ID    VARCHAR2(10) NOT NULL,
    SPACEPOST_AREA    VARCHAR2(20) NOT NULL,
    SPACEPOST_SHOPNAME    VARCHAR2(100) NOT NULL,
    SPACEPOST_PHONE    VARCHAR2(50) NOT NULL,
    SPACEPOST_ADDRESS    VARCHAR2(300) NOT NULL,
    SPACEPOST_SIZE    VARCHAR2(50) NOT NULL,
    SPACEPOST_SECTION   VARCHAR2(50) NOT NULL,
    SPACEPOST_IMAGE1    VARCHAR2(300) NOT NULL,
    SPACEPOST_IMAGE2    VARCHAR2(300) NOT NULL,
    SPACEPOST_IMAGE3    VARCHAR2(300) NOT NULL,
    SPACEPOST_STARTDATE    DATE NOT NULL,
    SPACEPOST_FINISHDATE    DATE NOT NULL,
    SPACEPOST_SORT    VARCHAR2(50) NOT NULL,
    SPACEPOST_MEMO    VARCHAR2(1500) NOT NULL
);

DROP TABLE MEMBER_ARTIST;

CREATE TABLE MEMBER_ARTIST
(
    AMEMBER_ID    VARCHAR2(10) NOT NULL,
    AMEMBER_NAME    VARCHAR2(30) NOT NULL,
    AMEMBER_EMAIL    VARCHAR2(150) NOT NULL,
    AMEMBER_PASS    VARCHAR2(50) NOT NULL,
    AMEMBER_MAJOR    VARCHAR2(30),
    AMEMBER_PHONE    VARCHAR2(15) NOT NULL,
    AMEMBER_GRADE    NUMBER(3) NOT NULL,
    AMEMBER_SCORE    NUMBER(10) NOT NULL
);

DROP TABLE MEMBER_SPACE;

CREATE TABLE MEMBER_SPACE
(
    SMEMBER_ID    VARCHAR2(10) NOT NULL,
    SMEMBER_NAME    VARCHAR2(30) NOT NULL,
    SMEMBER_EMAIL    VARCHAR2(150) NOT NULL,
    SMEMBER_PASS    VARCHAR2(50) NOT NULL,
    SMEMBER_PHONE    VARCHAR2(15) NOT NULL
);


-- PK ����

ALTER TABLE ASK DROP PRIMARY KEY;
ALTER TABLE ASK ADD CONSTRAINT ASK_PK PRIMARY KEY ( ASK_ID );


ALTER TABLE BLACKLIST DROP PRIMARY KEY;
ALTER TABLE BLACKLIST ADD CONSTRAINT BLACKLIST_PK PRIMARY KEY ( BLACKLIST_ID );



ALTER TABLE HASHTAG DROP PRIMARY KEY;
ALTER TABLE HASHTAG ADD CONSTRAINT HASHTAG_PK PRIMARY KEY ( HASHTAG_ID );
 
ALTER TABLE MEMBER_ARTIST DROP PRIMARY KEY;
ALTER TABLE MEMBER_ARTIST ADD CONSTRAINT MEMBER_ARTIST_PK PRIMARY KEY ( AMEMBER_ID );


ALTER TABLE MEMBER_SPACE DROP PRIMARY KEY;
ALTER TABLE MEMBER_SPACE ADD CONSTRAINT MEMBER_SPACE_PK PRIMARY KEY ( SMEMBER_ID );
 
ALTER TABLE SPACE_REVIEW DROP PRIMARY KEY;
ALTER TABLE SPACE_REVIEW ADD CONSTRAINT SPACE_REVIEW_PK PRIMARY KEY ( RSPACE_ID );


ALTER TABLE SPACEPOST DROP PRIMARY KEY;
ALTER TABLE SPACEPOST 
ADD CONSTRAINT SPACEPOST_PK PRIMARY KEY ( SPACEPOST_ID );



ALTER TABLE SS DROP PRIMARY KEY;
ALTER TABLE SS ADD CONSTRAINT SS_PK PRIMARY KEY ( SS_ID );



ALTER TABLE WORK_REVIEW DROP PRIMARY KEY;
ALTER TABLE WORK_REVIEW ADD CONSTRAINT WORK_REVIEW_PK  PRIMARY KEY ( RWORK_ID );


-- FK����

ALTER TABLE WORK_REVIEW   DROP CONSTRAINT FK_WORK_REVIEW_AM ;

ALTER TABLE WORK_REVIEW
ADD CONSTRAINT FK_WORK_REVIEW_AM FOREIGN KEY(AMEMBER_ID)
REFERENCES MEMBER_ARTIST(AMEMBER_ID);


ALTER TABLE WORK_REVIEW  DROP CONSTRAINT FK_WORK_REVIEW_SM ;

ALTER TABLE WORK_REVIEW
ADD CONSTRAINT FK_WORK_REVIEW_SM FOREIGN KEY(SMEMBER_ID)
REFERENCES MEMBER_SPACE(SMEMBER_ID);


ALTER TABLE SPACE_REVIEW DROP CONSTRAINT FK_SPACE_REVIEW_SP ;

ALTER TABLE SPACE_REVIEW
ADD CONSTRAINT FK_SPACE_REVIEW_SP FOREIGN KEY(SPACEPOST_ID)
REFERENCES SPACEPOST(SPACEPOST_ID);

ALTER TABLE SPACE_REVIEW DROP CONSTRAINT FK_SPACE_REVIEW_AM ;

ALTER TABLE SPACE_REVIEW
ADD CONSTRAINT FK_SPACE_REVIEW_AM FOREIGN KEY(AMEMBER_ID)
REFERENCES MEMBER_ARTIST(AMEMBER_ID);

ALTER TABLE ASK DROP CONSTRAINT FK_ASK_AM ;

ALTER TABLE ASK
ADD CONSTRAINT FK_ASK_AM FOREIGN KEY(AMEMBER_ID)
REFERENCES MEMBER_ARTIST(AMEMBER_ID);


ALTER TABLE ASK DROP CONSTRAINT FK_ASK_SP ;

ALTER TABLE ASK
ADD CONSTRAINT FK_ASK_SP FOREIGN KEY(SPACEPOST_ID)
REFERENCES SPACEPOST(SPACEPOST_ID);


ALTER TABLE BLACKLIST DROP CONSTRAINT FK_BLACKLIST ;

ALTER TABLE BLACKLIST
ADD CONSTRAINT FK_BLACKLIST FOREIGN KEY(AMEMBER_ID)
REFERENCES MEMBER_ARTIST(AMEMBER_ID);


ALTER TABLE HASHTAG DROP CONSTRAINT FK_HASHTAG ;

ALTER TABLE HASHTAG
ADD CONSTRAINT FK_HASHTAG FOREIGN KEY(SPACEPOST_ID)
REFERENCES SPACEPOST(SPACEPOST_ID);


ALTER TABLE SPACEPOST DROP CONSTRAINT FK_SPACEPOST ;

ALTER TABLE SPACEPOST
ADD CONSTRAINT FK_SPACEPOST FOREIGN KEY(SMEMBER_ID)
REFERENCES MEMBER_SPACE(SMEMBER_ID);


-- ������ ����

  DROP SEQUENCE seq_A;
  CREATE SEQUENCE seq_A
                  INCREMENT BY 1
                  START WITH 001
                  MAXVALUE 100
                  NOCYCLE
                  NOCACHE;

  DROP SEQUENCE seq_B;
  CREATE SEQUENCE seq_B
                  INCREMENT BY 1
                  START WITH 001
                  MAXVALUE 100
                  NOCYCLE
                  NOCACHE;

  DROP SEQUENCE seq_H;
  CREATE SEQUENCE seq_H
                  INCREMENT BY 1
                  START WITH 001
                  MAXVALUE 100
                  NOCYCLE
                  NOCACHE;

  DROP SEQUENCE seq_SM;
  CREATE SEQUENCE seq_SM
                  INCREMENT BY 1
                  START WITH 001
                  MAXVALUE 100
                  NOCYCLE
                  NOCACHE;


  DROP SEQUENCE seq_AM;
  CREATE SEQUENCE seq_AM
                  INCREMENT BY 1
                  START WITH 001
                  MAXVALUE 100
                  NOCYCLE
                  NOCACHE;

  DROP SEQUENCE seq_RS;
  CREATE SEQUENCE seq_RS
                  INCREMENT BY 1
                  START WITH 001
                  MAXVALUE 100
                  NOCYCLE
                  NOCACHE;


  DROP SEQUENCE seq_SP;
  CREATE SEQUENCE seq_SP
                  INCREMENT BY 1
                  START WITH 001
                  MAXVALUE 100
                  NOCYCLE
                  NOCACHE;

  DROP SEQUENCE seq_SS;
  CREATE SEQUENCE seq_SS
                  INCREMENT BY 1
                  START WITH 001
                  MAXVALUE 100
                  NOCYCLE
                  NOCACHE;

  DROP SEQUENCE seq_RW;
  CREATE SEQUENCE seq_RW
                  INCREMENT BY 1
                  START WITH 001
                  MAXVALUE 100
                  NOCYCLE
                  NOCACHE;

COMMIT;


--MEMBER_SPACE DATA
insert into MEMBER_Space values ('SM'||lpad (seq_SM.nextval,3,0) , '������','hjs2343@naver.com', '1234', '01042023831');
insert into MEMBER_Space values ('SM'||lpad (seq_SM.nextval,3,0) , '���α�','mingyu@naver.com', '1234', '01000000000');
insert into MEMBER_Space values ('SM'||lpad (seq_SM.nextval,3,0) , 'ȫ����','ujin@daum.net', '1234', '01012345678');
insert into MEMBER_Space values ('SM'||lpad (seq_SM.nextval,3,0) , '�ڹμ�','sooblend@naver.com', '1234', '01057892345');
insert into MEMBER_Space values ('SM'||lpad (seq_SM.nextval,3,0) , '������','hdubidup@naver.com', '1234', '01054648787');
insert into MEMBER_Space values ('SM'||lpad (seq_SM.nextval,3,0) , '������','won123@naver.com', '1234', '01055555555');

--MEMBER_ARTIST DATA 
insert into MEMBER_ARTIST values ('AM'||lpad (seq_AM.nextval,3,0) , '�迵��','lim59@naver.com', '1234', 'HONGIK', '01042022254','0','0');
insert into MEMBER_ARTIST values ('AM'||lpad (seq_AM.nextval,3,0) , '���ϴ�','honey@naver.com', '1234', '���δ��б�', '01042022595','0','0');
insert into MEMBER_ARTIST values ('AM'||lpad (seq_AM.nextval,3,0) , '����','sung89@naver.com', '1234', 'HONGIK', '01078889454','0','0');
insert into MEMBER_ARTIST values ('AM'||lpad (seq_AM.nextval,3,0) , '�̱���','jealee@naver.com', '1234', '��ȭ���ڴ��б�', '01089784451','0','0');
insert into MEMBER_ARTIST values ('AM'||lpad (seq_AM.nextval,3,0) , 'sunny','sunny@daum.net', '1234', '������б�', '01089496151','0','0');
insert into MEMBER_ARTIST values ('AM'||lpad (seq_AM.nextval,3,0) , '�ʹ̼�','dust@naver.com', '1234', '�Ǳ����б�', '01078945554','0','0');

--SPACEPOST DATA


insert into SPACEPOST values ('SP'||lpad (seq_SP.nextval,3,0), 'SM002','������','������ �½� ������', '0504-0905-8898','����Ư���� ������ ������ 395-36 4��','100*100','2','../src/image','../src/image','../src/image',
to_date('18/02/01','yy/MM/DD'),to_date('18/09/01','yy/MM/DD'),'�������','���Ĩ���� ä���� �߿� ���������� Ư���� �߿��׶��� �����½ǿ��� �����ϴ� �ϴ��� û���� ������ ������ �׿����� �Ʒ��� ���� �����bar
DJING �� ������ ������� (CDJ2000 & DJM2000 NEXUS) �Ĺ��� �������ִ� ��Ư�� �÷��׸���');

insert into SPACEPOST values ('SP'||lpad (seq_SP.nextval,3,0), 'SM002','������','�����������', '050-7459-9549','����Ư���� ������ ������ 439-44 1�� �����������','100*200','2','../src/image','../src/image','../src/image',
to_date('18/02/01','yy/MM/DD'),to_date('18/09/01','yy/MM/DD'),'ī��', '�ұԸ� ��ũ��, ������ Ŭ�󽺿� ���� �ұԸ������� ���Ӱ� �� ��︮�� �����Դϴ�. ������������� �����ϰ� �ƴ��� �����Ⱑ ������ ���� ģ���ϰ� ����ϰ� ����ǵ��� �� ���Դϴ�. * 
������Ŭ����/��������/����ũ ���� ������ ���Ͻô� �в� ���Ḧ �����ص帮�� �ֽ��ϴ�. ������ Ŭ���� ���� �� ���� 3�ܱ��� ���������ص帮��, ������ ������ ����� ���� �� ���̺� ��ġ�� ���� ���񽺸� �� �帮�� �ֽ��ϴ�. 
������Ŭ���� ��� ���Ͻô� ���� ���� �����ٶ��ϴ�. ');


insert into SPACEPOST values ('SP'||lpad (seq_SP.nextval,3,0),'SM004','������','�������̾����̳���', '02-123-1234', '������ �ູ����',
'100*100','2','../src/image','../src/image','../src/image',to_date('18/02/01','yy/MM/DD'),to_date('18/09/01','yy/MM/DD'),
'ī��','����õ�� ������ ���̴� ���� �ǹ����� �� ����â���� �Ǿ� �ִ� 10�� �Ը��� ���� ���̳��� �Դϴ�  ���� ���� ���񽺰� ���� �Ǹ� ��ũ���� �ٸ��� ���Ӱ� �߿��� ���ÿ� ������ ��Ұ� �ɰ��Դϴ�.');

insert into SPACEPOST values ('SP'||lpad (seq_SP.nextval,3,0),'SM005', '��������','�����ٹݻ�', '02-123-1234','����Ư���� �������� ��굿6�� 5 �������� 4�� ��ž',
'100*100','2','../src/image','../src/image','../src/image',to_date('18/02/01','yy/MM/DD'),to_date('18/09/01','yy/MM/DD'),'�������',
'2ȣ��, 9ȣ�� ��꿪 ���� 3��.�����ٴڰ� ���񰡱�, �Ĺ���� ������ �����Ⱑ �ִ� �����Դϴ�.������Ʃ��� ������ ������ ä������ �ֽ��ϴ�.�ڼ��� ���� �� ��� ��α� / �ν�Ÿ�׷����� ������ �� �ֽ��ϴ�.');

insert into SPACEPOST values ('SP'||lpad (seq_SP.nextval,3,0),'SM005', '������','����â��', '02-100-1234','����Ư���� ������ ������2�� 309-59 ����â��','100*100',
'2','../src/image','../src/image','../src/image',to_date('18/02/01','yy/MM/DD'),to_date('18/09/01','yy/MM/DD'),'ī��','2015�� �������� ������ ����â��� ������ ������ ���� �δ���Ʈ���� ������ ������ī��� ���� �������ð� ����Ǹ� �Ļ�� �ַ��� ���ᰡ ������ ���չ�ȭ�����Դϴ�. ���� �Ը�� 1�� Ȧ�� 45�� �Ը�� 70~100��, 
2�� ���ǽ� �� ���̳����� 20�� ������ �����մϴ�. ���ݱ��� �پ��� ��ȭ�� ���, CF �Կ��� �̷������ �������� ���÷��̽��� �ڸ��ű��ϰ� �ֽ��ϴ�.');
 
--HASH DATA

insert into hashtag values ('SP002','H'||lpad (seq_SP.nextval,3,0),'�Ĺ�');
insert into hashtag values ('SP002','H'||lpad (seq_SP.nextval,3,0),'�½�');
insert into hashtag values ('SP002','H'||lpad (seq_SP.nextval,3,0),'�������');
insert into hashtag values ('SP002','H'||lpad (seq_SP.nextval,3,0),'�ƴ��Ѻ�����');
insert into hashtag values ('SP002','H'||lpad (seq_SP.nextval,3,0),'������Ŭ����');
insert into hashtag values ('SP003','H'||lpad (seq_SP.nextval,3,0),'����õ');
insert into hashtag values ('SP003','H'||lpad (seq_SP.nextval,3,0),'������');
insert into hashtag values ('SP004','H'||lpad (seq_SP.nextval,3,0),'�����ٹݻ�');
insert into hashtag values ('SP004','H'||lpad (seq_SP.nextval,3,0),'��꿪��ž');
insert into hashtag values ('SP004','H'||lpad (seq_SP.nextval,3,0),'����������');
insert into hashtag values ('SP005','H'||lpad (seq_SP.nextval,3,0),'������ȣ');
insert into hashtag values ('SP005','H'||lpad (seq_SP.nextval,3,0),'���÷��̽�');

--ASK DATA

insert into ASK values ('A'||lpad (seq_A.nextval,3,0), to_date('18/02/01','yy/MM/DD'), to_date('18/09/01','yy/MM/DD'),
'�б����� ������ǰ�� ����� �Ʊ���� �����ϰ� �ͽ��ϴ� �� ��ǰ������ �����ؼ� �����ּ���','../image/work1','../image/work2','', 'AM002', 'SP002', '���');

insert into ASK values ('A'||lpad (seq_A.nextval,3,0), to_date('18/02/01','yy/MM/DD'), to_date('18/09/01','yy/MM/DD'),
'��ǰȰ���� �ϴµ� ���ð����� ����ġ �ʾ� ã���� ','../image/work1','../image/work2','../image/work3', 'AM002', 'SP002', '���');

insert into ASK values ('A'||lpad (seq_A.nextval,3,0), to_date('18/02/01','yy/MM/DD'), to_date('18/09/01','yy/MM/DD'),
'�������� �ܿ��� �ְ��Դϴ�, �� �ɰ�;��','../image/work1','','', 'AM003', 'SP002', '���');

insert into ASK values ('A'||lpad (seq_A.nextval,3,0), to_date('18/02/01','yy/MM/DD'), to_date('18/09/01','yy/MM/DD'),
'�����׸��⸰�׸��� �ʰ� �׸� �⸰�׸����� ���ƿ�','../image/work1','../image/work2','', 'AM003', 'SP003', '���');

insert into ASK values ('A'||lpad (seq_A.nextval,3,0), to_date('18/02/01','yy/MM/DD'), to_date('18/09/01','yy/MM/DD'),
' ������ ������ ���� �׸����ø� ��û �մϴ�.','../image/work1','','', 'AM004', 'SP004', '���');

insert into ASK values ('A'||lpad (seq_A.nextval,3,0), to_date('18/02/01','yy/MM/DD'), to_date('18/09/01','yy/MM/DD'),
'���󿡴� �پ��� �׸��� ������ ������ ������ ���� �� ��︱�� ���� �׸��� ���� �׸��Դϴ�','../image/work1','../image/work2','../image/work3', 'AM004', 'SP004', '���');

insert into ASK values ('A'||lpad (seq_A.nextval,3,0), to_date('18/02/01','yy/MM/DD'), to_date('18/09/01','yy/MM/DD'),
'�׸��� ���ð� �������ôٸ� ������ �����ּ��� �׷� ��Ʈ�������� �߰������� �� �����ڽ��ϴ�.','../image/work1','../image/work2','../image/work3', 'AM005', 'SP005', '���');

insert into ASK values ('A'||lpad (seq_A.nextval,3,0), to_date('18/02/01','yy/MM/DD'), to_date('18/09/01','yy/MM/DD'),
'����ؿ�','../image/work1','../image/work2','../image/work3', 'AM008', 'SP005', '���');


-- SPACEREVIEW

insert into SPACE_REVIEW values ('RS'||lpad (seq_RS.nextval,3,0),5,'ģ����� ��ǰ���� ���ؼ� �뿩�ߴµ� �ʹ� ���Ѿ�� ~~�⵵ ���� �ƴ��ϰ� ���ڰ� �����Ⱑ �ʹ� ���Ҿ��!!���� ������ �� �� �̿��ϰ�;��~~~','SP002','AM002');
insert into SPACE_REVIEW values ('RS'||lpad (seq_RS.nextval,3,0),5,'������ ���� ������ ���п� ��հ� ���� �ѿ����ϴ�~ �����ؿ�^^','SP002','AM003');
insert into SPACE_REVIEW values ('RS'||lpad (seq_RS.nextval,3,0),4,'���� ��ü�� �����ߴµ� �ٵ� �ʹ� ���ٰ� �������ϼż� ������ �� �����ǻ� 100% �Դϴ�!','SP003','AM002');
insert into SPACE_REVIEW values ('RS'||lpad (seq_RS.nextval,3,0),3,'ī�䰡 �ʹ� ���ڰ� ����ؼ� ���Ҿ�� �ı�� ������ӵ� �������� �� ����Ǿ��־����. �׶󽺵� �ʹ������µ� ���ͼ� �ۿ��� ����� �ƽ��׿�Ф�  �������� �������� �������ϴ� :)','SP003','AM003');
insert into SPACE_REVIEW values ('RS'||lpad (seq_RS.nextval,3,0),1,'���� ��մ� �ð� �������־����Ͱ��ƿ�!','SP004','AM004');
insert into SPACE_REVIEW values ('RS'||lpad (seq_RS.nextval,3,0),4,'�ʹ� ���Ѿ�� ~~�⵵ ���� �ƴ��ϰ� ���ڰ� �����Ⱑ �ʹ� ���Ҿ��!!','SP005','AM005');
insert into SPACE_REVIEW values ('RS'||lpad (seq_RS.nextval,3,0),5,'�������� ���̱� �ʹ� ���Ҿ�� !','SP005','AM006');

-- WORK_REVIEW

insert into WORK_REVIEW values ('RW'||lpad (seq_RW.nextval,3,0),5,'���� ī��� ���� �� ������ ','SM002','AM002');
insert into WORK_REVIEW values ('RW'||lpad (seq_RW.nextval,3,0),4,'�������� �����ϰ� ���� ��ǰ�Դϴ�','SM003','AM002');
insert into WORK_REVIEW values ('RW'||lpad (seq_RW.nextval,3,0),1,'�������� ���� ���������� ','SM002','AM003');
insert into WORK_REVIEW values ('RW'||lpad (seq_RW.nextval,3,0),5,'�۰��� ��ǰ�� ��� �ɾ ��ǰ�� ���� �� �����ϴ�','SM003','AM003');
insert into WORK_REVIEW values ('RW'||lpad (seq_RW.nextval,3,0),2,'����ε� ��ǰ���� �غ��ϼ���','SM004','AM004');
insert into WORK_REVIEW values ('RW'||lpad (seq_RW.nextval,3,0),4,'�� ���� �����մϴ�','SM005','AM005');
insert into WORK_REVIEW values ('RW'||lpad (seq_RW.nextval,3,0),5,'���� �η��� ���� ������ �Դϴ�','SM006','AM006');



COMMIT;