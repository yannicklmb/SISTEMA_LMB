---
tipo: testing
estado: vigente
fase: testing
version: 1
responsable: testador
creado: YYYY-MM-DD
ultima_revision: YYYY-MM-DD
validado_por: null
validado_en: null
impactado_por_evento: false
---

# Plan de Testing - [Nombre del Proyecto]

> **INSTRUCCIONES**: Este es un template. Adaptar según el proyecto específico.
> Elimina esta nota al completar.

---

## Alcance del Testing

**Qué se probará**:
- 10 áreas obligatorias (responsive, formularios, checkout si aplica, navegación, rendimiento, accesibilidad, SEO, cross-browser, RGPD, targeting)
- Funcionalidad crítica según el proyecto específico
- Flujos principales de usuario

**Qué NO se probará** (si aplica):
- [Funcionalidades futuras no implementadas en esta versión]
- [Integraciones en modo draft/test que se activarán post-lanzamiento]

---

## 10 Áreas Obligatorias

### Área 1: Responsive (Dispositivos)

**Resoluciones a probar**:

**Móvil**:
- 320px (iPhone SE, dispositivos pequeños)
- 375px (iPhone estándar, dispositivos medios)
- 414px (iPhone Plus/Max, Android grandes)

**Tablet**:
- 768px (iPad portrait, tablets estándar)
- 1024px (iPad landscape, tablets grandes)

**Desktop**:
- 1366px (laptops estándar, resolución más común)
- 1920px (desktop Full HD)

**Orientación**:
- Portrait (vertical)
- Landscape (horizontal)

**Criterios de aprobación**:
- Layout no se rompe en ninguna resolución ✅
- Texto legible (tamaño mínimo 16px en móvil)
- Navegación funcional
- CTAs visibles y clicables (mínimo 44x44px táctil)
- Imágenes no generan overflow
- No hay scroll horizontal indeseado

---

### Área 2: Formularios

**Formularios del sitio** (listar todos):
1. Formulario de contacto
2. Newsletter (si existe)
3. Presupuesto (si existe)
4. [Otros formularios del proyecto]

**Tests por formulario**:

**Validaciones**:
- Campos obligatorios → Muestra error si vacío
- Email → Valida formato (@, dominio)
- Teléfono → Valida formato (si aplica)
- Campos numéricos → Solo acepta números
- Mensajes de error claros y específicos

**Envío y recepción**:
- Formulario envía al hacer submit
- Email llega al destinatario correcto
- Email de confirmación al usuario (si aplica)
- Mensaje de éxito claro
- Formulario se resetea

**Anti-spam**:
- Honeypot o reCAPTCHA implementado
- No se puede enviar sin interacción real

**Criterios de aprobación**:
- 100% formularios funcionan sin errores
- Emails llegan correctamente (verificado)

---

### Área 3: Checkout E2E (si ecommerce)

> Solo si el proyecto tiene WooCommerce o sistema de compra

**Flujo completo a probar**:

1. Añadir producto al carrito
2. Ver carrito actualizado
3. Modificar cantidades
4. Eliminar producto
5. Aplicar cupón/descuento (si existe)
6. Ir a checkout
7. Rellenar datos de envío
8. Rellenar datos de facturación
9. Seleccionar método de envío
10. Seleccionar método de pago
11. Confirmar pedido
12. Ver página de confirmación
13. Recibir email de confirmación
14. Ver pedido en "Mi cuenta"

**Criterios de aprobación**:
- Flujo completo sin errores ✅
- Emails transaccionales llegan
- Stock se descuenta (si gestiona stock)
- Pasarela de pago funciona (modo test)

---

### Área 4: Targeting de Audiencia (URLs Correctas)

**Según planificacion-urls.csv**, verificar:

- Todas las URLs planificadas funcionan (no 404)
- Contenido correcto por URL (según contenidos.md)
- Requisitos de conversión presentes (diferenciación, pain point, prueba social)
- CTAs correctos y específicos

**Criterios de aprobación**:
- 100% URLs planificadas funcionan
- Contenido coherente con planificación

---

### Área 5: Navegación

**Menús**:
- Menú desktop funcional (todos los enlaces)
- Menú móvil (hamburguesa) abre y cierra
- Submenús funcionan (si hay)
- Hover states correctos

**Breadcrumbs** (si aplica):
- Aparecen en páginas correctas
- Enlaces funcionan
- Jerarquía correcta

**Enlaces internos**:
- No hay enlaces rotos (scan con Screaming Frog)
- Enlaces externos abren en nueva ventana (si aplica)

**404 personalizada**:
- Aparece cuando URL no existe
- Tiene diseño del sitio (header, footer)
- Ofrece navegación útil (buscar, menú, inicio)

**Búsqueda interna** (si existe):
- Funciona correctamente
- Resultados relevantes

**Criterios de aprobación**:
- Navegación 100% funcional
- 0 enlaces rotos

---

### Área 6: Rendimiento (Core Web Vitals)

**URLs críticas a medir**:
- Home (/)
- Servicio/Producto principal
- Contacto
- Checkout (si ecommerce)

