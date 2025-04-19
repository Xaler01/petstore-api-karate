
# **🐾 Ejercicio Petstore Swagger - README**

## 📌 Descripción

Este proyecto implementa pruebas automatizadas de API utilizando **Karate** para interactuar con el servicio de **Petstore Swagger**. Los escenarios de prueba cubren el flujo completo de una mascota dentro de la tienda:

1. ✅ **Agregar múltiples mascotas desde un archivo JSON.**
2. 🔍 **Consultar mascotas por ID.**
3. ✏️ **Actualizar el nombre y el estado de las mascotas a _"sold"_.**
4. 🔁 **Consultar mascotas por su estado actualizado (_"sold"_).**

Cada etapa está diseñada para validar tanto la funcionalidad del servicio como la consistencia de los datos.

---

## 🧰 Requisitos

Asegúrate de tener instalado lo siguiente en tu entorno de desarrollo:

- **Java JDK 11+**
- **Apache Maven**
- **Editor compatible** (recomendado: IntelliJ IDEA o VSCode)
- **Karate** (incluido como dependencia en el proyecto)

---

## 🚀 Cómo ejecutar el proyecto

### 1. Clona el repositorio

```bash
git clone https://github.com/Xaler01/petstore-api-karate
cd Petstore
```

### 2. Compila el proyecto con Maven

```bash
mvn clean install
```

### 3. Ejecuta los tests con Karate

```bash
mvn test
```

### 4. Revisa los reportes de ejecución

Los reportes HTML se generan automáticamente en la siguiente ruta:

```bash
target/karate-reports/karate-summary.html
```

Ábrelos en tu navegador para revisar resultados detallados:

```bash
open target/karate-reports/karate-summary.html
```

---

## 📊 Reportes de ejemplo

| Reporte | Vista previa |
|--------|--------------|
| Resumen de pruebas | ![Reporte con Karate](ReporteKarate1.png) |
| Resultados detallados | ![Reporte con Karate](ReporteKarate2.png) |

---

## 📁 Estructura del proyecto (opcional)

```bash
Petstore/
├── data/
│   ├── pets.json
│   └── pets-to-update.json
├── api/petstore/
│   ├── 01_add_pet.feature
│   ├── 02_get_pet_Id.feature
│   ├── 03_update_pet.feature
│   ├── 04_get_pet_by_status.feature
│   ├── add_pet_single.feature
│   ├── update_pet_single.feature
│   └── get_pet_by_id_single.feature
├── PetStoreTestRunner.java
├── pom.xml
└── README.md
```

---

## ✅ Consideraciones finales

- Las pruebas están basadas en el entorno público de Swagger Petstore. Asegúrate de que el endpoint esté disponible antes de ejecutar los tests.
- La lógica incluye manejo de valores opcionales en la actualización de datos (por ejemplo, el nombre).
