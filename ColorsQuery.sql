create database ColorProject --Creates 'ColorProject' Database

select *from colors --Checking out colors table if the datas we imported have been inserted.

select name from colors order by name -- Listed the color names in alphabetic order.

select count(name) from colors where is_trans='t' --Number of colors with property of is_trans is 't'

select *from colors where rgb='FFFFF' --The color that has 'FFFFF' rgb code

select*from colors where name like '%Blue%'; --The colors which has 'Blue' in their names.

select*from colors where id<0 --The color(s) that has negative id.

select is_trans,count(name) as number from colors group by is_trans --How many colors do is_trans values have

select * from colors where left(rgb,1)='F' --Colors with the first two characters of the RGB code being ‘F’

select name,rgb from colors where name like '%Bright%' -- Names and rgb codes of the names that includes 'Bright' in their names.

select * from colors where name like '%Dark%' and name like '%Blue%' --Names that contain 'Dark' and 'Blue'.

select top 3 rgb,count(*) as rgb_count from colors group by rgb order by rgb_count desc; --Top 3 rgb codes that repeat.

select name,
case
	when name like '%Trans%' then 'Transparent'
	when name like '%Chrome%' then 'Chrome'
	when name like '%Metal%' then 'Metallic'
	when name like '%Glow%' then 'Glow'
	when name like '%Glit%' then 'Glitter'
	when name like '%Speckle%' then 'Speckle'
	when name like '%Pearl%' then 'Pearl'
	when name like '%Basic%' then 'Basic'
	else 'Other'
end as color_types
from colors   --Grouping the colors based on their types.

alter table colors
add color_types varchar(30) --We added color types column to our table.

update colors
set color_types= case
	when name like '%Trans%' then 'Transparent'
	when name like '%Chrome%' then 'Chrome'
	when name like '%Metal%' then 'Metallic'
	when name like '%Glow%' then 'Glow'
	when name like '%Glit%' then 'Glitter'
	when name like '%Speckle%' then 'Speckle'
	when name like '%Pearl%' then 'Pearl'
	when name like '%Basic%' then 'Basic'
	else 'Other'
	end  ---We updated color_types column.

select color_types,count(color_types) as number_of_types from colors group by color_types --The number of group colors.

with trans_ranks as
(
select *,
		ROW_NUMBER() over (order by rgb) as row_num
from colors where is_trans='t'
)
select* from trans_ranks where row_num <=10;  --


with trans_ranks as
(
select *,
		ROW_NUMBER() over (order by name) as row_num
from colors where is_trans='t'
)
select* from trans_ranks where row_num <=10;

select*from colors where name like '%Green%' and rgb not like '%[^0-9A-F]%'; --Colors with the name "Green" and RGB code not containing any special characters



