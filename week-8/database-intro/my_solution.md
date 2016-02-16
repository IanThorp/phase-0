1. SELECT * FROM states;

2. SELECT * FROM regions;

3. SELECT state_name, population FROM states;

4. SELECT state_name, population FROM states
   ORDER BY population DESC;

5. SELECT state_name FROM states WHERE region_id = 7;

6. SELECT state_name, population_density FROM states
   WHERE population_density > 50
   ORDER BY population_density ASC;

7. SELECT state_name FROM states
   WHERE population BETWEEN 1000000 and 1500000;

8. SELECT state_name, region_id FROM states
   ORDER BY region_id ASC;

9. SELECT region_name FROM regions
   WHERE region_name LIKE '%Central%';

10. SELECT region_name, state_name FROM regions
    LEFT JOIN states
    ON states.region_id=regions.id
    ORDER BY states.region_id ASC;

![Alt text](./outfit-schema.png "Outfit Schema")


//
What are databases for?

  Databases are used to store information. They are much better for large data sets than data structures like arrays or hashes. With a database, we can selectively retrieve the information that we need, instead of retrieving all of it, and using up memory. You can also add data to this and modify as you see fit.

What is a one-to-many relationship?

  This means that if item_type_1 is related to category_1, and category_1 one has many item_types related to it. The example given in the text is much better. Wisconsin belongs to the East North Central Region. The East North Central region has many states.

What is a primary key? What is a foreign key? How can you determine which is which?

  The primary key is a unique key that is associate with only one row in a table. The foreign key is a value that is present in a different table that is being accessed. A primary key is always unique. A foreign key does not have to be unique. A foreign key will always be linked to another table. A primary key will not be linked to another table.

How can you select information out of a SQL database? What are some general guidelines for that?

  The basic command to select data is
  '''
  SELECT column_name_1, column_name_2 FROM table_name;
  '''

  There are many ways to modify this commands like WHERE and ORDER BY are also useful for selecting data.
