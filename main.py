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

files = [
    'drop.sql',
    'create.sql',
    'insert_clientes.sql',
    'insert_produtos.sql',
    'insert_subprodutos.sql',
    'insert_materiais.sql',
    'insert_materiais_v_produtos.sql',
    'insert_estoque.sql',
    'manip_clientes.sql',
]

for sql in files:
    with open(sql) as fd:
        failed = False
        for query in fd.read().split(';'):
            if query.strip() == '': continue
            try:
                c.execute(query + ';')
                conn.commit()
            except Exception as e:
                failed = True
                print('[FAILED]::{}\n{}'.format(sql, e))
                print(query)
        if not failed:
            print('[SUCCESS]::{}'.format(sql))

conn.close()