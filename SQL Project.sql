SELECT * FROM finance2.finance_2;

/* KPI - 01 Year wise loan amount Stats*/
select sum(loan_amnt),substr(issue_d,5,5) from finance_1 group by substr(issue_d,5,5);

/* KPI - 02 Grade and sub grade wise revol_bal*/
select f2.revol_bal,f1.grade,f1.sub_grade from finance_1 as f1, finance_2 as f2 where f1.id=f2.id order by f1.grade,f1.sub_grade ;

/*KPI - 03 Total Payment for Verified Status Vs Total Payment for Non Verified Status*/
select sum(f2.total_pymnt), f1.verification_status from finance_1 as f1 , finance_2 as f2 where f1.id = f2.id group by f1.verification_status;

/*KPI - 04 State wise and last_credit_pull_d wise loan status */
select f1.loan_status,f1.addr_state,f2.last_credit_pull_d from finance_1 as f1 , finance_2 as f2 where f1.id = f2.id order by f1.addr_state, f2.last_credit_pull_d;

/*KPI - 05 Home ownership Vs last payment date stats*/
select f1.id, f2.last_pymnt_d, f1.home_ownership from finance_1 as f1,finance_2 as f2 where f1.id =  f2.id;