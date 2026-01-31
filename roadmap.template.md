---
tipo: roadmap
proyecto: [Nombre del Proyecto]
estado: activo
version: 1
creado: YYYY-MM-DD
ultima_actualizacion: YYYY-MM-DD
---

# Roadmap - [Nombre del Proyecto]

> **INSTRUCCIONES**: Al clonar el template, copiar este archivo como `roadmap.md` y completar con datos reales del proyecto.
> Este roadmap es un documento VIVO que se actualiza continuamente.

---

## Datos del Proyecto

**Nombre**: [Nombre del Proyecto]  
**Cliente**: [Nombre del Cliente]  
**Fecha inicio**: [YYYY-MM-DD]  
**Lanzamiento estimado**: [YYYY-MM-DD]  
**Jefe de Proyectos**: [Nombre]

**Contactos clave**:
- Cliente: [Nombre, email, teléfono]
- Jefe de Proyectos: [Contacto]

---

## Estado del Proyecto

**Última actualización**: [YYYY-MM-DD]

**Fase actual**: [Fase X - Nombre]  
**Progreso global**: [XX]% completado  
**Estado general**: ✅ En marcha / ⚠️ Con observaciones / 🔴 Bloqueado

**Indicadores de salud**:
- **Artefactos vigentes**: [X] ([XX]%)
- **Artefactos en revisión**: [X] ([XX]%)
- **Dependencias bloqueadas**: [X]
- **Deuda técnica**: [Baja / Media / Alta]
- **Desviación de timeline**: [+/- X días]

**Eventos activos**: [X]

---

## Fases del Proyecto

### Fase 0: Setup del Proyecto

**Estado**: [ ] Pendiente / [x] Completa / [ ] Bloqueada  
**Responsable**: Implementador  
**Fecha inicio**: [YYYY-MM-DD]  
**Fecha fin**: [YYYY-MM-DD]

**Tareas**:
- [ ] Conexión FTP configurada
- [ ] WordPress instalado
- [ ] Modo "próximamente" activado
- [ ] Robots.txt configurado (noindex temporal)

**Artefactos**:
- `docs/setup.md`

**Dependencias**: Ninguna  
**Bloquea a**: Fase 1

**Notas**: [Decisiones técnicas, hosting elegido, etc.]

---

### Fase 1: Estrategia

**Estado**: [ ] Pendiente / [ ] En curso / [ ] Completa / [ ] Bloqueada  
**Responsable**: Estratega  
**Fecha inicio**: [YYYY-MM-DD]  
**Fecha fin**: [YYYY-MM-DD o Estimada]

**Tareas**:
- [ ] Briefing con cliente completado
- [ ] 3+ perfiles de audiencia documentados (15 campos cada uno)
- [ ] Elevator pitch creado (5 componentes)
- [ ] Análisis de competencia (mín. 3)
- [ ] Mapping servicios → perfiles (100% cobertura)

**Artefactos**:
- `docs/estrategia.md` (estado: [vigente/requiere_revision])

**Dependencias**: Fase 0 completa  
**Bloquea a**: Fase 2, Fase 6

**Validación (Jefe de Proyectos)**:
- [ ] Mínimo 3 perfiles completos
- [ ] Elevator pitch con 5 componentes
- [ ] Mapping con 100% cobertura
- [ ] Pain points y objeciones por perfil

**Notas**: [Decisiones clave, insights del cliente, etc.]

---

### Fase 2: Planificación (SEO + URLs)

**Estado**: [ ] Pendiente / [ ] En curso / [ ] Completa / [ ] Bloqueada  
**Responsable**: Planificador  
**Fecha inicio**: [YYYY-MM-DD]  
**Fecha fin**: [YYYY-MM-DD o Estimada]

**Tareas**:
- [ ] Keyword research completado
- [ ] CSV con columnas obligatorias creado
- [ ] Todas las URLs con template asignado
- [ ] Requisitos de conversión definidos
- [ ] CTAs específicos por URL

**Artefactos**:
- `docs/planificacion-urls.csv` (estado: [vigente/requiere_revision])

**Dependencias**: Fase 1 completa  
**Bloquea a**: Fase 3, Fase 5

**Validación**:
- [ ] Ratio keywords/URLs ≥ 1.5:1
- [ ] 100% servicios con URL destino
- [ ] Columnas obligatorias presentes

**Notas**: [Keywords principales, oportunidades SEO detectadas]

---

### Fase 3: Wireframing

**Estado**: [ ] Pendiente / [ ] En curso / [ ] Completa / [ ] Bloqueada  
**Responsable**: Wireframer  
**Fecha inicio**: [YYYY-MM-DD]  
**Fecha fin**: [YYYY-MM-DD o Estimada]

