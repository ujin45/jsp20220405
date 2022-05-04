USE mydb2;

DELETE FROM Reply WHERE board_id = 11;
-- ROLLBACK;

DELETE FROM Board
WHERE id = 11;

COMMIT; -- 마지막에 commit을 해야 db에 반영됨

SELECT * FROM Reply WHERE board_id = 11;