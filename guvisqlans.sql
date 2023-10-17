use hudsondb;
select * from store1

Select `Order ID`, substr(`Order ID`,1,2) as `Country Code` from store1

Select `City`, sum(`Sales`) as `TotSales`, sum(`Profit`) as `TotProfit` from store1
group by `City`
order by sum(`Sales`) desc, sum(`Profit`) desc limit 5

select * from store1
where `Row ID` = (select max(`Row ID`) from store1)

select distinct City, State from hudsondb.store1

select `Segment`, sum(`Sales`) as `TotSales` from store1
group by `Segment`
having sum(`sales`) >500

select distinct Segment from store1

select `Category`, `Sales`,
case
when `Sales` between 0 and 100 then 'low'
when `Sales` between 101 and 500 then 'medium'
when `Sales` between 501 and 2000 then 'high'
when `Sales` > 2000 then 'best'
end as `Results`
from store1

Select `City`, `Region`, sum(`Sales`), sum(`Profit`), count(`Sales`), count(`Profit`) from store1
group by `City`,`Region`

Select * from store1
where `Region` in ('East','West') and `Sales`>500

select
rank() over (order by `Sales`) as `Rank`,
dense_rank() over (order by `Sales`) as `DenseRank`,
`Sales`, `City`
from hudsondb.store1;