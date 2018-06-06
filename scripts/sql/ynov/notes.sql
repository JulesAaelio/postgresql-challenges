CREATE TABLE notes (
  student INTEGER REFERENCES student(student_id),
  classe INTEGER REFERENCES classe(classe_id),
  note FLOAT,
  coeff FLOAT
)