CREATE TABLE Simple (
  Id INT64 NOT NULL,
  Value STRING(MAX) NOT NULL,
) PRIMARY KEY(Id);

CREATE TABLE CompositePrimaryKeys (
  Id INT64 NOT NULL,
  PKey1 STRING(32) NOT NULL,
  PKey2 INT64 NOT NULL,
  Error INT64 NOT NULL,
  X STRING(32) NOT NULL,
  Y STRING(32) NOT NULL,
  Z STRING(32) NOT NULL,
) PRIMARY KEY(PKey1, PKey2);

CREATE INDEX CompositePrimaryKeysByXY ON CompositePrimaryKeys(X, Y);
CREATE INDEX CompositePrimaryKeysByError  ON CompositePrimaryKeys(Error);

CREATE TABLE FullTypes (
  PKey STRING(32) NOT NULL,
  FTString STRING(32) NOT NULL,
  FTStringNull STRING(32),
  FTBool BOOL NOT NULL,
  FTBoolNull BOOL,
  FTBytes BYTES(32) NOT NULL,
  FTBytesNull BYTES(32),
  FTTimestamp TIMESTAMP NOT NULL,
  FTTimestampNull TIMESTAMP,
  FTInt INT64 NOT NULL,
  FTIntNull INT64,
  FTFloat FLOAT64 NOT NULL,
  FTFloatNull FLOAT64,
  FTDate DATE NOT NULL,
  FTDateNull DATE,
) PRIMARY KEY(PKey);

CREATE UNIQUE INDEX FullTypesByFTString ON FullTypes(FTString);
CREATE UNIQUE INDEX FullTypesByIntDate ON FullTypes(FTInt, FTDate);
CREATE INDEX FullTypesByIntTimestamp ON FullTypes(FTInt, FTTimestamp);
CREATE INDEX FullTypesByTimestamp ON FullTypes(FTTimestamp);
