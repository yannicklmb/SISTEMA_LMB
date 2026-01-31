---
nombre: marcar-artefactos-revision
familia: eventos
control: controlada
activacion: Solo cuando el Jefe de Proyectos la solicita explícitamente
---

# Skill: Marcar Artefactos para Revisión

## Propósito

Marcar artefactos afectados por un evento como "requiere_revision" en su frontmatter, sin borrar el contenido existente.

## Cuándo Usar

- Después de analizar impacto de evento
- Antes de re-ejecutar fases
- Solo ejecutable por el Jefe de Proyectos (🔒 Controlada)

## Inputs Requeridos

### Obligatorios
- Análisis de impacto completado (de skill: analizar-impacto-evento)
- Lista de artefactos afectados
- ID del evento (EVT-XXX)

## Proceso

### 1. Leer Lista de Artefactos Afectados

**Del análisis de impacto**:
```
Artefactos impactados por EVT-XXX:
1. docs/estrategia.md (añadir servicio)
2. docs/planificacion-urls.csv (añadir URLs)
3. docs/wireframes.md (crear wireframe)
4. docs/contenidos.md (crear contenido)
```

### 2. Por Cada Artefacto, Actualizar Frontmatter

**Localizar frontmatter** del archivo:

**Antes**:
```yaml
---
tipo: estrategia
estado: vigente
fase: estrategia
version: 1
responsable: estratega
creado: 2025-01-15
ultima_revision: 2025-01-15
validado_por: jefe-proyectos
validado_en: 2025-01-16
impactado_por_evento: false
---
```

**Después** (actualizaciones marcadas):
```yaml
---
tipo: estrategia
estado: requiere_revision  ← CAMBIO
fase: estrategia
version: 1
responsable: estratega
creado: 2025-01-15
ultima_revision: 2025-01-15
validado_por: jefe-proyectos
validado_en: 2025-01-16
impactado_por_evento: true  ← CAMBIO
evento_id: EVT-003  ← NUEVO CAMPO
---
```

**Cambios realizados**:
1. `estado: vigente` → `estado: requiere_revision`
2. `impactado_por_evento: false` → `impactado_por_evento: true`
3. Añadir campo: `evento_id: EVT-XXX`

### 3. Documentar Razón de Revisión

**CRÍTICO**: Añadir nota AL INICIO del documento (después del frontmatter):

```markdown
---
[frontmatter actualizado]
---

> ⚠️ **ARTEFACTO REQUIERE REVISIÓN**
> 
> **Evento**: EVT-003 - Añadir Servicio "Consultoría Avanzada"
> **Fecha impacto**: YYYY-MM-DD
> **Razón**: Nuevo servicio debe añadirse a la oferta
> **Acción requerida**: Añadir servicio a sección 3 con descripción completa
> **Responsable de actualización**: Estratega
> **Estado de actualización**: Pendiente

---

# [Resto del documento sin modificar]
```

**Regla CRÍTICA**: **NO borrar contenido existente**. Solo marcar y añadir nota.

### 4. Crear Registro de Marcado

**Documento**: `docs/eventos/EVT-XXX-marcado-artefactos.md`

```markdown
---
tipo: evento-tracking
estado: vigente
evento_id: EVT-XXX
accion: marcado-artefactos
fecha: YYYY-MM-DD
---

# Marcado de Artefactos - Evento EVT-XXX

**Fecha de marcado**: YYYY-MM-DD
**Ejecutado por**: Jefe de Proyectos

---

## Artefactos Marcados

### 1. docs/estrategia.md

**Estado anterior**: vigente
**Estado actual**: requiere_revision
**Evento ID añadido**: EVT-003
**Nota añadida**: ✅ Sí
**Contenido preservado**: ✅ Sí (NO se borró nada)

**Acción requerida**:
Añadir nuevo servicio a sección 3

**Responsable**: Estratega

---

### 2. docs/planificacion-urls.csv

**Estado anterior**: vigente
**Estado actual**: requiere_revision
**Evento ID añadido**: EVT-003

**Acción requerida**:
Añadir filas para nuevo servicio

**Responsable**: Planificador

---

[... todos los artefactos]

---

## Resumen

**Total artefactos marcados**: [X]
**Contenido borrado**: 0 (preservado todo) ✅

**Próximo paso**:
Ejecutar skill: replanificacion-dirigida (para asignar actualizaciones a agentes)
```

### 5. Actualizar Roadmap

**En sección del evento**:
```markdown
### EVT-003: Añadir Servicio "Consultoría Avanzada"

[... descripción del evento]

**Estado**: Registrado → Analizado → **Artefactos marcados** ✅

**Artefactos marcados como "requiere_revision"**:
- docs/estrategia.md
- docs/planificacion-urls.csv
- docs/wireframes.md
- docs/contenidos.md

**Próximo paso**:
Replanificación dirigida (asignar tareas a agentes)
```

---

## Output Esperado

**Artefactos actualizados**:
- Frontmatter modificado (estado → requiere_revision)
- Nota de revisión añadida
- Contenido original preservado (NO borrado)

**Documentación**:
- Registro de marcado en docs/eventos/
- Roadmap actualizado

---

## Criterios de Validación

- [ ] **Frontmatter actualizado** en todos los artefactos afectados
- [ ] **Estado cambiado** a "requiere_revision"
- [ ] **evento_id añadido** (EVT-XXX)
- [ ] **Nota de revisión añadida** al inicio de cada documento
- [ ] **Contenido preservado** (verificar que NO se borró nada)
- [ ] **Registro de marcado creado**
- [ ] **Roadmap actualizado**

---

## Regla CRÍTICA

**NUNCA borrar trabajo previo**

✅ **CORRECTO**:
- Marcar como obsoleto parcial
- Añadir nota de revisión
- Iterar sobre lo existente

❌ **INCORRECTO**:
- Borrar secciones
- Eliminar artefactos
- Empezar de cero

**Razonamiento**:
- Preserva historial
- Permite comparación antes/después
- Evita pérdida de información valiosa
- Facilita roll-back si necesario

---

## Errores Comunes

### ❌ Borrar Contenido al Marcar
**Mal**:
```
Abrir estrategia.md
→ Borrar sección 3 (servicios)
→ Marcar para revisión
```

**Bien**:
```
Abrir estrategia.md
→ Actualizar frontmatter (estado: requiere_revision)
→ Añadir nota al inicio
→ PRESERVAR todo el contenido ✅
```

### ❌ Marcar Sin Nota Explicativa
**Mal**:
```
Cambiar estado a "requiere_revision"
[Sin explicar por qué]
```

**Bien**:
```
Cambiar estado a "requiere_revision"
Añadir nota:
> ⚠️ Requiere revisión debido a EVT-003
> Acción: Añadir servicio "Consultoría Avanzada"
> Responsable: Estratega
```

---

## Notas

- Skill 🔒 CONTROLADA (solo Jefe de Proyectos)
- Tercer paso de gestión de eventos
- Prepara artefactos para re-ejecución
- **Nunca borra, solo marca y anota**
