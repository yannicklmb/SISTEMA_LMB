---
nombre: validar-estructura-minima
familia: estandarizacion
control: autonoma
activacion: "validar estructura", "verificar carpetas", "estructura mínima", "carpetas esperadas"
---

# Skill: Validar Estructura Mínima

## Propósito

Comprobar que existen las carpetas y documentos esperados en el proyecto según la especificación del sistema.

## Cuándo Usar

- Al inicio de un proyecto (verificar clonación correcta)
- Periódicamente (asegurar integridad)
- Si se sospecha que faltan archivos/carpetas

## Inputs Requeridos

### Ninguno
Esta skill verifica la estructura del proyecto actual.

## Proceso

### 1. Verificar Estructura de Carpetas

**Carpetas OBLIGATORIAS**:

```markdown
## Verificación de Estructura

### Carpeta: .roo/
- [ ] .roo/modes/ (existe)
- [ ] .roo/skills/ (existe)
- [ ] .roo/skills/produccion/ (existe)
- [ ] .roo/skills/validacion/ (existe)
- [ ] .roo/skills/eventos/ (existe)
- [ ] .roo/skills/estandarizacion/ (existe)
- [ ] .roo/skills/codigo/ (existe)

### Carpeta: docs/
- [ ] docs/sistema-lmb.md (existe - fuente de verdad)
- [ ] docs/plantillas/ (existe)
- [ ] docs/eventos/ (existe)
- [ ] docs/testing/ (existe)
- [ ] docs/testing/reportes/ (existe)
- [ ] docs/testing/evidencias/ (existe)
- [ ] docs/validaciones/ (existe)
- [ ] docs/post-lanzamiento/ (existe)
- [ ] docs/mejora-continua/ (existe)
- [ ] docs/propuestas/pendientes/ (existe)
- [ ] docs/propuestas/aprobadas/ (existe)
- [ ] docs/ideas-mejora.md (existe)

### Raíz del proyecto
- [ ] README.md (existe)
- [ ] .gitignore (existe)
- [ ] roadmap.md O roadmap.template.md (existe)
```

### 2. Verificar Custom Modes

**12 Custom Modes esperados**:

```markdown
### Custom Modes

- [ ] .roo/modes/jefe-proyectos.md
- [ ] .roo/modes/estratega.md
- [ ] .roo/modes/planificador.md
- [ ] .roo/modes/wireframer.md
- [ ] .roo/modes/arquitecto.md
- [ ] .roo/modes/implementador.md
- [ ] .roo/modes/disenador.md
- [ ] .roo/modes/programador.md
- [ ] .roo/modes/maquetador.md
- [ ] .roo/modes/securizador.md
- [ ] .roo/modes/optimizador.md
- [ ] .roo/modes/testador.md

**Total**: [X/12]
```

### 3. Verificar Skills (Opcional - Template)

**En TEMPLATE**, verificar que existen las 28 skills.

**En PROYECTO**, las skills ya existen (heredadas del template).

### 4. Verificar Artefactos del Proyecto

**Artefactos esperados según fase actual**:

```markdown
### Artefactos del Proyecto

**Fase actual según roadmap**: [Fase X]

**Artefactos esperados hasta esta fase**:
- [ ] docs/estrategia.md (si Fase ≥ 1)
- [ ] docs/planificacion-urls.csv (si Fase ≥ 2)
- [ ] docs/wireframes.md (si Fase ≥ 3)
- [ ] docs/stack.md (si Fase ≥ 4)
- [ ] docs/arquitectura.md (si Fase ≥ 5)
- [ ] docs/diseno.md (si Fase ≥ 6)
- [ ] docs/contenidos.md (si Fase ≥ 6b)
- [ ] docs/guia-estilos.html (si Fase ≥ 9)
- [ ] docs/estilos.css (si Fase ≥ 9)
- [ ] docs/framework-css.md (si Fase ≥ 9)
- [ ] docs/reporte-seguridad.md (si Fase ≥ 11)
- [ ] docs/reporte-wpo.md (si Fase ≥ 12)
- [ ] docs/testing/plan.md (si Fase ≥ 13)
- [ ] docs/testing/checklist.md (si Fase ≥ 13)

**Artefactos presentes**: [X/Y esperados]
**Artefactos faltantes**: [Lista]
```

### 5. Verificar Roadmap

**Roadmap OBLIGATORIO en proyectos**:

```markdown
### Roadmap

**Archivo**: roadmap.md

- [ ] Existe
- [ ] Tiene sección "Fases"
- [ ] Tiene sección "Estado del Proyecto"
- [ ] Tiene sección "Historial de Eventos"
- [ ] Está actualizado (última actualización < 7 días)

**Si NO existe**:
⚠️ CRÍTICO: Proyecto sin roadmap
Acción: Crear desde roadmap.template.md
```

### 6. Generar Reporte

**Documento**: `docs/validaciones/estructura-minima-[fecha].md`

```markdown
---
tipo: validacion-estructura
estado: vigente
version: 1
responsable: [quien ejecutó]
creado: YYYY-MM-DD
---

# Validación de Estructura Mínima

**Fecha**: YYYY-MM-DD
**Tipo de proyecto**: [Template / Proyecto Cliente]

---

## Resultado General

**Estado**: ✅ Completa / ⚠️ Elementos faltantes / ❌ Estructura incorrecta

---

## Carpetas

**Esperadas**: [XX]
**Presentes**: [XX]
**Faltantes**: [Lista o "Ninguna"]

---

## Custom Modes

**Esperados**: 12
**Presentes**: [X]
**Faltantes**: [Lista o "Ninguno"]

---

## Artefactos del Proyecto

**Fase actual**: [X]
**Artefactos esperados hasta fase actual**: [X]
**Artefactos presentes**: [X]
**Artefactos faltantes**: [Lista o "Ninguno"]

---

## Roadmap

**Estado**: [✅ Existe y actualizado / ⚠️ Existe pero desactualizado / ❌ No existe]

---

## Issues Detectados

[Lista de problemas encontrados o "Ninguno"]

---

## Acciones Recomendadas

**Prioridad ALTA**:
[Lista o "Ninguna"]

**Prioridad MEDIA**:
[Lista o "Ninguna"]

---

## Conclusión

**Estructura del proyecto**: [✅ Válida / ⚠️ Requiere ajustes / ❌ Incompleta]
```

---

## Output Esperado

**Reporte** que verifica:
- Estructura de carpetas completa
- Custom Modes presentes (en template)
- Artefactos esperados según fase
- Roadmap existe y está actualizado

---

## Criterios de Validación

- [ ] **Carpetas obligatorias verificadas** (todas)
- [ ] **Custom Modes verificados** (si template)
- [ ] **Artefactos según fase verificados**
- [ ] **Roadmap verificado** (existe y actualizado)
- [ ] **Issues documentados** (si los hay)
- [ ] **Acciones priorizadas** (si se requieren)

---

## Errores Comunes

### ❌ Esperar Artefactos de Fases Futuras
**Mal**:
```
Proyecto en Fase 3
→ Reportar como faltante: docs/reporte-wpo.md
[Es de Fase 12, aún no debe existir]
```

**Bien**:
```
Proyecto en Fase 3
→ Verificar solo hasta Fase 3:
  - estrategia.md ✅
  - planificacion-urls.csv ✅
  - wireframes.md ✅
→ NO verificar artefactos de fases futuras
```

---

## Notas

- Skill 🔓 AUTÓNOMA (cualquier rol puede ejecutar)
- Útil para verificar integridad del proyecto
- Especialmente importante después de clonar template
- En template verifica estructura completa, en proyectos verifica según fase
