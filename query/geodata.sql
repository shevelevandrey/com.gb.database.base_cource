# 1. ������� ������, � ������� �� ������� ��� ������ � ������ � ������, ������.
select ctr.title, reg.title, cit.title
  from geodata._cities cit
left join geodata._regions reg on cit.region_id = reg.id
left join geodata._countries ctr on reg.country_id = ctr.id;

# 2. ������� ��� ������ �� ���������� �������.
select reg.title, cit.title
  from _cities cit
  join _regions reg on cit.region_id = reg.id
 where reg.id = 1053480;
