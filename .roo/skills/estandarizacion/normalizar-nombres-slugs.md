---
nombre: normalizar-nombres-slugs
familia: estandarizacion
control: autonoma
activacion: "normalizar nombres", "estandarizar slugs", "criterios de naming", "nomenclatura"
---

# Skill: Normalizar Nombres y Slugs

## Propósito

Aplicar criterios de naming consistentes a CPTs, CCTs, campos personalizados, taxonomías y URLs según las reglas del sistema.

## Cuándo Usar

- Al crear arquitectura.md (verificar nomenclatura)
- Al crear planificacion-urls.csv (slugs de URLs)
- Cuando se detectan nombres inconsistentes
- Revisión de calidad de nomenclatura

## Inputs Requeridos

### Obligatorios
- Documento con nombres a normalizar (arquitectura.md, planificacion-urls.csv)
- Conocimiento del dominio del negocio (de estrategia.md)

## Proceso

### 1. Reglas de Nomenclatura del Sistema

#### **CPTs y CCTs**

**Formato**: `nombre-entidad` (minúsculas, guiones)

✅ **Correcto**:
- `clase-yoga`
- `propiedad`
- `caso-uso`
- `consultoria-especializada`

❌ **Incorrecto**:
- `ClaseYoga` (camelCase)
- `clase_yoga` (guion bajo)
- `claseYoga` (mixed)
- `CLASE-YOGA` (mayúsculas)

#### **Taxonomías**

**Formato**: `tipo-clasificacion` o `nombre-descriptivo`

✅ **Correcto**:
- `estilo-yoga`
- `tipo-propiedad`
- `area-consultoria`
- `sector`

❌ **Incorrecto**:
- `categoria` (genérico sin contexto)
- `tipo` (demasiado genérico)

#### **Campos Personalizados**

**Formato**: `nombre_campo` (minúsculas, guion bajo)

✅ **Correcto**:
- `descripcion_corta`
- `precio_final`
- `duracion_minutos`
- `instructor_id`

❌ **Incorrecto**:
- `DescripcionCorta` (camelCase)
- `descripcion-corta` (guiones en campos)
- `DC` (abreviatura no descriptiva)

#### **URLs (Slugs)**

**Formato**: `palabra-palabra` (minúsculas, guiones, sin tildes)

✅ **Correcto**:
- `/consultoria-avanzada/`
- `/clases/hatha-yoga-principiantes/`
- `/sobre-nosotros/`

❌ **Incorrecto**:
- `/Consultoria-Avanzada/` (mayúsculas)
- `/consultoria_avanzada/` (guion bajo)
- `/consultoría-avanzada/` (con tilde)
- `/c-a/` (abreviatura)

### 2. Verificar Nomenclatura Según Dominio

**Regla CRÍTICA**: Usar vocabulario del negocio, no genéricos.

**Proceso de verificación**:

```markdown
## Verificación de Nombres - [Proyecto]

### Nombres Actuales (antes de normalizar)

| Elemento | Nombre Actual | ¿Cumple formato? | ¿Es dominio específico? | Acción |
|----------|---------------|------------------|------------------------|--------|
| CPT | servicio | ✅ Formato OK | ❌ Genérico | Cambiar a nombre específico |
| CPT | clase-yoga | ✅ Formato OK | ✅ Dominio yoga | Mantener ✅ |
| Tax | categoria | ✅ Formato OK | ❌ Genérico | Cambiar a nombre específico |
| Tax | estilo-yoga | ✅ Formato OK | ✅ Dominio yoga | Mantener ✅ |
| Campo | Descripcion | ❌ Mayúscula | - | cambiar a `descripcion` |
| Campo | descripcion_corta | ✅ Formato OK | ✅ Descriptivo | Mantener ✅ |

---

### Nombres Corregidos (después de normalizar)

| Elemento | Nombre Anterior | Nombre Correcto | Justificación |
|----------|-----------------|-----------------|---------------|
| CPT | servicio | `clase-yoga` | Negocio ofrece clases, no servicios genéricos |
| Tax | categoria | `estilo-yoga` | Clasificación es por estilo de yoga |
| Campo | Descripcion | `descripcion` | Minúsculas según estándar |
```

