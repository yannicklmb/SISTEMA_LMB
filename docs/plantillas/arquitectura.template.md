---
tipo: arquitectura
estado: vigente
fase: arquitectura
version: 1
responsable: arquitecto
creado: YYYY-MM-DD
ultima_revision: YYYY-MM-DD
validado_por: null
validado_en: null
impactado_por_evento: false
---

# Arquitectura de Datos - [Nombre del Proyecto]

> **INSTRUCCIONES**: Este es un template. OBLIGATORIO seguir el protocolo de análisis de 4 pasos y aplicar las 4 reglas críticas.
> NO copiar ejemplos genéricos. Analizar el proyecto específico.
> Elimina esta nota al completar el documento.

---

## PROTOCOLO DE ANÁLISIS OBLIGATORIO

### Paso 1: Análisis de Artefactos de Entrada

#### De docs/estrategia.md

**¿Qué ofrece el negocio?**
[Lista de servicios/productos/contenidos identificados]

**¿Es transaccional?** (vende con pago)
[✅ Sí / ❌ No]

**Vocabulario del negocio**:
[Términos específicos de la industria - ej: "clases", "propiedades", "funcionalidades"]

---

#### De docs/planificacion-urls.csv

**Templates con single-[X]**:
[Lista de CPTs potenciales identificados en columna template_wp]

**Templates con archive-[Y]**:
[Lista de taxonomías potenciales]

**Análisis**:
```
single-[nombre] → Posible CPT "[nombre]"
archive-[nombre] → Posible CPT "[nombre]" con archive o Taxonomía "[nombre]"
```

---

#### De docs/wireframes.md

**Bloques de contenido por template**:
[Lista de bloques que requieren datos]

**Campos identificados**:
```
Template Home:
- Hero: título, subtítulo, imagen, CTA
- Beneficios: lista repetible (título + descripción)
- Testimonios: repeater (nombre, cargo, foto, texto)

Template Single [CPT]:
- Datos principales: [lista de campos necesarios]
```

---

#### De docs/stack.md

**¿Usa WooCommerce?**: [✅ Sí / ❌ No]

**¿Usa JetEngine?**: [✅ Sí / ❌ No]

**Implicaciones**:
```
Si WooCommerce: NO crear CPT productos (usar WooCommerce product)
Si JetEngine: Campos se gestionan vía JetEngine (no código)
```

---

### Paso 2: Entidades Identificadas del PROYECTO ESPECÍFICO

> ⚠️ NO ASUMIR entidades genéricas (servicio, categoria, caso-exito)
> SIEMPRE analizar según el negocio real

**Tabla de análisis**:

| Entidad Identificada | Origen | Tipo (CPT/CCT) | Justificación | Nombre Final |
|---------------------|--------|----------------|---------------|--------------|
| [Lo que ofrece el negocio] | estrategia.md | CPT | Necesita single público | [nombre-segun-dominio] |
| [Clasificación] | wireframes | Taxonomía | Filtrado/categorización | [nombre-taxonomia] |
| [Datos privados] | wireframes | CCT | Privado, no indexable | [nombre-cct] |

**Ejemplo de análisis real**:
```
Proyecto: Escuela de Yoga

| Entidad | Origen | Tipo | Justificación | Nombre |
|---------|--------|------|---------------|--------|
| Clases de yoga | estrategia: "ofrecemos clases" | CPT | Necesita single `/clases/[slug]` | clase-yoga |
| Estilos | wireframes: "filtrar por estilo" | Tax | Clasificación | estilo-yoga |
| Instructores | estrategia: "equipo de 5" | CPT | Bios individuales | instructor |
```

---

### Paso 3: Nomenclatura Según DOMINIO DEL NEGOCIO

**Decisiones de nomenclatura**:

| Genérico | Específico del Proyecto | Justificación |
|----------|------------------------|---------------|
| servicio | [nombre-específico] | El negocio ofrece [X], no servicios genéricos |
| producto | [nombre-específico] | Usar vocabulario de la industria |
| categoria | [clasificación-específica] | La clasificación es por [criterio específico] |

**Ejemplos de nombres correctos según industria**:
- Escuela yoga: `clase-yoga`, `estilo-yoga`, `instructor`
- Inmobiliaria: `propiedad`, `tipo-propiedad`, `zona`
- SaaS: `funcionalidad`, `caso-uso`, `sector`
- Consultoría: `consultoria`, `area-consultoria`, `caso-exito`

---

### Paso 4: Validación Contra Planificación

**Verificar que cada entidad corresponde a templates en CSV**:

