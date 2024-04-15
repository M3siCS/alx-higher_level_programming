#!/usr/bin/python3
"""
This script lists all states with
a `name` starting with the letter `N`
from the database `hbtn_0e_0_usa`.
"""

import MySQLdb
from sys import argv

if __name__ == '__main__':
    """
    Access to the database and get the states
    from the database.
    """
    mysql_username = argv[1]
    mysql_password = argv[2]
    db_name = argv[3]

    try:
        db = MySQLdb.connect(
            host="localhost",
            port=3306,
            user=mysql_username,
            passwd=mysql_password,
            db=db_name,
            charset="utf8"
        )
    except MySQLdb.Error as e:
        print("Error connecting to database: {}".format(e))
        exit(1)

    cursor = db.cursor()
    cursor.execute("SELECT * FROM states WHERE name LIKE 'N%' ORDER BY id ASC;")
    rows = cursor.fetchall()

    for row in rows:
        print(row)

    cursor.close()
    db.close()
