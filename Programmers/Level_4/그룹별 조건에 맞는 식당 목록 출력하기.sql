SELECT MEMBER_NAME, REVIEW_TEXT, LEFT(REVIEW_DATE,10)
FROM (
    SELECT R.MEMBER_ID, M.MEMBER_NAME, rank() over (ORDER BY COUNT(REVIEW_ID) DESC) AS RANKING
    FROM MEMBER_PROFILE M
    INNER JOIN REST_REVIEW R ON R.MEMBER_ID = M.MEMBER_ID
    GROUP BY R.MEMBER_ID, MEMBER_NAME) AS T
INNER JOIN REST_REVIEW R ON R.MEMBER_ID = T.MEMBER_ID
WHERE RANKING = 1
ORDER BY REVIEW_DATE ,REVIEW_TEXT