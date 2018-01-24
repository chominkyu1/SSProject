-- 테이블 생성 20180118 기준  최종

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
    ASK_STATE    VARCHAR2(20) NOT NULL -- 대기, 거절, 확정 
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


-- PK 설정

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


-- FK설정

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


-- 시퀀스 생성

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
insert into MEMBER_Space values ('SM'||lpad (seq_SM.nextval,3,0) , '한정숙','hjs2343@naver.com', '1234', '01042023831');
insert into MEMBER_Space values ('SM'||lpad (seq_SM.nextval,3,0) , '조민규','mingyu@naver.com', '1234', '01000000000');
insert into MEMBER_Space values ('SM'||lpad (seq_SM.nextval,3,0) , '홍유진','ujin@daum.net', '1234', '01012345678');
insert into MEMBER_Space values ('SM'||lpad (seq_SM.nextval,3,0) , '박민수','sooblend@naver.com', '1234', '01057892345');
insert into MEMBER_Space values ('SM'||lpad (seq_SM.nextval,3,0) , '정현지','hdubidup@naver.com', '1234', '01054648787');
insert into MEMBER_Space values ('SM'||lpad (seq_SM.nextval,3,0) , '전량원','won123@naver.com', '1234', '01055555555');

--MEMBER_ARTIST DATA 
insert into MEMBER_ARTIST values ('AM'||lpad (seq_AM.nextval,3,0) , '김영림','lim59@naver.com', '1234', 'HONGIK', '01042022254','0','0');
insert into MEMBER_ARTIST values ('AM'||lpad (seq_AM.nextval,3,0) , '한하늬','honey@naver.com', '1234', '국민대학교', '01042022595','0','0');
insert into MEMBER_ARTIST values ('AM'||lpad (seq_AM.nextval,3,0) , '한희성','sung89@naver.com', '1234', 'HONGIK', '01078889454','0','0');
insert into MEMBER_ARTIST values ('AM'||lpad (seq_AM.nextval,3,0) , '이길재','jealee@naver.com', '1234', '이화여자대학교', '01089784451','0','0');
insert into MEMBER_ARTIST values ('AM'||lpad (seq_AM.nextval,3,0) , 'sunny','sunny@daum.net', '1234', '서울대학교', '01089496151','0','0');
insert into MEMBER_ARTIST values ('AM'||lpad (seq_AM.nextval,3,0) , '초미세','dust@naver.com', '1234', '건국대학교', '01078945554','0','0');

--SPACEPOST DATA


