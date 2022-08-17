import pymssql

def obtener_conection():
         server = 'localhost'
         user = 'SA' 
         password='Pass1234.'
         dbname ="TestDB"

         return pymssql.connect(
         server, 
         user, 
         password,
         dbname 
         )
    

#cursor = conn.cursor(as_dict=True)