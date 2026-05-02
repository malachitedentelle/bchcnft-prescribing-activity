-- Creating the 'january_modified' table
create table january_modified (
  period 					text not null,
  bnf_chapter				text not null,
  bnf_presentation_code		text not null,
  bnf_presentation_name 	text not null,
  items 					int not null,
  total_quantity 			int not null,
  adq_usage 				double not null,
  nic 						double not null,
  actual_cost 				double not null,
  constraint check (period = '2025-01')
) engine=InnoDB default charset=utf8mb4 collate=utf8mb4_0900_ai_ci
	select
		concat(left(`YEAR_MONTH`, 4), '-', right(`YEAR_MONTH`, 2)) as period,
        BNF_CHAPTER_PLUS_CODE as bnf_chapter,
        BNF_CODE as bnf_presentation_code,
        BNF_DESCRIPTION as bnf_presentation_name,
        ITEMS as items,
        TOTAL_QUANTITY as total_quantity,
        ADQUSAGE as adq_usage,
        NIC as nic,
        ACTUAL_COST as actual_cost
	from january;

-- Creating the 'february_modified' table
create table february_modified (
  period 					text not null,
  bnf_chapter				text not null,
  bnf_presentation_code		text not null,
  bnf_presentation_name 	text not null,
  items 					int not null,
  total_quantity 			int not null,
  adq_usage 				double not null,
  nic 						double not null,
  actual_cost 				double not null,
  constraint check (period = '2025-02')
) engine=InnoDB default charset=utf8mb4 collate=utf8mb4_0900_ai_ci
	select
		concat(left(`YEAR_MONTH`, 4), '-', right(`YEAR_MONTH`, 2)) as period,
        BNF_CHAPTER_PLUS_CODE as bnf_chapter,
        BNF_CODE as bnf_presentation_code,
        BNF_DESCRIPTION as bnf_presentation_name,
        ITEMS as items,
        TOTAL_QUANTITY as total_quantity,
        ADQUSAGE as adq_usage,
        NIC as nic,
        ACTUAL_COST as actual_cost
	from february;

-- Creating the 'march_modified' table
create table march_modified (
  period 					text not null,
  bnf_chapter				text not null,
  bnf_presentation_code		text not null,
  bnf_presentation_name 	text not null,
  items 					int not null,
  total_quantity 			int not null,
  adq_usage 				double not null,
  nic 						double not null,
  actual_cost 				double not null,
  constraint check (period = '2025-03')
) engine=InnoDB default charset=utf8mb4 collate=utf8mb4_0900_ai_ci
	select
		`YEAR_MONTH` as period,
        BNF_CHAPTER_PLUS_CODE as bnf_chapter,
        BNF_PRESENTATION_CODE as bnf_presentation_code,
        BNF_PRESENTATION_NAME as bnf_presentation_name,
        ITEMS as items,
        TOTAL_QUANTITY as total_quantity,
        ADQ_USAGE as adq_usage,
        NIC as nic,
        ACTUAL_COST as actual_cost
	from march;
    
-- Creating the 'april_modified' table
create table april_modified (
  period 					text not null,
  bnf_chapter				text not null,
  bnf_presentation_code		text not null,
  bnf_presentation_name 	text not null,
  items 					int not null,
  total_quantity 			int not null,
  adq_usage 				double not null,
  nic 						double not null,
  actual_cost 				double not null,
  constraint check (period = '2025-04')
) engine=InnoDB default charset=utf8mb4 collate=utf8mb4_0900_ai_ci
	select
		`YEAR_MONTH` as period,
        BNF_CHAPTER_PLUS_CODE as bnf_chapter,
        BNF_PRESENTATION_CODE as bnf_presentation_code,
        BNF_PRESENTATION_NAME as bnf_presentation_name,
        ITEMS as items,
        TOTAL_QUANTITY as total_quantity,
        ADQ_USAGE as adq_usage,
        NIC as nic,
        ACTUAL_COST as actual_cost
	from april;
    
