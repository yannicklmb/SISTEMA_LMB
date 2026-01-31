---
nombre: validacion-qa-final
familia: validacion
control: autonoma
activacion: "validación final QA", "aprobar testing", "sign-off testing", "criterios aprobación"
---

# Skill: Validación QA Final

## Propósito

Verificar que se cumplen los criterios de aprobación final de testing: ≥95% tests pasados, 0 bugs críticos, 0 bugs altos, Core Web Vitals en verde.

## Cuándo Usar

- Al final de Fase 13 (Testing)
- Cuando el Testador necesita dar sign-off final
- Antes de pasar a Fase 14 (Pre-lanzamiento)

## Inputs Requeridos

### Obligatorios
- **`docs/testing/checklist.md`**: Checklist completo con resultados
- **`docs/testing/bugs.md`**: Listado de bugs detectados
- **`docs/reporte-wpo.md`**: Métricas de Core Web Vitals

## Proceso

### 1. Verificar Criterio 1: ≥ 95% Tests Pasados

**Leer checklist.md**:
```
Contar checkboxes:
- Total de tests: [XXX]
- Tests marcados como ✓: [XXX]
- Tests marcados como ✗: [XX]

Calcular porcentaje:
Pasados / Total * 100 = [XX.X]%
```

**Evaluación**:
```
Si ≥ 95%: ✅ Criterio cumplido
Si < 95%: ❌ Criterio NO cumplido
```

**Ejemplo**:
```
Total: 200 tests
Pasados: 197
Porcentaje: 98.5% ✅ Cumple (≥ 95%)
```

### 2. Verificar Criterio 2: 0 Bugs Críticos

**Leer bugs.md**:
```
Filtrar por severidad "Crítico":
- BUG-001: [Título] - Estado: [Abierto/Cerrado]
- BUG-015: [Título] - Estado: [Abierto/Cerrado]

Contar bugs críticos ABIERTOS: [X]
```

**Evaluación**:
```
Si 0 bugs críticos abiertos: ✅ Criterio cumplido
Si ≥ 1 bug crítico abierto: ❌ Criterio NO cumplido
```

**Clasificación de Crítico** (recordatorio):
- Bloquea funcionalidad principal
- Ejemplos: Checkout no funciona, formulario no envía, página 500

### 3. Verificar Criterio 3: 0 Bugs Altos

**Leer bugs.md**:
```
Filtrar por severidad "Alto":
[Lista de bugs altos]

Contar bugs altos ABIERTOS: [X]
```

**Evaluación**:
```
Si 0 bugs altos abiertos: ✅ Criterio cumplido
Si ≥ 1 bug alto abierto: ❌ Criterio NO cumplido
```

**Clasificación de Alto** (recordatorio):
- Afecta experiencia gravemente pero no bloquea
- Ejemplos: Diseño roto en móvil, menú no abre, CTA no visible

### 4. Verificar Criterio 4: Core Web Vitals en Verde

**Leer reporte-wpo.md**:
```
URLs críticas medidas:
- Home: LCP [X.X]s, FID [XX]ms, CLS [0.XX] → [Estado]
- [URL principal]: LCP [X.X]s, FID [XX]ms, CLS [0.XX] → [Estado]
- [Checkout]: LCP [X.X]s, FID [XX]ms, CLS [0.XX] → [Estado]

Evaluar TODAS las URLs:
¿Todas tienen LCP < 2.5s? [Sí/No]
¿Todas tienen FID < 100ms? [Sí/No]
¿Todas tienen CLS < 0.1? [Sí/No]
```

**Evaluación**:
```
Si TODAS las URLs críticas tienen CWV en verde: ✅ Criterio cumplido
Si AL MENOS UNA URL tiene métrica en naranja/rojo: ❌ Criterio NO cumplido
```

### 5. Verificar Criterio 5: Funcionalidad Crítica 100% OK

**Definir funcionalidad crítica según proyecto**:

**Si ecommerce**:
- [ ] Checkout completo funciona (E2E)
- [ ] Carrito funciona
- [ ] Pasarela de pago funciona
- [ ] Emails transaccionales llegan

**Si generación de leads**:
- [ ] Formulario contacto funciona
- [ ] Emails llegan al destinatario
- [ ] Gracias/confirmación muestra

**Navegación** (todos los proyectos):
- [ ] Menú desktop funciona
- [ ] Menú móvil funciona
- [ ] Enlaces internos no rotos

