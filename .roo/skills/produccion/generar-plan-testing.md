---
nombre: generar-plan-testing
familia: produccion
control: autonoma
activacion: "crear plan testing", "generar plan QA", "Fase 13", "testing", "preparar tests"
---

# Skill: Generar Plan de Testing

## Propósito

Crear el plan completo de testing con checklist de las 10 áreas obligatorias, criterios de aprobación y estructura de documentación de QA.

## Cuándo Usar

- Fase 13 del proyecto (Testing / QA)
- Cuando el Testador necesita preparar la estructura de testing
- Antes de empezar a testear (pre-testing)

## Inputs Requeridos

### Obligatorios
- Proyecto completado (Fases 0-12)
- Acceso al sitio funcional (staging o preproducción)

### Recomendados
- **`docs/planificacion-urls.csv`**: URLs a testear
- **`docs/arquitectura.md`**: Funcionalidades implementadas
- **`docs/wireframes.md`**: Flujos esperados

## Proceso

### 1. Crear `docs/testing/plan.md`

**Estructura del plan**:

```markdown
---
tipo: testing
estado: vigente
fase: testing
version: 1
responsable: testador
creado: YYYY-MM-DD
---

# Plan de Testing - [Nombre Proyecto]

## Alcance

**Qué se probará**:
- 10 áreas obligatorias (responsive, formularios, checkout, etc.)
- Funcionalidad crítica (según proyecto)
- Rendimiento (Core Web Vitals)
- Accesibilidad (WCAG 2.1 AA)
- SEO técnico
- Cross-browser

**Qué NO se probará** (si aplica):
- [Funcionalidades futuras no implementadas]

---

## 10 Áreas Obligatorias

### 1. Responsive (Dispositivos)
**Resoluciones a probar**:
- Móvil: 320px, 375px, 414px
- Tablet: 768px, 1024px
- Desktop: 1366px, 1920px

**Criterios de aprobación**:
- Layout no se rompe en ninguna resolución
- Texto legible
- Navegación funcional

---

### 2. Formularios
**Formularios a probar**:
- [Lista de formularios del sitio: contacto, newsletter, etc.]

**Tests por formulario**:
- Validaciones de campos
- Envío y recepción
- Mensajes error/éxito
- Anti-spam

**Criterios de aprobación**:
- 100% formularios funcionan
- Emails llegan correctamente

---

### 3. Checkout E2E (si ecommerce)
**Flujo completo**:
1. Añadir producto
2. Modificar carrito
3. Proceso de pago
4. Confirmación
5. Email recibido

**Criterios de aprobación**:
- Flujo completo sin errores
- Emails transaccionales llegan

---

### 4. Targeting de Audiencia
**Verificar** (según planificacion-urls.csv):
- Todas las URLs funcionan (no 404)
- Contenido correcto por URL
- CTAs correctos

**Criterios de aprobación**:
- 100% URLs planificadas funcionan

---

### 5. Navegación
**Tests**:
- Menús (desktop/móvil)
- Enlaces internos
- 404 personalizada
- Breadcrumbs (si aplica)

**Criterios de aprobación**:
- Navegación 100% funcional

---

### 6. Rendimiento (CWV)
**Métricas a verificar**:
- LCP < 2.5s
- FID < 100ms
- CLS < 0.1

**Herramientas**:
- PageSpeed Insights
- GTmetrix

**Criterios de aprobación**:
- Core Web Vitals en verde

---

### 7. Accesibilidad (WCAG 2.1 AA)
**Tests**:
- Contraste de color
- Navegación por teclado
- Alt text en imágenes
- Labels en formularios

**Herramientas**:
- WAVE
- axe DevTools

**Criterios de aprobación**:
- 0 errores críticos de accesibilidad

---

### 8. SEO Técnico
**Verificar**:
- Titles únicos
- Meta descriptions
- H1 único por página
- Sitemap.xml
- Robots.txt
- Schema.org

**Criterios de aprobación**:
- 100% pages con meta correctos

---

### 9. Cross-Browser
**Navegadores**:
- Chrome, Firefox, Safari, Edge (últimas versiones)

**Criterios de aprobación**:
- Funciona en los 4 navegadores

---

### 10. RGPD (Privacidad)
**Verificar**:
- Banner de cookies
- Políticas publicadas
- Consentimientos en formularios

**Criterios de aprobación**:
- 100% cumplimiento RGPD

---

## Criterios Globales de Aprobación

Para dar sign-off final, TODOS deben cumplirse:

- [ ] **≥ 95% de tests pasados**
- [ ] **0 bugs críticos**
- [ ] **0 bugs altos**
- [ ] **Core Web Vitals en verde**
- [ ] **Funcionalidad crítica 100% OK**

Si falta alguno: **NO APROBAR**, solicitar correcciones.

---

## Timeline de Testing

**Iteración 1**: [Fecha inicio - Fecha fin]
- Testing inicial de 10 áreas
- Documentación de bugs

**Correcciones**: [Estimado X días]

**Iteración 2**: [Fecha inicio - Fecha fin]
- Re-testing de bugs corregidos
- Testing de áreas que pasaron (verificación)

**Iteración 3** (si necesaria): [Fecha]

**Sign-off final**: [Fecha estimada]

---

## Herramientas

- Chrome DevTools
- PageSpeed Insights
- GTmetrix
- BrowserStack
- WAVE
- Screaming Frog

---

## Entregables

1. Este plan
2. Checklist detallado
3. Informes por iteración
4. Listado de bugs
5. Evidencias (screenshots, videos)
```