### 3. Normalizar CPTs Según Dominio

**Analizar vocabulario de estrategia.md**:

**Escuela de yoga**:
```
Ofrece: "Clases de yoga"
→ CPT: clase-yoga ✅ (no "servicio")
```

**Inmobiliaria**:
```
Ofrece: "Propiedades en venta/alquiler"
→ CPT: propiedad ✅ (no "producto")
```

**Consultoría**:
```
Ofrece: "Servicios de consultoría estratégica"
→ CPT: consultoria ✅ (más específico que "servicio")
O: consultoria-estrategica (si hay varios tipos)
```

**SaaS**:
```
Ofrece: "Software con funcionalidades X, Y, Z"
→ CPT: funcionalidad ✅ (para mostrar features)
```

### 4. Normalizar Slugs de URLs

**Eliminar**:
- Mayúsculas → minúsculas
- Guiones bajos → guiones
- Tildes → sin tildes
- Caracteres especiales → eliminar o reemplazar
- Espacios → guiones

**Antes → Después**:
```
/Consultoria_Avanzada/ → /consultoria-avanzada/
/consultoría-seo/ → /consultoria-seo/
/Sobre Nosotros/ → /sobre-nosotros/
/SERVICIOS/ → /servicios/
```

### 5. Generar Reporte de Normalización

**Documento**: `docs/validaciones/normalizacion-nombres-[fecha].md`

```markdown
---
tipo: normalizacion
estado: vigente
version: 1
responsable: [quien ejecutó]
creado: YYYY-MM-DD
---

# Normalización de Nombres y Slugs

**Fecha**: YYYY-MM-DD

---

## Nombres Corregidos

### CPTs
- [x] `servicio` → `clase-yoga` (dominio específico)
- [x] `product` → Mantener (WooCommerce nativo)

### Taxonomías
- [x] `categoria` → `estilo-yoga` (dominio específico)
- [x] `product_cat` → Mantener (WooCommerce)

### Campos
- [x] `Descripcion` → `descripcion` (minúsculas)
- [x] `descripcion-corta` → `descripcion_corta` (guion bajo en campos)

### URLs
- [x] `/Consultoria/` → `/consultoria/`
- [x] `/consultoría/` → `/consultoria/` (sin tilde)

---

## Resumen

**Total elementos revisados**: [XX]
**Correcciones aplicadas**: [X]
**Elementos ya correctos**: [XX]

**Estado**: ✅ Nomenclatura normalizada
```

---

## Output Esperado

**Reporte** con:
- Lista de nombres verificados
- Correcciones aplicadas
- Justificación de nombres específicos del dominio

**Artefactos actualizados** (si aplica):
- arquitectura.md con nombres corregidos
- planificacion-urls.csv con slugs normalizados

---

## Criterios de Validación

- [ ] **Formato de CPTs correcto** (minúsculas, guiones)
- [ ] **Formato de campos correcto** (minúsculas, guion_bajo)
- [ ] **Formato de URLs correcto** (minúsculas, guiones, sin tildes)
- [ ] **Nombres según dominio** (no genéricos)
- [ ] **Reporte generado** (documentación de cambios)

---

## Errores Comunes

### ❌ Normalizar Sin Considerar Dominio
**Mal**:
```
Normalizar todo a minúsculas:
servicio → servicio ✅
[Sin verificar si debe ser nombre específico]
```

**Bien**:
```
Normalizar formato Y dominio:
servicio → clase-yoga ✅
[Formato correcto Y nombre del dominio]
```

---

## Notas

- Esta skill puede ejecutarse automáticamente (🔓 Autónoma)
- Puede ser ejecutada por cualquier rol que detecte inconsistencia
- Las correcciones de nomenclatura deben aplicarse antes de implementar código