**Evaluación**:
```
Si 100% funcionalidad crítica OK: ✅ Criterio cumplido
Si ≥ 1 funcionalidad crítica falla: ❌ Criterio NO cumplido
```

### 6. Generar Decisión de Sign-Off

**Evaluar los 5 criterios**:
```markdown
## Evaluación de Criterios de Aprobación

1. **≥ 95% tests pasados**: [✅ 98.5% / ❌ 92%]
2. **0 bugs críticos**: [✅ 0 bugs / ❌ 2 bugs abiertos]
3. **0 bugs altos**: [✅ 0 bugs / ❌ 1 bug abierto]
4. **CWV en verde**: [✅ Todas las URLs / ❌ 2 URLs en naranja]
5. **Funcionalidad crítica OK**: [✅ 100% / ❌ Checkout falla]

---

## Decisión de Sign-Off

**Todos los criterios cumplidos**: [✅ Sí / ❌ No]

**Decisión**:
- ✅ **APROBADO PARA LANZAMIENTO**
- ⚠️ **APROBADO CON OBSERVACIONES** (solo bugs bajos pendientes)
- ❌ **NO APROBADO** (requiere correcciones)

**Justificación**:
[Explicación de la decisión]

**Bugs pendientes aceptables** (si hay):
- BUG-045: Espaciado menor (severidad: Baja)
- BUG-052: Typo (severidad: Baja)
[Solo bugs bajos/medios no bloqueantes]

**Próximos pasos**:
[Si no aprobado, qué debe corregirse y re-testearse]
```

### 7. Documentar en Roadmap

**Si APROBADO**:
```markdown
Actualizar roadmap.md:
- Fase 13 (Testing): Completa ✅
- Sign-off testing: [Fecha]
- Aprobado por: Testador
- Próxima fase: Fase 14 (Pre-lanzamiento)
```

**Si NO APROBADO**:
```markdown
Actualizar roadmap.md:
- Fase 13 (Testing): En curso (iteración [N])
- Issues detectados: [X] críticos, [X] altos
- Correcciones requeridas: [Lista]
- Re-testing programado: [Fecha]
```

---

## Output Esperado

**Decisión documentada** en:
- Último informe de iteración (`docs/testing/reportes/iteracion-final.md`)
- Actualización en roadmap.md

**Contenido**:
- Evaluación de 5 criterios
- Decisión de sign-off (aprobado/no aprobado)
- Justificación
- Próximos pasos

---

## Criterios de Validación

- [ ] **5 criterios evaluados** (todos verificados)
- [ ] **Porcentaje tests calculado** (preciso)
- [ ] **Bugs críticos/altos contados** (verificado en bugs.md)
- [ ] **CWV verificados** (todas las URLs críticas)
- [ ] **Funcionalidad crítica verificada** (según proyecto)
- [ ] **Decisión fundamentada** (con justificación)

---

## Matriz de Decisión

| Criterio | Estado | ¿Bloquea? | Decisión |
|----------|--------|-----------|----------|
| Tests ≥95% | ✅ 98% | - | Continuar |
| 0 críticos | ✅ 0 | - | Continuar |
| 0 altos | ✅ 0 | - | Continuar |
| CWV verde | ✅ Todas | - | Continuar |
| Func. crítica | ✅ 100% | - | **APROBAR** ✅ |

**Si AL MENOS 1 criterio falla**: **NO APROBAR**

---

## Errores Comunes

### ❌ Aprobar Con Bugs Críticos
**Mal**:
```
98% tests pasados ✅
1 bug crítico abierto: "Checkout no funciona"
→ Aprobar de todas formas ❌
```

**Bien**:
```
98% tests pasados ✅
1 bug crítico abierto: "Checkout no funciona" ❌
→ NO APROBAR
→ Requiere corrección del bug crítico
→ Re-testear checkout
→ Aprobar solo cuando 0 críticos
```

### ❌ No Verificar CWV en Todas las URLs
**Mal**:
```
Home: CWV verde ✅
→ Aprobar sin medir otras URLs
```

**Bien**:
```
Home: CWV verde ✅
Servicio principal: CWV naranja ⚠️
→ NO APROBAR
→ Optimizar servicio principal
→ Re-medir
```

---

## Notas

- Esta skill es ejecutada por el **Testador**
- Es la última validación antes de Pre-lanzamiento
- **NO se puede aprobar si algún criterio falla** (sin excepciones)
- Bugs bajos/medios pueden dejarse para backlog post-lanzamiento
