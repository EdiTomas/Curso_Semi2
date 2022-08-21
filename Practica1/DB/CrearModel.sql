

  IF      OBJECT_ID('Tsunami') IS  NULL 
      AND OBJECT_ID('temptsunami') IS NULL
      AND OBJECT_ID('Locationname') IS NULL
      AND OBJECT_ID('Pais') IS NULL

BEGIN 

CREATE TABLE Pais(
    id_pais int identity(1,1) primary key,
    Country VARCHAR(200) NULL
)

CREATE TABLE Locationname(
    id_location_name int identity(1,1) primary key,
    Location_name VARCHAR(600) NULL,   
    id_pais int, 
    constraint fK_Pais_id_pais foreign key (id_pais) REFERENCES Pais (id_pais) 
)


CREATE TABLE temptsunami(
    temptsunami int identity(1,1) primary key,
    Anio INT NULL,
    Mes INT NULL,
    Dia INT NULL,
    Hora INT NULL,
    Minuto INT NULL,
    Segundo DECIMAL NULL,
    Tsunami_event_validity INT NULL,
    Tsunami_cause_code INT NULL,
    Earthquake_magnitude DECIMAL NULL,
    Deposits INT NULL,
    Latitude DECIMAL NULL,
    Longitude DECIMAL NULL,
    Maximun_water_height DECIMAL NULL,
    Number_of_runups INT NULL,
    Tsunami_magnitude DECIMAL NULL,
    Tsunami_intensity DECIMAL NULL,
    Total_deaths INT NULL,
    Total_missing INT NULL,
    Total_missing_description INT NULL,
    Total_injuries INT NULL,
    Total_damage DECIMAL NULL,
    Total_damage_description INT NULL,
    Total_houses_destroyed INT NULL,
    Total_houses_damaged INT NULL,
    Country VARCHAR(200) NULL,
    Location_name VARCHAR(600) NULL
)

CREATE TABLE Tsunami(
    idTsunami int identity(1,1) primary key,
    Anio INT NULL,
    Mes INT NULL,
    Dia INT NULL,
    Hora INT NULL,
    Minuto INT NULL,
    Segundo DECIMAL NULL,
    Tsunami_event_validity INT NULL,
    Tsunami_cause_code INT NULL,
    Earthquake_magnitude DECIMAL NULL,
    Deposits INT NULL,
    Latitude DECIMAL NULL,
    Longitude DECIMAL NULL,
    Maximun_water_height DECIMAL NULL,
    Number_of_runups INT NULL,
    Tsunami_magnitude DECIMAL NULL,
    Tsunami_intensity DECIMAL NULL,
    Total_deaths INT NULL,
    Total_missing INT NULL,
    Total_missing_description INT NULL,
    Total_injuries INT NULL,
    Total_damage DECIMAL NULL,
    Total_damage_description INT NULL,
    Total_houses_destroyed INT NULL,
    Total_houses_damaged INT NULL,
    id_location_name int, 
    constraint fK_Locationname_id_location_name foreign key (id_location_name) REFERENCES Locationname (id_location_name)
)




END