-- Creating the 'may_modified' table
create table may_modified (
  period 					text not null,
  bnf_chapter				text not null,
  bnf_presentation_code		text not null,
  bnf_presentation_name 	text not null,
  items 					int not null,
  total_quantity 			int not null,
  adq_usage 				double not null,
  nic 						double not null,
  actual_cost 				double not null,
  constraint check (period = '2025-05')
) engine=InnoDB default charset=utf8mb4 collate=utf8mb4_0900_ai_ci
	select
		`YEAR_MONTH` as period,
        BNF_CHAPTER_PLUS_CODE as bnf_chapter,
        BNF_PRESENTATION_CODE as bnf_presentation_code,
        BNF_PRESENTATION_NAME as bnf_presentation_name,
        ITEMS as items,
        TOTAL_QUANTITY as total_quantity,
        ADQ_USAGE as adq_usage,
        NIC as nic,
        ACTUAL_COST as actual_cost
	from may;
    
-- Creating the 'june_modified' table
create table june_modified (
  period 					text not null,
  bnf_chapter				text not null,
  bnf_presentation_code		text not null,
  bnf_presentation_name 	text not null,
  items 					int not null,
  total_quantity 			int not null,
  adq_usage 				double not null,
  nic 						double not null,
  actual_cost 				double not null,
  constraint check (period = '2025-06')
) engine=InnoDB default charset=utf8mb4 collate=utf8mb4_0900_ai_ci
	select
		`YEAR_MONTH` as period,
        BNF_CHAPTER_PLUS_CODE as bnf_chapter,
        BNF_PRESENTATION_CODE as bnf_presentation_code,
        BNF_PRESENTATION_NAME as bnf_presentation_name,
        ITEMS as items,
        TOTAL_QUANTITY as total_quantity,
        ADQ_USAGE as adq_usage,
        NIC as nic,
        ACTUAL_COST as actual_cost
	from june;

-- Creating the 'july_modified' table
create table july_modified (
  period 					text not null,
  bnf_chapter				text not null,
  bnf_presentation_code		text not null,
  bnf_presentation_name 	text not null,
  items 					int not null,
  total_quantity 			int not null,
  adq_usage 				double not null,
  nic 						double not null,
  actual_cost 				double not null,
  constraint check (period = '2025-07')
) engine=InnoDB default charset=utf8mb4 collate=utf8mb4_0900_ai_ci
	select
		`YEAR_MONTH` as period,
        BNF_CHAPTER_PLUS_CODE as bnf_chapter,
        BNF_PRESENTATION_CODE as bnf_presentation_code,
        BNF_PRESENTATION_NAME as bnf_presentation_name,
        ITEMS as items,
        TOTAL_QUANTITY as total_quantity,
        ADQ_USAGE as adq_usage,
        NIC as nic,
        ACTUAL_COST as actual_cost
	from july;
    
-- Creating the 'august_modified' table
create table august_modified (
  period 					text not null,
  bnf_chapter				text not null,
  bnf_presentation_code		text not null,
  bnf_presentation_name 	text not null,
  items 					int not null,
  total_quantity 			int not null,
  adq_usage 				double not null,
  nic 						double not null,
  actual_cost 				double not null,
  constraint check (period = '2025-08')
) engine=InnoDB default charset=utf8mb4 collate=utf8mb4_0900_ai_ci
	select
		`YEAR_MONTH` as period,
        BNF_CHAPTER_PLUS_CODE as bnf_chapter,
        BNF_PRESENTATION_CODE as bnf_presentation_code,
        BNF_PRESENTATION_NAME as bnf_presentation_name,
        ITEMS as items,
        TOTAL_QUANTITY as total_quantity,
        ADQ_USAGE as adq_usage,
        NIC as nic,
        ACTUAL_COST as actual_cost
	from august;
    