```
URL en planificacion-urls.csv: /[entidad]/[slug]/
Template: single-[entidad]
→ Necesita CPT "[entidad]" ✅

URL: /archivo/[taxonomia]/[term]/
Template: archive-[taxonomia]
→ Necesita Taxonomía "[taxonomia]" ✅
```

**Checklist**:
- [ ] Todas las URLs con `single-[x]` tienen CPT correspondiente
- [ ] Todas las URLs con `archive-[x]` tienen CPT o taxonomía
- [ ] No hay CPTs sin URLs que los usen
- [ ] No hay URLs sin entidad que las soporte

---

## APLICACIÓN DE LAS 4 REGLAS OBLIGATORIAS

### Regla 1: Mínimo `content`, Máximo Campos Personalizados

**Ratio objetivo**: ≥ 80% datos en campos personalizados, ≤ 20% en `content`

**Validación**:
- [ ] Preferencia por campos estructurados (repeater, gallery, select)
- [ ] Campo `content` solo para textos largos sin estructura
- [ ] Listas como repeater (NO en content)
- [ ] Galerías como gallery field (NO en content)

---

### Regla 2: Criterio CPT vs CCT Aplicado

**CPT (Custom Post Type)** usado cuando:
- [ ] Necesita single (URL pública propia)
- [ ] Debe indexarse en Google
- [ ] Debe estar en API REST

**CCT (Custom Content Type)** usado cuando:
- [ ] Tabla intermedia N:N (sin contenido propio)
- [ ] Datos privados sin single
- [ ] No debe indexarse en Google

---

### Regla 3: WooCommerce si Transaccional

**Si negocio es transaccional**:
- [ ] Usar WooCommerce `product` (NO CPT propio)
- [ ] Usar WooCommerce `shop_order` para pedidos
- [ ] Campos extra como meta fields

**Si NO es transaccional**:
- [ ] Documentado que no aplica WooCommerce

---

### Regla 4: Nomenclatura Según Dominio

- [ ] Nombres usan vocabulario del cliente/industria
- [ ] NO se usan genéricos cuando existe vocabulario específico
- [ ] Nombres descriptivos y específicos

---

## Custom Post Types (CPT)

### CPT 1: [nombre-cpt]

**Configuración básica**:
- **Slug**: `[slug-url]`
- **Plural**: [Nombre Plural]
- **Singular**: [Nombre Singular]
- **Público**: [✅ Sí / ❌ No]
- **Tiene Archive**: [✅ Sí / ❌ No]
- **Show in REST**: [✅ Sí / ❌ No]
- **Menu Icon**: `dashicons-[icono]`

**Campos personalizados**:

1. **[nombre_campo]** (tipo: text)
   - Label: [Label visible en admin]
   - Obligatorio: [✅ Sí / ❌ No]
   - Max caracteres: [Si aplica]
   - Placeholder: [Si aplica]
   - Uso: [Para qué sirve este campo]

2. **descripcion_corta** (tipo: textarea)
   - Label: "Descripción Corta"
   - Obligatorio: Sí
   - Max caracteres: 150
   - Uso: Para listados, excerpts, meta description

3. **[campo_repeater]** (tipo: repeater)
   - Label: [Ej: "Beneficios"]
   - Min items: [Ej: 3]
   - Max items: [Ej: 5]
   - Subcampos:
     - `titulo` (text)
     - `descripcion` (textarea)
   - Uso: [Para qué sirve]

[... todos los campos necesarios según wireframes.md]

**Uso del campo `content`**: 
[✅ SÍ (justificar: texto largo sin estructura) / ❌ NO (todo estructurado en campos)]

**Ratio campos/content**: [XX% campos personalizados, XX% content]

---

### CPT 2: [nombre-cpt-2]

[Repetir estructura completa para cada CPT]

---

## Custom Content Types (CCT)

> Solo si hay tablas custom (no CPTs). Ejemplos: datos privados, tablas intermedias N:N

### CCT 1: [nombre-cct]

**Tabla**: `wp_[nombre_tabla]`

**Columnas**:
- `id` (INT, auto_increment, PRIMARY KEY)
- `[columna_1]` (VARCHAR(255))
- `[columna_2]` (INT)
- `created_at` (DATETIME)

**Uso**: [Para qué sirve esta tabla]

**Acceso**: Privado (NO API REST, NO búsqueda pública)

---

## Taxonomías

### Taxonomía 1: [nombre-taxonomia]

**Configuración**:
- **Slug**: `[slug]`
- **Asociada a CPT**: `[nombre-cpt]`
- **Jerárquica**: [✅ Sí (como categorías) / ❌ No (como etiquetas)]
- **Show in REST**: [✅ Sí / ❌ No]

