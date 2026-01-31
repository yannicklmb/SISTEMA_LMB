---
nombre: replanificacion-dirigida
familia: eventos
control: controlada
activacion: Solo cuando el Jefe de Proyectos la solicita explícitamente
---

# Skill: Replanificación Dirigida

## Propósito

Dirigir la re-ejecución de fases afectadas por un evento en el orden correcto de dependencias, asignando tareas a agentes responsables.

## Cuándo Usar

- Después de analizar impacto y marcar artefactos
- Cuando el Jefe de Proyectos necesita coordinar actualización
- Solo ejecutable por el Jefe de Proyectos (🔒 Controlada)

## Inputs Requeridos

### Obligatorios
- Evento con análisis de impacto completado
- Artefactos ya marcados como "requiere_revision"
- Orden de re-ejecución definido (del análisis de impacto)

## Proceso

### 1. Leer Orden de Re-Ejecución

**Del análisis de impacto del evento**:
```
Fases a re-ejecutar (en orden):
1. Fase 1 (Estrategia) - Actualización parcial
2. Fase 2 (Planificación) - Actualización parcial
3. Fase 3 (Wireframes) - Creación nueva
4. Fase 5 (Arquitectura) - Evaluación
5. Fase 6b (Contenidos) - Creación nueva
6. Fase 7 (Inserción) - Creación nueva
7. Fase 10 (Maquetación) - Implementación
```

### 2. Asignar Fase 1 (Primera del Orden)

**Comunicación al agente**:

```markdown
## Asignación de Tarea - Evento EVT-XXX

**Para**: Estratega
**Fase**: Fase 1 (Estrategia) - Actualización parcial
**Artefacto**: docs/estrategia.md

---

### Contexto del Evento

**Evento**: EVT-003 - Añadir Servicio "Consultoría Avanzada"

**Descripción del cambio**:
[Copiar descripción del evento]

---

### Tarea Específica

**Acción requerida**:
Añadir nuevo servicio "Consultoría Avanzada" a sección 3 de estrategia.md

**Datos del nuevo servicio**:
- Nombre: Consultoría Avanzada
- Descripción: [Descripción proporcionada]
- Perfil objetivo: [Perfil]
- Diferenciación: [Qué lo hace único]

**NO borrar servicios existentes** (solo añadir)

---

### Instrucciones

1. Abrir docs/estrategia.md (estado: requiere_revision)
2. Leer nota de revisión al inicio
3. Añadir nuevo servicio a sección 3
4. Actualizar mapping servicios → perfiles (sección 6)
5. Actualizar frontmatter:
   - estado: vigente (cuando completes)
   - version: 2 (incrementar)
   - ultima_revision: [fecha actual]
   - validado_por: null (requiere nueva validación)
6. ELIMINAR nota de revisión del inicio
7. Entregar para validación

---

### Criterios de Validación

- [ ] Nuevo servicio añadido a sección 3
- [ ] Mapping actualizado
- [ ] Frontmatter actualizado correctamente
- [ ] Nota de revisión eliminada
- [ ] Contenido previo preservado
```

### 3. Esperar Validación de Fase 1

**NO asignar Fase 2 hasta que Fase 1 esté validada**

**Flujo de validación**:
```
1. Estratega completa actualización
2. Estratega entrega estrategia.md actualizado
3. Jefe de Proyectos valida
4. Si aprueba:
   - Marcar Fase 1 como completa para este evento
   - Continuar con Fase 2
5. Si rechaza:
   - Solicitar correcciones a Estratega
   - Re-validar
```

### 4. Asignar Fase 2 (Solo Después de Validar Fase 1)

**Comunicación al Planificador**:

```markdown
## Asignación de Tarea - Evento EVT-XXX

**Para**: Planificador
**Fase**: Fase 2 (Planificación) - Actualización parcial
**Artefacto**: docs/planificacion-urls.csv

---

### Contexto

**Evento**: EVT-003 - Añadir Servicio "Consultoría Avanzada"

**Fase 1 completada**: ✅ (estrategia.md actualizado y validado)

---

### Tarea

**Acción**:
Añadir filas al CSV para el nuevo servicio

**Información disponible** (de estrategia.md actualizado):
- Servicio: Consultoría Avanzada
- Perfil objetivo: CTO Grandes Empresas
- Pain points: [Lista de estrategia.md]
- Diferenciación: [De estrategia.md]

**Tareas específicas**:
1. Keyword research para "Consultoría Avanzada"
2. Añadir filas al CSV (nuevas URLs)
3. Definir requisitos de conversión
4. Definir CTAs específicos
5. Actualizar frontmatter del CSV
6. Entregar para validación

**NO eliminar filas existentes** (solo añadir)
```

