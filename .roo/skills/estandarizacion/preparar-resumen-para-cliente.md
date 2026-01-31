---
nombre: preparar-resumen-para-cliente
familia: estandarizacion
control: autonoma
activacion: "resumen para cliente", "preparar presentación", "estado del proyecto", "informe cliente"
---

# Skill: Preparar Resumen para Cliente

## Propósito

Generar un resumen ejecutivo del estado actual del proyecto y próximos pasos, en lenguaje claro para el cliente (no técnico).

## Cuándo Usar

- Antes de reuniones con el cliente
- Al completar hitos importantes (fin de fase crítica)
- Cuando el cliente solicita actualización
- Periódicamente (semanal/quincenal)

## Inputs Requeridos

### Obligatorios
- **`roadmap.md`**: Estado actual del proyecto

### Opcionales
- Artefactos completados recientemente
- Screenshots o previews del sitio (si disponibles)

## Proceso

### 1. Leer Estado del Roadmap

**Extraer información clave**:
```
Fase actual: [Fase X]
Fases completadas: [X/16]
Progreso: [XX%]
Eventos activos: [X]
Artefactos en revisión: [X]
Timeline: [Fecha lanzamiento estimada]
```

### 2. Crear Resumen Ejecutivo

**Documento**: `docs/resumen-cliente-[fecha].md`

```markdown
---
tipo: resumen-cliente
destinatario: cliente
fecha: YYYY-MM-DD
preparado_por: jefe-proyectos
---

# Resumen del Proyecto - [Nombre Proyecto]

**Fecha**: YYYY-MM-DD
**Para**: [Nombre Cliente]
**De**: La Máquina del Branding

---

## Estado General del Proyecto

**Progreso global**: [XX]% completado

**Fase actual**: [Nombre de la fase en lenguaje claro]

**Estado**: ✅ En marcha / ⚠️ Con observaciones / 🔴 Bloqueado

---

## Hitos Completados

### ✅ Completado

**Estrategia** (Fase 1):
- Definición completa de tu negocio y audiencia
- 3 perfiles de cliente ideal documentados
- Propuesta de valor y diferenciación establecidas

**Planificación** (Fase 2):
- [XX] páginas planificadas con enfoque SEO
- Estructura de URLs optimizada para búsquedas
- Contenido orientado a conversión definido

**Diseño** (Fase 6):
- Paleta de colores definida según tu audiencia
- Estilo visual que te diferencia de competencia
- Guía de componentes visuales

[... hitos según fases completadas]

---

## En Curso

**[Nombre Fase Actual]**:
- [Qué se está haciendo ahora]
- [Progreso estimado: XX%]
- [Fecha estimada de completación]

**Próximos pasos**:
1. [Paso 1 en lenguaje claro]
2. [Paso 2]
3. [Paso 3]

---

## Próximas Fases

**[Nombre Fase Siguiente]**:
- [Qué se hará]
- [Cuándo se estima iniciar]

**[Otra Fase]**:
- [Descripción]

---

## Timeline

**Fecha de inicio**: [Fecha]
**Lanzamiento estimado**: [Fecha]
**Tiempo transcurrido**: [X semanas]
**Tiempo restante**: [X semanas]

**Hitos clave**:
- [Fecha]: Diseño aprobado ✅
- [Fecha]: Inicio de maquetación (en curso)
- [Fecha]: Testing y QA (próximo)
- [Fecha]: Lanzamiento (estimado)

---

## Cambios y Eventos

[Si hay eventos activos]

**Evento reciente**: [Nombre del evento]
- **Qué**: [Descripción en lenguaje claro]
- **Impacto**: [Cómo afecta al proyecto]
- **Timeline**: [Impacto en fecha de lanzamiento]
- **Estado**: [En gestión / Resuelto]

---

## Entregables Recientes

[Si hay previews, screenshots, demos]

**Guía de estilos**:
- [Link o descripción]
- [Screenshot si disponible]

**Wireframes**:
- [Descripción de cómo se verá el sitio]

---

## Qué Necesitamos de Ti

[Acciones pendientes del cliente]

- [ ] [Acción 1: Ej: Aprobar paleta de colores]
- [ ] [Acción 2: Ej: Proporcionar textos de servicios]
- [ ] [Acción 3: Ej: Seleccionar imágenes]

**Fecha límite**: [Fecha] (para no afectar timeline)

---

## Próxima Reunión

**Fecha propuesta**: [Fecha]
**Agenda**:
1. [Punto 1]
2. [Punto 2]
3. [Punto 3]

---

## Notas

[Cualquier nota adicional relevante]

---

**Preparado por**: Jefe de Proyectos - La Máquina del Branding
**Contacto**: [Email/Teléfono]
```

