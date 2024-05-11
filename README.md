# Base-de-Datos-SQL-Restaurante-

# Introdución
Esta base de datos está diseñada para almacenar información sobre los clientes, pedidos, menús y empleados del restaurante.


# Estructura de la Base de Datos
El diseño de la base de datos incluye las siguientes entidades y relaciones:

- Clientes: Información sobre los clientes del restaurante.
- Empleados: Información sobre los empleados del restaurante.
- Pedidos: Información sobre los pedidos realizados por los clientes.
- Productos: Información sobre los productos disponibles en el restaurante (platos, bebidas, etc.).
- Menús: Información sobre los menús ofrecidos por el restaurante.
- Composición del Menú: Relación entre menús y productos, indicando los productos incluidos en cada menú.
- Detalles del Pedido: Relación entre pedidos y productos, indicando los productos incluidos en cada pedido.


# Restricciones y Reglas de Negocio

Cada cliente tiene un identificador único (ID).
Cada empleado tiene un identificador único (ID).
Los pedidos están asociados a un cliente y a un empleado.
Los productos tienen un precio asociado.
Los menús están compuestos por varios productos con sus respectivas cantidades.
Los detalles de los pedidos incluyen los productos solicitados y sus cantidades.



# Pasos a seguir para realizar el diseño de la base de datos

## 1. BOCETO INICIAL (Primera idea de cómo hacer las tablas en función de los datos)

Se genera un primer boceto/idea de que tablas vamos a necesitar para llevar a cabo nuestro proyecto.

![Diseño conceptual](https://github.com/datacanovas/Base-de-Datos-SQL-Restaurante-/assets/157279064/2ee03066-9514-4c74-aaca-b61e70edb584)

## 2. Diagrama de tablas

En segundo lugar definimos la estructura de las tablas en un modelo relacional.

![EDR](https://github.com/datacanovas/Base-de-Datos-SQL-Restaurante-/assets/157279064/d440fa02-2967-4961-b844-f5d440398147)

## 3. Creación de la base de datos, las tablas y la carga de datos.

Mediante código SQL crearemos toda la estructura que hemos diseñado en los anteriores puntos. La carga de los datos la haremos de forma manual con las tablas de Clientes,Pedidos,Empleados,Platos y Menus  y mediante la carga de ficheros cargaremos las tablas Detalles_pedido,Platos_en_menu

## 4. Consultas 

Las consultas que vamos a realizar serán:

# 4.1 Análisis de ventas

✅ Día de la semana con más ventas

✅ ¿Cuál es el plato más vendido en el restaurante?

✅ Menú que ha generado más ingresos durante el último año
 
✅ Total de ingresos por categoría de plato en el último mes

# 4.2 Desempeño del personal

✅ Empleado con clientes de mayor gasto promedio

✅ Empleado que ha generado más ingresos a través de sus ventas durante el último trimestre

✅ Cantidad de pedidos atendidos por cada empleado durante el último mes

# 4.3 Preferencias de los clientes

✅ Cantidad de clientes que han realizado pedidos de platos vegetarianos en el último mes

✅ Platos más populares entre los clientes que visitan el restaurante regularmente




