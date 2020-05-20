/**
 * @author: syed ashraf ullah
 * date: 20.05.2020
 * problem: https://www.hackerrank.com/challenges/the-company/problem
 */
SELECT DISTINCT
    c.company_code,
    c.founder,
    COUNT(DISTINCT lm.lead_manager_code),
    COUNT(DISTINCT sm.senior_manager_code),
    COUNT(DISTINCT m.manager_code),
    COUNT(DISTINCT e.employee_code)
FROM
    company AS c,
    lead_manager AS lm,
    senior_manager AS sm,
    manager AS m,
    employee AS e
WHERE
    c.company_code = lm.company_code
        AND c.company_code = sm.company_code
        AND c.company_code = m.company_code
        AND c.company_code = e.company_code
GROUP BY c.company_code , c.founder
ORDER BY c.company_code ASC;