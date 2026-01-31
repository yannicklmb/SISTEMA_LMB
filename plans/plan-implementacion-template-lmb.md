---
tipo: plan-implementacion
proyecto: Sistema LMB Template
version: 1.0.0
creado: 2025-01-20
estado: pendiente-aprobacion
---

# Plan de Implementación - Template Sistema LMB

## Resumen Ejecutivo

Este plan divide la construcción del template del Sistema LMB en **10 sesiones** manejables, siguiendo un orden lógico que garantiza la correcta implementación de todos los componentes del sistema.

**Resultado final**: Template clonable completo con 12 Custom Modes, 28 Skills, 8 Templates de artefactos y documentación completa.

---

## Sesión 1: Estructura de Carpetas Base

### Objetivo
Crear toda la estructura de carpetas del template según especificación en [`docs/sistema-lmb.md`](../docs/sistema-lmb.md:2343-2436).

### Tareas
- Crear carpeta `.roo/` con subcarpetas `modes/` y `skills/`
- Crear subcarpetas de skills: `produccion/`, `validacion/`, `eventos/`, `estandarizacion/`, `codigo/`
- Crear carpeta `docs/` con todas sus subcarpetas
- Crear estructura de testing, eventos, validaciones
- Añadir archivos `.gitkeep` donde corresponda

### Archivos a crear
```
.roo/
  modes/
  skills/
    produccion/
    validacion/
    eventos/
    estandarizacion/
    codigo/
docs/
  plantillas/
  eventos/
  testing/
    reportes/
    evidencias/
  validaciones/
  post-lanzamiento/
  mejora-continua/
  propuestas/
    pendientes/
    aprobadas/
.gitignore
```

### Dependencias
Ninguna (primera sesión)

### Entregables
- Estructura completa de carpetas
- Archivos `.gitkeep` en carpetas vacías
- `.gitignore` básico

---

## Sesión 2: Custom Modes - Grupo Coordinación y Estrategia

### Objetivo
Crear los 4 Custom Modes fundamentales del sistema: coordinación y estrategia.

### Custom Modes a crear

#### 1. Jefe de Proyectos (`jefe-proyectos.md`)
- **Modelo**: `claude-sonnet-4-5-20250929`
- **Función**: Coordinador central
- **Herramientas**: Gestión de roadmap, validación de outputs, análisis de impacto

#### 2. Estratega (`estratega.md`)
- **Modelo**: `claude-sonnet-4-5-20250929`
- **Función**: Define corazón del negocio
- **Herramientas**: Creación de estrategia.md, perfiles de audiencia, elevator pitch

#### 3. Planificador (`planificador.md`)
- **Modelo**: `claude-sonnet-4-5-20250929`
- **Función**: Estructura de URLs y SEO
- **Herramientas**: Creación de planificacion-urls.csv, keyword research

#### 4. Wireframer (`wireframer.md`)
- **Modelo**: `claude-sonnet-4-5-20250929`
- **Función**: Jerarquía UX y camino al CTA
- **Herramientas**: Creación de wireframes.md, diagramas visuales

### Estructura de cada Custom Mode
```markdown
---
slug: [nombre-rol]
name: [Emoji] [Nombre]
model: [modelo-asignado]
---

# [Nombre del Rol]

## Función en el sistema
[Descripción]

## Responsabilidades
[Lista detallada]

## Límites
[Qué NO hace este rol]

## Herramientas disponibles
[Lista de herramientas]

## Advertencias críticas
- Distinguir entre ejemplos ilustrativos y reglas prescriptivas
- Analizar proyecto específico antes de tomar decisiones
- NO copiar ejemplos literalmente

## Protocolo de trabajo
[Pasos a seguir al ejecutar tareas]

## Artefactos que produce
[Lista de artefactos]

## Criterios de validación
[Checklist de calidad]
```

### Dependencias
- Sesión 1 completada

### Archivos a crear
- `.roo/modes/jefe-proyectos.md`
- `.roo/modes/estratega.md`
- `.roo/modes/planificador.md`
- `.roo/modes/wireframer.md`

### Entregables
- 4 Custom Modes completamente especificados
- Cada uno con modelo sticky asignado
- Advertencias sobre ejemplos vs reglas incluidas

---

## Sesión 3: Custom Modes - Grupo Planificación y Diseño

### Objetivo
Crear los 3 Custom Modes relacionados con arquitectura de datos y diseño visual.

### Custom Modes a crear

