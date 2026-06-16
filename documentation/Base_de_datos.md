# 🗄️ Sistema de Base de Datos - AgroConecta

## 📌 Descripción General

La base de datos **agroconecta_db** fue diseñada para administrar la información de la startup AgroConecta. Permite registrar y controlar proveedores, productos, categorías, clientes, direcciones, pedidos y detalles de pedidos, garantizando una gestión organizada y eficiente de las operaciones comerciales realizadas dentro de la plataforma.

Su principal objetivo es centralizar la información y facilitar el control de los procesos relacionados con la comercialización de productos agrícolas entre pequeños agricultores y consumidores finales.

---

## ⚙️ Base de Datos en MySQL

Para el desarrollo del proyecto se utilizó **MySQL**, un sistema de gestión de bases de datos relacional reconocido por su estabilidad, rendimiento y facilidad de administración.

### Características

* Organización de la información mediante tablas relacionadas.
* Integridad de datos mediante claves primarias y foráneas.
* Soporte para consultas y transacciones.
* Gestión eficiente de pedidos y catálogo de productos.
* Compatibilidad con múltiples tecnologías y herramientas.

---

## 📁 Archivos Físicos de la Base de Datos

MySQL almacena la información en archivos físicos administrados por el propio servidor.

Para visualizar la ubicación donde se almacenan los datos se utiliza:

```sql
SHOW VARIABLES LIKE 'datadir';
```

> **Nota:** Los archivos físicos son gestionados automáticamente por MySQL y no deben modificarse manualmente.

---

## 🟢 Creación y Gestión de la Base de Datos

### Crear Base de Datos

```sql
CREATE DATABASE IF NOT EXISTS agroconecta_db;
```

### Crear Base de Datos con Configuración Recomendada

```sql
CREATE DATABASE IF NOT EXISTS agroconecta_db
CHARACTER SET utf8mb4
COLLATE utf8mb4_spanish_ci;
```

### Seleccionar la Base de Datos

```sql
USE agroconecta_db;
```

### Mostrar Bases de Datos Existentes

```sql
SHOW DATABASES;
```

---

## 🏗️ Estructura General

La base de datos está organizada en tres grupos principales:

### 📋 Tablas Maestras

Almacenan la información principal del sistema, como proveedores, categorías, productos, clientes y direcciones.

### 🔗 Tablas Intermedias

Permiten gestionar las relaciones entre entidades, como la asignación de productos ofrecidos por cada proveedor y sus respectivos precios.

### 📦 Tablas Transaccionales

Registran los pedidos realizados por los clientes y el detalle de productos solicitados, manteniendo el historial completo de cada transacción.

---

## 🔴 Eliminación de la Base de Datos

Antes de eliminar una base de datos se recomienda verificar cuál se encuentra activa:

```sql
SELECT DATABASE();
```

Eliminar la base de datos:

```sql
DROP DATABASE agroconecta_db;
```

Verificar la eliminación:

```sql
SHOW DATABASES;
```

> **⚠️ Importante:** La eliminación de una base de datos es una acción irreversible.

---

## 🧠 Buenas Prácticas

* Utilizar nombres descriptivos para tablas y atributos.
* Mantener la integridad referencial mediante claves foráneas.
* Aplicar restricciones de unicidad para RUC, DNI y correo electrónico.
* Realizar copias de seguridad periódicas.
* Verificar la base de datos activa antes de ejecutar cambios importantes.
* Utilizar `IF NOT EXISTS` para evitar errores durante la creación.
* Documentar adecuadamente la estructura de la base de datos.
* Aplicar validaciones para cantidades y precios mayores a cero.

---

## ✅ Conclusión

La base de datos **agroconecta_db** permite gestionar de forma organizada la información de AgroConecta. Gracias a su estructura relacional, facilita el control de proveedores, productos, clientes y pedidos, contribuyendo a una administración eficiente, segura y escalable de los datos. Esta solución fortalece los procesos operativos de la startup y mejora la capacidad de gestión de las relaciones entre agricultores y consumidores.
