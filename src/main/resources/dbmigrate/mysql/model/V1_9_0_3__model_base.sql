

-------------------------------------------------------------------------------
--  model base
-------------------------------------------------------------------------------
CREATE TABLE MODEL_BASE(
        ID BIGINT AUTO_INCREMENT,
	CODE VARCHAR(50),
	NAME VARCHAR(200),
	INSTANCE_ID VARCHAR(64),
	CATEGORY VARCHAR(50),
	PROCESS_ID VARCHAR(64),
	PROCESS_NAME VARCHAR(50),
	PROCESS_KEY VARCHAR(50),
	PROCESS_VERSION INT,
	INITIATOR VARCHAR(64),
	INITIATOR_DEPT VARCHAR(50),
	APPLICANT VARCHAR(64),
	APPLICANT_DEPT VARCHAR(50),
	CREATE_TIME DATETIME,
	START_TIME DATETIME,
	END_TIME DATETIME,
	TYPE VARCHAR(50),
	STATUS VARCHAR(50),
	DELETE_REASON VARCHAR(200),
	CATEGORY_ID BIGINT,
	PARENT_ID BIGINT,
	DESCRIPTION VARCHAR(200),
	TENANT_ID VARCHAR(64),
	CONSTRAINT PK_MODEL_BASE PRIMARY KEY(ID),
        CONSTRAINT FK_MODEL_BASE_CATEGORY FOREIGN KEY(CATEGORY_ID) REFERENCES MODEL_CATEGORY(ID),
        CONSTRAINT FK_MODEL_BASE_PARENT FOREIGN KEY(PARENT_ID) REFERENCES MODEL_BASE(ID)
) ENGINE=INNODB CHARSET=UTF8;