---

### 2. Crear `docs/testing/checklist.md`

**Checklist detallado por área**:

```markdown
---
tipo: testing-checklist
estado: vigente
fase: testing
version: 1
responsable: testador
creado: YYYY-MM-DD
---

# Checklist de Testing - [Nombre Proyecto]

## Área 1: Responsive

### Móvil (320px)
- [ ] Home carga correctamente
- [ ] Navegación funciona (menú hamburguesa)
- [ ] Textos legibles (no muy pequeños)
- [ ] CTAs visibles y clicables (mín. 44x44px)
- [ ] Imágenes no se salen del viewport
- [ ] No hay scroll horizontal

### Móvil (375px)
- [ ] [Mismo checklist]

### Móvil (414px)
- [ ] [Mismo checklist]

### Tablet (768px)
- [ ] [Checklist adaptado]

### Tablet (1024px)
- [ ] [Checklist adaptado]

### Desktop (1366px)
- [ ] [Checklist adaptado]

### Desktop (1920px)
- [ ] [Checklist adaptado]

---

## Área 2: Formularios

### Formulario: Contacto

**Validaciones**:
- [ ] Nombre obligatorio → Muestra error si vacío
- [ ] Email obligatorio → Muestra error si vacío
- [ ] Email valida formato → Rechaza "texto" sin @
- [ ] Teléfono valida formato (si aplica)
- [ ] Mensaje obligatorio → Error si vacío

**Envío**:
- [ ] Formulario envía al hacer submit
- [ ] Email llega a destinatario correcto
- [ ] Email de confirmación al usuario (si aplica)
- [ ] Mensaje de éxito se muestra
- [ ] Formulario se resetea (campos vacíos)

**Errores**:
- [ ] Si falla envío, muestra mensaje de error
- [ ] No hay errores en consola

**Anti-spam**:
- [ ] Honeypot o reCAPTCHA presente
- [ ] No se puede enviar sin interacción

### Formulario: [Otro formulario]
[Mismo checklist]

---

## Área 3: Checkout E2E (si ecommerce)

**Carrito**:
- [ ] Añadir producto → Aparece en carrito
- [ ] Modificar cantidad → Actualiza precio
- [ ] Eliminar producto → Se quita del carrito
- [ ] Aplicar cupón → Descuento aplicado
- [ ] Ver total correcto (productos + envío + impuestos)

**Checkout**:
- [ ] Rellenar datos envío → Se guardan
- [ ] Rellenar datos facturación → Se guardan
- [ ] Seleccionar método envío → Actualiza precio
- [ ] Seleccionar método pago → Muestra gateway
- [ ] Confirmar pedido → Procesa correctamente

**Post-compra**:
- [ ] Página de confirmación muestra
- [ ] Email de confirmación llega
- [ ] Pedido aparece en "Mi cuenta"
- [ ] Estado correcto (procesando, completado)

---

## Área 4: Targeting de Audiencia

**Según planificacion-urls.csv**:

- [ ] URL 1: [url] → Funciona, contenido correcto, CTA correcto
- [ ] URL 2: [url] → Funciona, contenido correcto, CTA correcto
[... todas las URLs planificadas]

---

## Área 5: Navegación

**Menú Desktop**:
- [ ] Menú carga correctamente
- [ ] Todos los enlaces funcionan
- [ ] Submenús funcionan (si hay)
- [ ] Hover states correctos

**Menú Móvil**:
- [ ] Icono hamburguesa visible
- [ ] Al clic, menú se abre
- [ ] Todos los enlaces funcionan
- [ ] Menú se cierra al clic fuera

**Enlaces Internos**:
- [ ] No hay enlaces rotos (404)
- [ ] Enlaces abren en ventana correcta

**404**:
- [ ] Aparece en URL inexistente
- [ ] Tiene diseño del sitio
- [ ] Ofrece navegación (buscar, home)

---

## Área 6: Rendimiento

**PageSpeed Insights (Móvil)**:
- [ ] LCP < 2.5s
- [ ] FID < 100ms
- [ ] CLS < 0.1
- [ ] Score ≥ 90 (objetivo)

**PageSpeed Insights (Desktop)**:
- [ ] [Mismo checklist]

**GTmetrix**:
- [ ] Grado A o B
- [ ] Fully Loaded < 3s

---

## Área 7: Accesibilidad

**Contraste (WAVE)**:
- [ ] 0 errores de contraste
- [ ] Texto ≥ 4.5:1
- [ ] UI ≥ 3:1

**Teclado**:
- [ ] Tab recorre elementos
- [ ] Enter activa enlaces/botones
- [ ] Esc cierra modales
- [ ] Focus visible

**Imágenes**:
- [ ] Todas tienen alt text
- [ ] Alt es descriptivo

**Formularios**:
- [ ] Labels asociados
- [ ] Errores anunciados

---

## Área 8: SEO Técnico

**Meta Tags**:
- [ ] Titles únicos (50-60 chars)
- [ ] Descriptions únicas (150-160 chars)
- [ ] H1 único por página
- [ ] Jerarquía headings correcta

**Indexación**:
- [ ] Sitemap.xml accesible
- [ ] Robots.txt correcto
- [ ] Canonical tags presentes

**Schema.org** (si aplica):
- [ ] Implementado correctamente
- [ ] Validado con Rich Results Test

---

## Área 9: Cross-Browser

- [ ] Chrome: Funciona 100%
- [ ] Firefox: Funciona 100%
- [ ] Safari: Funciona 100%
- [ ] Edge: Funciona 100%

---

## Área 10: RGPD

- [ ] Banner cookies funciona
- [ ] Política privacidad publicada
- [ ] Política cookies publicada
- [ ] Consentimientos en formularios
- [ ] Datos personales protegidos

---

## Resumen de Aprobación

**Tests totales**: [Calcular total de checkboxes]
**Tests pasados**: [Contar ✓]
**Porcentaje**: [Calcular %]

**Estado**: 
- ✅ Aprobado (≥95%, 0 críticos, 0 altos, CWV verde)
- ⚠️ Requiere corrección
- ❌ Rechazado
```

