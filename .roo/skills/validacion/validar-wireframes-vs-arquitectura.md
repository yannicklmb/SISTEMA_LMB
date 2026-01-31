---
nombre: validar-wireframes-vs-arquitectura
familia: validacion
control: autonoma
activacion: "validar wireframes arquitectura", "bloques sin datos", "campos faltantes"
---

# Skill: Validar Wireframes vs Arquitectura

## Propósito

Detectar bloques de contenido en wireframes que no tienen soporte de datos (campos personalizados) en la arquitectura.

## Cuándo Usar

- Después de completar Fase 5 (Arquitectura)
- Validación cruzada entre wireframes y modelo de datos
- Si un especialista detecta bloque sin campos disponibles

## Inputs Requeridos

### Obligatorios
- **`docs/wireframes.md`**: Bloques de contenido por template
- **`docs/arquitectura.md`**: CPTs, campos, taxonomías definidos

## Proceso

### 1. Extraer Bloques de Wireframes

**Por cada template en wireframes.md**:
```
Template: Home
Bloques identificados:
- Hero: título, subtítulo, imagen, CTA
- Beneficios: lista de 5 items (título + descripción)
- Testimonios: nombre, cargo, empresa, foto, texto
- FAQ: pregunta + respuesta (mínimo 5)
```

### 2. Extraer Campos de Arquitectura

**Por cada CPT/página en arquitectura.md**:
```
Página: Home (page)
Campos disponibles:
- hero_titulo (text)
- hero_subtitulo (textarea)
- hero_imagen (image)
- hero_cta_texto (text)
- hero_cta_url (url)
- beneficios (repeater: titulo, descripcion)
- testimonios (repeater: nombre, cargo, empresa, foto, texto)
- faq (repeater: pregunta, respuesta)
```

### 3. Validar Soporte de Datos

**Cruzar bloques con campos**:
```
Hero (wireframe) → Campos hero_* (arquitectura) ✅

Beneficios (wireframe: 5 items) → Campo beneficios repeater ✅

Testimonios (wireframe) → Campo testimonios repeater ✅

FAQ (wireframe) → Campo faq repeater ✅

Equipo (wireframe: lista de miembros) → ??? NO ENCONTRADO ❌
```

### 4. Identificar Bloques Sin Soporte

**Si bloque no tiene campos**:
```markdown
## ⚠️ BLOQUE SIN SOPORTE DE DATOS

**Template**: Home
**Bloque**: Equipo (sección "Nuestro equipo")

**Datos necesarios** (según wireframe):
- Foto del miembro
- Nombre
- Cargo
- Bio breve
- Redes sociales

**Datos disponibles** (en arquitectura):
- NINGUNO ❌

**Impacto**:
No se puede implementar este bloque sin datos.
Maquetador no tendrá de dónde obtener información.

**Acciones recomendadas**:
Opción 1: Añadir CPT "miembro-equipo" en arquitectura
Opción 2: Añadir campo repeater "equipo" en página Home
Opción 3: Eliminar bloque de wireframe si no es necesario
```

### 5. Generar Reporte

**Documento**: `docs/validaciones/wireframes-vs-arquitectura-[fecha].md`

```markdown
---
tipo: validacion
estado: vigente
validacion: wireframes-arquitectura
version: 1
responsable: jefe-proyectos
creado: YYYY-MM-DD
---

# Validación: Wireframes vs Arquitectura

**Fecha**: YYYY-MM-DD

---

## Resultado General

**Estado**: ✅ Coherente / ⚠️ Bloques sin soporte / ❌ Bloques críticos sin soporte

**Resumen**:
- Templates wireframeados: [X]
- Bloques de contenido: [XX]
- Bloques con soporte: [XX]
- Bloques sin soporte: [X]

---

## Validación por Template

### Template: Home

**Bloques con soporte ✅**:
- Hero (campos: hero_titulo, hero_subtitulo, hero_imagen, hero_cta)
- Beneficios (campo: beneficios repeater)
- Testimonios (campo: testimonios repeater)
- FAQ (campo: faq repeater)

**Bloques sin soporte ❌**:
- Equipo (sección "Nuestro equipo")

**Impacto**: [Descripción del impacto]
**Acción requerida**: [Qué hacer]

---

### Template: Single Clase Yoga

**Bloques con soporte ✅**:
- Título (field: titulo)
- Descripción (field: descripcion_corta)
- Duración (field: duracion)
- Nivel (field: nivel)
- Beneficios (field: beneficios repeater)

**Bloques sin soporte**:
- Ninguno ✅

---

[... todos los templates]

---

## Bloques Sin Soporte (Resumen)

### Críticos (bloquean maquetación)
1. Home → Bloque "Equipo"
   - Datos necesarios: foto, nombre, cargo, bio
   - Acción: Añadir CPT "miembro-equipo" o repeater

### Importantes (recomendado resolver)
[Lista]

### Menores (opcional)
[Lista]

---

## Acciones Recomendadas

**Prioridad ALTA**:
1. Actualizar arquitectura.md: Añadir campos para bloque "Equipo"

**Prioridad MEDIA**:
[Lista]

---

## Conclusión

**Estado**: [Aprobado / Requiere actualización arquitectura / Bloqueado]

**Próximos pasos**:
[Qué debe hacerse]
```

---

## Output Esperado

**Reporte de validación** que identifica:
- Bloques con soporte de datos ✅
- Bloques sin soporte ❌
- Impacto y prioridad
- Acciones recomendadas

---

## Criterios de Validación

- [ ] **Bloques de wireframes extraídos** (todos)
- [ ] **Campos de arquitectura extraídos** (todos)
- [ ] **Cruce de datos realizado** (bloque por bloque)
- [ ] **Bloques sin soporte identificados** (si los hay)
- [ ] **Impacto evaluado** (bloquea o no)
- [ ] **Acciones recomendadas** (específicas)

---

## Errores Comunes

### ❌ No Considerar Fuentes de Datos Alternativas
**Mal**:
```
Bloque "Testimonios" en wireframe
→ No hay campo "testimonios" en arquitectura
→ Reportar como faltante ❌
[Sin verificar si hay CPT "testimonio"]
```

**Bien**:
```
Bloque "Testimonios" en wireframe
→ Verificar:
  - ¿Hay campo repeater "testimonios"? NO
  - ¿Hay CPT "testimonio"? SÍ ✅
→ Tiene soporte (vía CPT)
```

---

## Notas

- Esta validación asegura que la maquetación será posible
- Si bloques críticos no tienen soporte, bloquea Fase 10
- El Arquitecto debe actualizar arquitectura.md con campos faltantes
