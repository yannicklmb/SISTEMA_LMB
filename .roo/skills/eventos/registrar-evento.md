---
nombre: registrar-evento
familia: eventos
control: controlada
activacion: Solo cuando el Jefe de Proyectos la solicita explícitamente
---

# Skill: Registrar Evento

## Propósito

Describir y registrar formalmente un evento (cambio de negocio/alcance) en el roadmap con fecha y detalle completo.

## Cuándo Usar

- Cuando el cliente comunica un cambio de negocio al Jefe de Proyectos
- Antes de analizar impacto (primero registrar, luego analizar)
- Solo ejecutable por el Jefe de Proyectos (🔒 Controlada)

## Inputs Requeridos

### Obligatorios
- Descripción del cambio comunicado por el cliente
- Fecha en que se comunica
- Contexto del cambio

## Proceso

### 1. Identificar Tipo de Evento

**Tipos comunes**:
- **Añadir servicio/producto**: Nuevo a la oferta
- **Cambio en público objetivo**: Modificación de perfiles
- **Nueva integración técnica**: API, pasarela, sistema externo
- **Cambio en stack**: Cambiar builder, plugin, tecnología
- **Cambio de alcance**: Añadir funcionalidad no planificada
- **Cambio de contenido**: Modificación sustancial de mensaje

### 2. Asignar ID de Evento

**Formato**: `EVT-XXX`

**Secuencial**:
```
Último evento registrado: EVT-002
Nuevo evento: EVT-003
```

### 3. Documentar Evento en Roadmap

**Añadir a sección "Historial de Eventos" en roadmap.md**:

```markdown
## Historial de Eventos

### EVT-003: [Título Breve del Evento]

**Fecha comunicación**: YYYY-MM-DD
**Comunicado por**: [Cliente/Stakeholder]
**Tipo**: [Añadir servicio / Cambio público / Nueva integración / etc.]

**Descripción del cambio**:
[Descripción detallada de qué cambia y por qué]

**Contexto**:
[Por qué el cliente solicita este cambio, qué lo motiva]

**Estado**: Registrado → Análisis pendiente

**Análisis de impacto**: Pendiente (ejecutar skill: analizar-impacto-evento)

**Artefactos potencialmente afectados** (estimación inicial):
- [Lista preliminar de artefactos que podrían requerir actualización]

**Decisiones tomadas**:
- [Se irán añadiendo según progrese la gestión del evento]

**Fases re-ejecutadas**:
- [Se añadirán después del análisis de impacto]

**Fecha resolución**: [Cuando se complete la gestión del evento]
```

### 4. Crear Documento Detallado del Evento

**Documento**: `docs/eventos/EVT-XXX-[titulo-breve].md`

```markdown
---
tipo: evento
estado: registrado
evento_id: EVT-XXX
fecha_comunicacion: YYYY-MM-DD
impacto: pendiente_analisis
---

# Evento EVT-XXX: [Título del Evento]

## Datos del Evento

**ID**: EVT-XXX
**Fecha comunicación**: YYYY-MM-DD
**Comunicado por**: [Nombre cliente/stakeholder]
**Tipo de evento**: [Tipo]
**Prioridad**: [Alta / Media / Baja] (a determinar después de análisis)

---

## Descripción del Cambio

[Descripción detallada de qué cambió, qué se añade, qué se modifica]

**Ejemplo**:
"El cliente desea añadir un nuevo servicio 'Consultoría Avanzada' a la oferta existente. Este servicio se dirige a un nuevo perfil de audiencia (CTOs de grandes empresas) que no estaba contemplado inicialmente."

---

## Contexto del Cliente

**Razón del cambio**:
[Por qué el cliente solicita esto]

**Urgencia**:
[¿Es urgente? ¿Puede esperar a post-lanzamiento?]

**Expectativas**:
[Qué espera el cliente que suceda]

---

## Análisis de Impacto (Pendiente)

**Artefactos potencialmente afectados**:
- [ ] estrategia.md (servicios/productos)
- [ ] planificacion-urls.csv (nueva URL para servicio)
- [ ] wireframes.md (wireframe del nuevo servicio)
- [ ] arquitectura.md (posibles campos nuevos)
- [ ] contenidos.md (contenido del nuevo servicio)
- [ ] [Otros según análisis]

**Fases potencialmente afectadas**:
- Fase 1: [Sí/No - justificar]
- Fase 2: [Sí/No - justificar]
- [... análisis detallado pendiente con skill analizar-impacto-evento]

---

## Próximos Pasos

1. Ejecutar skill: `analizar-impacto-evento` (para EVT-XXX)
2. Marcar artefactos afectados como "requiere_revision"
3. Re-ejecutar fases afectadas en orden correcto
4. Actualizar roadmap con nueva planificación

---

## Historial de Decisiones

[Se irá actualizando según se gestione el evento]

- [Fecha]: Decisión tomada: [Descripción]
- [Fecha]: Artefacto actualizado: [Cual]
- [Fecha]: Fase re-ejecutada: [Cual]
```