#### 1. Arquitecto (`arquitecto.md`)
- **Modelo**: `claude-sonnet-4-5-20250929`
- **Función**: Define modelo de datos WordPress
- **Advertencia CRÍTICA**: NO copiar ejemplos genéricos, analizar proyecto específico

#### 2. Diseñador (`disenador.md`)
- **Modelo**: `claude-sonnet-4-5-20250929`
- **Función**: Decisiones estratégicas de diseño visual
- **Herramientas**: Psicología del color, paleta, diferenciación

#### 3. Implementador (`implementador.md`)
- **Modelo**: `glm-4-flash` (Z.AI)
- **Función**: Decide stack y configura plugins
- **Herramientas**: Instalación WordPress, configuración FTP, plugins

### Dependencias
- Sesión 1 completada
- Sesión 2 completada

### Archivos a crear
- `.roo/modes/arquitecto.md`
- `.roo/modes/disenador.md`
- `.roo/modes/implementador.md`

### Entregables
- 3 Custom Modes completamente especificados
- Énfasis en reglas obligatorias (WooCommerce para transaccional, criterios CPT/CCT)

---

## Sesión 4: Custom Modes - Grupo Implementación y Desarrollo

### Objetivo
Crear los 3 Custom Modes de desarrollo técnico.

### Custom Modes a crear

#### 1. Programador (`programador.md`)
- **Modelo**: `glm-4-flash` (Z.AI)
- **Función**: Escribe código PHP/JS/CSS
- **Herramientas**: CPTs, taxonomías, campos, hooks, queries

#### 2. Maquetador (`maquetador.md`)
- **Modelo**: `glm-4-flash` (Z.AI)
- **Función**: Implementa templates según diseño
- **Herramientas**: Framework CSS LMB, HTML/CSS, queries WP

#### 3. Securizador (`securizador.md`)
- **Modelo**: `claude-sonnet-4-5-20250929`
- **Función**: Garantiza seguridad del sitio
- **Herramientas**: Auditoría de código, plugins de seguridad, API REST

### Dependencias
- Sesión 1 completada
- Sesiones 2 y 3 completadas

### Archivos a crear
- `.roo/modes/programador.md`
- `.roo/modes/maquetador.md`
- `.roo/modes/securizador.md`

### Entregables
- 3 Custom Modes completamente especificados
- Énfasis en estándares de código WordPress

---

## Sesión 5: Custom Modes - Grupo Calidad y Optimización

### Objetivo
Crear los últimos 2 Custom Modes del sistema.

### Custom Modes a crear

#### 1. Optimizador (`optimizador.md`)
- **Modelo**: `glm-4-flash` (Z.AI)
- **Función**: Mejora rendimiento (WPO)
- **Herramientas**: Core Web Vitals, caché, imágenes, minificación

#### 2. Testador (`testador.md`)
- **Modelo**: `claude-sonnet-4-5-20250929`
- **Función**: QA integral, última línea de defensa
- **Herramientas**: 10 áreas de testing, criterios de aprobación

### Dependencias
- Sesión 1 completada
- Sesiones 2, 3 y 4 completadas

### Archivos a crear
- `.roo/modes/optimizador.md`
- `.roo/modes/testador.md`

### Entregables
- 2 Custom Modes completamente especificados
- **12 Custom Modes completos en total**

---

## Sesión 6: Skills - Familias Producción y Validación

### Objetivo
Crear las primeras 15 skills del sistema.

### Skills de Producción (9 skills)

1. **generar-briefing-inicial** (🔓 Autónoma)
   - Crear briefing base desde preguntas al cliente
   - Archivo: `.roo/skills/produccion/generar-briefing-inicial.md`

2. **generar-estrategia** (🔓 Autónoma)
   - Producir estrategia.md con secciones obligatorias
   - Archivo: `.roo/skills/produccion/generar-estrategia.md`

3. **generar-planificacion-urls-csv** (🔓 Autónoma)
   - Producir CSV con columnas obligatorias
   - Archivo: `.roo/skills/produccion/generar-planificacion-urls-csv.md`

4. **generar-wireframes** (🔓 Autónoma)
   - Crear wireframes + notas semánticas HTML
   - Archivo: `.roo/skills/produccion/generar-wireframes.md`

5. **definir-stack** (🔓 Autónoma)
   - Decidir builder/tema + plugins + regla WooCommerce
   - Archivo: `.roo/skills/produccion/definir-stack.md`

