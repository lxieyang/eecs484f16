DROP SEQUENCE instructor_sequence;
DROP TRIGGER instructor_sequence_tirgger;
DROP TABLE Course;
DROP TABLE Instructor;

set colsep '|'
set linesize 200

-- Instructor Table
CREATE TABLE Instructor (
  inst_id INTEGER,  -- AUTO INCREMENT
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  PRIMARY KEY (inst_id)
);

-- Auto-increment Sequence for Instructor
CREATE SEQUENCE instructor_sequence
START WITH 1
INCREMENT BY 1;
CREATE TRIGGER instructor_sequence_tirgger
BEFORE INSERT ON Instructor
FOR EACH ROW
BEGIN
  SELECT instructor_sequence.NEXTVAL
  INTO :NEW.inst_id
  FROM DUAL;	-- select from dummy table
END;
/

-- Course Table
CREATE TABLE Course (
  cid INTEGER,
  inst_id INTEGER,
  subject VARCHAR(50),
  PRIMARY KEY (cid),
  FOREIGN KEY (inst_id) REFERENCES Instructor(inst_id) ON DELETE CASCADE
);