### 5. Actualizar Estado del Proyecto en Roadmap

**En sección "Estado del Proyecto"**:
```markdown
## Estado del Proyecto

**Última actualización**: YYYY-MM-DD

**Eventos activos**: 1 (EVT-XXX)
**Artefactos en revisión**: [Número] (debido a EVT-XXX)
**Fases bloqueadas**: [Si alguna fase está bloqueada por el evento]

**Impacto en timeline**:
- Timeline original: [Fecha lanzamiento]
- Impacto estimado: [+X días] (pendiente confirmación)
- Timeline actualizado: [Fecha] (pendiente análisis de impacto)
```

---

## Output Esperado

**2 Documentos actualizados**:
1. **`roadmap.md`**: Sección "Historial de Eventos" con EVT-XXX registrado
2. **`docs/eventos/EVT-XXX-[titulo].md`**: Documento detallado del evento

**Estado**: Evento registrado, análisis de impacto pendiente

---

## Criterios de Validación

- [ ] **Evento tiene ID único** (EVT-XXX)
- [ ] **Fecha comunicación** documentada
- [ ] **Descripción completa** del cambio
- [ ] **Contexto** del cliente documentado
- [ ] **Registrado en roadmap.md**
- [ ] **Documento detallado creado** en docs/eventos/
- [ ] **Próximos pasos claros** (análisis de impacto)

---

## Errores Comunes

### ❌ Registrar Sin Detalle Suficiente
**Mal**:
```
EVT-003: Cambio en servicios
[Sin más detalles]
```

**Bien**:
```
EVT-003: Añadir Servicio "Consultoría Avanzada" para CTOs

Descripción completa:
- Qué: Nuevo servicio de consultoría para CTOs grandes empresas
- Por qué: Cliente detectó demanda en ese segmento
- Alcance: Requiere nuevo perfil audiencia, nueva URL, contenido específico
- Urgencia: Media (puede integrarse en timeline actual)
```

### ❌ Registrar y Analizar en un Solo Paso
**Mal**:
```
Registrar evento + analizar impacto + marcar artefactos
[Todo junto, sin separación]
```

**Bien**:
```
Paso 1: Registrar evento (esta skill)
Paso 2: Analizar impacto (skill separada: analizar-impacto-evento)
Paso 3: Marcar artefactos (skill separada: marcar-artefactos-revision)
[Proceso ordenado y trazable]
```

---

## Notas

- Esta skill es 🔒 **CONTROLADA**: Solo el Jefe de Proyectos puede ejecutarla
- Es el primer paso de la gestión de eventos
- NO analiza impacto (eso es otra skill)
- NO marca artefactos (eso es otra skill)
- Solo REGISTRA formalmente el cambio