### 3. Traducir Términos Técnicos

**Lenguaje técnico → Lenguaje cliente**:

**Términos a traducir**:
```
CPT → "Tipo de contenido" o explicar en contexto
Arquitectura → "Estructura de datos del sitio"
Wireframes → "Bocetos de cómo se verá cada página"
Framework CSS → "Sistema de estilos visual"
Core Web Vitals → "Métricas de rendimiento de Google"
Fase X → "Etapa X: [Nombre descriptivo]"
```

**Ejemplo de traducción**:

❌ **Técnico** (confuso para cliente):
```
Fase 5 completada: Arquitectura de datos
CPTs definidos: clase-yoga, instructor
Campos personalizados: 15 por CPT
Relaciones 1:N implementadas
```

✅ **Claro** (comprensible):
```
Estructura de datos completada:
- Definimos cómo se organizará la información de tus clases de yoga
- Creamos fichas completas para cada clase (duración, nivel, beneficios)
- Conectamos instructores con sus clases
- Todo preparado para que puedas gestionar tu contenido fácilmente
```

### 4. Incluir Visuales (Si Disponibles)

**Si hay screenshots**:
- Wireframes (bocetos)
- Guía de estilos (colores y componentes)
- Preview de páginas (si ya maquetadas)

**Si NO hay visuales**:
- Describir textualmente de forma clara
- Usar metáforas si ayuda a comprender

---

## Output Esperado

**Documento ejecutivo** en lenguaje claro que incluye:
- Estado general del proyecto (progreso %)
- Hitos completados (en lenguaje no técnico)
- Fase actual y próximos pasos
- Timeline actualizado
- Eventos/cambios recientes
- Qué se necesita del cliente
- Próxima reunión

---

## Criterios de Validación

- [ ] **Lenguaje claro** (no jerga técnica excesiva)
- [ ] **Progreso cuantificado** (% o hitos)
- [ ] **Timeline actualizado** (fechas estimadas)
- [ ] **Próximos pasos claros** (qué sigue)
- [ ] **Acciones del cliente** (si las hay)
- [ ] **Formato profesional** (bien estructurado)

---

## Errores Comunes

### ❌ Lenguaje Demasiado Técnico
**Mal**:
```
Fase 5 completada: CPTs registrados, campos ACF implementados, relaciones N:N vía JetEngine, queries optimizadas.
```

**Bien**:
```
Estructura de datos completada: Hemos organizado cómo se mostrará la información de tus servicios en la web, incluyendo todos los detalles importantes (precio, duración, beneficios, etc.).
```

### ❌ Solo Estado Técnico Sin Valor Para Cliente
**Mal**:
```
- Fase 1: Completa
- Fase 2: Completa
- Fase 3: En curso
[Sin explicar qué significa para el cliente]
```

**Bien**:
```
✅ Completado:
- Estrategia: Conocemos a tu audiencia y qué comunicar
- Planificación: 25 páginas optimizadas para Google definidas
- Diseño: Colores y estilo visual aprobados

🔄 En curso:
- Construcción: Estamos maquetando las páginas principales
- Estimación: 2 semanas para completar

📅 Próximo:
- Contenidos: Escribiremos los textos de cada página
```

---

## Notas

- Skill 🔓 AUTÓNOMA (puede ejecutarse automáticamente)
- Generalmente ejecutada por el **Jefe de Proyectos**
- Útil antes de reuniones de seguimiento con cliente
- Debe ser comprensible para persona no técnica
