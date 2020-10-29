select c.name as country, a.name as area, r.name as region, lt.defenition as locality_type, l.name as locality
  from locality l
  join locality_type lt on lt.id = l.locality_type_id
  join area a on a.id = l.area_id
  left join region r on r.id = l.region_id
  join country c on c.id = a.country_id;