**Términos iniciales**:
- [Término 1]
- [Término 2]
- [Término 3]

**Uso**: [Para qué sirve esta clasificación]

---

### Taxonomía 2: [nombre-taxonomia-2]

[Repetir estructura]

---

## WooCommerce (si transaccional)

> Solo si stack.md incluye WooCommerce

### Productos

**CPT Base**: `product` (WooCommerce nativo) ✅

**Campos nativos**:
- Título, descripción, precio, stock, SKU, galería, categorías

**Campos extra** (vía JetEngine o ACF):

1. **[campo_extra_1]** (tipo: text)
   - Label: [Label]
   - Uso: [Para qué]

[... campos específicos del proyecto]

---

### Categorías de Productos

**Taxonomía**: `product_cat` (WooCommerce nativa)

**O Taxonomía Custom**: [Si necesaria - justificar]

---

## Relaciones

### Relación 1: [Entidad A] → [Entidad B] (Tipo: 1:N)

**Descripción**: 
[1 [Entidad A] puede tener múltiples [Entidad B]]

**Ejemplo**: 1 instructor puede impartir múltiples clases

**Implementación**:
- Campo en CPT `[entidad-b]`: `[entidad_a]_id` (tipo: relationship o post_object)
- Obligatorio: [Sí/No]
- Múltiple: No (relación 1:N)

**Query de ejemplo**:
```php
// Obtener todos los [B] de un [A]
$args = array(
    'post_type' => '[entidad-b]',
    'meta_query' => array(
        array(
            'key' => '[entidad_a]_id',
            'value' => $entidad_a_post_id,
        ),
    ),
);
$query = new WP_Query($args);
```

---

### Relación 2: [Entidad C] ↔ [Entidad D] (Tipo: N:N)

**Descripción**:
[Múltiples [C] pueden tener múltiples [D] y viceversa]

**Ejemplo**: Productos pueden tener múltiples características, características pueden estar en múltiples productos

**Implementación**:

**Con JetEngine**:
- JetEngine → Relations → Create New
- From: [entidad-c]
- To: [entidad-d]
- Type: Many to Many

**Sin JetEngine** (tabla intermedia):
- CCT: `[c]_[d]_relation`
- Columnas: `[c]_id`, `[d]_id`

---

## Diagrama de Entidades

```mermaid
erDiagram
    [ENTIDAD-A] ||--o{ [ENTIDAD-B] : "tiene"
    [ENTIDAD-B] }o--|| [ENTIDAD-A] : "pertenece a"
    [ENTIDAD-C] }o--o{ [ENTIDAD-D] : "relacionado con"
```

> Representar TODAS las entidades y relaciones del proyecto

---

## Validación de Reglas Obligatorias

- [x] **Regla 1**: Mínimo content, máximo campos - [✅ Aplicada - ratio XX% / ❌ No aplicada]
- [x] **Regla 2**: Criterio CPT/CCT - [✅ Aplicado y justificado / ❌ No aplicado]
- [x] **Regla 3**: WooCommerce si transaccional - [✅ Aplicada / ❌ No aplica / ⚠️ No aplicada pero debería]
- [x] **Regla 4**: Nomenclatura según dominio - [✅ Aplicada / ❌ Nombres genéricos]

**Si alguna regla NO está aplicada correctamente, REVISAR antes de entregar.**

---

## Notas de Implementación

**Sistema de gestión** (según stack.md):
[JetEngine vía interfaz / Código PHP en plugin propio]

**Próximos pasos**:
1. Validación por Jefe de Proyectos
2. Si usa JetEngine: Configurar en interfaz (skill: configurar-jetengine-fields)
3. Si usa código: Programador implementa (skill: generar-cpt-fields-code)

---

## Checklist de Completitud

**Antes de entregar al Jefe de Proyectos, verificar**:

- [ ] Análisis de 4 artefactos de entrada completo
- [ ] Tabla de entidades identificadas
- [ ] Nombres según dominio del negocio (NO genéricos)
- [ ] Todas las entidades de wireframes mapeadas
- [ ] Todos los templates de planificación tienen entidad
- [ ] Criterio CPT/CCT aplicado y justificado
- [ ] Relaciones documentadas (si las hay)
- [ ] Campos estructurados (mínimo uso de content)
- [ ] Si transaccional, WooCommerce como base
- [ ] Diagrama Mermaid incluido
- [ ] 4 reglas validadas
- [ ] Frontmatter actualizado

---

**Preparado por**: [Arquitecto]  
**Fecha de entrega**: [YYYY-MM-DD]
