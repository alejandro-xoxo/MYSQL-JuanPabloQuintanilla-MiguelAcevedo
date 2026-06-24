-- 1. mostrar toda la informacion registrada sobre los productos.
select *
from producto;

-- 2. mostrar las categorias cuyo nombre comience por la letra h.
select *
from categoria
where nombre like 'h%';

-- 3. mostrar la referencia, el nombre y la marca de los productos cuyo nombre comience por martillo.
select referencia, nombre, marca
from producto
where nombre like 'martillo%';

-- 4. mostrar los productos cuya descripcion contenga la palabra acero.
select *
from producto
where descripcion like '%acero%';

-- 5. mostrar los productos de la marca truper que se encuentren disponibles.
select *
from producto
where marca = 'truper'
and estado = 'disponible';

-- 6. mostrar los productos cuya cantidad disponible sea menor que su cantidad minima.
select p.referencia, p.nombre, i.cantidad_disponible, i.cantidad_minima
from producto p
join inventario i
on p.referencia = i.referencia
where i.cantidad_disponible < i.cantidad_minima;

-- 7. mostrar los productos cuya cantidad disponible sea menor que la minima o mayor que la maxima.
select p.referencia, p.nombre, i.cantidad_disponible, i.cantidad_minima, i.cantidad_maxima
from producto p
join inventario i
on p.referencia = i.referencia
where i.cantidad_disponible < i.cantidad_minima
or i.cantidad_disponible > i.cantidad_maxima;

-- 8. mostrar los proveedores ubicados en bogota que se encuentren activos.
select *
from proveedor
where ciudad = 'bogota'
and estado = 'activo';

-- 9. mostrar los proveedores cuyo nombre contenga la palabra industrial o cuya ciudad sea cali.
select *
from proveedor
where nombre like '%industrial%'
or ciudad = 'cali';

-- 10. mostrar las ofertas de suministro cuyo tiempo estimado de entrega sea superior a siete dias o cuyo precio de compra sea mayor a 500000.
select *
from proveedor_producto
where dias_entrega > 7
or precio_compra > 500000;
