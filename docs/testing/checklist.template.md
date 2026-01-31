---
tipo: testing-checklist
estado: vigente
fase: testing
version: 1
responsable: testador
creado: YYYY-MM-DD
---

# Checklist de Testing - [Nombre del Proyecto]

> **INSTRUCCIONES**: Marcar con [x] los tests que pasen, dejar [ ] los que fallen.
> Documentar bugs en docs/testing/bugs.md para los que fallen.

---

## Área 1: Responsive

### Móvil 320px (iPhone SE)
- [ ] Home carga correctamente
- [ ] Layout no se rompe
- [ ] Texto legible (tamaño ≥ 16px)
- [ ] Navegación funciona (menú hamburguesa abre/cierra)
- [ ] CTAs visibles y clicables (≥ 44x44px)
- [ ] Imágenes no generan overflow
- [ ] No hay scroll horizontal
- [ ] Formularios usables

### Móvil 375px (iPhone estándar)
- [ ] [Mismo checklist que 320px]

### Móvil 414px (iPhone Plus/Max)
- [ ] [Mismo checklist]

### Tablet 768px (iPad portrait)
- [ ] [Checklist adaptado a tablet]

### Tablet 1024px (iPad landscape)
- [ ] [Checklist adaptado]

### Desktop 1366px (Laptop)
- [ ] [Checklist adaptado a desktop]

### Desktop 1920px (Full HD)
- [ ] [Checklist adaptado]

---

## Área 2: Formularios

### Formulario: Contacto

**Validaciones**:
- [ ] Nombre obligatorio → Error si vacío
- [ ] Email obligatorio → Error si vacío
- [ ] Email valida formato → Rechaza texto sin @
- [ ] Teléfono valida formato (si aplica)
- [ ] Mensaje obligatorio → Error si vacío
- [ ] Mensajes de error claros

**Envío**:
- [ ] Submit envía formulario
- [ ] Email llega a destinatario
- [ ] Email confirmación al usuario (si aplica)
- [ ] Mensaje de éxito aparece
- [ ] Formulario se resetea

**Anti-spam**:
- [ ] Honeypot o reCAPTCHA presente
- [ ] No envía sin interacción

### Formulario: [Otro]
- [ ] [Repetir checklist]

---

## Área 3: Checkout E2E (si ecommerce)

**Carrito**:
- [ ] Añadir producto → Aparece en carrito
- [ ] Icono carrito actualiza cantidad
- [ ] Modificar cantidad → Actualiza precio
- [ ] Eliminar producto → Se quita
- [ ] Aplicar cupón → Descuento correcto
- [ ] Ver total (productos + envío + impuestos)

**Checkout**:
- [ ] Datos envío → Se guardan
- [ ] Datos facturación → Se guardan
- [ ] Método envío → Actualiza precio
- [ ] Método pago → Gateway funciona
- [ ] Confirmar pedido → Procesa

**Post-compra**:
- [ ] Página confirmación muestra
- [ ] Email confirmación llega
- [ ] Pedido en "Mi cuenta"
- [ ] Estado correcto

---

## Área 4: Targeting de Audiencia

**Según planificacion-urls.csv**:

- [ ] URL 1: [/url/] → Funciona, contenido OK, CTA OK
- [ ] URL 2: [/url/] → Funciona, contenido OK, CTA OK
- [ ] URL 3: [/url/] → Funciona, contenido OK, CTA OK

[Añadir TODAS las URLs planificadas]

---

## Área 5: Navegación

**Menú Desktop**:
- [ ] Menú principal carga
- [ ] Todos los enlaces funcionan
- [ ] Submenús funcionan (si hay)
- [ ] Hover states correctos

**Menú Móvil**:
- [ ] Icono hamburguesa visible
- [ ] Al clic, menú abre
- [ ] Enlaces funcionan
- [ ] Menú cierra al clic fuera o botón

**Enlaces**:
- [ ] 0 enlaces rotos (verificar con Screaming Frog)
- [ ] Enlaces externos abren en nueva ventana

**404**:
- [ ] Aparece en URL inexistente
- [ ] Diseño del sitio presente
- [ ] Navegación útil (buscar/home)

**Búsqueda** (si aplica):
- [ ] Funciona
- [ ] Resultados relevantes

---

## Área 6: Rendimiento

### Home (/)

**Móvil**:
- [ ] LCP < 2.5s
- [ ] FID < 100ms
- [ ] CLS < 0.1
- [ ] Score ≥ 80

**Desktop**:
- [ ] LCP < 2.5s
- [ ] FID < 100ms
- [ ] CLS < 0.1
- [ ] Score ≥ 90

### [URL principal]

[Repetir para cada URL crítica]

---

## Área 7: Accesibilidad

**Contraste (WAVE)**:
- [ ] 0 errores de contraste
- [ ] Texto ≥ 4.5:1
- [ ] UI ≥ 3:1

**Teclado**:
- [ ] Tab recorre elementos
- [ ] Enter activa
- [ ] Esc cierra modales
- [ ] Focus visible

**Imágenes**:
- [ ] Todas con alt
- [ ] Alt descriptivo

**Formularios**:
- [ ] Labels asociados
- [ ] Errores anunciados

**Score**:
- [ ] Lighthouse ≥ 90

---

## Área 8: SEO Técnico

**Meta Tags**:
- [ ] Titles únicos (todas las páginas)
- [ ] Descriptions únicas
- [ ] H1 único por página
- [ ] Jerarquía headings correcta

**Indexación**:
- [ ] Sitemap.xml accesible
- [ ] Robots.txt correcto
- [ ] Canonicals presentes

**Schema.org**:
- [ ] Implementado (si aplica)
- [ ] Validado (Rich Results Test)

**Open Graph**:
- [ ] og:title, og:description, og:image
- [ ] Imagen correcta (1200x630)

---

## Área 9: Cross-Browser

- [ ] Chrome: 100% funcional
- [ ] Firefox: 100% funcional
- [ ] Safari: 100% funcional
- [ ] Edge: 100% funcional

---

## Área 10: RGPD

- [ ] Banner cookies funciona
- [ ] Política privacidad publicada
- [ ] Política cookies publicada
- [ ] Términos (si ecommerce)
- [ ] Consentimientos en formularios
- [ ] Datos protegidos

---

## Resumen

**Tests totales**: [Contar checkboxes]
**Tests pasados**: [Contar [x]]
**Porcentaje**: [Calcular %]

**Bugs detectados**: [Número total]
- Críticos: [X]
- Altos: [X]
- Medios: [X]
- Bajos: [X]

---

## Estado de Aprobación

**Criterios**:
- [ ] ≥ 95% pasados - Actual: [XX]%
- [ ] 0 críticos - Actual: [X]
- [ ] 0 altos - Actual: [X]
- [ ] CWV verde - [Estado]
- [ ] Func. crítica OK - [Estado]

**Decisión**: [✅ Aprobado / ⏳ Requiere corrección / ❌ Rechazado]

---

**Testeado por**: [Testador]  
**Fecha**: [YYYY-MM-DD]
