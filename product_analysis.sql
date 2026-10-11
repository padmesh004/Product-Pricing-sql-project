-- PROJECT: Product Pricing & Profitability Analysis
-- DATABASE: project_csv
-- TOOL: MySql Workbench
------------------------------------------------------------------------------------------------------------------------

-- SECTION 1: BASIC SQL 

create database project_csv;

use project_csv;

select * from products_team;

select product_name as Product from products_team;

select product_name as Product, list_price as Price from products_team;

select product_name as Product, list_price as Price from products_team
where list_price > 100;

select product_name as Product, unit_cost as Cost from products_team
where unit_cost < 25;

select product_name as Product, list_price as Price from products_team
order by list_price desc
limit 10;

select product_name as Product, category from products_team
where category = 'kitchen';
------------------------------------------------------------------------------------------------------------------------

-- SECTION 2: FILTERING & CALCULATION

select product_name as Product, list_price as Price from products_team
where list_price between 25 and 100;

select product_name as Product from products_team
where product_name like '%classic%';

select product_id, product_name, list_price, unit_cost,
(list_price - unit_cost) as potential_profit
from products_team;

select product_id, product_name, list_price, unit_cost,
((list_price - unit_cost) / list_price) * 100 as profit_margin
from products_team;

select product_id, product_name, list_price, unit_cost,
(list_price - unit_cost) as potential_profit
from products_team
where (list_price - unit_cost) > 50;

select product_id, product_name, list_price, unit_cost,
(list_price - unit_cost) as potential_profit
from products_team
order by (list_price - unit_cost) desc;

select product_name, list_price, unit_cost from products_team
where list_price >= unit_cost * 2 ;
------------------------------------------------------------------------------------------------------------------------

-- SECTION 3: AGGREGATION & CATEGORIES

select count(*) as products from products_team;

select avg(list_price) as average_price from products_team;

select max(list_price) as highest_price, min(list_price) as lowest_price 
from products_team;

select upper(trim(category)) as catrgory ,count(*) as products
from products_team
group by upper(trim(category))
order by products desc;

select upper(trim(category)), avg(list_price - unit_cost) 
as avg_potential_profit from products_team
group by upper(trim(category))
order by avg_potential_profit desc ;

select upper(trim(category)), avg(list_price) as avg_price from products_team
group by upper(trim(category))
having avg(list_price) > 75;
------------------------------------------------------------------------------------------------------------------------

-- SECTION 4: ADVANCED SQL

select upper(trim(product_name)), list_price,
case
	when list_price >= 100 then upper('High')
    when list_price >= 50 then upper('Medium')
    else upper('Low')
end as price_category from products_team;

select upper(trim(product_name)), list_price from products_team
where list_price > 
(select avg(list_price) from products_team);

select upper(trim(category)),product_name,
(list_price - unit_cost) as potential_profit,
rank() over(
		partition by upper(trim(category))
        order by (list_price - unit_cost) desc
) as profit_rank from  products_team; 

select * from 
(
	select upper(trim(category)), product_name,
	((list_price - unit_cost) / list_price) * 100 as profit_margin,
		rank() over 
			(
				partition by upper(trim(category))
                order by ((list_price - unit_cost) / list_price) * 100 desc
                ) as profit_rank from products_team
) as ranked_products
where profit_rank <= 3;
------------------------------------------------------------------------------------------------------------------------
                
                






 



















