SELECT IFNULL(usr,'All Users') user,COUNT(1) Connections
FROM
(
    SELECT user usr,LEFT(host,LOCATE(':',host) - 1) hst
    FROM information_schema.processlist
    WHERE user NOT IN ('system user','root')
) A GROUP BY usr WITH ROLLUP;