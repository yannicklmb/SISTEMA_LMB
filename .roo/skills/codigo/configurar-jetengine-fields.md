---
nombre: configurar-jetengine-fields
familia: codigo
control: autonoma
activacion: "configurar JetEngine", "generar JSON JetEngine", "campos JetEngine"
---

# Skill: Configurar Campos JetEngine

## Propósito

Generar configuración JSON para JetEngine (CPTs, campos, taxonomías, relaciones) según arquitectura.md.

## Cuándo Usar

- Si stack.md indica uso de JetEngine
- Para configurar CPTs/campos sin código PHP
- Importar/exportar configuración JetEngine

## Inputs Requeridos

- **`docs/arquitectura.md`**: Especificación de CPTs, campos, relaciones

## Proceso

### Configuración de CPT en JetEngine

**Interfaz JetEngine**:
1. JetEngine → Post Types → Add New
2. Configurar según arquitectura.md:
   - General Name: [Plural]
   - Singular Name: [Singular]
   - Slug: [slug]
   - Show in Menu: Yes
   - Show in REST API: [Según arquitectura]
   - Has Archive: [Según arquitectura]
   - Supports: Title, Thumbnail (NO Editor si mínimo content)

### Configuración de Meta Fields

**Interfaz JetEngine**:
1. JetEngine → Meta Boxes → Add New
2. Nombre: Datos de [Singular]
3. Post Types: [nombre-cpt]
4. Añadir campos según arquitectura.md:

**Tipos de campos JetEngine**:
- Text: Texto simple
- Textarea: Texto largo
- WYSIWYG: Editor enriquecido
- Number: Números
- Select: Opciones predefinidas
- Checkbox: Múltiples opciones
- Radio: Opción única
- Repeater: Grupos repetibles
- Gallery: Galería de imágenes
- Media: Archivo individual
- Date: Fecha
- Time: Hora
- DateTime: Fecha y hora
- Posts: Relación con otros posts

### Ejemplo de JSON Exportado

```json
{
  "post_type": "[nombre-cpt]",
  "name": "[Plural]",
  "singular_name": "[Singular]",
  "slug": "[slug]",
  "menu_icon": "dashicons-admin-post",
  "supports": ["title", "thumbnail"],
  "public": true,
  "show_in_rest": true,
  "has_archive": true,
  "meta_fields": [
    {
      "title": "Descripción Corta",
      "name": "descripcion_corta",
      "type": "textarea",
      "max_length": 150,
      "required": true
    },
    {
      "title": "Duración (minutos)",
      "name": "duracion",
      "type": "number",
      "min_value": 15,
      "max_value": 180,
      "required": true
    },
    {
      "title": "Nivel",
      "name": "nivel",
      "type": "select",
      "options": [
        {"key": "principiante", "value": "Principiante"},
        {"key": "intermedio", "value": "Intermedio"},
        {"key": "avanzado", "value": "Avanzado"}
      ],
      "required": true
    },
    {
      "title": "Beneficios",
      "name": "beneficios",
      "type": "repeater",
      "repeater_fields": [
        {
          "title": "Título",
          "name": "titulo",
          "type": "text"
        },
        {
          "title": "Descripción",
          "name": "descripcion",
          "type": "textarea"
        }
      ]
    }
  ]
}
```

## Notas

- Ejecutada por el **Implementador** o **Programador**
- JetEngine gestiona CPTs vía interfaz (no código)
- Plugin propio solo para funcionalidades que JetEngine no cubre
