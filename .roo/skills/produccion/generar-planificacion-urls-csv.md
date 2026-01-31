---
nombre: generar-planificacion-urls-csv
familia: produccion
control: autonoma
activacion: "crear planificación", "generar CSV", "Fase 2", "planificación URLs", "keyword research"
---

# Skill: Generar Planificación URLs CSV

## Propósito

Producir el archivo `docs/planificacion-urls.csv` con columnas obligatorias, enfoque en conversión y asignación de intenciones de búsqueda a URLs específicas.

## Cuándo Usar

- Fase 2 del proyecto (Planificación)
- Cuando el Planificador necesita crear la estructura de URLs
- Después de tener estrategia.md completa

## Inputs Requeridos

### Obligatorios
- **`docs/estrategia.md`**: Servicios/productos, perfiles, pain points, objeciones

### Recomendados
- Keyword research (Ahrefs, SEMrush, Ubersuggest)
- Análisis de competencia SEO
- Preguntas frecuentes del sector

## Proceso

### 1. Leer y Analizar Estrategia

**Extraer de estrategia.md**:
- Lista de servicios/productos → Necesitan URLs destino
- Perfiles de audiencia → Informan intenciones de búsqueda
- Pain points → Informan keywords long-tail
- Objeciones → Informan contenido necesario por URL

### 2. Keyword Research

**Fuentes**:
- Herramientas SEO (volumen y competencia)
- Google Autocomplete ("keyword + ...")
- Google "Búsquedas relacionadas"
- Foros y redes sociales (preguntas reales)
- Competencia (qué keywords atacan)

**Tipos de keywords**:
- **Transaccionales**: "comprar X", "contratar Y", "precio Z"
- **Informacionales**: "cómo X", "qué es Y", "guía de Z"
- **Navegacionales**: "[marca] X", "[nombre empresa]"

**Priorización**:
1. Alta: Keywords transaccionales (compra/contratación)
2. Media: Keywords informacionales (consideración)
3. Baja: Keywords navegacionales (branding)

### 3. Asignar Intenciones a URLs

**Regla de oro**: Cada keyword/intención → UNA página destino

**Proceso de agrupación**:
```
Keywords similares:
- "abogado laboralista barcelona"
- "abogado laboral barcelona"
- "bufete laboral barcelona"
→ Agrupadas (misma intención)
→ UNA URL destino: /abogado-laboralista-barcelona/
```

### 4. Definir Templates WP

**Por cada URL, determinar template**:

**Páginas estáticas**:
- Home → `page` (template: front-page.php)
- Contacto → `page`
- Sobre nosotros → `page`

**CPTs** (según arquitectura, si existe):
- Single → `single-[cpt]`
- Archive → `archive-[cpt]`

**Taxonomías**:
- Archive → `archive-[taxonomia]` o `taxonomy-[taxonomia]`

**Blog**:
- Single post → `single`
- Archive blog → `archive` o `home`

**Especiales**:
- 404 → `404.php`
- Search → `search.php`

**Nota**: Si arquitectura.md aún no existe, usar placeholders `[cpt]`, `[taxonomia]` que se especificarán después.

### 5. Definir Requisitos de Conversión

**Por cada URL**, responder las 5 preguntas:

1. **¿Qué pain point ataca?** (de estrategia.md)
2. **¿Qué objeción resuelve?** (de estrategia.md)
3. **¿Qué diferenciación comunica?**
4. **¿Qué prueba social incluye?** (testimonios, casos, cifras)
5. **¿Qué fricción elimina?** (garantía, gratis, fácil, rápido)

**Formato en columna `requisitos_conversion`**:
```
"Diferenciación: 15 años experiencia sector tech, Pain point: código lento afecta ventas, Prueba social: 200+ webs optimizadas, Fricción: análisis gratuito sin compromiso"
```

### 6. Definir CTAs por URL

**CTAs específicos**, NO genéricos:

❌ Genéricos:
- "Más información"
- "Contactar"
- "Saber más"

✅ Específicos:
- "Solicita auditoría SEO gratuita"
- "Descarga guía de optimización"
- "Agenda demo de 15 minutos"
- "Compra ahora con 20% descuento"

