#문제 링크 : https://school.programmers.co.kr/learn/courses/30/lessons/131535

SELECT COUNT(USER_ID)
FROM USER_INFO
WHERE LEFT(JOINED, 4) = 2021
AND AGE BETWEEN 20 AND 29