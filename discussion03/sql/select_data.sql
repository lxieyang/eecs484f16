SET ECHO ON

-- WHERE
SELECT I.first_name, C.subject
FROM Instructor I, Course C
WHERE I.inst_id = C.inst_id;


-- INNER JOIN
SELECT I.first_name, C.subject
FROM Instructor I
INNER JOIN Course C
ON I.inst_id = C.inst_id;


-- LEFT JOIN
SELECT I.first_name, C.subject
FROM Instructor I
LEFT JOIN Course C
ON I.inst_id = C.inst_id;


-- RIGHT JOIN
SELECT I.first_name, C.subject
FROM Course C
RIGHT JOIN Instructor I
ON I.inst_id = C.inst_id;

-- RIGHT JOIN - second version
SELECT I.first_name, C.subject
FROM Instructor I
RIGHT JOIN Course C
ON I.inst_id = C.inst_id;


-- FULL JOIN
SELECT I.first_name, C.subject
FROM Course C
FULL JOIN Instructor I
ON I.inst_id = C.inst_id;



SET ECHO OFF
