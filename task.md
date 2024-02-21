# MVP Tasks
1) The names of the animals in a given enclosure
```sql
SELECT name FROM animals WHERE enclosure_id = (SELECT id FROM enclosures WHERE name = 'Bird Sanctuary');
```
