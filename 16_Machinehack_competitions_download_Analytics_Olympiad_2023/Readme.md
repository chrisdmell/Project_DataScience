https://machinehack.com/hackathons/analytics_olympiad_2023/data  <br>

Dataset Description  <br>

The dataset provided to the participants will contain:<br>

Customer Information:<br>

customer_id: Unique identifier for each customer application.<br>
firstname: First name of the customer.<br>
lastname: Last name of the customer.<br>
Credit Record Information:<br>

record_number: Sequence number of the credit product in the credit history.<br>
days_since_opened: Days from credit opening date to data collection date.<br>
days_since_confirmed: Days from credit information confirmation date till data collection date.<br>
primary_term: Planned number of days from credit opening date to closing date.<br>
final_term: Actual number of days from credit opening date to closing date.<br>
days_till_primary_close: Planned number of days from data collection date until loan closing date.<br>
days_till_final_close: Actual number of days from data collection date until loan closing date.<br>
loans_credit_limit: Credit limit for the customer's loans.<br>
loans_next_payment_summary: Amount of the next loan payment.<br>
loans_outstanding_balance: Outstanding balance amount.<br>
loans_max_overdue_amount: Maximum overdue amount.<br>
loans_credit_cost_rate: Cost rate associated with loans.<br>
Loan Overdue Information:<br>

loans_within_5_days to loans_over_90_days: Number of loans overdue within different time frames.<br>
is_zero_loans_within_5_days to is_zero_loans_over_90_days: Binary indicators for zero loans overdue within different time frames.<br>
Credit Utilization and Limit Information:<br>

utilization: Credit utilization rate.<br>
over_limit_count: Count of instances where the customer went over the credit limit.<br>
max_over_limit_count: Maximum count of instances where the customer exceeded the credit limit.<br>
is_zero_utilization: Binary indicator if credit utilization rate is zero.<br>
is_zero_over_limit_count: Binary indicator if the count of over limit instances is zero.<br>
is_zero_max_over_limit_count: Binary indicator if the maximum over limit count is zero.<br>
Encoded Features:<br>

encoded_payment_X: Encoded information about payment X (categorical features converted to numerical values).<br>
encoded_loans_account_holder_type: Encoded information about the type of account holder for loans.<br>
encoded_loans_credit_status: Encoded information about the credit status of loans.<br>
encoded_loans_credit_type: Encoded information about the type of credit for loans.<br>
encoded_loans_account_currency: Encoded information about the currency used for loans.<br>
Close Flags:<br>

primary_close_flag: Binary indicator for primary term close.<br>
final_close_flag: Binary indicator for final term close.<br>
