USE InventarioTiendas;

CREATE TABLE Producto (
  IDProducto INT PRIMARY KEY,
  Nombre VARCHAR(100),
  Descripción TEXT,
  Cantidad INT,
  UmbralMínimo INT
);

CREATE TABLE Proveedor (
  IDProveedor INT PRIMARY KEY,
  Nombre VARCHAR(100),
  Contacto VARCHAR(50)
);

CREATE TABLE Almacén (
  IDAlmacén INT PRIMARY KEY,
  Ubicación VARCHAR(100),
  Capacidad INT
);

CREATE TABLE OrdenDeCompra (
  IDOrden INT PRIMARY KEY,
  Fecha DATE,
  CantidadSolicitada INT,
  EstadoOrden VARCHAR(50),
  IDProducto INT,
  FOREIGN KEY (IDProducto) REFERENCES Producto(IDProducto)
);

CREATE TABLE Inventario (
  IDInventario INT PRIMARY KEY,
  FechaActualización DATE,
  CantidadActual INT,
  IDProducto INT,
  FOREIGN KEY (IDProducto) REFERENCES Producto(IDProducto)
);