---

### 3. Crear Estructura de Carpetas

**Verificar que existen**:
- `docs/testing/plan.md`
- `docs/testing/checklist.md`
- `docs/testing/reportes/` (carpeta)
- `docs/testing/evidencias/` (carpeta)

**Crear archivo base de bugs**:

`docs/testing/bugs.md`:
```markdown
---
tipo: testing-bugs
estado: vigente
fase: testing
version: 1
responsable: testador
creado: YYYY-MM-DD
---

# Registro de Bugs - [Nombre Proyecto]

## Bugs Abiertos

[Se añadirán bugs detectados con formato estándar]

---

## Bugs Cerrados

[Bugs ya corregidos y verificados]

---

## Formato de Bug

```markdown
## BUG-XXX: [Título]

**Severidad**: Crítico / Alto / Medio / Bajo
**Área**: [Responsive / Formularios / etc.]
**Detectado**: YYYY-MM-DD
**Estado**: Abierto / En corrección / Resuelto / Cerrado

### Descripción
[Qué falla]

### Pasos para Reproducir
1. [Paso 1]
2. [Paso 2]
→ Resultado: [Qué pasa]

### Esperado vs Actual
**Esperado**: [Qué debería pasar]
**Actual**: [Qué pasa realmente]

### Evidencia
[Screenshot, video, consola]

### Entorno
- Navegador: [Chrome 120]
- OS: [Windows 11]
- Resolución: [1920x1080]

### Asignado a
[Maquetador / Programador / etc.]
```
```

---

## Output Esperado

**3 Documentos + Estructura**:
1. **`docs/testing/plan.md`**: Plan completo con 10 áreas
2. **`docs/testing/checklist.md`**: Checklist detallado
3. **`docs/testing/bugs.md`**: Estructura para documentar bugs
4. Carpetas preparadas para evidencias e informes

---

## Criterios de Validación

- [ ] **Plan con 10 áreas** documentadas
- [ ] **Checklist detallado** (todos los tests listados)
- [ ] **Criterios de aprobación** definidos (≥95%, 0 críticos/altos)
- [ ] **Timeline estimado** (iteraciones)
- [ ] **Estructura de bugs.md** creada
- [ ] **Herramientas** listadas

---

## Errores Comunes

### ❌ Plan Sin Criterios Claros
**Mal**:
```
Plan: "Probar todo"
[Sin especificar qué es "todo"]
```

**Bien**:
```
Plan: 10 áreas obligatorias
- Área 1: Responsive (7 resoluciones específicas)
- Área 2: Formularios (3 formularios listados)
[... todas detalladas]

Criterios: ≥95%, 0 críticos, 0 altos, CWV verde
```

---

## Notas

- Esta skill es ejecutada por el **Testador**
- El plan y checklist guían todo el proceso de QA
- Deben crearse ANTES de empezar a testear (pre-testing)