insert into SPACEPOST values ('SP'||lpad (seq_SP.nextval,3,0), 'SM002','마포구','망원동 온실 망원도', '0504-0905-8898','서울특별시 마포구 망원동 395-36 4층','100*100','2','../src/image','../src/image','../src/image',
to_date('18/02/01','yy/MM/DD'),to_date('18/09/01','yy/MM/DD'),'레스토랑','우드칩으로 채워진 야외 옥상정원의 특별함 야외테라스의 대형온실에서 만끽하는 하늘의 청량감 오묘한 색감의 네온조명 아래서 즐기는 라운지bar
DJING 이 가능한 전문장비 (CDJ2000 & DJM2000 NEXUS) 식물로 가득차있는 독특한 플랜테리어');

insert into SPACEPOST values ('SP'||lpad (seq_SP.nextval,3,0), 'SM002','마포구','골든핸즈라운지', '050-7459-9549','서울특별시 마포구 망원동 439-44 1층 골든핸즈라운지','100*200','2','../src/image','../src/image','../src/image',
to_date('18/02/01','yy/MM/DD'),to_date('18/09/01','yy/MM/DD'),'카페', '소규모 워크샵, 원데이 클라스와 같은 소규모형태의 모임과 잘 어울리는 공간입니다. 골든핸즈라운지의 따뜻하고 아늑한 분위기가 모임을 더욱 친근하고 편안하게 진행되도록 할 것입니다. * 
원데이클래스/독서모임/북토크 등의 진행을 원하시는 분께 음료를 지원해드리고 있습니다. 원데이 클래스 진행 시 음료 3잔까지 무상제공해드리며, 수업의 성격을 고려해 협의 후 테이블 배치와 조닝 서비스를 해 드리고 있습니다. 
원데이클래스 운영을 원하시는 분은 별도 연락바랍니다. ');


insert into SPACEPOST values ('SP'||lpad (seq_SP.nextval,3,0),'SM004','강남구','조셉리미엄세미나룸', '02-123-1234', '도봉구 행복마을',
'100*100','2','../src/image','../src/image','../src/image',to_date('18/02/01','yy/MM/DD'),to_date('18/09/01','yy/MM/DD'),
'카페','양재천이 내려다 보이는 신축 건물내에 통 유리창으로 되어 있는 10평 규모의 대형 세미나룸 입니다  음료 무료 서비스가 제공 되며 워크샵등 다목적 모임과 중요한 미팅에 최적의 장소가 될것입니다.');

insert into SPACEPOST values ('SP'||lpad (seq_SP.nextval,3,0),'SM005', '영등포구','공간다반사', '02-123-1234','서울특별시 영등포구 당산동6가 5 강남빌딩 4층 옥탑',
'100*100','2','../src/image','../src/image','../src/image',to_date('18/02/01','yy/MM/DD'),to_date('18/09/01','yy/MM/DD'),'레스토랑',
'2호선, 9호선 당산역 도보 3분.나무바닥과 원목가구, 식물들로 따뜻한 분위기가 있는 공간입니다.셀프스튜디오 등으로 공간이 채워지고 있습니다.자세한 사진 및 운영은 블로그 / 인스타그램에서 만나실 수 있습니다.');

insert into SPACEPOST values ('SP'||lpad (seq_SP.nextval,3,0),'SM005', '성동구','사진창고', '02-100-1234','서울특별시 성동구 성수동2가 309-59 사진창고','100*100',
'2','../src/image','../src/image','../src/image',to_date('18/02/01','yy/MM/DD'),to_date('18/09/01','yy/MM/DD'),'카페','2015년 성수동에 오픈한 사진창고는 공장을 개조해 만든 인더스트리얼 느낌의 갤러리카페로 연중 사진전시가 진행되며 식사와 주류와 음료가 가능한 복합문화공간입니다. 수용 규모는 1층 홀은 45평 규모로 70~100명, 
2층 강의실 및 세미나룸은 20명 수용이 가능합니다. 지금까지 다양한 영화와 드라마, CF 촬영이 이루어졌고 성수동의 핫플레이스로 자리매김하고 있습니다.');
 
--HASH DATA

insert into hashtag values ('SP002','H'||lpad (seq_SP.nextval,3,0),'식물');
insert into hashtag values ('SP002','H'||lpad (seq_SP.nextval,3,0),'온실');
insert into hashtag values ('SP002','H'||lpad (seq_SP.nextval,3,0),'골든핸즈');
insert into hashtag values ('SP002','H'||lpad (seq_SP.nextval,3,0),'아늑한분위기');
insert into hashtag values ('SP002','H'||lpad (seq_SP.nextval,3,0),'원데이클래스');
insert into hashtag values ('SP003','H'||lpad (seq_SP.nextval,3,0),'양재천');
insert into hashtag values ('SP003','H'||lpad (seq_SP.nextval,3,0),'리버뷰');
insert into hashtag values ('SP004','H'||lpad (seq_SP.nextval,3,0),'공간다반사');
insert into hashtag values ('SP004','H'||lpad (seq_SP.nextval,3,0),'당산역옥탑');
insert into hashtag values ('SP004','H'||lpad (seq_SP.nextval,3,0),'분위기좋은');
insert into hashtag values ('SP005','H'||lpad (seq_SP.nextval,3,0),'사진선호');
insert into hashtag values ('SP005','H'||lpad (seq_SP.nextval,3,0),'핫플레이스');

--ASK DATA

insert into ASK values ('A'||lpad (seq_A.nextval,3,0), to_date('18/02/01','yy/MM/DD'), to_date('18/09/01','yy/MM/DD'),
'학교에서 졸업작품을 만든뒤 아까워서 전시하고 싶습니다 제 작품사진을 참고해서 연락주세요','../image/work1','../image/work2','', 'AM002', 'SP002', '대기');

insert into ASK values ('A'||lpad (seq_A.nextval,3,0), to_date('18/02/01','yy/MM/DD'), to_date('18/09/01','yy/MM/DD'),
'작품활동은 하는데 전시공간이 마땅치 않아 찾던중 ','../image/work1','../image/work2','../image/work3', 'AM002', 'SP002', '대기');

insert into ASK values ('A'||lpad (seq_A.nextval,3,0), to_date('18/02/01','yy/MM/DD'), to_date('18/09/01','yy/MM/DD'),
'수블렌더는 단연코 최고입니다, 꼭 걸고싶어요','../image/work1','','', 'AM003', 'SP002', '대기');

insert into ASK values ('A'||lpad (seq_A.nextval,3,0), to_date('18/02/01','yy/MM/DD'), to_date('18/09/01','yy/MM/DD'),
'내가그린기린그림은 너가 그린 기린그림보다 나아요','../image/work1','../image/work2','', 'AM003', 'SP003', '대기');

insert into ASK values ('A'||lpad (seq_A.nextval,3,0), to_date('18/02/01','yy/MM/DD'), to_date('18/09/01','yy/MM/DD'),
' 귀하의 공간에 저의 그림전시를 요청 합니다.','../image/work1','','', 'AM004', 'SP004', '대기');

insert into ASK values ('A'||lpad (seq_A.nextval,3,0), to_date('18/02/01','yy/MM/DD'), to_date('18/09/01','yy/MM/DD'),
'세상에는 다양한 그림이 있지만 귀하의 공간과 가장 잘 어울릴것 같은 그림이 저의 그림입니다','../image/work1','../image/work2','../image/work3', 'AM004', 'SP004', '대기');

insert into ASK values ('A'||lpad (seq_A.nextval,3,0), to_date('18/02/01','yy/MM/DD'), to_date('18/09/01','yy/MM/DD'),
'그림을 보시고 괜찮으시다면 저에게 연락주세요 그럼 포트폴리오를 추가적으로 더 보내겠습니다.','../image/work1','../image/work2','../image/work3', 'AM005', 'SP005', '대기');

insert into ASK values ('A'||lpad (seq_A.nextval,3,0), to_date('18/02/01','yy/MM/DD'), to_date('18/09/01','yy/MM/DD'),
'사랑해요','../image/work1','../image/work2','../image/work3', 'AM008', 'SP005', '대기');


-- SPACEREVIEW

insert into SPACE_REVIEW values ('RS'||lpad (seq_RS.nextval,3,0),5,'친구들과 작품전시 위해서 대여했는데 너무 좋앗어요 ~~향도 좋고 아늑하고 예쁘고 분위기가 너무 좋았어요!!ㅎㅎ 다음에 꼭 또 이용하고싶어요~~~','SP002','AM002');
insert into SPACE_REVIEW values ('RS'||lpad (seq_RS.nextval,3,0),5,'따뜻한 공간 분위기 덕분에 재밌게 진행 한였습니다~ 감사해요^^','SP002','AM003');
insert into SPACE_REVIEW values ('RS'||lpad (seq_RS.nextval,3,0),4,'오늘 단체로 전시했는데 다들 너무 좋다고 만족해하셔서 다음에 또 예약의사 100% 입니다!','SP003','AM002');
insert into SPACE_REVIEW values ('RS'||lpad (seq_RS.nextval,3,0),3,'카페가 너무 예쁘고 깔끔해서 좋았어요 식기와 보드게임도 종류별로 잘 구비되어있었어요. 테라스도 너무예뻤는데 눈와서 밖에서 못논게 아쉽네요ㅠㅠ  편의점과 역에서도 가깝습니다 :)','SP003','AM003');
insert into SPACE_REVIEW values ('RS'||lpad (seq_RS.nextval,3,0),1,'정말 재밌는 시간 보낼수있었던것같아요!','SP004','AM004');
insert into SPACE_REVIEW values ('RS'||lpad (seq_RS.nextval,3,0),4,'너무 좋앗어요 ~~향도 좋고 아늑하고 예쁘고 분위기가 너무 좋았어요!!','SP005','AM005');
insert into SPACE_REVIEW values ('RS'||lpad (seq_RS.nextval,3,0),5,'전문적인 분이기 너무 좋았어요 !','SP005','AM006');

-- WORK_REVIEW

insert into WORK_REVIEW values ('RW'||lpad (seq_RW.nextval,3,0),5,'저희 카페와 정말 잘 어울려요 ','SM002','AM002');
insert into WORK_REVIEW values ('RW'||lpad (seq_RW.nextval,3,0),4,'다음에도 전시하고 싶은 작품입니다','SM003','AM002');
insert into WORK_REVIEW values ('RW'||lpad (seq_RW.nextval,3,0),1,'다음에는 받지 않으려구요 ','SM002','AM003');
insert into WORK_REVIEW values ('RW'||lpad (seq_RW.nextval,3,0),5,'작가님 작품은 어디 걸어도 작품이 빛날 것 같습니다','SM003','AM003');
insert into WORK_REVIEW values ('RW'||lpad (seq_RW.nextval,3,0),2,'제대로된 작품으로 준비하세요','SM004','AM004');
insert into WORK_REVIEW values ('RW'||lpad (seq_RW.nextval,3,0),4,'네 나름 만족합니다','SM005','AM005');
insert into WORK_REVIEW values ('RW'||lpad (seq_RW.nextval,3,0),5,'명작 부럽지 않은 분위기 입니다','SM006','AM006');



COMMIT;