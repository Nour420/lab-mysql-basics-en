USE bank;

#Q1
select client_id from client where district_id = 1 order by client_id limit 5;

#Q2
select client_id from client where district_id = 72 order by client_id DESC limit 1;

#Q3
select amount from loan order by amount limit 3;

#Q4
select status from loan order by status;

#Q5
select loan_id from loan order by payments DESC limit 1;

#Q6
select account_id,amount  from loan order by account_id  limit 5;

#Q7
select account_id from loan where duration = 60 order by amount;

#Q8
select distinct k_symbol from `order` order by k_symbol;

#Q9
select order_id from `order` 
where account_id = 34;

#Q10
select distinct account_id from `order` where order_id between 29540 and 29560;

#Q11
select amount from `order` where account_to = 30067122;

#Q12
select trans_id, date, type, amount from trans where account_id = 793 order by date DESC limit 10;

#Q13
SELECT district_id, count(*) as number_of_clients from client where district_id < 10 group by district_id ORDER BY district_id;

#Q14
select type, count(*) as card_count from card group by type order by card_count DESC;

#15
select account_id, sum(amount) as total_loan_amount from loan group by account_id order by total_loan_amount DESC limit 10;

#16
select date, count(*) as loans_issued from loan where date < 930907 group by date order by date DESC;

#17
select date, duration, count(*) as loan_issued from loan where date >= 971201 and date < 980101 group by date, duration order by date, duration;

#18
select account_id, type, sum(amount) as total_amount from trans where account_id = 396 and (type = 'VYDAJ' or type = 'PRIJEM') group by account_id, type order by type;