-- Creating the 'september_modified' table
create table september_modified (
  period 					text not null,
  bnf_chapter				text not null,
  bnf_presentation_code		text not null,
  bnf_presentation_name 	text not null,
  items 					int not null,
  total_quantity 			int not null,
  adq_usage 				double not null,
  nic 						double not null,
  actual_cost 				double not null,
  constraint check (period = '2025-09')
) engine=InnoDB default charset=utf8mb4 collate=utf8mb4_0900_ai_ci
	select
		`YEAR_MONTH` as period,
        BNF_CHAPTER_PLUS_CODE as bnf_chapter,
        BNF_PRESENTATION_CODE as bnf_presentation_code,
        BNF_PRESENTATION_NAME as bnf_presentation_name,
        ITEMS as items,
        TOTAL_QUANTITY as total_quantity,
        ADQ_USAGE as adq_usage,
        NIC as nic,
        ACTUAL_COST as actual_cost
	from september;
    
-- Creating the 'october_modified' table
create table october_modified (
  period 					text not null,
  bnf_chapter				text not null,
  bnf_presentation_code		text not null,
  bnf_presentation_name 	text not null,
  items 					int not null,
  total_quantity 			int not null,
  adq_usage 				double not null,
  nic 						double not null,
  actual_cost 				double not null,
  constraint check (period = '2025-10')
) engine=InnoDB default charset=utf8mb4 collate=utf8mb4_0900_ai_ci
	select
		`YEAR_MONTH` as period,
        BNF_CHAPTER_PLUS_CODE as bnf_chapter,
        BNF_PRESENTATION_CODE as bnf_presentation_code,
        BNF_PRESENTATION_NAME as bnf_presentation_name,
        ITEMS as items,
        TOTAL_QUANTITY as total_quantity,
        ADQ_USAGE as adq_usage,
        NIC as nic,
        ACTUAL_COST as actual_cost
	from october;
    
-- Creating the 'november_modified' table
create table november_modified (
  period 					text not null,
  bnf_chapter				text not null,
  bnf_presentation_code		text not null,
  bnf_presentation_name 	text not null,
  items 					int not null,
  total_quantity 			int not null,
  adq_usage 				double not null,
  nic 						double not null,
  actual_cost 				double not null,
  constraint check (period = '2025-11')
) engine=InnoDB default charset=utf8mb4 collate=utf8mb4_0900_ai_ci
	select
		`YEAR_MONTH` as period,
        BNF_CHAPTER_PLUS_CODE as bnf_chapter,
        BNF_PRESENTATION_CODE as bnf_presentation_code,
        BNF_PRESENTATION_NAME as bnf_presentation_name,
        ITEMS as items,
        TOTAL_QUANTITY as total_quantity,
        ADQ_USAGE as adq_usage,
        NIC as nic,
        ACTUAL_COST as actual_cost
	from november;
    
-- Creating the 'december_modified' table
create table december_modified (
  period 					text not null,
  bnf_chapter				text not null,
  bnf_presentation_code		text not null,
  bnf_presentation_name 	text not null,
  items 					int not null,
  total_quantity 			int not null,
  adq_usage 				double not null,
  nic 						double not null,
  actual_cost 				double not null,
  constraint check (period = '2025-12')
) engine=InnoDB default charset=utf8mb4 collate=utf8mb4_0900_ai_ci
	select
		`YEAR_MONTH` as period,
        BNF_CHAPTER_PLUS_CODE as bnf_chapter,
        BNF_PRESENTATION_CODE as bnf_presentation_code,
        BNF_PRESENTATION_NAME as bnf_presentation_name,
        ITEMS as items,
        TOTAL_QUANTITY as total_quantity,
        ADQ_USAGE as adq_usage,
        NIC as nic,
        ACTUAL_COST as actual_cost
	from december;
    
-- Creating the 'year_modified' table
create table year_modified
	select *
    from january_modified
    union all
    select *
    from february_modified
    union all
    select *
    from march_modified
    union all
    select *
    from april_modified
    union all
    select *
    from may_modified
    union all
    select *
    from june_modified
    union all
    select *
    from july_modified
    union all
    select *
    from august_modified
    union all
    select *
    from september_modified
    union all
    select *
    from october_modified
    union all
    select *
    from november_modified
    union all
    select *
    from december_modified
    order by
		period asc,
        bnf_presentation_code asc;

-- Creating the 'code_modified' table
create table code_modified
	select
		BNF_PRESENTATION_CODE as bnf_presentation_code,
        BNF_PARAGRAPH as bnf_paragraph
	from `code`;
    
