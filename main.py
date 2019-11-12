from os import listdir
from os.path import isfile, join
import sqlite3
conn = sqlite3.connect('database.db')

c = conn.cursor()

for sql in ['drop.sql', 'create.sql', 'insert.sql']:
    with open(sql) as fd:
        for query in fd.read().split(';'):
            try:
                c.execute(query + ';')
                conn.commit()
            except:
                print(query, 'has failed')

conn.close()