---
nombre: checklist-wpo
familia: validacion
control: autonoma
activacion: "checklist WPO", "verificar rendimiento", "Core Web Vitals", "optimización"
---

# Skill: Checklist de WPO

## Propósito

Verificar Core Web Vitals, optimización de scripts, caché e imágenes para asegurar que el sitio cumple umbrales de rendimiento.

## Cuándo Usar

- Durante Fase 12 (Optimización)
- Validación de métricas después de optimizar
- Antes de Fase 14 (Pre-lanzamiento)

## Inputs Requeridos

### Obligatorios
- URL del sitio (staging o producción)
- Acceso a herramientas de medición

## Proceso

### 1. Medir Core Web Vitals

**Herramienta**: Google PageSpeed Insights

**URLs críticas a medir**:
- Home (/)
- Página de servicio/producto principal
- Contacto
- Checkout (si ecommerce)

**Por cada URL, documentar**:

**Móvil**:
```markdown
### URL: [url]

**Móvil**:
- LCP: [X.X]s (umbral: < 2.5s) [✅ / ❌]
- FID: [XX]ms (umbral: < 100ms) [✅ / ❌]
- CLS: [0.XX] (umbral: < 0.1) [✅ / ❌]
- Score: [XX]/100

**Estado**: [Verde ✅ / Naranja ⚠️ / Rojo ❌]
```

**Desktop**:
```markdown
**Desktop**:
- LCP: [X.X]s (umbral: < 2.5s) [✅ / ❌]
- FID: [XX]ms (umbral: < 100ms) [✅ / ❌]
- CLS: [0.XX] (umbral: < 0.1) [✅ / ❌]
- Score: [XX]/100

**Estado**: [Verde ✅ / Naranja ⚠️ / Rojo ❌]
```

**Criterio de aprobación**:
- ✅ TODAS las métricas en verde (LCP < 2.5s, FID < 100ms, CLS < 0.1)

### 2. Verificar Optimización de Imágenes

**Checklist**:
```markdown
### Imágenes

**Formato**:
- [ ] Imágenes convertidas a WebP
- [ ] JPG/PNG solo si necesario (transparencias)

**Lazy Loading**:
- [ ] `loading="lazy"` en imágenes below the fold
- [ ] Above the fold SIN lazy loading (evita delay LCP)

**Dimensiones**:
- [ ] Imágenes con dimensiones correctas (no redimensionadas con CSS)
- [ ] Imágenes responsive (srcset si aplica)

**Compresión**:
- [ ] Hero: < 300KB
- [ ] Contenido: < 200KB
- [ ] Thumbnails: < 100KB

**Total de imágenes**: [XX]
**Imágenes optimizadas**: [XX] ([XX]%)
```

**Si < 90% optimizadas**: Requiere acción.

### 3. Verificar Scripts y CSS

**Checklist de Scripts**:
```markdown
### Scripts

**Scripts deshabilitados** (si no se usan):
- [ ] Emojis de WordPress
- [ ] Gutenberg (si no se usa)
- [ ] jQuery Migrate (si no necesario)
- [ ] Otros scripts innecesarios

**Optimización**:
- [ ] JS minificado
- [ ] JS diferido (`defer`/`async` en no críticos)
- [ ] Concatenación (si no HTTP/2)

**Número de requests JS**:
- Antes: [XX]
- Después: [XX]
- Reducción: [XX]%
```

**Checklist de CSS**:
```markdown
### CSS

**Optimización**:
- [ ] CSS minificado
- [ ] CSS crítico inline (above the fold)
- [ ] CSS no crítico diferido

**Número de requests CSS**:
- Antes: [XX]
- Después: [XX]
- Reducción: [XX]%
```

### 4. Verificar Caché

**Checklist**:
```markdown
### Caché

**Plugin instalado**: [Nombre] [Versión]

**Configuración**:
- [ ] Page cache activado
- [ ] Browser cache activado (headers)
- [ ] Object cache activado (si servidor lo permite)
- [ ] GZIP/Brotli activado

**Exclusiones** (si rompe funcionalidad):
- [Lista de exclusiones necesarias]

**Verificación funcional**:
- [ ] Sitio funciona con caché activada
- [ ] Builder funciona (si aplica)
- [ ] Formularios envían
- [ ] Checkout funciona (si ecommerce)
```

