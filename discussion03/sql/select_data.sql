SELECT I1.iid, I2.iid
FROM Instructor I1, Instructor I2,
     Teaches T1, Teaches T2
WHERE I1.iid = T1.iid AND I2.iid = T2.iid AND
      T1.cid <> T2.cid AND I1.iid <> I2.iid;


SELECT DISTINCT I1.iid, I2.iid
FROM Instructor I1, Instructor I2,
     Teaches T1, Teaches T2
WHERE (I1.iid = T1.iid AND I2.iid = T2.iid AND
      T1.cid <> T2.cid AND I1.iid <> I2.iid AND
      I1.iid < I2.iid)
      OR
      (I1.iid IN (SELECT T3.iid FROM Teaches T3) AND
       I2.iid NOT IN (SELECT T4.iid FROM Teaches T4))
ORDER BY I1.iid;