6. **definir-arquitectura-wp** (🔓 Autónoma)
   - Crear entidades/campos/relaciones + criterios CPT/CCT
   - Archivo: `.roo/skills/produccion/definir-arquitectura-wp.md`

7. **generar-informe-diseno** (🔓 Autónoma)
   - Crear paleta, proporciones, multimedia
   - Archivo: `.roo/skills/produccion/generar-informe-diseno.md`

8. **generar-framework-css** (🔓 Autónoma)
   - Crear guía HTML + CSS + tokens según sistema LMB
   - Archivo: `.roo/skills/produccion/generar-framework-css.md`

9. **generar-plan-testing** (🔓 Autónoma)
   - Crear plan/checklist/estructura de QA
   - Archivo: `.roo/skills/produccion/generar-plan-testing.md`

### Skills de Validación (6 skills)

1. **validar-estrategia-vs-planificacion** (🔓 Autónoma)
   - Detectar servicios sin URL o URLs sin objetivo
   - Archivo: `.roo/skills/validacion/validar-estrategia-vs-planificacion.md`

2. **validar-planificacion-vs-wireframes** (🔓 Autónoma)
   - Detectar templates críticos sin wireframe
   - Archivo: `.roo/skills/validacion/validar-planificacion-vs-wireframes.md`

3. **validar-wireframes-vs-arquitectura** (🔓 Autónoma)
   - Detectar bloques sin soporte de datos
   - Archivo: `.roo/skills/validacion/validar-wireframes-vs-arquitectura.md`

4. **checklist-seguridad** (🔓 Autónoma)
   - Verificar hardening + exposición API + roles
   - Archivo: `.roo/skills/validacion/checklist-seguridad.md`

5. **checklist-wpo** (🔓 Autónoma)
   - Verificar CWV, scripts, cache, imágenes
   - Archivo: `.roo/skills/validacion/checklist-wpo.md`

6. **validacion-qa-final** (🔓 Autónoma)
   - Verificar criterios ≥95%, 0 críticos, CWV verde
   - Archivo: `.roo/skills/validacion/validacion-qa-final.md`

### Estructura de cada Skill
```markdown
---
nombre: [nombre-skill]
familia: produccion | validacion | eventos | estandarizacion | codigo
control: autonoma | controlada
activacion: [trigger semántico]
---

# [Nombre de la Skill]

## Propósito
[Descripción breve]

## Cuándo usar
[Situaciones de activación]

## Inputs requeridos
[Qué artefactos/datos necesita]

## Proceso
[Pasos detallados]

## Output esperado
[Qué genera/produce]

## Criterios de validación
[Cómo validar que se ejecutó correctamente]

## Errores comunes
[Qué evitar]
```

### Dependencias
- Sesión 1 completada
- Sesiones 2-5 completadas (Custom Modes)

### Archivos a crear
- 9 archivos en `.roo/skills/produccion/`
- 6 archivos en `.roo/skills/validacion/`

### Entregables
- 15 skills completamente especificadas
- Cada una con tipo de control definido

---

## Sesión 7: Skills - Familias Eventos, Estandarización y Código

### Objetivo
Crear las últimas 13 skills del sistema.

### Skills de Eventos (5 skills - 🔒 CONTROLADAS)

1. **registrar-evento**
   - Describir evento en roadmap
   - Archivo: `.roo/skills/eventos/registrar-evento.md`

2. **analizar-impacto-evento**
   - Matriz de impacto (qué artefactos revisar)
   - Archivo: `.roo/skills/eventos/analizar-impacto-evento.md`

3. **analizar-impacto-nuevo-servicio**
   - Análisis específico para añadir servicio/producto
   - Archivo: `.roo/skills/eventos/analizar-impacto-nuevo-servicio.md`

4. **replanificacion-dirigida**
   - Re-ejecutar solo fases afectadas
   - Archivo: `.roo/skills/eventos/replanificacion-dirigida.md`

5. **marcar-artefactos-revision**
   - Marcar como "requiere_revision" sin borrar
   - Archivo: `.roo/skills/eventos/marcar-artefactos-revision.md`

### Skills de Estandarización (3 skills - 🔓 Autónomas)

1. **normalizar-nombres-slugs**
   - Aplicar criterios de naming
   - Archivo: `.roo/skills/estandarizacion/normalizar-nombres-slugs.md`

2. **validar-estructura-minima**
   - Comprobar carpetas/docs esperados
   - Archivo: `.roo/skills/estandarizacion/validar-estructura-minima.md`