### 5. Continuar Secuencialmente

**Por cada fase siguiente**:
1. Esperar validación de fase anterior
2. Asignar siguiente fase al agente correspondiente
3. Proporcionar contexto completo
4. Referenciar artefactos ya actualizados
5. Validar output
6. Continuar con siguiente

**Orden ESTRICTO** (respetar dependencias):
```
Fase 1 → Validar → Fase 2 → Validar → Fase 3 → Validar → ...
```

**NUNCA**:
- Asignar Fase 2 antes de validar Fase 1
- Ejecutar fases en paralelo (riesgo de incoherencias)
- Saltar fases (rompe dependencias)

### 6. Actualizar Roadmap Continuamente

**Por cada fase completada**:

```markdown
### EVT-003: Añadir Servicio "Consultoría Avanzada"

**Estado**: En gestión

**Progreso**:
- [x] Registrado (2025-01-20)
- [x] Análisis de impacto (2025-01-20)
- [x] Artefactos marcados (2025-01-20)
- [x] Fase 1 re-ejecutada y validada (2025-01-21)
- [x] Fase 2 re-ejecutada y validada (2025-01-21)
- [ ] Fase 3 en curso (Wireframer trabajando)
- [ ] Fase 5 pendiente
- [ ] Fase 6b pendiente
- [ ] Fase 7 pendiente
- [ ] Fase 10 pendiente

**Estimación restante**: [X días]
```

### 7. Cerrar Evento

**Cuando TODAS las fases estén completadas**:

```markdown
### EVT-003: Añadir Servicio "Consultoría Avanzada"

**Estado**: ✅ Cerrado

**Fases re-ejecutadas**:
- [x] Fase 1 (Estrategia) - Completada
- [x] Fase 2 (Planificación) - Completada
- [x] Fase 3 (Wireframes) - Completada
- [x] Fase 5 (Arquitectura) - Evaluada (sin cambios necesarios)
- [x] Fase 6b (Contenidos) - Completada
- [x] Fase 7 (Inserción) - Completada
- [x] Fase 10 (Maquetación) - Completada

**Artefactos actualizados**:
- docs/estrategia.md (v2)
- docs/planificacion-urls.csv (v2)
- docs/wireframes.md (v2)
- docs/contenidos.md (v2)

**Fecha inicio**: 2025-01-20
**Fecha cierre**: 2025-01-23
**Duración total**: 3 días

**Impacto en timeline**:
- Timeline original: 2025-02-01
- Delay: +3 días
- Nuevo timeline: 2025-02-04

**Lecciones aprendidas**:
[Notas sobre el proceso]
```

---

## Output Esperado

**Gestión completa del evento**:
- Fases asignadas en orden correcto
- Validaciones realizadas entre fases
- Artefactos actualizados progresivamente
- Roadmap reflejando progreso
- Evento cerrado cuando todo completo

---

## Criterios de Validación

- [ ] **Orden de fases respeta dependencias** (no se saltaron pasos)
- [ ] **Cada fase validada** antes de continuar
- [ ] **Roadmap actualizado** continuamente
- [ ] **Artefactos coherentes** entre sí (validado)
- [ ] **Evento cerrado** cuando todo completo
- [ ] **Timeline actualizado** con nuevo lanzamiento

---

## Errores Comunes

### ❌ Asignar Fases en Paralelo
**Mal**:
```
Asignar simultáneamente:
- Estratega: Actualizar estrategia.md
- Planificador: Actualizar planificacion-urls.csv
[En paralelo, sin esperar validación]
```

**Bien**:
```
Secuencial:
1. Asignar a Estratega
2. Esperar completación
3. Validar estrategia.md
4. Si aprueba → Asignar a Planificador
5. Esperar completación
6. Validar planificacion-urls.csv
[Orden estricto]
```

### ❌ No Actualizar Roadmap
**Mal**:
```
Gestionar evento sin actualizar roadmap
[Pérdida de trazabilidad]
```

**Bien**:
```
Cada paso documentado en roadmap:
- Evento registrado ✓
- Impacto analizado ✓
- Fase 1 completada ✓
[Trazabilidad completa]
```

---

## Notas

- Skill 🔒 CONTROLADA (solo Jefe de Proyectos)
- Último paso de gestión de eventos
- Requiere coordinación secuencial estricta
- Asegura coherencia durante el cambio
