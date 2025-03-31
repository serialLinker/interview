merge into continent
using (values (1, 'Europe'),
              (2, 'Asie'),
              (3, 'Amérique du nord')) s(id, name)
    on continent.id = s.id
    when not matched then
insert (id, name)
values (s.id, s.name);

merge into country
using (values (1, 'France', 1),
              (2, 'Italie', 1),
              (3, 'Chine', 2),
              (4, 'Corée du sud', 2)) s(id, name, continent_id)
    on country.id = s.id
    when not matched then
insert (id, name, continent_id)
values (s.id, s.name, s.continent_id);

merge into monument
using (values (1, 'Tour Eiffel', 1),
              (2, 'Notre Dame de Paris', 1),
              (3, 'Colisée', 2),
              (4, 'Tour de Pise', 2),
              (5, 'Grande Muraille', 3),
              (6, 'Armée de terre cuite', 3),
              (7, 'N Seoul Tower', 4),
              (8, 'Jeju', 4),
              (9, 'Gyeongbokgung', 4)) s(id, name, country_id)
    on monument.id = s.id
    when not matched then
insert (id, name, country_id)
values (s.id, s.name, s.country_id);