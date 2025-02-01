-- Financial Performance and Borrower Metrics

/* Average Borrower APR and Rate: The average cost of borrowing for the loans represented in the table.*/
SELECT AVG(BorrowerAPR) AS Avg_APR_Borrower, AVG(BorrowerRate) AS Avg_Rate_Borrower
FROM loan_data;

/* Monthly Loan Performance Overview*/
SELECT 
    DATE_FORMAT(LoanOriginationDate, '%Y-%m-01') AS Month,
    DATE_FORMAT(LoanOriginationDate, '%Y') AS Year,
    SUM(LoanOriginalAmount) AS TotalDisbursement,
    ROUND(SUM(LP_CustomerPayments), 0) AS TotalPaid,
    ROUND(AVG(EstimatedReturn), 2) AS AverageProfit,
    ROUND(AVG(EstimatedLoss), 2) AS AverageLossRate,
    ROUND(AVG(DebtToIncomeRatio),2) as DebtIncome_Ratio
FROM loan_data
WHERE LoanOriginationDate > '2009-12-31'
GROUP BY 1, 2
ORDER BY 1;

