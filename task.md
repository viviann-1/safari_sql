# MVP Tasks
1) The names of the animals in a given enclosure
```sql
SELECT name FROM animals WHERE enclosure_id = (SELECT id FROM enclosures WHERE name = 'Bird Sanctuary');
```
2) The names of the staff in a given enclosure
```sql
SELECT * FROM
(SELECT * FROM staff 
INNER JOIN assignments ON staff.id = assignments.employee_id) AS d
WHERE d.enclosure_id = (SELECT id FROM enclosures WHERE name = 'Planet Of The Apes');
```

# Extension Tasks
1) The names of staff working in enclosures which are closed for maintenance
```sql
SELECT name FROM staff
where id = (SELECT employee_id FROM
(SELECT * FROM enclosures 
INNER JOIN assignments ON enclosures.id = assignments.enclosure_id) AS d
WHERE d.closed_for_maintainance = TRUE);
```
