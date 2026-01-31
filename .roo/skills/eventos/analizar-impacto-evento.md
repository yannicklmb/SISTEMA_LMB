---
nombre: analizar-impacto-evento
familia: eventos
control: controlada
activacion: Solo cuando el Jefe de Proyectos la solicita explícitamente
---

# Skill: Analizar Impacto de Evento

## Propósito

Crear matriz de impacto que identifica qué artefactos y fases deben revisarse o re-ejecutarse debido a un evento registrado.

## Cuándo Usar

- Después de registrar un evento (skill: registrar-evento)
- Cuando el Jefe de Proyectos necesita evaluar alcance del cambio
- Solo ejecutable por el Jefe de Proyectos (🔒 Controlada)

## Inputs Requeridos

### Obligatorios
- Evento ya registrado (con ID EVT-XXX)
- Documento del evento (`docs/eventos/EVT-XXX-[titulo].md`)
- Roadmap actualizado

## Proceso

### 1. Leer Descripción del Evento

**De `docs/eventos/EVT-XXX-[titulo].md`**:
```
Tipo de evento: [Añadir servicio / Cambio público / Nueva integración / etc.]
Descripción: [Qué cambió exactamente]
Alcance: [Qué tan grande es el cambio]
```

### 2. Crear Matriz de Impacto por Artefacto

**Análisis artefacto por artefacto**:

```markdown
## Matriz de Impacto - Evento EVT-XXX

### Artefacto: docs/estrategia.md

**¿Impactado?**: [✅ Sí / ❌ No]

**Razón**:
[Por qué sí o por qué no]

**Tipo de actualización necesaria**:
- [ ] Añadir información nueva (no borra existente)
- [ ] Modificar información existente
- [ ] Ampliar sección
- [ ] Ninguna

**Prioridad**: [Alta / Media / Baja / No aplica]

**Estado requerido**: [vigente / requiere_revision / obsoleto_parcial]

---

### Artefacto: docs/planificacion-urls.csv

**¿Impactado?**: [✅ Sí / ❌ No]

**Razón**:
[Ej: Nuevo servicio requiere nueva URL]

**Tipo de actualización**:
- [ ] Añadir filas (nuevas URLs)
- [ ] Modificar filas existentes
- [ ] Eliminar filas (raramente)
- [ ] Ninguna

**Prioridad**: [Alta / Media / Baja]

---

### Artefacto: docs/wireframes.md

**¿Impactado?**: [✅ Sí / ❌ No]

**Razón**:
[Ej: Nueva URL requiere nuevo wireframe]

**Tipo de actualización**:
- [ ] Crear wireframe nuevo
- [ ] Modificar wireframe existente
- [ ] Ninguna

---

### Artefacto: docs/arquitectura.md

**¿Impactado?**: [✅ Sí / ❌ No]

**Razón**:
[Ej: Nuevo servicio puede requerir campos adicionales o CPT]

---

### Artefacto: docs/diseno.md

**¿Impactado?**: [✅ Sí / ❌ No]

**Razón**:
[Ej: Cambio de público puede requerir cambio de paleta]

---

### Artefacto: docs/stack.md

**¿Impactado?**: [✅ Sí / ❌ No]

---

### Artefacto: docs/contenidos.md

**¿Impactado?**: [✅ Sí / ❌ No]

---

[... analizar TODOS los artefactos existentes]
```

### 3. Identificar Fases Afectadas

**Matriz fase por fase**:

```markdown
## Fases Afectadas

### Fase 1: Estrategia

**¿Requiere re-ejecución?**: [✅ Sí / ❌ No / ⚠️ Actualización menor]

**Razón**:
[Ej: Nuevo servicio debe añadirse a sección 3 de estrategia.md]

**Alcance de re-ejecución**:
- [ ] Re-ejecutar completa
- [x] Actualización parcial (solo sección 3)
- [ ] No requiere acción

**Responsable**: [Estratega]
**Estimación**: [X horas/días]

---

### Fase 2: Planificación

**¿Requiere re-ejecución?**: [✅ Sí]

**Razón**:
[Nuevo servicio requiere keywords y URL destino]

**Alcance**:
- [x] Añadir filas al CSV
- [ ] Modificar filas existentes
- [ ] Re-hacer keyword research

**Responsable**: [Planificador]
**Estimación**: [X horas]

---

[... analizar TODAS las 16 fases]
```

### 4. Determinar Orden de Re-Ejecución

**Según dependencias**:

