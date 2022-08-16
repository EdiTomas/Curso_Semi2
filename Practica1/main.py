import pymssql
server = 'localhost'
user = 'SA'
password='Pass1234.'

conn = pymssql.connect(server, user, password, "TestDB")
cursor = conn.cursor(as_dict=True)

#cursor.execute('SELECT * FROM persons WHERE salesrep=%s', 'John Doe')
cursor.execute('SELECT * FROM PROFESION ')

for row in cursor:
    print("ID=%d, Name=%s" % (row['cod_prof'], row['nombre']))
conn.close()




if __name__ == '__main__':
      print()


