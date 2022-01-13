#!/bin/bash

# query to obtain data
docker exec -it mysql-employees bash -c "mysql -sN -uroot -psupersecret --database employees -e 'select JSON_OBJECT('emp_no', emp_no, 'birth_date', birth_date, 'first_name', first_name, 'last_name', last_name) from employees limit 5'" > results.json 
