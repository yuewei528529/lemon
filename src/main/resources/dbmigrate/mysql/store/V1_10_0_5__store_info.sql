

ALTER TABLE STORE_INFO ADD COLUMN BATCH_ID BIGINT;

ALTER TABLE STORE_INFO ADD CONSTRAINT FK_STORE_INFO_BATCH FOREIGN KEY(BATCH_ID) REFERENCES STORE_BATCH(ID);