3. **preparar-resumen-para-cliente**
   - Generar resumen ejecutivo
   - Archivo: `.roo/skills/estandarizacion/preparar-resumen-para-cliente.md`

### Skills de Código (8 skills - 🔓 Autónomas, usan GLM-4-Flash)

1. **generar-plugin-base-wp**
   - Estructura inicial de plugin WordPress
   - Archivo: `.roo/skills/codigo/generar-plugin-base-wp.md`

2. **generar-cpt-fields-code**
   - Código de registro CPT + campos personalizados
   - Archivo: `.roo/skills/codigo/generar-cpt-fields-code.md`

3. **generar-shortcode-wp**
   - Shortcodes personalizados
   - Archivo: `.roo/skills/codigo/generar-shortcode-wp.md`

4. **generar-template-php**
   - Templates WordPress (single, archive, page)
   - Archivo: `.roo/skills/codigo/generar-template-php.md`

5. **generar-css-componente**
   - CSS según framework LMB
   - Archivo: `.roo/skills/codigo/generar-css-componente.md`

6. **generar-funciones-wp**
   - Functions.php personalizadas (hooks, filters)
   - Archivo: `.roo/skills/codigo/generar-funciones-wp.md`

7. **configurar-jetengine-fields**
   - Generar JSON de configuración para JetEngine
   - Archivo: `.roo/skills/codigo/configurar-jetengine-fields.md`

8. **generar-menu-navigation**
   - Código de registro de menús
   - Archivo: `.roo/skills/codigo/generar-menu-navigation.md`

### Dependencias
- Sesión 1 completada
- Sesión 6 completada

### Archivos a crear
- 5 archivos en `.roo/skills/eventos/`
- 3 archivos en `.roo/skills/estandarizacion/`
- 8 archivos en `.roo/skills/codigo/`

### Entregables
- 13 skills completamente especificadas
- **28 skills completas en total**

---

## Sesión 8: Templates de Artefactos

### Objetivo
Crear las plantillas reutilizables para los artefactos principales del sistema.

### Templates a crear

1. **estrategia.template.md**
   - Estructura completa con 8 secciones obligatorias
   - Frontmatter estándar
   - Campos obligatorios marcados
   - Ubicación: `docs/plantillas/estrategia.template.md`

2. **planificacion.template.csv**
   - Columnas obligatorias
   - Ejemplos de filas
   - Ubicación: `docs/plantillas/planificacion.template.csv`

3. **wireframes.template.md**
   - Estructura por template
   - Secciones: jerarquía, camino CTA, notas HTML, notas copywriter
   - Ubicación: `docs/plantillas/wireframes.template.md`

4. **arquitectura.template.md**
   - Secciones de análisis obligatorio
   - Tabla de entidades
   - Diagrama Mermaid de ejemplo
   - Ubicación: `docs/plantillas/arquitectura.template.md`

5. **diseno.template.md**
   - Psicología del color
   - Tabla de paleta
   - Ideas de componentes
   - Recomendaciones multimedia
   - Ubicación: `docs/plantillas/diseno.template.md`

6. **contenidos.template.md**
   - Matriz de contenidos
   - Especificaciones multimedia
   - Tabla de tracking
   - Ubicación: `docs/plantillas/contenidos.template.md`

7. **testing-plan.template.md**
   - 10 áreas obligatorias
   - Criterios de aprobación
   - Clasificación de bugs
   - Ubicación: `docs/plantillas/testing-plan.template.md`

8. **testing-checklist.template.md**
   - Checklist completo por área
   - Checkboxes listos para marcar
   - Ubicación: `docs/plantillas/testing-checklist.template.md`

### Dependencias
- Sesión 1 completada

### Archivos a crear
- 8 archivos en `docs/plantillas/`

### Entregables
- 8 templates listos para clonar
- Cada uno con frontmatter estándar
- Instrucciones de uso incluidas

---

## Sesión 9: Documentación Final y Configuración

### Objetivo
Completar la documentación del sistema y configuración técnica.

### Documentos a crear

1. **roadmap.template.md**
   - Estructura de roadmap vivo
   - Sección de fases con estados
   - Sección de eventos
   - Métricas de progreso
   - Ubicación: `roadmap.template.md`

2. **README.md**
   - Introducción al Sistema LMB
   - Cómo usar este template
   - Instrucciones de clonación
   - Requisitos previos
   - Ubicación: `README.md`

