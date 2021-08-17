-- table 삭제
DROP TABLE tbl_pccs;
DROP TABLE tbl_result;
DROP TABLE tbl_item;
DROP TABLE tbl_reply;
DROP TABLE tbl_board;
DROP TABLE tbl_user;
DROP TABLE tbl_pcolor;


-- table 검색
SELECT * FROM tbl_user;
SELECT * FROM tbl_pcolor;
SELECT * FROM tbl_pccs;
SELECT * FROM tbl_board;
SELECT * FROM tbl_item;
SELECT * FROM tbl_result;
SELECT * FROM tbl_reply;

-- tbl_user 생성
CREATE TABLE tbl_user(
    user_id              VARCHAR(30) NOT NULL,
    user_password        VARCHAR(30) NOT NULL,
    user_name            VARCHAR(30),
    user_age             VARCHAR(30),
    user_gender          VARCHAR(30),
    pc_idx           INT(20),
    PRIMARY KEY(user_id),
    FOREIGN KEY(pc_idx) REFERENCES tbl_pcolor(pc_idx)
);

-- tbl_pcolor 생성
CREATE TABLE tbl_pcolor (
    pc_idx           INT(20) NOT NULL auto_increment, -- pc_idx 1 : 봄웜 / pc_idx 2 : 여쿨 / pc_idx 3 : 가웜 / pc_idx 4 : 겨쿨
    pc_name       VARCHAR(30) NOT NULL,
    pc_contents   VARCHAR(3000) NOT NULL,
    PRIMARY KEY(pc_idx)
);


-- tbl_pccs 생성
CREATE TABLE tbl_pccs (
    pccs_idx          INT(20)        NOT NULL auto_increment,
    pccs_name         VARCHAR(30)   NOT NULL,
        -- 외래키 컬럼
    pc_idx            INT(20)     NOT NULL,
    PRIMARY KEY(pccs_idx),
    FOREIGN KEY(pc_idx) REFERENCES tbl_pcolor(pc_idx)
);
select * from tbl_user
-- tbl_user 생성
CREATE TABLE tbl_user(
    user_id              VARCHAR(30) NOT NULL,
    user_password        VARCHAR(30) NOT NULL,
    user_name            VARCHAR(30),
    user_age             VARCHAR(30),
    user_gender          VARCHAR(30),
    pc_idx           INT(20),
    PRIMARY KEY(user_id),
    FOREIGN KEY(pc_idx) REFERENCES tbl_pcolor(pc_idx)
);

-- tbl_board 생성
CREATE TABLE tbl_board (
    board_idx          INT(20)        NOT NULL auto_increment,
    board_title        VARCHAR(30)   NOT NULL,
    board_contents     VARCHAR(3000) NOT NULL,
    board_count        INT(20)        NOT NULL DEFAULT 0,
    board_indate       datetime     NOT NULL DEFAULT now(),
    -- 외래키 컬럼
    user_id            VARCHAR(30)     NOT NULL,
    PRIMARY KEY(board_idx),
    FOREIGN KEY(user_id) REFERENCES tbl_user(user_id)
);


-- tbl_item 생성
CREATE TABLE tbl_item (
    item_idx                INT(20)      NOT NULL auto_increment,
    item_category        VARCHAR(100) NOT NULL,
    item_img_url         VARCHAR(1000) NOT NULL,
    item_name            VARCHAR(50)  NOT NULL,
    item_tag          VARCHAR(100),
    item_explain         VARCHAR(3000) NOT NULL,
    item_product_url    VARCHAR(1000),
    -- 외래키 컬럼
    pc_idx                  INT(20)  NOT NULL,
    PRIMARY KEY(item_idx),
    FOREIGN KEY(pc_idx) REFERENCES tbl_pcolor (pc_idx)
);


-- tbl_result 생성
CREATE TABLE tbl_result (
    res_idx              INT(20)    NOT NULL auto_increment,
    res_indate          datetime NOT NULL DEFAULT now(),
    -- 외래키 컬럼
    pc_idx              INT(20) NOT NULL,
    user_id             VARCHAR(30) NOT NULL,
    PRIMARY KEY(res_idx),
    FOREIGN KEY(pc_idx) REFERENCES tbl_pcolor(pc_idx),
    FOREIGN KEY(user_id) REFERENCES tbl_user(user_id)
);

