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
2) The name of the enclosure where the oldest animal lives. If there are two animals who are the same age choose the first one alphabetically.
```sql
SELECT enclosures.name FROM animals
INNER JOIN enclosures
ON animals.enclosure_id = enclosures.id
ORDER BY age DESC, animals.name
LIMIT 1;
```
3) The number of different animal types a given keeper has been assigned to work with.
```sql
SELECT name FROM staff
WHERE id IN (SELECT DISTINCT(employee_id) FROM (SELECT * FROM animals 
INNER JOIN assignments ON animals.enclosure_id = assignments.enclosure_id) AS d
where d.type = 'Lion');
```

