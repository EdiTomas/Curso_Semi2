/*
                   IF   OBJECT_ID('Tsunami') IS NOT NULL 
                    AND OBJECT_ID('Country') IS NOT NULL
                    AND OBJECT_ID('Tiempo') IS NOT NULL
                    AND OBJECT_ID('damage') IS NOT NULL
                    AND OBJECT_ID('temptsunami') IS NOT  NULL
                    AND OBJECT_ID('Desastres') IS NOT NULL
                       
               BEGIN
               DROP TABLE Desastres
               DROP TABLE temptsunami
               DROP TABLE Tsunami
               DROP TABLE Country
               DROP TABLE Tiempo
               DROP TABLE damage
               
               
END
*/

                 IF   OBJECT_ID('Tsunami') IS NOT NULL 
                    AND OBJECT_ID('temptsunami') IS NOT  NULL
                    AND OBJECT_ID('Pais') IS NOT NULL
                    AND OBJECT_ID('Locationname') IS NOT NULL
                       
BEGIN
               DROP TABLE temptsunami
               DROP TABLE Tsunami
               DROP TABLE Pais
               DROP TABLE Locationname
END