**Tareas**:
- [ ] Wireframes de templates críticos creados
- [ ] Camino al CTA definido por template
- [ ] Notas semánticas HTML incluidas
- [ ] Notas para copywriter incluidas

**Artefactos**:
- `docs/wireframes.md` (estado: [vigente/requiere_revision])

**Dependencias**: Fase 2 completa  
**Bloquea a**: Fase 5, Fase 10

**Validación**:
- [ ] Templates críticos tienen wireframe
- [ ] Camino al CTA definido
- [ ] Estructura HTML documentada

**Notas**: [Decisiones de UX importantes]

---

### Fase 4: Definición de Stack

**Estado**: [ ] Pendiente / [ ] En curso / [ ] Completa / [ ] Bloqueada  
**Responsable**: Implementador  
**Fecha inicio**: [YYYY-MM-DD]  
**Fecha fin**: [YYYY-MM-DD o Estimada]

**Tareas**:
- [ ] Builder/tema decidido y justificado
- [ ] Plugin propio definido
- [ ] Regla WooCommerce aplicada (si transaccional)
- [ ] Plugins complementarios seleccionados

**Artefactos**:
- `docs/stack.md` (estado: [vigente/requiere_revision])

**Dependencias**: Fases 1, 2, 3 completas  
**Bloquea a**: Fase 5, Fase 8

**Validación**:
- [ ] Stack justificado según proyecto
- [ ] Si transaccional, WooCommerce incluido
- [ ] Plugin propio definido
- [ ] Sistema CPT/CCT claro

**Notas**: [Decisiones técnicas críticas]

---

### Fase 5: Arquitectura

**Estado**: [ ] Pendiente / [ ] En curso / [ ] Completa / [ ] Bloqueada  
**Responsable**: Arquitecto  
**Fecha inicio**: [YYYY-MM-DD]  
**Fecha fin**: [YYYY-MM-DD o Estimada]

**Tareas**:
- [ ] Protocolo de análisis de 4 pasos ejecutado
- [ ] Entidades identificadas según dominio del negocio
- [ ] Campos personalizados definidos
- [ ] Relaciones documentadas
- [ ] 4 reglas obligatorias aplicadas

**Artefactos**:
- `docs/arquitectura.md` (estado: [vigente/requiere_revision])

**Dependencias**: Fases 1, 2, 3, 4 completas  
**Bloquea a**: Fase 7, Fase 8

**Validación**:
- [ ] Nombres según dominio (no genéricos)
- [ ] Criterio CPT/CCT aplicado
- [ ] Ratio campos/content ≥ 80/20
- [ ] Si transaccional, WooCommerce base

**Notas**: [Decisiones de estructura de datos críticas]

---

### Fase 6: Diseño

**Estado**: [ ] Pendiente / [ ] En curso / [ ] Completa / [ ] Bloqueada  
**Responsable**: Diseñador  
**Fecha inicio**: [YYYY-MM-DD]  
**Fecha fin**: [YYYY-MM-DD o Estimada]

**Tareas**:
- [ ] Paleta completa definida (6+ colores)
- [ ] Contraste WCAG AA verificado
- [ ] Ideas de componentes documentadas
- [ ] Diferenciación visual argumentada
- [ ] Multimedia recomendada

**Artefactos**:
- `docs/diseno.md` (estado: [vigente/requiere_revision])

**Dependencias**: Fase 1 completa  
**Bloquea a**: Fase 9

**Validación**:
- [ ] Paleta con proporciones
- [ ] Contraste ≥ 4.5:1 texto, ≥ 3:1 UI
- [ ] Decisiones basadas en audiencia

**Notas**: [Decisiones visuales clave]

---

### Fase 6b: Creación de Contenidos

**Estado**: [ ] Pendiente / [ ] En curso / [ ] Completa / [ ] Bloqueada  
**Responsable**: Estratega / Content Creator  
**Fecha inicio**: [YYYY-MM-DD]  
**Fecha fin**: [YYYY-MM-DD o Estimada]

**Tareas**:
- [ ] Contenidos para todas las URLs
- [ ] Pain points atacados
- [ ] Objeciones resueltas
- [ ] CTAs específicos
- [ ] Especificaciones multimedia

**Artefactos**:
- `docs/contenidos.md` (estado: [vigente/requiere_revision])

**Dependencias**: Fases 1, 2, 3, 5 completas  
**Bloquea a**: Fase 7

**Validación**:
- [ ] Todos los contenidos presentes
- [ ] CTAs en segunda persona

---

### Fase 7: Inserción de Contenido Base

