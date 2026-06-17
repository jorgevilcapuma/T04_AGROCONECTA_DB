# Sistema de Gestión de Proveedores, Productos y Pedidos AgroConecta

## Descripción del Caso

AgroConecta es una startup que busca conectar directamente a pequeños agricultores locales con consumidores finales de la ciudad, eliminando intermediarios y promoviendo precios justos para los productores y productos frescos para los clientes.

Debido al crecimiento de la organización, la gestión manual mediante hojas de cálculo y grupos de mensajería se ha vuelto insuficiente para controlar adecuadamente la información relacionada con proveedores, productos, clientes y pedidos. Esto genera dificultades para mantener un catálogo actualizado, registrar transacciones y realizar seguimiento de las entregas.

Por esta razón, se propone el diseño e implementación de una base de datos relacional que permita centralizar toda la información operativa de AgroConecta. El sistema facilitará la administración de agricultores proveedores, productos agrícolas, clientes, pedidos y el control del catálogo de ofertas disponible en la plataforma.

Con esta solución, AgroConecta podrá optimizar sus procesos, mejorar la trazabilidad de las operaciones y disponer de información confiable para la toma de decisiones.

---

## Objetivo del Sistema

Diseñar una base de datos relacional que permita gestionar de manera organizada la información de proveedores, productos, clientes y pedidos de AgroConecta, apoyando los procesos de comercialización y distribución de productos agrícolas.

---

## Alcance

El sistema contempla los siguientes procesos principales:

| Proceso             | Descripción                                                                                |
| ------------------- | ------------------------------------------------------------------------------------------ |
| Proveedores         | Registrar agricultores, fundos, datos de contacto, RUC y región de procedencia.            |
| Productos           | Gestionar el catálogo centralizado de frutas, verduras y otros productos agrícolas.        |
| Categorías          | Clasificar los productos según su tipo para facilitar búsquedas y reportes.                |
| Clientes            | Administrar la información personal y direcciones de entrega de los consumidores.          |
| Catálogo de Ofertas | Relacionar proveedores y productos, registrando los precios ofrecidos por cada agricultor. |
| Pedidos             | Registrar las compras realizadas por los clientes a través de la plataforma.               |
| Detalle de Pedidos  | Almacenar productos solicitados, cantidades y precios históricos de compra.                |
| Seguimiento         | Controlar el estado de los pedidos desde su recepción hasta la entrega final.              |
| Reportes            | Generar información sobre proveedores, clientes, productos y pedidos registrados.          |

---

## Gestión de Consultas

La base de datos permitirá consultar información de manera rápida, precisa y organizada. Algunas consultas importantes para AgroConecta son:

* Productos disponibles por proveedor.
* Catálogo general de productos agrícolas.
* Clientes registrados en la plataforma.
* Historial de pedidos realizados por cada cliente.
* Productos más solicitados.
* Pedidos según estado de entrega.
* Precios ofrecidos por diferentes proveedores para un mismo producto.
* Cobertura geográfica de proveedores por región.

Estas consultas facilitarán la gestión operativa y permitirán un mejor control de la información dentro de la plataforma.

---

## Beneficios Esperados

| Beneficio                     | Impacto para AgroConecta                                                          |
| ----------------------------- | --------------------------------------------------------------------------------- |
| Información centralizada      | Reúne en un solo sistema los datos de proveedores, productos, clientes y pedidos. |
| Mayor control operativo       | Facilita el seguimiento de pedidos y la gestión del catálogo de productos.        |
| Reducción de errores          | Disminuye inconsistencias generadas por registros manuales.                       |
| Mejor experiencia del cliente | Permite una gestión más eficiente de pedidos y entregas.                          |
| Optimización de procesos      | Agiliza el registro y consulta de información comercial.                          |
| Apoyo a la toma de decisiones | Proporciona datos confiables mediante reportes y consultas.                       |

---

## Resultado Esperado

Al implementar esta base de datos relacional, AgroConecta contará con una plataforma sólida para gestionar de manera eficiente la relación entre agricultores y consumidores. El sistema permitirá registrar y controlar proveedores, productos, clientes y pedidos, garantizando información organizada, segura y confiable que contribuirá al crecimiento sostenible de la startup y a la mejora de sus operaciones comerciales.
