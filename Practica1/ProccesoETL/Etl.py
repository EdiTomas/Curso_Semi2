import pandas as pd


datos = {'nombre':['María', 'Luis', 'Carmen', 'Antonio'],
 'edad':[18, 22, 20, 21],
 'grado':['Economía', 'Medicina', 'Arquitectura', 'Economía'],
 'correo':['maria@gmail.com', 'luis@yahoo.es', 'carmen@gmail.com', 'antonio@gmail.com']
}

def Extract_info():
     df = pd.DataFrame(datos)
     print(df)

def Transform_data():
     df = pd.DataFrame(datos)
     print(df)

def Transform_Load():
     df = pd.DataFrame(datos)
     print(df)
