# 문제 링크 : https://school.programmers.co.kr/learn/courses/30/lessons/59414

SELECT  ANIMAL_ID, NAME ,DATE_FORMAT(DATETIME, '%Y-%m-%d') 날짜
FROM    ANIMAL_INS
ORDER BY ANIMAL_ID