-- tbl_reply 생성
CREATE TABLE tbl_reply(
   reply_idx int(255) NOT NULL auto_increment,
   reply_text VARCHAR(3000) NOT NULL,
   reply_indate          datetime NOT NULL DEFAULT now(),
   user_id             VARCHAR(30) NOT NULL,
   board_idx          INT(20)        NOT NULL,
   PRIMARY KEY(reply_idx),
   FOREIGN KEY(user_id) REFERENCES tbl_user(user_id),
   FOREIGN KEY(board_idx) REFERENCES tbl_board(board_idx)
   on delete cascade
);

-- table 데이터 삽입
INSERT INTO tbl_pcolor(pc_name, pc_contents) VALUES('봄웜', '따뜻한 봄날의 향기');
INSERT INTO tbl_pcolor(pc_name, pc_contents) VALUES('여쿨', '시원한 여름 밤');
INSERT INTO tbl_pcolor(pc_name, pc_contents) VALUES('가웜', '가을의 높은 하늘');
INSERT INTO tbl_pcolor(pc_name, pc_contents) VALUES('겨쿨', '겨울의 시원한 날');
INSERT INTO tbl_pccs(pccs_name, pc_idx) VALUES('보라색', 1);
INSERT INTO tbl_pccs(pccs_name, pc_idx) VALUES('남색', 2);
INSERT INTO tbl_pccs(pccs_name, pc_idx) VALUES('카키색', 3);
INSERT INTO tbl_pccs(pccs_name, pc_idx) VALUES('파란', 4);
INSERT INTO tbl_user(user_id, user_password, user_name, user_age, user_gender,pc_idx) VALUES('admin', '12345', '아무개', '26', '남자','1');
INSERT INTO tbl_user(user_id, user_password, user_name, user_age, user_gender,pc_idx) VALUES('jongwon', '12345', '정종원', '27', '남자','1');
INSERT INTO tbl_user(user_id, user_password, user_name, user_age, user_gender,pc_idx) VALUES('youngjoo', '12345', '김영주', '26', '여자','2');
INSERT INTO tbl_user(user_id, user_password, user_name, user_age, user_gender,pc_idx) VALUES('onyu', '12345', '김온유', '26', '여자','3');
INSERT INTO tbl_user(user_id, user_password, user_name, user_age, user_gender,pc_idx) VALUES('junhyuck', '12345', '이준혁', '28', '남자','4');
INSERT INTO tbl_user(user_id, user_password, user_name, user_age, user_gender,pc_idx) VALUES('gangjoon', '12345', '최강준', '26', '남자','3');
INSERT INTO tbl_board(board_title, board_contents, user_id) VALUES('안녕하세요', '유익한 사이트예요.', 'admin');
INSERT INTO tbl_board(board_title, board_contents, user_id) VALUES('안녕하세요', '처음 가입해서 글 좀 올립니다.', 'youngjoo');
INSERT INTO tbl_board(board_title, board_contents, user_id) VALUES('안녕하세요', '저는 겨울쿨이네요!!', 'jongwon');
INSERT INTO tbl_board(board_title, board_contents, user_id) VALUES('안녕하세요', '저 봄웜인가요?', 'onyu');
INSERT INTO tbl_board(board_title, board_contents, user_id) VALUES('안녕하세요', '게시판 테스트!', 'junhyuck');
INSERT INTO tbl_board(board_title, board_contents, user_id) VALUES('안녕하세요', '정말 유용한 사이트예요 감사합니다', 'gangjoon');
INSERT INTO tbl_board(board_title, board_contents, user_id) VALUES('안녕하세요', '처음 가입해서 글 좀 올립니다.', 'admin');
INSERT INTO tbl_reply(reply_text,user_id,board_idx) VALUES ('쌉노잼 페이지네요 다시 만들어주세요','admin','1');

