from os import listdir
from os.path import isfile, join
import mysql.connector

conn = mysql.connector.connect(
  host='localhost',
  user='root',
  passwd='qazxsaq01',
  database='pilotis'
)
c = conn.cursor()

for sql in ['drop.sql', 'create.sql', 'insert_clientes.sql', 'insert_materiais.sql']:
    with open(sql) as fd:
        for query in fd.read().split(';'):
            if query.strip() == '': continue
            try:
                c.execute(query + ';')
                conn.commit()
            except:
                print('FAILED', query)

conn.close()