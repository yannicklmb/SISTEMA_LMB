---
tipo: diseno
estado: vigente
fase: diseno
version: 1
responsable: disenador
creado: YYYY-MM-DD
ultima_revision: YYYY-MM-DD
validado_por: null
validado_en: null
impactado_por_evento: false
---

# Diseño Visual - [Nombre del Proyecto]

> **INSTRUCCIONES**: Este es un template. Reemplaza placeholders con datos reales basados en estrategia.md y wireframes.md.
> Elimina esta nota al completar.

---

## 1. Psicología del Color

### Análisis de Audiencia

**Perfil principal**: [Nombre del perfil de estrategia.md]
**Características**:
- Edad: [Rango]
- Nivel socioeconómico: [Nivel]
- Industria: [Si B2B]

**Emociones a transmitir**:
[Confianza / Innovación / Cercanía / Profesionalidad / Energía / Calma / etc.]

**Justificación**:
[Por qué estas emociones según el perfil]

---

### Análisis de Competencia

**Competidor 1**: [Nombre]
- **Paleta dominante**: [Colores principales: ej. Azul claro + Gris]
- **Estilo**: [Corporativo / Moderno / Minimalista / etc.]

**Competidor 2**: [Nombre]
- **Paleta dominante**: [Colores]
- **Estilo**: [Descripción]

**Competidor 3**: [Nombre]
- **Paleta dominante**: [Colores]
- **Estilo**: [Descripción]

**Oportunidad de diferenciación**:
[Todos usan X, podemos diferenciarnos con Y porque Z]

---

## 2. Paleta de Colores Definida

> **OBLIGATORIO**: Mínimo 6-8 colores con verificación de contraste WCAG AA

| Color | Uso | Hex | RGB | Proporción | Contraste c/Blanco |
|-------|-----|-----|-----|------------|-------------------|
| **Primario** | Identidad principal | #XXXXXX | rgb(X,X,X) | 60% | X.X:1 [✅/❌] |
| **Secundario** | Apoyo visual | #XXXXXX | rgb(X,X,X) | 30% | X.X:1 [✅/❌] |
| **Atención** | CTAs | #XXXXXX | rgb(X,X,X) | 10% | X.X:1 [✅/❌] |
| **Éxito** | Mensajes positivos | #28A745 | rgb(40,167,69) | Puntual | X.X:1 [✅/❌] |
| **Error** | Mensajes error | #DC3545 | rgb(220,53,69) | Puntual | X.X:1 [✅/❌] |
| **Info** | Información neutral | #17A2B8 | rgb(23,162,184) | Puntual | X.X:1 [✅/❌] |
| **Neutral oscuro** | Textos | #333333 | rgb(51,51,51) | - | 12.6:1 ✅ |
| **Neutral claro** | Fondos | #F5F5F5 | rgb(245,245,245) | - | 1.1:1 N/A |

### Justificación de Colores

