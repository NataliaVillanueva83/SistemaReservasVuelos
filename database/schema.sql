CREATE DATABASE IF NOT EXISTS sistema_vuelos;
USE sistema_vuelos;
SET default_storage_engine=INNODB;

CREATE TABLE Pasajeros (
    id_pasajero INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    dni INT NOT NULL
);
CREATE TABLE Vuelos (
    id_vuelo INT AUTO_INCREMENT PRIMARY KEY,
    numero_vuelo INT NOT NULL,
    origen VARCHAR(100) NOT NULL,
    destino VARCHAR(100) NOT NULL,
    fecha_hora_salida DATE NOT NULL,
    capacidad INT NOT NULL
);
CREATE TABLE Reservas (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    id_vuelo INT NOT NULL,  
    id_pasajero INT NOT NULL,          
    fecha_reserva DATE NOT NULL,
    FOREIGN KEY (id_pasajero) REFERENCES Pasajeros(id_pasajero) ON DELETE CASCADE,
    FOREIGN KEY (id_vuelo) REFERENCES Vuelos(id_vuelo) ON DELETE CASCADE
);