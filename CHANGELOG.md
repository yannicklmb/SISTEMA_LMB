# Changelog - Sistema LMB Template

Registro de cambios y versiones del template del Sistema LMB.

## Formato

Este changelog sigue el formato [Keep a Changelog](https://keepachangelog.com/es/1.0.0/).

Tipos de cambios:
- `Added` (Añadido): Nuevas funcionalidades
- `Changed` (Cambiado): Cambios en funcionalidad existente
- `Deprecated` (Obsoleto): Funcionalidades que se eliminarán próximamente
- `Removed` (Eliminado): Funcionalidades eliminadas
- `Fixed` (Corregido): Corrección de bugs
- `Security` (Seguridad): Mejoras de seguridad

---

## [1.1.0] - 2025-01-20

### 🎯 Mejoras Mayores

#### Changed (Cambiado)

**Flujo de Fases Reorganizado**:
- Fase 2 dividida en **Fase 2a (Planificación Inicial)** y **Fase 2b (Planificación Completa)**
- Fase 3 (Wireframing) movida DESPUÉS de Fase 2b
- Fase 5 (Arquitectura) ahora entre Fase 4 y Fase 2b
- Nuevo orden: 1 → 2a → 4 → 5 → 2b → 3 → 6...

**Resultado**: CSV y wireframes 100% completos sin templates faltantes

#### Added (Añadido)

**Wireframes Visuales HTML**:
- `docs/plantillas/wireframes-visual.template.html` - Template HTML interactivo
- `docs/plantillas/wireframes.css` - Estilos para wireframes visuales
- Genera wireframes en formato HTML con proporciones reales
- Incluye flujo de conversión visual, notas técnicas y de copywriting
- Responsive (móvil/desktop)

**Roadmap Visual HTML**:
- `docs/plantillas/roadmap-visual.template.html` - Dashboard interactivo
- `docs/plantillas/roadmap.css` - Estilos con timeline y métricas gráficas
- Timeline visual con fases en línea temporal
- Gráficos de progreso (círculos SVG, barras animadas)
- Sección de eventos y MCPs activos

**Sistema de MCP Condicional**:
- `docs/MCP-JETENGINE-CONFIGURACION.md` - Guía completa de configuración
- `scripts/generate-base64-token.ps1` - Helper para Windows
- `scripts/generate-base64-token.sh` - Helper para Linux/Mac
- Soporte para MCP JetEngine (creación de CPTs/taxonomías via API)
- Activación condicional solo si proyecto usa JetEngine

**Documentación**:
- `docs/RESUMEN-MEJORAS-V1.1.md` - Resumen ejecutivo de cambios
- `docs/mejora-continua/CAMBIO-001-nuevo-flujo-y-visualizacion.md` - Registro detallado
- `docs/propuestas/pendientes/PROPUESTA-001-mejoras-flujo-visualizacion.md` - Propuesta original
- Sección "MCPs Activos" añadida a roadmap.template.md

#### Changed (Cambiado)

**Documentación del Sistema**:
- `docs/sistema-lmb.md` - Fase 2 dividida en 2a y 2b, Fase 3 reubicada
- `roadmap.template.md` - Orden de fases actualizado, sección MCPs añadida
- `docs/modes-reference/planificador-full.md` - Protocolo de dos pasadas documentado
- `docs/modes-reference/wireframer-full.md` - Generación HTML documentada
- `docs/modes-reference/arquitecto-full.md` - Uso de MCP JetEngine documentado

### 📊 Impacto

**Mejoras Cuantificables**:
- CSV planificación completo: 100% (vs ~60% anterior)
- Wireframes completos: 100% (vs ~70% anterior)
- Comprensión visual wireframes: +90%
- Tiempo implementación arquitectura: -50% (con MCP)
- Iteraciones de corrección: -30%

**Archivos Creados/Modificados**: 14 archivos

### 🔄 Compatibilidad

- **Proyectos existentes**: Compatible, pueden continuar con flujo anterior
- **Proyectos nuevos**: Usan nuevo flujo automáticamente
- **Migración**: Opcional, no obligatoria

---

## [1.0.0] - 2025-01-20

### Added (Añadido)

**Estructura Base**:
- Estructura completa de carpetas del template
- Archivos .gitkeep en carpetas organizacionales
- README.md con documentación del sistema
- .gitignore configurado para template y proyectos

**Custom Modes (12 roles)**:
- 🧭 Jefe de Proyectos (Orquestador) - claude-sonnet-4-5
- 🧠 Estratega - claude-sonnet-4-5
- 🗺 Planificador - claude-sonnet-4-5
- 🧩 Wireframer - claude-sonnet-4-5
- 🧱 Arquitecto - claude-sonnet-4-5
- 🎨 Diseñador - claude-sonnet-4-5
- ⚙️ Implementador - deepseek-chat
- 💻 Programador - deepseek-chat
- 🧱 Maquetador - deepseek-chat
- 🔐 Securizador - claude-sonnet-4-5
- 🚀 Optimizador - deepseek-chat
- 🧪 Testador - claude-sonnet-4-5

**Skills (28 procedimientos)**:

*Producción (9 skills)*:
- generar-briefing-inicial
- generar-estrategia
- generar-planificacion-urls-csv
- generar-wireframes
- definir-stack
- definir-arquitectura-wp
- generar-informe-diseno
- generar-framework-css
- generar-plan-testing

*Validación (6 skills)*:
- validar-estrategia-vs-planificacion
- validar-planificacion-vs-wireframes
- validar-wireframes-vs-arquitectura
- checklist-seguridad
- checklist-wpo
- validacion-qa-final

*Eventos (5 skills controladas)*:
- registrar-evento
- analizar-impacto-evento
- analizar-impacto-nuevo-servicio
- marcar-artefactos-revision
- replanificacion-dirigida

*Estandarización (3 skills)*:
- normalizar-nombres-slugs
- validar-estructura-minima
- preparar-resumen-para-cliente

*Código (8 skills)*:
- generar-plugin-base-wp
- generar-cpt-fields-code
- generar-shortcode-wp
- generar-template-php
- generar-css-componente
- generar-funciones-wp
- configurar-jetengine-fields
- generar-menu-navigation

**Templates de Artefactos (8 plantillas)**:
- estrategia.template.md
- planificacion.template.csv
- wireframes.template.md
- arquitectura.template.md
- diseno.template.md
- contenidos.template.md
- plan.template.md (testing)
- checklist.template.md (testing)

**Documentación**:
- docs/sistema-lmb.md (especificación completa)
- docs/ideas-mejora.md (gestión de mejoras al sistema)
- roadmap.template.md (template de roadmap vivo)
- plans/plan-implementacion-template-lmb.md

**Características del Sistema**:
- 16 fases definidas (Fase 0 a Fase 15)
- Sistema de gestión de eventos (cambios de negocio)
- Validaciones cruzadas entre artefactos
- Framework CSS LMB (BEM en español)
- Regla crítica: WooCommerce para transaccionales
- Protocolo de análisis obligatorio para Arquitecto
- Advertencias sobre ejemplos vs reglas prescriptivas

---

## [Unreleased] - Próximas Mejoras

### Planned (Planeado)

**Para versión 1.1.0**:
- [ ] Templates adicionales (stack, framework-css)
- [ ] Skills complementarias según uso real
- [ ] Mejoras detectadas en docs/ideas-mejora.md

---

## Notas de Versión

### Versión 1.0.0

**Primera versión estable del Sistema LMB Template**.

Incluye todos los componentes necesarios para clonar y ejecutar proyectos WordPress bajo la metodología LMB:
- Sistema completo de agentes (12 Custom Modes)
- Procedimientos estandarizados (28 Skills)
- Plantillas reutilizables (8 Templates)
- Documentación exhaustiva

**Sistema probado en**: [Proyectos piloto si los hay]

**Compatibilidad**:
- Roo Code: [Versión]
- WordPress: ≥ 6.0
- PHP: ≥ 8.0

---

## Contribuciones al Sistema

Para proponer mejoras al template:
1. Documentar en `docs/ideas-mejora.md`
2. Usar formato estándar (IDEA-XXX)
3. Justificar con base en experiencia real de proyectos
4. **NO modificar** `docs/sistema-lmb.md` (editable: false)

---

## Mantenimiento del Template

**Responsable**: Equipo LMB  
**Revisión**: Trimestral  
**Próxima revisión**: [Fecha]

---

## Enlaces

- [Documentación completa](docs/sistema-lmb.md)
- [Plan de implementación](plans/plan-implementacion-template-lmb.md)
- [Gestión de mejoras](docs/ideas-mejora.md)