**Color primario** (#XXXXXX):
[Por qué este color: psicología, audiencia, diferenciación]

**Color secundario** (#XXXXXX):
[Por qué este color: complementa primario, aporta X]

**Color atención** (#XXXXXX):
[Por qué para CTAs: contraste, llamativo, etc.]

---

### Verificación de Contraste WCAG AA

**Criterios**:
- Texto normal (< 18px): ≥ 4.5:1 ✅
- Texto grande (≥ 18px): ≥ 3:1 ✅
- Elementos UI: ≥ 3:1 ✅

**Combinaciones verificadas**:

| Fondo | Texto | Ratio | ¿Cumple WCAG AA? |
|-------|-------|-------|------------------|
| Primario | Blanco | X.X:1 | [✅ Sí / ❌ No] |
| Secundario | Blanco | X.X:1 | [✅ Sí / ❌ No] |
| Atención | Blanco | X.X:1 | [✅ Sí / ❌ No] |
| Blanco | Neutral oscuro | 12.6:1 | ✅ Sí |

**Herramienta usada**: [WebAIM Contrast Checker / Coolors / Adobe Color]

**Correcciones aplicadas** (si las hubo):
[Ej: Color X no cumplía (3.8:1), ajustado a X2 (4.6:1) ✅]

---

## 3. Proporciones de Uso de Color

**Regla 60/30/10** (o justificar si varía):

- **60% Color primario**: 
  - Headers
  - Footers
  - Elementos principales de identidad
  - Secciones destacadas
  
- **30% Color secundario**:
  - Secciones alternas
  - Detalles y acentos
  - Elementos de apoyo
  
- **10% Color atención**:
  - CTAs (botones de acción)
  - Elementos que requieren interacción
  - Destacados puntuales

**Colores funcionales**: Uso específico según necesidad (éxito, error, info)

**Neutrales**: Textos y fondos (no cuentan en la proporción)

---

## 4. Tipografía

**Familia principal**: [Nombre de la fuente - ej: "Inter", "Roboto", "Montserrat"]

**Justificación**:
[Por qué esta fuente: legibilidad, personalidad, audiencia]

**Pesos a usar**:
- Light (300): [Usos]
- Regular (400): Texto cuerpo
- Bold (700): Títulos, destacados
- Black (900): H1 principales

**Fallback**:
`'[Fuente Principal]', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif`

---

## 5. Ideas de Componentes e Interfaz

> Basado en wireframes.md

### Botones

**Estilo principal**: [Pill / Rounded / Squared]
- Border radius: [var(--radio-full) / var(--radio-m) / 0]
- Padding: [var(--espacio-xs) var(--espacio-m)]

**Variante principal** (CTAs):
- Fondo: Degradado color atención
- Color texto: Blanco
- Hover: Sombra + escala 1.05
- Borde: Degradado (patrón LMB)

**Variante secundaria**:
- Fondo: Blanco
- Borde: 2px color primario
- Color texto: Color primario
- Hover: Fondo primario claro

---

### Cards

**Estilo**: [Flat / Elevadas / Con bordes]
- Borde: Degradado (patrón LMB) [✅ Sí / ❌ No]
- Elevación: Sombra suave [var(--sombra-s) / var(--sombra-m)]
- Border radius: [var(--radio-m)]

**Variantes**:
- **Clara**: Fondo primario-light (10-20% opacidad)
- **Oscura**: Fondo primario-dark, texto blanco
- **Neutra**: Fondo blanco, borde degradado

**Espaciado interno**: [Generoso: var(--espacio-m) / Compacto: var(--espacio-s)]

---

### Secciones

**Alternancia de fondos**:
- Sección 1: Blanco
- Sección 2: Gris claro (neutral-claro)
- Sección 3: Blanco
- [Alternar para separación visual]

**Hero**:
- Estilo: [Imagen de fondo con overlay / Imagen al lado / Sin imagen]
- Overlay: [rgba(0,0,0,0.5) / Degradado / Sin overlay]

**Padding vertical**:
[Generoso: var(--espacio-xl) / Compacto: var(--espacio-l)]

---

### Iconografía

**Estilo**: [Line icons (outline) / Filled / Duotone]
- Librería: [Feather Icons / Heroicons / Font Awesome / Custom]
- Color: Primario para iconos principales
- Fondo: Círculo con color + icono blanco (opcional)

---

### Espaciado

**Filosofía**: [Generoso (mucho espacio blanco) / Compacto / Equilibrado]

**Justificación según audiencia**:
[Ej: Audiencia senior requiere espaciado generoso para legibilidad]

---

## 6. Diferenciación Visual vs Competencia

### Análisis Competencia Visual

**Competidor 1**:
- Paleta: [Descripción]
- Multimedia: [Fotografía / Ilustración / Video]
- Estilo: [Descripción del diseño]
- Espaciado: [Generoso / Compacto]

**Competidor 2**: [Análisis]

**Competidor 3**: [Análisis]

---

### Nuestra Propuesta de Diferenciación

**Paleta única**:
[Ej: Azul oscuro + Naranja vs competencia que usa azul claro + gris]

**Multimedia**:
[Ilustración vectorial personalizada / Fotografía natural propia / Mix]

**Estilo**:
[Profesional pero cercano / Moderno y accesible / Premium y exclusivo]

**Elementos únicos**:
- Patrón de bordes degradados (marca LMB)
- [Iconografía custom / Ilustraciones propias / Fotografía específica]
- [Otro elemento distintivo]

**Justificación de diferenciación**:
[Cómo nos diferencia visualmente manteniendo profesionalidad para nuestra audiencia]

---

## 7. Recomendaciones de Multimedia

### Decisión Principal: Ilustración vs Fotografía

**Decisión**: [Fotografía / Ilustración / Mix de ambos]

**Justificación**:
- **Audiencia**: [Perfil] responde mejor a [tipo] porque [razón]
- **Tipo de negocio**: [Servicios abstractos / Productos físicos / etc.]
- **Presupuesto**: [Disponibilidad de fotógrafo / ilustrador / banco stock]
- **Competencia**: [Usan X, nos diferenciamos con Y]

---

### Estilo Visual

**Estilo elegido**: [Realista / Minimalista / Vectorial / Flat / Material / 3D]

**Justificación**:
[Por qué este estilo según audiencia y diferenciación]

---

### Especificaciones Técnicas

**Formatos**:
- **Fotografías**: WebP (optimización)
- **Ilustraciones**: SVG (escalabilidad perfecta)
- **Iconos**: SVG

**Dimensiones orientativas** (basadas en wireframes.md):

| Uso | Dimensiones (px) | Peso máximo |
|-----|------------------|-------------|
| Hero (desktop) | 1920 x 800 | 300 KB |
| Hero (mobile) | 800 x 600 | 200 KB |
| Contenido | 1200 x 800 | 200 KB |
| Thumbnails | 600 x 400 | 100 KB |
| Iconos | 64 x 64 o SVG | 50 KB o SVG |

**Alt text**: Descriptivo y contextual (SEO + accesibilidad)

---

### Estilo Fotográfico (si fotografía)

**Características**:
- Luz: [Natural / Estudio / Mix]
- Fondos: [Limpios / Contextuales / Borrosos]
- Personas: [Reales del negocio / Modelos / Sin personas]
- Tratamiento: [Filtro sutil con tonalidad primaria / Natural sin filtro]

**Proveedor**:
- [Fotógrafo profesional / Unsplash / Pexels / Cliente proporciona]

---

### Estilo Ilustrativo (si ilustración)

**Características**:
- Estilo: [Flat / Line art / Isométrico / 3D]
- Paleta: Colores de marca
- Personajes: [Inclusivos y diversos / Abstract / Sin personajes]

**Proveedor**:
- [unDraw / Storyset / Freepik / Ilustrador custom / Cliente proporciona]

**Personalización**:
[Adaptar colores a paleta de marca / Usar tal cual / Custom completo]

---

## Checklist de Completitud

**Antes de entregar al Jefe de Proyectos, verificar**:

- [ ] Psicología del color documentada (audiencia + competencia)
- [ ] Paleta completa (6+ colores con hex y RGB)
- [ ] Contraste WCAG AA verificado (tabla con ratios)
- [ ] Proporciones de uso documentadas (60/30/10 o justificado)
- [ ] Ideas de componentes (botones, cards, secciones, iconos)
- [ ] Tipografía definida (familia, pesos, justificación)
- [ ] Diferenciación vs competencia argumentada
- [ ] Recomendaciones multimedia completas (tipo, estilo, formato, dimensiones)
- [ ] Frontmatter actualizado

---

**Preparado por**: [Diseñador]  
**Fecha de entrega**: [YYYY-MM-DD]