### 5. Verificar Database

**Checklist**:
```markdown
### Database

**Limpieza**:
- [ ] Revisiones antiguas eliminadas
- [ ] Borradores automáticos eliminados
- [ ] Spam limpiado
- [ ] Transients expirados eliminados

**Optimización**:
- [ ] Tablas optimizadas
- [ ] Índices añadidos en queries custom (si aplica)

**Tamaño**:
- Antes: [XX] MB
- Después: [XX] MB
- Reducción: [XX]%
```

### 6. Generar Reporte

**Documento**: `docs/reporte-wpo.md` (verificar o actualizar)

```markdown
---
tipo: wpo
estado: vigente
fase: optimizacion
version: 1
responsable: optimizador
creado: YYYY-MM-DD
ultima_revision: YYYY-MM-DD
validado_por: null
validado_en: null
impactado_por_evento: false
---

# Checklist WPO - [Nombre Proyecto]

## Core Web Vitals

### Resumen General

| URL | LCP (móvil) | FID (móvil) | CLS (móvil) | Estado |
|-----|-------------|-------------|-------------|--------|
| / | [X.X]s | [XX]ms | [0.XX] | [✅/❌] |
| /[principal]/ | [X.X]s | [XX]ms | [0.XX] | [✅/❌] |

**Estado general**: [✅ Todas en verde / ⚠️ Algunas en naranja / ❌ Rojas]

---

## Checklist de Optimizaciones

### Imágenes
- [x] WebP: [XX]% convertidas
- [x] Lazy loading: Implementado
- [x] Dimensiones: Correctas
- [x] Compresión: [XX]% peso reducido

### Scripts
- [x] Scripts deshabilitados: [Lista]
- [x] Minificación: Activada
- [x] Defer/Async: Implementado

### CSS
- [x] Minificación: Activada
- [x] CSS crítico: Inline
- [x] CSS no crítico: Diferido

### Caché
- [x] Plugin: [Nombre]
- [x] Configuración: Completa
- [x] Funcionalidad: Verificada ✅

### Database
- [x] Limpieza: Realizada
- [x] Optimización: Tablas optimizadas

---

## Resultado Final

**Core Web Vitals**: [✅ En verde / ⚠️ Requiere trabajo]

**Aprobación WPO**: [✅ Aprobado / ❌ Requiere optimización adicional]

**Próximos pasos**:
[Si requiere trabajo, qué optimizar]
```

---

## Output Esperado

**Reporte de verificación** con:
- Métricas CWV por URL
- Checklist de optimizaciones
- Estado general
- Aprobación o acciones pendientes

---

## Criterios de Validación

- [ ] **Core Web Vitals medidos** (todas las URLs críticas)
- [ ] **LCP < 2.5s** en todas las URLs (móvil y desktop)
- [ ] **FID < 100ms** en todas las URLs
- [ ] **CLS < 0.1** en todas las URLs
- [ ] **Imágenes verificadas** (WebP, lazy loading, comprimidas)
- [ ] **Scripts verificados** (defer/async, minificados)
- [ ] **Caché verificada** (funcional)

**Aprobar WPO solo si**: Core Web Vitals en verde en TODAS las URLs críticas.

---

## Errores Comunes

### ❌ Medir Solo Home
**Mal**:
```
Medir solo home (/)
→ LCP: 2.1s ✅
→ Aprobar WPO
```

**Bien**:
```
Medir URLs críticas:
- Home: LCP 2.1s ✅
- Servicio principal: LCP 3.2s ❌
- Checkout: LCP 4.5s ❌
→ NO aprobar, requiere optimización adicional
```

---

## Notas

- Esta skill es ejecutada por el **Optimizador** o **Jefe de Proyectos**
- Validación debe hacerse DESPUÉS de aplicar optimizaciones
- Si no cumple, derivar a Optimizador para mejorar
