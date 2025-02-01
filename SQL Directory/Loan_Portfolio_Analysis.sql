-- Loan Portfolio Metrics

/* Total Loan Disbursment : This metric provides insight into the overall amount of loans represented in the table.*/
SELECT SUM(LoanOriginalAmount) AS Total_LoanAmount
FROM loan_data;

/*  Average Loan amount by Prosper Rating : This kind of query is useful for analyzing the average loan amounts associated with different Prosper Ratings. */
SELECT ProsperRatingAlpha, AVG(LoanOriginalAmount) AS Avg_LoanAmount
FROM loan_data
GROUP BY ProsperRatingAlpha;
