SELECT ANIMAL_ID, INS.NAME
FROM ANIMAL_INS INS JOIN ANIMAL_OUTS OUTS USING (ANIMAL_ID)
ORDER BY DATEDIFF(OUTS.DATETIME,INS.DATETIME) DESC
LIMIT 2