**Estado**: [ ] Pendiente / [ ] En curso / [ ] Completa / [ ] Bloqueada  
**Responsable**: Implementador  
**Fecha inicio**: [YYYY-MM-DD]  
**Fecha fin**: [YYYY-MM-DD o Estimada]

**Tareas**:
- [ ] Mínimo 1 entrada por CPT principal
- [ ] Términos de taxonomías creados
- [ ] Campos personalizados rellenados
- [ ] Imágenes placeholder o reales

**Artefactos**:
- `docs/insercion-contenido.md`

**Dependencias**: Fases 5, 6b, 8 completas  
**Bloquea a**: Fase 10

---

### Fase 8: Implementación de Plugins

**Estado**: [ ] Pendiente / [ ] En curso / [ ] Completa / [ ] Bloqueada  
**Responsable**: Implementador + Programador  
**Fecha inicio**: [YYYY-MM-DD]  
**Fecha fin**: [YYYY-MM-DD o Estimada]

**Tareas**:
- [ ] Plugins instalados y configurados
- [ ] Plugin propio desarrollado
- [ ] Conexiones externas en modo test
- [ ] CPTs/campos implementados

**Artefactos**:
- `docs/implementacion-plugins.md`
- Plugin propio en `/wp-content/plugins/`

**Dependencias**: Fases 4, 5 completas  
**Bloquea a**: Fase 10

---

### Fase 9: Framework CSS LMB

**Estado**: [ ] Pendiente / [ ] En curso / [ ] Completa / [ ] Bloqueada  
**Responsable**: Maquetador + Diseñador  
**Fecha inicio**: [YYYY-MM-DD]  
**Fecha fin**: [YYYY-MM-DD o Estimada]

**Tareas**:
- [ ] guia-estilos.html generado
- [ ] estilos.css creado con variables y componentes
- [ ] framework-css.md documentado
- [ ] Sistema responsive (breakpoint 700px)

**Artefactos**:
- `docs/guia-estilos.html`
- `docs/estilos.css`
- `docs/framework-css.md`

**Dependencias**: Fase 6 completa  
**Bloquea a**: Fase 10

---

### Fase 10: Maquetación

**Estado**: [ ] Pendiente / [ ] En curso / [ ] Completa / [ ] Bloqueada  
**Responsable**: Maquetador  
**Fecha inicio**: [YYYY-MM-DD]  
**Fecha fin**: [YYYY-MM-DD o Estimada]

**Tareas**:
- [ ] Todos los templates maquetados
- [ ] Framework CSS aplicado
- [ ] Wireframes respetados
- [ ] Responsive verificado

**Artefactos**:
- `docs/maquetacion.md`
- Templates implementados (PHP o Builder)

**Dependencias**: Fases 3, 7, 8, 9 completas  
**Bloquea a**: Fase 11, 12, 13

---

### Fase 11: Seguridad

**Estado**: [ ] Pendiente / [ ] En curso / [ ] Completa / [ ] Bloqueada  
**Responsable**: Securizador  
**Fecha inicio**: [YYYY-MM-DD]  
**Fecha fin**: [YYYY-MM-DD o Estimada]

**Tareas**:
- [ ] Código auditado
- [ ] CCTs privadas protegidas
- [ ] Plugin seguridad configurado
- [ ] wp-config.php securizado

**Artefactos**:
- `docs/reporte-seguridad.md`

**Dependencias**: Fases 8, 10 completas  
**Bloquea a**: Fase 14

---

### Fase 12: Optimización (WPO)

**Estado**: [ ] Pendiente / [ ] En curso / [ ] Completa / [ ] Bloqueada  
**Responsable**: Optimizador  
**Fecha inicio**: [YYYY-MM-DD]  
**Fecha fin**: [YYYY-MM-DD o Estimada]

**Tareas**:
- [ ] Core Web Vitals en verde
- [ ] Imágenes optimizadas (WebP, lazy loading)
- [ ] Caché configurada
- [ ] Scripts diferidos

**Artefactos**:
- `docs/reporte-wpo.md`

**Dependencias**: Fase 10 completa  
**Bloquea a**: Fase 13

---

### Fase 13: Testing (QA)

**Estado**: [ ] Pendiente / [ ] En curso / [ ] Completa / [ ] Bloqueada  
**Responsable**: Testador  
**Fecha inicio**: [YYYY-MM-DD]  
**Fecha fin**: [YYYY-MM-DD o Estimada]

**Tareas**:
- [ ] Plan de testing creado
- [ ] 10 áreas probadas
- [ ] Bugs documentados
- [ ] Criterios de aprobación cumplidos

**Artefactos**:
- `docs/testing/plan.md`
- `docs/testing/checklist.md`
- `docs/testing/bugs.md`
- `docs/testing/reportes/iteracion-[N].md`

