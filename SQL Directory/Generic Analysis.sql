SELECT
    -- Total Loan Disbursement
    SUM(LoanOriginalAmount) AS Total_LoanAmount,

    -- Average Borrower APR and Rate
    AVG(BorrowerAPR) AS Avg_APR_Borrower,
    AVG(BorrowerRate) AS Avg_Rate_Borrower,

    -- Net Principal and Loss Recovery Metrics
    SUM(LP_NetPrincipalLoss) AS NetPrincipalLoss,
    SUM(LP_NonPrincipalRecoveryPayments) AS NonPrincipalRecovery,
    (SUM(LP_NetPrincipalLoss) / SUM(LoanOriginalAmount)) * 100 AS Net%_PrincipalLoss,

    -- Average Monthly Loan Payment
    AVG(MonthlyLoanPayment) AS AvgMonthlyPayment,

    -- Gross Profitability Metrics
    SUM(LP_InterestandFees) AS TotalInterestFees,
    SUM(LP_ServiceFees + LP_CollectionFees) AS TotalServiceCollectionFees
FROM `testing_db`.`loan_data`
WHERE LoanOriginationDate > '2009-12-31';
