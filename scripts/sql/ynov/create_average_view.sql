DROP VIEW IF EXISTS average;
CREATE VIEW average AS (
    SELECT s.*, sum(n.note * n.coeff)/sum(n.coeff) as average FROM student s LEFT JOIN notes n  ON(s.student_id = n.student) GROUP BY s.student_id,s.firstname,s.lastname
);

SELECT * FROM average;