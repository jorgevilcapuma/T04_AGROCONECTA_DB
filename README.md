# T04_agroconecta_db

## Base de Datos - AgroConecta

Este repositorio reúne la documentación, los diagramas y los scripts SQL de la base de datos para **AgroConecta**.

La base de datos `agroconecta_db` está diseñada para gestionar la información de proveedores, productos, categorías, clientes, direcciones, pedidos y detalles de pedidos dentro de la plataforma digital de comercialización agrícola.

## Objetivo

Diseñar una base de datos relacional que permita organizar, almacenar y consultar eficientemente la información principal de AgroConecta. Con ello se busca facilitar la gestión de proveedores, el catálogo de productos, los clientes y el procesamiento de pedidos, garantizando información confiable para la operación de la startup.

## Estructura del Proyecto

```text
T04_agroconecta_db/
|
|-- case/
|   |-- design_database.md
|   |-- business_rules.md
|
|-- documentation/
|   |-- Database_Dictionary.md
|
|-- image/
|   |-- AGROCONECTA_LOGICO.png
|   |-- AGROCONECTA_FISICO.png
|
|-- resources/
|   |-- AGROCONECTA_LOGICO.pdf
|   |-- AGROCONECTA_FISICO.pdf
|
|-- scripts/
|   |-- 01_Estructura_AgroConecta.sql
|   |-- 02_Poblacion_Maestras.sql
|   |-- 03_Poblacion_Transaccional.sql
|   |-- 04_Reportes_Maestros.sql
|
|-- README.md
```

## Contenido Principal

| Carpeta          | Contenido                                                               |
| ---------------- | ----------------------------------------------------------------------- |
| `case/`          | Documentación del caso de negocio, reglas y requerimientos del sistema. |
| `documentation/` | Diccionario de datos y documentación técnica de la base de datos.       |
| `image/`         | Diagramas del modelo lógico y físico.                                   |
| `resources/`     | Archivos PDF de los diagramas de base de datos.                         |
| `scripts/`       | Scripts SQL para estructura, carga de datos y reportes.                 |

## Scripts SQL

Los scripts están organizados para facilitar la implementación de la base de datos.

| Archivo                          | Descripción                                                                                                     |
| -------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `01_Estructura_AgroConecta.sql`  | Creación de la base de datos, tablas, claves primarias, claves foráneas y restricciones.                        |
| `02_Poblacion_Maestras.sql`      | Inserción de datos maestros en categorías, proveedores, productos, clientes, direcciones y catálogo de ofertas. |
| `03_Poblacion_Transaccional.sql` | Registro de pedidos y detalles de pedidos simulados.                                                            |
| `04_Reportes_Maestros.sql`       | Consultas SQL para reportes analíticos solicitados en la evaluación.                                            |

### Orden de Ejecución

Ejecutar los scripts en el siguiente orden:

```sql
SOURCE scripts/01_Estructura_AgroConecta.sql;
SOURCE scripts/02_Poblacion_Maestras.sql;
SOURCE scripts/03_Poblacion_Transaccional.sql;
SOURCE scripts/04_Reportes_Maestros.sql;
```

## Modelos de Base de Datos

| Modelo        | Archivo                            |
| ------------- | ---------------------------------- |
| Modelo lógico | `image/AGROCONECTA_LOGICO.png`     |
| Modelo físico | `image/AGROCONECTA_FISICO.png`     |
| PDF lógico    | `resources/AGROCONECTA_LOGICO.pdf` |
| PDF físico    | `resources/AGROCONECTA_FISICO.pdf` |

## Tecnologías Utilizadas

* MySQL
* SQL
* Git
* GitHub
* Redgate Data Modeler

## Integrantes del Equipo

### Team 4

* Luis Alejandro Calderón Rufasto
* Daniel Leyva Céspedes
* Jorge Luis Vilcapuma Trujillo

## Descripción General

AgroConecta es una startup que conecta directamente a pequeños agricultores con consumidores finales mediante una plataforma digital. La base de datos desarrollada permite gestionar proveedores agrícolas, productos, clientes y pedidos, garantizando un control eficiente de la información y facilitando el crecimiento de la organización mediante procesos digitales estructurados.
