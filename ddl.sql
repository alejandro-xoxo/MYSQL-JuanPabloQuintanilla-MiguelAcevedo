create database ferreteria;
use ferreteria;

create table categoria(
    id_categoria int primary key auto_increment,
    nombre varchar(50) not null unique,
    descripcion varchar(255)
);

create table producto(
    referencia varchar(50) primary key,
    nombre varchar(100) not null,
    descripcion text,
    marca varchar(50) not null,
    unidad_venta varchar(50) not null,
    precio_venta decimal(10,2) not null,
    estado enum('disponible','descontinuado') not null,
    id_categoria int not null,
    foreign key (id_categoria) references categoria(id_categoria)
);

create table inventario(
    id_inventario int primary key auto_increment,
    referencia varchar(50) unique not null,
    cantidad_disponible int not null,
    cantidad_minima int not null,
    cantidad_maxima int not null,
    foreign key (referencia) references producto(referencia),
    check (cantidad_disponible >= 0),
    check (cantidad_minima <= cantidad_maxima)
);

create table ubicacion(
    id_ubicacion int primary key auto_increment,
    referencia varchar(50) unique not null,
    pasillo varchar(20) not null,
    estante varchar(20) not null,
    foreign key (referencia) references producto(referencia)
);

create table proveedor(
    nit varchar(20) primary key,
    nombre varchar(100) not null,
    persona_contacto varchar(100) not null,
    telefono varchar(20) not null,
    correo varchar(100) not null,
    direccion varchar(100) not null,
    ciudad varchar(50) not null,
    estado enum('activo','inactivo') not null
);

create table proveedor_producto(
    id_oferta int primary key auto_increment,
    nit varchar(20) not null,
    referencia varchar(50) not null,
    referencia_proveedor varchar(50) not null,
    precio_compra decimal(10,2) not null,
    dias_entrega int not null,
    foreign key (nit) references proveedor(nit),
    foreign key (referencia) references producto(referencia),
    check (precio_compra >= 0),
    check (dias_entrega >= 0)
);