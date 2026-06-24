use ferreteria;

insert into categoria(nombre, descripcion) values
('herramientas manuales','herramientas para trabajo manual'),
('electricidad','productos electricos'),
('plomeria','articulos de plomeria'),
('pinturas','productos de pintura'),
('seguridad','elementos de seguridad'),
('jardineria','herramientas de jardin'),
('tornilleria','tornillos y accesorios'),
('construccion','materiales de construccion'),
('medicion','instrumentos de medicion'),
('soldadura','equipos de soldadura');

insert into producto values
('p001','martillo de acero','martillo fabricado en acero','truper','unidad',25000,'disponible',1),
('p002','destornillador plano','destornillador de acero','stanley','unidad',12000,'disponible',1),
('p003','cable electrico','cable de cobre','centelsa','metro',5000,'disponible',2),
('p004','tubo pvc','tubo para agua','pavco','unidad',18000,'disponible',3),
('p005','pintura blanca','pintura para interiores','pintuco','galon',65000,'disponible',4),
('p006','casco de seguridad','casco industrial','3m','unidad',40000,'disponible',5),
('p007','pala jardinera','pala para jardin','truper','unidad',30000,'disponible',6),
('p008','tornillo estrella','tornillo galvanizado','fijatec','unidad',500,'disponible',7),
('p009','cemento gris','cemento de construccion','argos','bulto',38000,'disponible',8),
('p010','metro metalico','cinta metrica de acero','stanley','unidad',22000,'descontinuado',9);

insert into inventario(referencia,cantidad_disponible,cantidad_minima,cantidad_maxima) values
('p001',20,10,50),
('p002',8,10,40),
('p003',100,50,300),
('p004',15,10,40),
('p005',6,10,30),
('p006',25,5,50),
('p007',12,10,30),
('p008',500,100,1000),
('p009',60,20,100),
('p010',5,10,20);

insert into ubicacion(referencia,pasillo,estante) values
('p001','a','1'),
('p002','a','2'),
('p003','b','1'),
('p004','b','2'),
('p005','c','1'),
('p006','c','2'),
('p007','d','1'),
('p008','d','2'),
('p009','e','1'),
('p010','e','2');

insert into proveedor values
('900001','industrial tools','carlos perez','3001111111','industrial1@gmail.com','calle 1','bogota','activo'),
('900002','ferreaceros','maria lopez','3002222222','ferreaceros@gmail.com','calle 2','cali','activo'),
('900003','suministros del norte','juan diaz','3003333333','norte@gmail.com','calle 3','medellin','activo'),
('900004','construfer','ana ruiz','3004444444','construfer@gmail.com','calle 4','bogota','inactivo'),
('900005','industrial colombia','pedro toro','3005555555','indcol@gmail.com','calle 5','cali','activo'),
('900006','herrajes sas','laura gil','3006666666','herrajes@gmail.com','calle 6','bucaramanga','activo'),
('900007','materiales abc','jose mora','3007777777','abc@gmail.com','calle 7','cucuta','activo'),
('900008','proveedora central','lina romero','3008888888','central@gmail.com','calle 8','bogota','activo'),
('900009','todo ferreteria','david leon','3009999999','todo@gmail.com','calle 9','pereira','inactivo'),
('900010','mega industrial','camila vega','3010000000','mega@gmail.com','calle 10','cali','activo');

insert into proveedor_producto(nit,referencia,referencia_proveedor,precio_compra,dias_entrega) values
('900001','p001','m001',18000,5),
('900002','p002','d001',8000,3),
('900003','p003','c001',3500,8),
('900004','p004','t001',12000,4),
('900005','p005','p001',50000,10),
('900006','p006','cs01',30000,6),
('900007','p007','pj01',22000,5),
('900008','p008','te01',300,2),
('900009','p009','cg01',30000,9),
('900010','p010','mm01',15000,4);