```markdown
## Orden de Re-Ejecución

**Respetando dependencias del sistema**:

1. **Fase 1** (Estrategia) - Añadir nuevo servicio
   - Dependencias: Ninguna
   - Debe completarse antes de Fase 2

2. **Fase 2** (Planificación) - Añadir URL del nuevo servicio
   - Dependencia: Requiere Fase 1 actualizada
   - Debe completarse antes de Fase 3

3. **Fase 3** (Wireframes) - Crear wireframe para nuevo servicio
   - Dependencia: Requiere Fase 2 actualizada
   - Debe completarse antes de Fase 5

4. **Fase 5** (Arquitectura) - Evaluar si requiere campos nuevos
   - Dependencia: Requiere Fase 3 actualizada
   - Puede requerir actualización menor

[... orden completo]
```

### 5. Estimar Impacto en Timeline

**Calcular días de trabajo**:
```markdown
## Impacto en Timeline

**Fases a re-ejecutar**: [X]
**Estimación de trabajo**:
- Fase 1 actualización: 0.5 días
- Fase 2 actualización: 1 día
- Fase 3 nuevo wireframe: 1 día
- Fase 5 evaluación: 0.5 días
- Fase 6b contenido nuevo: 2 días

**Total estimado**: [X] días

**Timeline original**: Lanzamiento [Fecha]
**Nuevo timeline** (estimado): Lanzamiento [Fecha + X días]

**Recomendación**: [Aceptar delay / Posponer evento a post-lanzamiento / Priorizar]
```

### 6. Generar Reporte de Análisis

**Actualizar documento del evento**:

```markdown
## Análisis de Impacto (Completado)

**Fecha análisis**: YYYY-MM-DD
**Analizado por**: Jefe de Proyectos

### Artefactos Impactados (Resumen)

| Artefacto | Impacto | Prioridad | Tipo Actualización |
|-----------|---------|-----------|-------------------|
| estrategia.md | ✅ Sí | Alta | Añadir servicio |
| planificacion-urls.csv | ✅ Sí | Alta | Añadir filas |
| wireframes.md | ✅ Sí | Alta | Crear wireframe |
| arquitectura.md | ⚠️ Evaluar | Media | Posible campos nuevos |
| contenidos.md | ✅ Sí | Alta | Crear contenido |
| [otros] | ❌ No | - | - |

**Total artefactos impactados**: [X]

---

### Fases a Re-Ejecutar (Resumen)

1. Fase 1 (parcial) - 0.5 días
2. Fase 2 (parcial) - 1 día
3. Fase 3 (parcial) - 1 día
4. Fase 5 (evaluación) - 0.5 días
5. Fase 6b (nuevo contenido) - 2 días

**Total estimado**: 5 días

---

### Impacto en Timeline

**Timeline original**: [Fecha]
**Delay estimado**: +5 días
**Nuevo timeline**: [Fecha + 5 días]

**Recomendación**: 
[Aceptar / Posponer evento / Reducir alcance]

**Decisión del cliente**: [Pendiente / Aprobado / Pospuesto]

---

## Próximos Pasos (según decisión)

**Si aprobado**:
1. Ejecutar skill: marcar-artefactos-revision
2. Ejecutar skill: replanificacion-dirigida
3. Asignar fases a agentes en orden correcto

**Si pospuesto**:
1. Mover evento a backlog post-lanzamiento
2. Continuar con timeline original

**Si reducido**:
1. Ajustar alcance del evento
2. Re-analizar impacto con alcance reducido
```

---

## Output Esperado

**Documento del evento actualizado** con:
- Matriz completa de impacto (todos los artefactos)
- Lista de fases afectadas con orden
- Estimación de días
- Impacto en timeline
- Recomendación fundamentada

---

## Criterios de Validación

- [ ] **Todos los artefactos analizados** (no olvidar ninguno)
- [ ] **Impacto justificado** (por qué sí o no)
- [ ] **Fases identificadas** con alcance claro (total/parcial)
- [ ] **Orden de re-ejecución** respeta dependencias
- [ ] **Timeline estimado** (días de trabajo)
- [ ] **Recomendación clara** (aceptar/posponer/reducir)

---

## Errores Comunes

### ❌ Análisis Superficial
**Mal**:
```
Artefactos impactados: estrategia.md
Fases: Fase 1
[Sin analizar efecto dominó]
```

**Bien**:
```
Evento: Añadir servicio
Artefactos impactados:
1. estrategia.md (añadir servicio)
2. planificacion-urls.csv (añadir URL)
3. wireframes.md (crear wireframe)
4. arquitectura.md (evaluar campos)
5. contenidos.md (crear contenido)
6. maquetacion (implementar template)
[Análisis completo del efecto dominó]
```

---

## Notas

- Skill 🔒 CONTROLADA (solo Jefe de Proyectos)
- Segundo paso de gestión de eventos
- Requiere análisis profundo de dependencias
- El output guía las decisiones de replanificación
