---
nombre: validar-planificacion-vs-wireframes
familia: validacion
control: autonoma
activacion: "validar planificación wireframes", "templates sin wireframe", "coherencia planificación wireframes"
---

# Skill: Validar Planificación vs Wireframes

## Propósito

Detectar templates críticos definidos en `docs/planificacion-urls.csv` que no tienen wireframe correspondiente en `docs/wireframes.md`.

## Cuándo Usar

- Después de completar Fase 3 (Wireframes)
- Cuando el Jefe de Proyectos solicita validación cruzada
- Si un especialista detecta template sin diseño UX

## Inputs Requeridos

### Obligatorios
- **`docs/planificacion-urls.csv`**: Templates planificados
- **`docs/wireframes.md`**: Wireframes creados

## Proceso

### 1. Extraer Templates de Planificación

**Leer columna `template_wp` del CSV**:
```
Templates únicos identificados:
- page (home)
- page (contacto)
- page (sobre-nosotros)
- single-clase-yoga
- archive-estilo-yoga
- single-instructor
- archive-clase-yoga
- 404
```

### 2. Extraer Templates de Wireframes

**Leer wireframes.md**:
```
Templates wireframeados:
- Home (page)
- Contacto (page)
- Single Clase de Yoga (single-clase-yoga)
- Archive Estilos (archive-estilo-yoga)
- 404
```

### 3. Identificar Templates Críticos

**Criterio de criticidad**:
- Home → CRÍTICO (siempre)
- Contacto → CRÍTICO (siempre)
- Templates con más URLs asociadas → CRÍTICOS
- Singles principales → CRÍTICOS
- Archives principales → IMPORTANTES
- Páginas legales (privacidad, cookies) → NO CRÍTICOS

**Clasificar**:
```
CRÍTICOS:
- Home
- Contacto
- single-clase-yoga (20 URLs)
- single-instructor (5 URLs)

IMPORTANTES:
- archive-estilo-yoga
- archive-clase-yoga

NO CRÍTICOS:
- page (privacidad)
- page (cookies)
```

### 4. Detectar Templates Sin Wireframe

**Cruzar listas**:
```
Templates CRÍTICOS en planificación:
- Home → ✅ Tiene wireframe
- Contacto → ✅ Tiene wireframe
- single-clase-yoga → ✅ Tiene wireframe
- single-instructor → ❌ NO tiene wireframe ⚠️

Templates IMPORTANTES:
- archive-estilo-yoga → ✅ Tiene wireframe
- archive-clase-yoga → ❌ NO tiene wireframe ⚠️
```

### 5. Generar Reporte

**Documento**: `docs/validaciones/planificacion-vs-wireframes-[fecha].md`

```markdown
---
tipo: validacion
estado: vigente
validacion: planificacion-wireframes
version: 1
responsable: jefe-proyectos
creado: YYYY-MM-DD
---

# Validación: Planificación vs Wireframes

**Fecha**: YYYY-MM-DD

---

## Resultado General

**Estado**: ✅ Coherente / ⚠️ Templates faltantes / ❌ Templates críticos faltantes

**Resumen**:
- Templates únicos en planificación: [X]
- Templates wireframeados: [X]
- Templates críticos sin wireframe: [X]
- Cobertura: [XX%]

---

## Templates Críticos

### Con Wireframe ✅
- Home (page)
- Contacto (page)
- single-clase-yoga

### Sin Wireframe ❌
- single-instructor (5 URLs afectadas)

**Impacto**:
No se puede maquetar single-instructor sin wireframe.
Bloquea implementación de 5 URLs.

**Acción requerida**:
Asignar al Wireframer: Crear wireframe para single-instructor

---

## Templates Importantes

### Sin Wireframe ⚠️
- archive-clase-yoga

**Impacto**: Menor
**Acción**: Recomendado crear wireframe

---

## Templates No Críticos

**Sin wireframe** (aceptable):
- page (privacidad) - Estructura simple, no requiere wireframe
- page (cookies) - Estructura simple

---

## Acciones Recomendadas

**Prioridad ALTA** (bloquea progreso):
1. Crear wireframe: single-instructor

**Prioridad MEDIA** (recomendado):
1. Crear wireframe: archive-clase-yoga

**Prioridad BAJA**:
- Ninguna

---

## Conclusión

**Estado**: [Aprobado / Requiere acción / Bloqueado]

**Próximos pasos**:
[Si requiere acción, qué debe hacerse]
```

---

## Output Esperado

**Reporte de validación** en `docs/validaciones/`

**Identifica**:
- Templates críticos sin wireframe (BLOQUEA)
- Templates importantes sin wireframe (RECOMIENDA)
- Templates no críticos sin wireframe (ACEPTA)
- Acciones priorizadas

---

## Criterios de Validación

- [ ] **Templates de planificación extraídos** (todos)
- [ ] **Templates de wireframes extraídos** (todos)
- [ ] **Criticidad evaluada** (críticos identificados)
- [ ] **Templates faltantes detectados** (si los hay)
- [ ] **Impacto documentado** (número de URLs afectadas)
- [ ] **Acciones priorizadas** (alta/media/baja)

---

## Errores Comunes

### ❌ No Considerar Criticidad
**Mal**:
```
Template faltante: page (cookies)
→ Reportar como crítico
```

**Bien**:
```
Template faltante: page (cookies)
→ Evaluar: Estructura simple, no requiere wireframe
→ Clasificar: NO CRÍTICO
→ Acción: Ninguna necesaria
```

---

## Notas

- Esta skill detecta, no resuelve
- Si hay templates críticos sin wireframe, BLOQUEA Fase 10 (Maquetación)
- El Jefe de Proyectos decide qué acciones tomar