-- Creating the 'modified' table
create table modified (
  period 					text not null,
  bnf_chapter				text not null,
  bnf_presentation_code		text not null,
  bnf_type					text not null,
  bnf_paragraph				text not null,
  bnf_presentation_name 	text not null,
  items 					int not null,
  total_quantity 			int not null,
  adq_usage 				double not null,
  nic 						double not null,
  actual_cost 				double not null
) engine=InnoDB default charset=utf8mb4 collate=utf8mb4_0900_ai_ci
	select
		period,
        bnf_chapter,
        y.bnf_presentation_code,
		(case
			when 
				length(y.bnf_presentation_code) = 15
                and substring(y.bnf_presentation_code, 10, 2) = 'AA' 
			then 'Generic drug'
			when
				length(y.bnf_presentation_code) = 15
                and substring(y.bnf_presentation_code, 10, 2) != 'AA' 
			then 'Branded drug'
            when length(y.bnf_presentation_code) = 11 then 'Appliance'
		end) as bnf_type,
        bnf_paragraph,
        bnf_presentation_name,
        items,
        total_quantity,
        adq_usage,
        nic,
        actual_cost
	from year_modified as y
    join code_modified as c
		on y.bnf_presentation_code = c.bnf_presentation_code;

-- Viewing the 'modified' table
select *
from modified;

-- Creating the 'featured' table
create table featured
with g as
(
select 
	bnf_presentation_code,
    bnf_type,
    bnf_presentation_name
from modified
group by
	bnf_presentation_code,
    bnf_type,
    bnf_presentation_name
having 
	substring(bnf_presentation_code, 10, 2) = 'AA'
    and bnf_type != 'Appliance'
),
b as
(
select 
	bnf_presentation_code,
    bnf_type,
    bnf_presentation_name
from modified
group by
	bnf_presentation_code,
    bnf_type,
    bnf_presentation_name
having 
	substring(bnf_presentation_code, 10, 2) != 'AA'
    and bnf_type != 'Appliance'
),
e_g as
(
select
    row_number() over() as equivalence_class,
    bnf_presentation_code,
	bnf_type,
	bnf_presentation_name
from
    (select distinct 
		g.bnf_presentation_code,
		g.bnf_type,
		g.bnf_presentation_name
	from g
	cross join b
		on substring(g.bnf_presentation_code, 1, 9) = substring(b.bnf_presentation_code, 1, 9)
	where substring(g.bnf_presentation_code, 12, 2) = substring(b.bnf_presentation_code, 14, 2)
    order by g.bnf_presentation_code asc) as generics_with_branded_equivalents
),
e_all as
(
select *
from e_g
union all
select distinct 
	equivalence_class,
	b.bnf_presentation_code,
    b.bnf_type,
    b.bnf_presentation_name
from b
cross join e_g
	on substring(b.bnf_presentation_code, 1, 9) = substring(e_g.bnf_presentation_code, 1, 9)
where substring(b.bnf_presentation_code, 14, 2) = substring(e_g.bnf_presentation_code, 12, 2)
order by equivalence_class asc
)
select
	period as `Month`,
    bnf_chapter as `Chapter`,
    case
		when m.bnf_type in ('Generic drug', 'Branded drug') then 'Drug' 
		else 'Appliance'
	end as `Category Type`,
    bnf_paragraph as `Category`,
    case
		when m.bnf_presentation_code in (select bnf_presentation_code from e_all) then equivalence_class
        else 'N/A'
	end as `Drug Group If Exists`,
    m.bnf_type as `Type`,
    m.bnf_presentation_name as `Name`,
    items as `Prescribed Items`,
    total_quantity as `Prescribed Quantity`,
    adq_usage as `Days of Supply of Prescription`,
    nic as `Net Ingredient Cost of Prescription`,
    actual_cost as `Actual Cost of Prescription`
from modified as m
left join e_all as e
	on m.bnf_presentation_code = e.bnf_presentation_code;

-- Viewing the 'featured' table
select *
from featured;