**Dependencias**: Fases 10, 11, 12 completas  
**Bloquea a**: Fase 14

**Criterios de sign-off**:
- ≥ 95% tests pasados: [ ] [XX]%
- 0 bugs críticos: [ ] [X bugs]
- 0 bugs altos: [ ] [X bugs]
- CWV verde: [ ] [Estado]
- Func. crítica OK: [ ] [Estado]

---

### Fase 14: Pre-lanzamiento

**Estado**: [ ] Pendiente / [ ] En curso / [ ] Completa / [ ] Bloqueada  
**Responsable**: Jefe de Proyectos + Implementador  
**Fecha inicio**: [YYYY-MM-DD]  
**Fecha fin**: [YYYY-MM-DD o Estimada]

**Tareas**:
- [ ] Checklist 100% completo
- [ ] DNS configurado
- [ ] SSL activo
- [ ] Robots.txt actualizado (permitir indexación)
- [ ] Google Search Console verificado
- [ ] Backup completo realizado

**Artefactos**:
- `docs/pre-lanzamiento.md`

**Dependencias**: Fase 13 completa (sign-off)  
**Bloquea a**: Lanzamiento oficial

---

### Fase 15: Post-lanzamiento

**Estado**: [ ] Pendiente / [ ] En curso / [ ] Completa  
**Responsable**: Jefe de Proyectos + Optimizador  
**Fecha inicio**: [YYYY-MM-DD]  
**Fecha fin**: [Ongoing]

**Hitos**:
- [ ] Informe 72 horas
- [ ] Informe semana 1
- [ ] Informe mes 1

**Artefactos**:
- `docs/post-lanzamiento/informe-72h.md`
- `docs/post-lanzamiento/informe-semana-1.md`
- `docs/post-lanzamiento/informe-mes-1.md`
- `docs/mejora-continua/backlog.md`

**Dependencias**: Lanzamiento oficial

---

## Historial de Eventos

> Registro de cambios de negocio/alcance durante el proyecto

### EVT-001: [Título del Evento]

**Fecha comunicación**: [YYYY-MM-DD]  
**Tipo**: [Añadir servicio / Cambio público / Nueva integración / etc.]  
**Comunicado por**: [Cliente/Stakeholder]

**Descripción**:
[Qué cambió, por qué]

**Estado**: [Registrado / Analizado / En gestión / Cerrado]

**Artefactos impactados**:
- [Lista de artefactos marcados como "requiere_revision"]

**Fases re-ejecutadas**:
- [ ] Fase X (estado: [completa/en curso])
- [ ] Fase Y (estado: [completa/en curso])

**Impacto en timeline**:
- Timeline original: [Fecha]
- Delay: [+X días]
- Nuevo timeline: [Fecha]

**Fecha cierre**: [YYYY-MM-DD o Pendiente]

**Documento detallado**: `docs/eventos/EVT-001-[titulo].md`

---

## Métricas de Progreso

**Progreso por fase**:
```
Fase 0: ████████████████████ 100%
Fase 1: ████████████████████ 100%
Fase 2: ████████████████████ 100%
Fase 3: ████████████░░░░░░░░ 60%
Fase 4-15: ░░░░░░░░░░░░░░░░░░░░ 0%

Progreso global: [XX]%
```

**Timeline**:
```
Inicio: [Fecha]
Hoy: [Fecha] ([X semanas transcurridas])
Lanzamiento estimado: [Fecha] ([X semanas restantes])
```

---

## Riesgos y Bloqueos

**Riesgos identificados**:
1. [Riesgo 1: Descripción, impacto, mitigación]
2. [Riesgo 2]

**Bloqueos activos**:
- [Bloqueo 1: Qué está bloqueado, por qué, acción requerida]
- O "Ninguno" ✅

**Deuda técnica**:
- [Item 1 de deuda técnica]
- O "Ninguna" ✅

---

## Próximos Hitos

**Hito 1**: [Nombre del hito]  
- Fecha: [YYYY-MM-DD]
- Entregable: [Qué se entrega]

**Hito 2**: [Lanzamiento]  
- Fecha: [YYYY-MM-DD]
- Entregable: Sitio en producción

---

## Decisiones Clave Registradas

**[Fecha]**: [Decisión tomada sobre X]  
**[Fecha]**: [Decisión tomada sobre Y]

---

## Notas Generales

[Cualquier información relevante sobre el proyecto que no encaje en otras secciones]

---

**Responsable del roadmap**: Jefe de Proyectos  
**Frecuencia de actualización**: [Diaria / Después de cada fase / Semanal]
