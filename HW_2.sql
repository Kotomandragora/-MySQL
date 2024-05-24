USE homework_6;

DELIMITER $$
CREATE PROCEDURE times(seconds INT)
BEGIN
    DECLARE days INT default 0;
    DECLARE hours INT default 0;
    DECLARE minutes INT default 0;

    SET days = seconds / 86400;
    SET seconds = seconds % 86400;
  
    SET hours = seconds / 3600;
    SET seconds = seconds % 3600;

    SET minutes = seconds / 60;
    SET seconds = seconds % 60;

SELECT CONCAT
(
  days, ' days ',
  hours, ' hours ',
  minutes, ' minutes ',
  seconds, ' seconds'
) AS date_time;
END $$
DELIMITER ;

CALL times(10000);