**Herramientas**:
- Google PageSpeed Insights (móvil y desktop)
- GTmetrix
- Chrome DevTools (Lighthouse)

**Métricas por URL**:
- **LCP** (Largest Contentful Paint): < 2.5s ✅
- **FID** (First Input Delay): < 100ms ✅
- **CLS** (Cumulative Layout Shift): < 0.1 ✅
- **Score**: ≥ 90 (objetivo)

**Criterios de aprobación**:
- TODAS las URLs tienen CWV en verde
- PageSpeed score ≥ 80 móvil, ≥ 90 desktop

---

### Área 7: Accesibilidad (WCAG 2.1 AA)

**Contraste de color**:
- Herramienta: WAVE, axe DevTools
- Texto normal: ≥ 4.5:1
- Texto grande: ≥ 3:1
- UI elementos: ≥ 3:1

**Navegación por teclado**:
- Tab recorre elementos interactivos
- Enter activa enlaces/botones
- Esc cierra modales
- Focus visible en todos los elementos

**Imágenes**:
- Todas tienen alt text
- Alt es descriptivo (no "img001.jpg")

**Formularios**:
- Labels asociados a inputs
- Errores anunciados correctamente

**ARIA roles** (donde corresponda):
- navigation, main, complementary, etc.

**Criterios de aprobación**:
- 0 errores críticos de accesibilidad (WAVE)
- Lighthouse accessibility score ≥ 90

---

### Área 8: SEO Técnico

**Meta tags**:
- Titles únicos (50-60 caracteres)
- Meta descriptions únicas (150-160 caracteres)
- H1 único por página
- Jerarquía de headings (H1 → H2 → H3)

**Indexación**:
- Sitemap.xml generado y accesible (/sitemap.xml)
- Robots.txt correcto (permite indexación)
- Canonical tags en todas las páginas

**Schema.org** (si aplica):
- Product (si ecommerce)
- Service (si servicios)
- Article (si blog)
- Organization (datos empresa)
- Validado con Google Rich Results Test

**Open Graph** (redes sociales):
- og:title, og:description, og:image
- Imagen OG correcta (1200x630px)

**Criterios de aprobación**:
- 100% páginas con meta correctos
- Sitemap enviado a Search Console
- 0 errores en Rich Results Test

---

### Área 9: Cross-Browser

**Navegadores a probar**:
- Chrome (última versión)
- Firefox (última versión)
- Safari (macOS / iOS)
- Edge (última versión)

**Verificar en cada uno**:
- Diseño renderiza correctamente
- Funcionalidad completa
- No hay errores específicos del navegador (consola)

**Herramienta**: BrowserStack o prueba manual

**Criterios de aprobación**:
- Funciona en los 4 navegadores principales

---

### Área 10: RGPD (Privacidad)

**Banner de cookies**:
- Aparece en primera visita
- Permite aceptar/rechazar
- Guarda preferencia
- Bloquea cookies según elección

**Políticas publicadas**:
- Política de privacidad (link en footer)
- Política de cookies (link en footer)
- Términos y condiciones (si ecommerce)

**Formularios**:
- Checkbox de consentimiento
- No se envía sin aceptar
- Texto claro de consentimiento

**Datos personales**:
- Protegidos (no públicos)
- HTTPS activo

**Criterios de aprobación**:
- 100% cumplimiento RGPD

---

## Criterios Globales de Aprobación

**Para dar sign-off final, TODOS deben cumplirse**:

- [ ] **≥ 95% de tests pasados**
- [ ] **0 bugs críticos** (bloquean funcionalidad principal)
- [ ] **0 bugs altos** (afectan experiencia gravemente)
- [ ] **Core Web Vitals en verde** (LCP, FID, CLS en todas las URLs)
- [ ] **Funcionalidad crítica 100% OK** (checkout si ecommerce, formularios, navegación)

**Si falta alguno**: NO aprobar, solicitar correcciones, re-testear.

---

## Timeline de Testing

**Iteración 1**: [Fecha inicio - Fecha fin]
- Testing inicial de 10 áreas
- Documentación de bugs

**Correcciones**: [Estimado X días]

**Iteración 2**: [Fecha inicio - Fecha fin]
- Re-testing de bugs corregidos
- Verificación de áreas que pasaron

**Iteración 3** (si necesaria): [Fecha]

**Sign-off final**: [Fecha estimada]

---

## Herramientas

- **Responsive**: Chrome DevTools, BrowserStack
- **Performance**: PageSpeed Insights, GTmetrix
- **Accesibilidad**: WAVE, axe DevTools
- **SEO**: Screaming Frog, Rich Results Test
- **Cross-browser**: BrowserStack
- **Evidencias**: Screenshots, Loom/OBS para videos

---

## Entregables

1. Este plan de testing
2. Checklist detallado (docs/testing/checklist.md)
3. Registro de bugs (docs/testing/bugs.md)
4. Informes por iteración (docs/testing/reportes/iteracion-[N].md)
5. Evidencias (docs/testing/evidencias/)

---

**Preparado por**: [Testador]  
**Fecha**: [YYYY-MM-DD]