-- item_향수_insert_data
INSERT INTO tbl_item(item_category, item_img_url, item_name, item_tag, item_explain, item_product_url, pc_idx) 
   VALUES( '향수', 
   'https://image.msscdn.net/images/goods_img/20200507/1434514/1434514_6_500.jpg', 
   '포맨트 포맨 시그니처 퍼퓸 코튼허그', 
   '# 부드러운', 
   '이성에게서 나는 가장 선호하는 향 1위, 코튼향 자꾸만 안기고 싶은 포근함 공기 중에 퍼지는 뮤게의 깨끗함과 머스크의 부드러움', 
   'https://www.oliveyoung.co.kr/store/G.do?goodsNo=A000000116276',
   1);
INSERT INTO tbl_item(item_category, item_img_url, item_name, item_tag, item_explain, item_product_url, pc_idx) 
   VALUES( '향수', 
   'https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0015/A00000015487404ko.jpg?l=ko', 
   '에이딕트 솔리드퍼퓸 네이키드 머스크 103', 
   '# 부드러운 # 포근한', 
   '상대를 사로잡는 묘한 매력을 갖고 있는 머스크 향은 같은 머스크라도 고유의 향에 따라 각자 다른 매력의 향이 납니다. 머스크 103은 머스크의 관능적인 느낌과 바닐라의 달달하고 플로럴 한 향이 느껴져 당신을 더욱더 매력적으로 보이게 합니다.', 
   'https://www.oliveyoung.co.kr/store/G.do?goodsNo=A000000154874',
   1);
INSERT INTO tbl_item(item_category, item_img_url, item_name, item_tag, item_explain, item_product_url, pc_idx) 
   VALUES( '향수', 
   'https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0012/A00000012688202ko.jpg?l=ko', 
   '파코라반 원밀리언EDT', 
   '# 생기넘치는 # 밝은', 
   '시원하게 톡 쏘는 과일향과 민트의 후레쉬함에 가죽과 장미의 조화로 매력적인 남성을 표현', 
   'https://www.oliveyoung.co.kr/store/G.do?goodsNo=A000000126882',
   1);
INSERT INTO tbl_item(item_category, item_img_url, item_name, item_tag, item_explain, item_product_url, pc_idx) 
   VALUES( '향수', 
   'https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0011/A00000011769701ko.jpg?l=ko', 
   '파코라반 원 밀리언', 
   '# 시원한', 
   '시원하게 톡 쏘는 과일향과 민트의 후레시함에 가죽과 장비의 조화로 매력적인 남성을 표현하다', 
   'https://www.oliveyoung.co.kr/store/G.do?goodsNo=A000000117697',
   2);
INSERT INTO tbl_item(item_category, item_img_url, item_name, item_tag, item_explain, item_product_url, pc_idx) 
   VALUES( '향수', 
   'https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0014/A00000014962905ko.jpg?l=ko', 
   '클린 퓨어솝 EDP', 
   '# 깨끗한 # 청량한', 
   '마음이 편해지는 산뜻한 비누향의 끝판왕 이름 그대로 극강의 청량함을 담은 퓨어 솝 깨끗한 비누향에 은은한 플로럴과 머스크가 순수한 매력을 발산', 
   'https://www.oliveyoung.co.kr/store/G.do?goodsNo=A000000149629',
   2);
INSERT INTO tbl_item(item_category, item_img_url, item_name, item_tag, item_explain, item_product_url, pc_idx) 
   VALUES( '향수', 
   'https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0015/A00000015398501ko.jpeg?l=ko', 
   'CK 캘빈클라인 One 21 Summer EDT', 
   '# 청량한 # 상쾌한', 
   'CK ONE 썸머는 싱그러운 상쾌함이 특징인 아로마 시트러스 향을 선명하고 경쾌하게 선사합니다.
   사막 속 오아시스처럼 상쾌한 향이 오래 지속됩니다.', 
   'https://www.oliveyoung.co.kr/store/G.do?goodsNo=A000000153985',
   2);
