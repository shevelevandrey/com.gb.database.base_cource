# 1. —делать запрос, в котором мы выберем все данные о городе Ц регион, страна.
select ctr.title, reg.title, cit.title
  from geodata._cities cit
left join geodata._regions reg on cit.region_id = reg.id
left join geodata._countries ctr on reg.country_id = ctr.id;

# 2. ¬ыбрать все города из ћосковской области.
select reg.title, cit.title
  from _cities cit
  join _regions reg on cit.region_id = reg.id
 where reg.id = 1053480;
