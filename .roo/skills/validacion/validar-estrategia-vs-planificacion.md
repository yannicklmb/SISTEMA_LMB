---
nombre: validar-estrategia-vs-planificacion
familia: validacion
control: autonoma
activacion: "validar estrategia", "coherencia estrategia planificación", "servicios sin URL"
---

# Skill: Validar Estrategia vs Planificación

## Propósito

Detectar incoherencias entre `docs/estrategia.md` y `docs/planificacion-urls.csv`, específicamente servicios/productos sin URL o URLs sin objetivo estratégico.

## Cuándo Usar

- Después de completar Fase 2 (Planificación)
- Cuando el Jefe de Proyectos solicita validación cruzada
- Si un especialista detecta posible incoherencia

## Inputs Requeridos

### Obligatorios
- **`docs/estrategia.md`**: Lista de servicios/productos, perfiles, objetivos
- **`docs/planificacion-urls.csv`**: URLs y templates planificados

## Proceso

### 1. Extraer Servicios/Productos de Estrategia

**Leer estrategia.md sección 3**:
```
Servicios/Productos identificados:
1. [Servicio A]
2. [Servicio B]
3. [Producto C]
[... lista completa]
```

### 2. Extraer URLs de Planificación

**Leer planificacion-urls.csv**:
```
URLs identificadas:
- /servicio-a/
- /servicio-b/
- /contacto/
- /sobre-nosotros/
[... lista completa]
```

### 3. Validación 1: Servicios/Productos Sin URL

**Cruzar listas**:
```
Servicio A (estrategia) → /servicio-a/ (planificación) ✅
Servicio B (estrategia) → /servicio-b/ (planificación) ✅
Producto C (estrategia) → ??? (no encontrado) ❌
```

**Si hay servicios sin URL**:
```markdown
## ⚠️ INCOHERENCIA DETECTADA

**Servicios/Productos sin URL**:
- Producto C (mencionado en estrategia.md sección 3)

**Impacto**:
- No hay manera de mostrar este producto en la web
- Usuarios no pueden conocer/comprar este producto

**Acciones recomendadas**:
1. Añadir URL al CSV: /producto-c/
2. O aclarar si es producto interno (no mostrar en web)
```

### 4. Validación 2: URLs Sin Objetivo Estratégico

**Identificar URLs en planificación que NO corresponden a estrategia**:
```
/servicios-premium/ (planificación) → ??? (no en estrategia) ❌
```

**Si hay URLs sin objetivo**:
```markdown
## ⚠️ INCOHERENCIA DETECTADA

**URLs sin objetivo estratégico**:
- /servicios-premium/ (en planificación, no en estrategia)

**Impacto**:
- URL sin contenido definido
- No se sabe qué comunicar

**Acciones recomendadas**:
1. Añadir servicio a estrategia.md
2. O eliminar URL del CSV si no es necesaria
```

### 5. Validación 3: Perfiles Sin Landings

**Si estrategia.md define perfiles específicos**:
```
Perfil 1: Ejecutivo Senior
→ ¿Hay landing específica? [Verificar en CSV]

Perfil 2: Emprendedor Tech
→ ¿Hay landing específica? [Verificar en CSV]
```

**Esto es recomendación**, no obligatorio, pero avisar si falta.

### 6. Validación 4: Canales de Ads Sin Landings

**Si estrategia.md sección 8 menciona Google Ads**:
```
Canales: Google Ads para [campaña X]
→ ¿Hay landing específica en CSV? [Verificar]
```

**Si falta**:
```markdown
## ⚠️ RECOMENDACIÓN

**Canales de ads sin landing específica**:
- Google Ads mencionado en estrategia
- No hay landing específica en planificación

**Impacto**:
- Menor conversión (landing genérica vs específica)

**Recomendación**:
- Añadir landing: /landing-google-ads-[campana]/
```

### 7. Generar Reporte de Validación

**Documento**: `docs/validaciones/estrategia-vs-planificacion-[fecha].md`

**Estructura**:
```markdown
---
tipo: validacion
estado: vigente
validacion: estrategia-planificacion
version: 1
responsable: jefe-proyectos
creado: YYYY-MM-DD
---

# Validación: Estrategia vs Planificación

**Fecha**: YYYY-MM-DD
**Ejecutada por**: [Rol que ejecutó]

---

## Resultado General

**Estado**: ✅ Coherente / ⚠️ Incoherencias detectadas / ❌ Incoherencias críticas

**Resumen**:
- Servicios/productos en estrategia: [X]
- Servicios/productos con URL: [X]
- Cobertura: [XX%]

---

## Validación 1: Servicios Sin URL

**Resultado**: [✅ Todos tienen / ⚠️ Faltan algunos]

**Servicios sin URL**:
[Lista o "Ninguno"]

---

## Validación 2: URLs Sin Objetivo

**Resultado**: [✅ Todas justificadas / ⚠️ Algunas sin justificar]

**URLs sin objetivo estratégico**:
[Lista o "Ninguna"]

---

## Validación 3: Perfiles Sin Landings

**Resultado**: [✅ Cubiertos / ⚠️ Recomendación]

**Perfiles sin landing específica**:
[Lista o "Ninguno"]

---

## Validación 4: Canales Sin Landings

**Resultado**: [✅ Cubiertos / ⚠️ Recomendación]

**Canales sin landing**:
[Lista o "Ninguno"]

---

## Acciones Recomendadas

1. [Acción 1]
2. [Acción 2]
[... o "Ninguna, validación aprobada"]

---

## Conclusión

**Estado final**: [Aprobado / Requiere ajustes menores / Requiere corrección]

**Próximos pasos**:
[Si requiere ajustes, qué hacer]
```

---

## Output Esperado

**Reporte de validación** en `docs/validaciones/`

**Contenido**:
- Resultado de 4 validaciones
- Incoherencias detectadas (si las hay)
- Acciones recomendadas
- Conclusión y próximos pasos

---

## Criterios de Validación

**La validación está completa cuando**:
- [ ] Servicios/productos verificados (100% cobertura esperada)
- [ ] URLs verificadas (todas con objetivo)
- [ ] Perfiles analizados (recomendación si falta landing)
- [ ] Canales analizados (recomendación si falta landing)
- [ ] Reporte generado con acciones claras

---

## Errores Comunes

### ❌ Validar Sin Leer Ambos Documentos
**Mal**:
```
Asumir que está bien sin verificar
```

**Bien**:
```
1. Leer estrategia.md completo
2. Leer planificacion-urls.csv completo
3. Cruzar datos sistemáticamente
4. Documentar hallazgos
```

---

## Notas

- Esta skill puede ser ejecutada por **Jefe de Proyectos** o cualquier rol que detecte incoherencia
- Es una validación cruzada que asegura coherencia entre fases
- Las incoherencias deben corregirse antes de continuar con fases siguientes