**CTA destino**:
- `/contacto/`
- Formulario específico
- Teléfono
- WhatsApp
- Checkout (si ecommerce)

### 7. Crear CSV con Estructura Obligatoria

**Columnas obligatorias** (7):
1. `keyword_intencion`
2. `url_destino`
3. `template_wp`
4. `titulo_seo`
5. `requisitos_conversion`
6. `cta_texto`
7. `cta_destino`

**Formato CSV**:
```csv
keyword_intencion,url_destino,template_wp,titulo_seo,requisitos_conversion,cta_texto,cta_destino
"abogado laboralista barcelona","/abogado-laboralista-barcelona/","page","Abogado Laboralista en Barcelona - Expertos en Derecho Laboral","Diferenciación: 15 años experiencia, Pain point: despido improcedente, Prueba social: 200+ casos ganados, Fricción: primera consulta gratis","Solicita consulta gratuita","/contacto/"
"consultoría seo ecommerce","/consultoria-seo-ecommerce/","page","Consultoría SEO para Ecommerce - Aumenta tus Ventas Online","Diferenciación: especialistas en ecommerce, Pain point: ventas estancadas, Prueba social: 50+ tiendas con +30% ventas, Fricción: auditoría gratuita","Solicita auditoría SEO gratuita","/contacto/"
```

**Validaciones**:
- Todas las filas tienen 7 columnas
- No hay URLs duplicadas
- Títulos SEO 50-60 caracteres
- CTAs específicos (no genéricos)

### 8. Verificar Cobertura Completa

**Páginas OBLIGATORIAS**:
- [ ] Inicio (home)
- [ ] Contacto
- [ ] Sobre nosotros / Quiénes somos
- [ ] Política de privacidad
- [ ] Política de cookies

**Páginas según negocio** (de estrategia.md):
- [ ] Todos los servicios tienen URL
- [ ] Todos los productos tienen URL (o WooCommerce)
- [ ] Blog (si aplica)
- [ ] Portfolio/casos (si aplica)

**Páginas según canales** (de estrategia.md):
- [ ] Landings para Google Ads (si aplica)
- [ ] Landings para Facebook Ads (si aplica)

### 9. Validar Métricas

**Calcular ratio keywords/URLs**:
```
Total keywords: 45
Total URLs únicas: 28
Ratio: 1.6:1 ✅ (≥ 1.5:1 requerido)
```

**Si ratio < 1.5:1**:
- Añadir más keywords por URL (variaciones, sinónimos)
- O está bien si las URLs son muy específicas

---

## Output Esperado

**Archivo**: `docs/planificacion-urls.csv`

**Métricas objetivo**:
- Ratio keywords/URLs ≥ 1.5:1
- 100% servicios con URL destino
- Todas las URLs con template asignado
- Todas las URLs con requisitos de conversión

---

## Criterios de Validación

- [ ] **CSV con 7 columnas obligatorias**
- [ ] **Ratio keywords/URLs ≥ 1.5:1**
- [ ] **100% servicios con URL** (de estrategia.md)
- [ ] **Todas las URLs con template WP asignado**
- [ ] **Requisitos de conversión definidos** por URL
- [ ] **CTAs específicos** (no genéricos)
- [ ] **Páginas obligatorias incluidas** (home, contacto, legal)

---

## Errores Comunes

### ❌ URLs Sin Servicios de Estrategia
**Mal**:
```
Inventar URL /servicios-premium/ 
[Sin existir en estrategia.md]
```

**Bien**:
```
Leer estrategia.md → "Servicio Premium" existe
Crear URL /servicio-premium/
```

### ❌ Requisitos de Conversión Vacíos
**Mal**:
```
requisitos_conversion: "Información del servicio"
[Genérico, inútil]
```

**Bien**:
```
requisitos_conversion: "Diferenciación: único con certificación X, Pain point: pérdida de tiempo en gestión manual, Prueba social: 200+ clientes, Fricción: demo gratuita 30 días"
```

---

## Notas

- Esta skill es ejecutada por el **Planificador**
- El CSV es pieza central que gobierna: arquitectura, wireframes, diseño, contenidos, maquetación
- **Si el CSV está mal, todo lo posterior estará mal**
