CREATE DATABASE IF NOT EXISTS `grupal5`;
USE `grupal5`;
-- Crear la tabla Cliente
CREATE TABLE Cliente (
  ClienteID INT PRIMARY KEY,
  Saldo DECIMAL(10, 2)
);

-- Crear la tabla Dirección
CREATE TABLE Dirección (
  DirecciónID INT PRIMARY KEY,
  ClienteID INT,
  FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID)
);

-- Crear la tabla Artículo
CREATE TABLE Artículo (
  ArtículoID INT PRIMARY KEY,
  Descripción VARCHAR(100)
);

-- Crear la tabla Pedido
CREATE TABLE Pedido (
  PedidoID INT PRIMARY KEY,
  ClienteID INT,
  DirecciónID INT,
  Fecha DATE,
  FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID),
  FOREIGN KEY (DirecciónID) REFERENCES Dirección(DirecciónID)
);

-- Crear la tabla LineaPedido
CREATE TABLE LineaPedido (
  PedidoID INT,
  ArtículoID INT,
  Cantidad INT,
  FOREIGN KEY (PedidoID) REFERENCES Pedido(PedidoID),
  FOREIGN KEY (ArtículoID) REFERENCES Artículo(ArtículoID)
);

-- Crear la tabla Fábrica
CREATE TABLE Fábrica (
  FábricaID INT PRIMARY KEY,
  Teléfono VARCHAR(20)
);

-- Crear la tabla Fábrica_Altern.
CREATE TABLE Fábrica_Altern (
  FábricaID INT,
  Fábrica_AlternID INT,
  FOREIGN KEY (FábricaID) REFERENCES Fábrica(FábricaID)
);
