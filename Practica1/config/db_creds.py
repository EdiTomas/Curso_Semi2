import pymssql
server = 'localhost'
user = 'SA'
password='Pass1234.'
dbname ="TestDB"
conn = pymssql.connect(server, user, password,dbname )
cursor = conn.cursor(as_dict=True)