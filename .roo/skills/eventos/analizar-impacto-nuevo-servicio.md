---
nombre: analizar-impacto-nuevo-servicio
familia: eventos
control: controlada
activacion: Solo cuando el Jefe de Proyectos la solicita explícitamente
---

# Skill: Analizar Impacto de Nuevo Servicio

## Propósito

Análisis específico y optimizado para el caso común de añadir un nuevo servicio o producto a mitad de proyecto.

## Cuándo Usar

- Cuando el evento es específicamente "añadir servicio/producto"
- Alternativa más específica a `analizar-impacto-evento`
- Solo ejecutable por el Jefe de Proyectos (🔒 Controlada)

## Inputs Requeridos

### Obligatorios
- Evento registrado (tipo: "Añadir servicio/producto")
- Nombre y descripción del nuevo servicio/producto
- A qué perfil de audiencia se dirige (nuevo o existente)

## Proceso

### 1. Analizar Información del Nuevo Servicio

**Datos a recopilar**:
```markdown
## Nuevo Servicio/Producto

**Nombre**: [Nombre del servicio]
**Descripción**: [Qué es, para qué sirve]
**Precio**: [Si aplica]
**Perfil objetivo**: [Perfil existente / Nuevo perfil]
**Diferenciación**: [Qué lo hace único]
**Keywords principales**: [Estimación inicial]
```

### 2. Impacto Predecible en Artefactos

**Matriz específica para nuevo servicio**:

```markdown
## Impacto de Añadir Servicio "[Nombre]"

### ✅ Artefactos DEFINITIVAMENTE Impactados

#### 1. docs/estrategia.md
**Sección afectada**: Sección 3 (Servicios/Productos)
**Acción**: Añadir nuevo servicio con descripción y diferenciación
**Prioridad**: Alta
**Estimación**: 1-2 horas

#### 2. docs/planificacion-urls.csv
**Acción**: Añadir filas para el nuevo servicio
- URL principal: /[nuevo-servicio]/
- Keywords relacionadas
- Requisitos de conversión
- CTA específico
**Prioridad**: Alta
**Estimación**: 2-4 horas (incluye keyword research)

#### 3. docs/wireframes.md
**Acción**: Crear wireframe para single del nuevo servicio
**Prioridad**: Alta
**Estimación**: 3-4 horas

#### 4. docs/contenidos.md
**Acción**: Crear contenido para el nuevo servicio
**Prioridad**: Alta
**Estimación**: 4-6 horas

---

### ⚠️ Artefactos POSIBLEMENTE Impactados

#### 1. docs/arquitectura.md
**Evaluación necesaria**:
- ¿El nuevo servicio requiere campos específicos diferentes a servicios existentes?
  - SI → Actualizar arquitectura
  - NO → Sin cambios

**Ejemplo**:
```
Si servicios existentes usan CPT "consultoria" con campos estándar
Y nuevo servicio es similar
→ NO requiere cambios en arquitectura

Si nuevo servicio requiere campos únicos (ej: certificación específica)
→ SÍ requiere añadir campos
```

#### 2. docs/diseno.md
**Evaluación**:
- ¿El nuevo servicio se dirige a perfil de audiencia existente?
  - SI → Sin cambios en diseño
  - NO (nuevo perfil) → Puede requerir ajustes de diseño

---

### ❌ Artefactos NO Impactados

- docs/stack.md (agregar servicio no cambia tecnología)
- docs/framework-css.md (componentes ya definidos)
- docs/reporte-seguridad.md (no afecta seguridad)
- docs/reporte-wpo.md (no afecta rendimiento base)

---

## Fases a Re-Ejecutar (Orden)

1. **Fase 1** (Estrategia) - Actualización parcial
   - Añadir servicio a sección 3
   - Actualizar mapping servicios → perfiles
   - Estimación: 1-2 horas

2. **Fase 2** (Planificación) - Actualización parcial
   - Keyword research para nuevo servicio
   - Añadir filas al CSV
   - Estimación: 2-4 horas

3. **Fase 3** (Wireframes) - Creación nueva
   - Wireframe para single del servicio
   - Basado en wireframes existentes (adaptación)
   - Estimación: 3-4 horas

4. **Fase 5** (Arquitectura) - Evaluación
   - Solo si requiere campos específicos nuevos
   - Estimación: 1-2 horas (si aplica)

5. **Fase 6b** (Contenidos) - Creación nueva
   - Contenido completo para el servicio
   - Según requisitos de planificación
   - Estimación: 4-6 horas

6. **Fase 7** (Inserción) - Creación nueva
   - Insertar 1-2 entradas del servicio
   - Estimación: 1 hora

7. **Fase 10** (Maquetación) - Implementación
   - Maquetar template (si es nuevo)
   - O usar template existente si similar
   - Estimación: 2-4 horas (si template nuevo)

**Total estimado**: 1-2 días (si no requiere template nuevo)
**Total estimado**: 2-3 días (si requiere template nuevo)
```

### 3. Decisión: ¿Nuevo CPT o Usar Existente?

**Análisis crítico**:

```markdown
## ¿Nuevo Servicio Requiere CPT Nuevo?

**Servicios existentes usan**: CPT `consultoria`

**Nuevo servicio**: "Consultoría Avanzada"

**Análisis**:
- ¿Es del mismo tipo? SÍ (consultoría)
- ¿Puede usar mismo CPT con campos diferenciados? SÍ
- ¿Requiere template diferente? NO (mismo single)

**Decisión**: Usar CPT existente `consultoria` ✅

**Acción**: 
- NO modificar arquitectura.md
- Añadir entrada en CPT existente
- Diferenciar con campos (ej: nivel, tipo)

---

**Alternativa** (si servicio MUY diferente):

**Nuevo servicio**: "Producto Físico" (cuando antes solo servicios)

**Análisis**:
- ¿Es del mismo tipo? NO (producto vs servicio)
- ¿Debe ser transaccional? SÍ (venta con pago)
- ¿Debe usar WooCommerce? SÍ ✅

**Decisión**: 
- Añadir WooCommerce a stack (si no estaba)
- Usar WooCommerce `product`
- NO crear CPT propio

**Impacto ALTO**: Requiere actualizar stack.md, instalar WooCommerce, configurar pasarelas
```

---

## Output Esperado

**Documento del evento actualizado** con:
- Análisis específico para nuevo servicio
- Decisión sobre CPT (nuevo vs existente)
- Matriz de impacto simplificada
- Orden de re-ejecución
- Estimación precisa de tiempo

---

## Criterios de Validación

- [ ] **Decisión CPT/existente fundamentada**
- [ ] **Artefactos definitivamente impactados** identificados
- [ ] **Artefactos posiblemente impactados** evaluados
- [ ] **Orden de re-ejecución** correcto
- [ ] **Estimación de tiempo** realista
- [ ] **Recomendación clara** al cliente

---

## Errores Comunes

### ❌ Asumir Que Requiere CPT Nuevo
**Mal**:
```
Nuevo servicio → Crear CPT nuevo automáticamente
[Sin evaluar si puede usar CPT existente]
```

**Bien**:
```
Nuevo servicio → Evaluar:
1. ¿Servicios existentes usan qué CPT?
2. ¿Es similar o muy diferente?
3. ¿Puede compartir template?
Si similar → Usar CPT existente ✅
Si muy diferente → Evaluar CPT nuevo
```

---

## Notas

- Skill 🔒 CONTROLADA (solo Jefe de Proyectos)
- Versión optimizada de `analizar-impacto-evento` para caso específico
- Más rápida porque sabe exactamente qué analizar
- Útil para el caso común de añadir servicios/productos