3. **CHANGELOG.md**
   - Registro de versiones del template
   - Formato estándar
   - Ubicación: `CHANGELOG.md`

4. **ideas-mejora.md**
   - Estructura para documentar mejoras
   - Ejemplos de formato
   - Ubicación: `docs/ideas-mejora.md`

5. **.roo/config.json**
   - Configuración de Roo Code
   - Lista de Custom Modes
   - Configuraciones globales
   - Ubicación: `.roo/config.json`

6. **.gitignore**
   - Patrones de exclusión
   - Configuraciones locales
   - Credenciales
   - Ubicación: `.gitignore`

### Dependencias
- Todas las sesiones anteriores completadas

### Archivos a crear
- `roadmap.template.md`
- `README.md`
- `CHANGELOG.md`
- `docs/ideas-mejora.md`
- `.roo/config.json`
- `.gitignore` (actualización)

### Entregables
- Documentación completa del template
- Configuración de Roo Code lista
- Template listo para clonar

---

## Sesión 10: Revisión Final y Validación

### Objetivo
Verificar la integridad completa del template y corregir cualquier inconsistencia.

### Tareas de validación

1. **Validación de estructura**
   - ✅ Todas las carpetas creadas
   - ✅ Todos los `.gitkeep` en su lugar
   - ✅ No faltan archivos según especificación

2. **Validación de Custom Modes**
   - ✅ 12 Custom Modes presentes
   - ✅ Cada uno con modelo sticky correcto
   - ✅ Advertencias sobre ejemplos vs reglas incluidas
   - ✅ Límites y responsabilidades claros

3. **Validación de Skills**
   - ✅ 28 Skills presentes
   - ✅ Tipo de control correcto (controlada/autónoma)
   - ✅ Estructura consistente
   - ✅ Inputs y outputs documentados

4. **Validación de Templates**
   - ✅ 8 Templates de artefactos presentes
   - ✅ Frontmatter estándar en cada uno
   - ✅ Campos obligatorios marcados

5. **Validación de documentación**
   - ✅ README completo y claro
   - ✅ CHANGELOG iniciado
   - ✅ roadmap.template.md funcional
   - ✅ sistema-lmb.md como fuente de verdad

6. **Validación cruzada**
   - ✅ Custom Modes referencian skills correctas
   - ✅ Skills referencian artefactos correctos
   - ✅ Templates siguen estructura de sistema-lmb.md
   - ✅ No hay contradicciones entre documentos

7. **Prueba de clonación**
   - Simular clonación del template
   - Verificar que estructura funciona
   - Verificar que documentación es clara

### Dependencias
- Todas las sesiones 1-9 completadas

### Entregables
- Template validado y listo para uso
- Lista de verificación completada
- Documento de validación generado

---

## Resumen de Entregables Finales

### Estructura completa
```
proyecto-lmb/
├── .roo/
│   ├── modes/ (12 archivos)
│   ├── skills/
│   │   ├── produccion/ (9 archivos)
│   │   ├── validacion/ (6 archivos)
│   │   ├── eventos/ (5 archivos)
│   │   ├── estandarizacion/ (3 archivos)
│   │   └── codigo/ (8 archivos)
│   └── config.json
├── docs/
│   ├── sistema-lmb.md (existente)
│   ├── plantillas/ (8 templates)
│   ├── ideas-mejora.md
│   └── [carpetas organizacionales]
├── roadmap.template.md
├── README.md
├── CHANGELOG.md
└── .gitignore
```

### Totales
- **12 Custom Modes** (roles del sistema)
- **28 Skills** (5 familias)
- **8 Templates** de artefactos
- **Documentación completa**
- **Configuración lista**

---

## Criterios de Éxito

El template estará completo cuando:

✅ Todos los archivos especificados estén creados  
✅ La estructura coincida 100% con [`docs/sistema-lmb.md`](../docs/sistema-lmb.md:2343-2436)  
✅ Cada Custom Mode tenga modelo sticky asignado  
✅ Cada skill tenga tipo de control definido  
✅ Los templates incluyan todos los campos obligatorios  
✅ La documentación sea clara y completa  
✅ El template sea clonable y funcional  
✅ No haya contradicciones entre componentes  

---

## Siguiente Paso

**Espero tu aprobación de este plan antes de comenzar la implementación.**

¿Deseas que proceda con la Sesión 1, o prefieres ajustar algún aspecto del plan?
