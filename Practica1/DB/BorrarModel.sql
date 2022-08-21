
                 IF   OBJECT_ID('Tsunami') IS NOT NULL 
                    AND OBJECT_ID('temptsunami') IS NOT  NULL
                    AND OBJECT_ID('Pais') IS NOT NULL
                    AND OBJECT_ID('Locationname') IS NOT NULL
                       
BEGIN
               DROP TABLE Tsunami
               DROP TABLE Locationname
               DROP TABLE Pais
               DROP TABLE temptsunami
               
               
END