INSERT INTO tbl_item(item_category, item_img_url, item_name, item_tag, item_explain, item_product_url, pc_idx) 
   VALUES( '향수', 
   'https://image.msscdn.net/images/prd_img/20200507/1434514/detail_1434514_2_500.jpg', 
   '포맨트 포맨 시그니처 퍼퓸 코튼키스', 
   '# 섹시함 # 달달함', 
   '은은한 포근함 속 우디와 머스크의 조화 잊혀질 수 없는 섹시함을 선사합니다.', 
   'https://www.oliveyoung.co.kr/store/G.do?goodsNo=A000000116276',
   3);
INSERT INTO tbl_item(item_category, item_img_url, item_name, item_tag, item_explain, item_product_url, pc_idx) 
   VALUES( '향수', 
   'https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0015/A00000015488102ko.jpg?l=ko', 
   '에이딕트 잇더피치 EDP', 
   '# 섹시한 # 은은한 # 성숙한', 
   '첫 향은 복숭아의 청아한 수분감에서, 시간이 갈수록 은은한 우드 향취가 뒤섞여 사랑에 빠져 발갛게 달아오른 두 뺨을 연상시킵니다.', 
   'https://www.oliveyoung.co.kr/store/G.do?goodsNo=A000000154881',
   3);
INSERT INTO tbl_item(item_category, item_img_url, item_name, item_tag, item_explain, item_product_url, pc_idx) 
   VALUES( '향수', 
   'https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0014/A00000014227801ko.jpg?l=ko', 
   '랍셍스 로제 드 베르사이', 
   '# 차분한 # 포근함', 
   '로제 드 베르사이 오 드 코롱은 시트러스함과 머스키함을 과감히 배제하고
   섬세하고 부드러운 장미꽃향만을 순수하게 담은 향수입니다.
   헬리오트로프의 깊은 장미향과 따뜻한 살내음이 깍지를 끼는 순간,
   나른한 오후의 장미정원을 거니는 듯한 포근함이 찾아올 것입니다.', 
   'https://www.oliveyoung.co.kr/store/G.do?goodsNo=A000000142278',
   3);
INSERT INTO tbl_item(item_category, item_img_url, item_name, item_tag, item_explain, item_product_url, pc_idx) 
   VALUES( '향수', 
   'https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0000/A00000000059701ko.jpg?l=ko', 
   '베르사체맨오프레쉬', 
   '# 카리스마', 
   '도나텔라 베르사체에 의해 2006년 새롭게 선보이는 베르사체 오 프레쉬는 점잖은 남성의 매력을 그대로 담은 감각적인 스타일, 카리스마 가득한 자신감을 가진 현대남성을 위해 바치는 향수이다.', 
   'https://www.oliveyoung.co.kr/store/G.do?goodsNo=A000000000597',
   4);
INSERT INTO tbl_item(item_category, item_img_url, item_name, item_tag, item_explain, item_product_url, pc_idx) 
   VALUES( '향수', 
   'https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0015/A00000015487904ko.jpg?l=ko', 
   '에이딕트 솔리드퍼퓸 네이키드 샌달우드 201', 
   '# 차가운 # 안개', 
   '비 온 뒤 울창한 숲 속을 걸을 때 살짝 젖은 흙과 나무에서
   올라오는 깊고 진한 우드 향이 느껴지는 샌달우드 향은
   백단향으로 알려진 상탕향과 강인하지만 살짝 느껴지는 샤프란,
   그리고 앰버의 향으로 더욱더 섬세하고 섹시하게 보이게 합니다.', 
   'https://www.oliveyoung.co.kr/store/G.do?goodsNo=A000000154879',
   4);
INSERT INTO tbl_item(item_category, item_img_url, item_name, item_tag, item_explain, item_product_url, pc_idx) 
   VALUES( '향수', 
   'https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0014/A00000014814701ko.jpg?l=ko', 
   '버버리 포맨EDT', 
   '# 차가운 # 시크한', 
   '버버리 클래식 포 맨 오 드 뚜왈렛은 균형 잡힌 평온함과
   클래식한 우아함을 갖춘, 유행에 영향을 받지 않는 부부간의 사랑을
   상징하는 평온하고 차분한 남성 이미지의 세련된 향입니다.', 
   'https://www.oliveyoung.co.kr/store/G.do?goodsNo=A000000148147',
   4);
   
   select * from tbl_result
   select * from tbl_user