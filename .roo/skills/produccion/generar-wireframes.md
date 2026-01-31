---
nombre: generar-wireframes
familia: produccion
control: autonoma
activacion: "crear wireframes", "generar wireframes", "Fase 3", "diseñar UX", "jerarquía visual"
---

# Skill: Generar Wireframes

## Propósito

Crear wireframes completos con jerarquía visual, camino al CTA, notas semánticas HTML y notas para copywriter.

## Cuándo Usar

- Fase 3 del proyecto (Wireframing)
- Cuando el Wireframer necesita diseñar la experiencia de usuario
- Después de tener estrategia.md y planificacion-urls.csv

## Inputs Requeridos

### Obligatorios
- **`docs/estrategia.md`**: Pain points, objeciones, perfiles
- **`docs/planificacion-urls.csv`**: Templates a wireframear, requisitos de conversión

## Proceso

### 1. Identificar Templates a Wireframear

**Leer planificacion-urls.csv**:
- Extraer templates únicos (columna `template_wp`)
- Identificar los críticos (home, singles principales, contacto)
- Priorizar según importancia

**Templates OBLIGATORIOS**:
- Home (página de inicio)
- Contacto
- Templates con más URLs asociadas (principales)

### 2. Por Cada Template Crear Wireframe

**Estructura estándar**:

```markdown
## Wireframe: [Nombre del Template]

### Template WordPress
`[template-wp]` (ej: page, single-[cpt], archive-[cpt])

### URLs que usan este template
- [URL 1]
- [URL 2]

---

### Jerarquía de Elementos

**1. Hero / Encabezado Principal**
- **H1**: [Titular principal] (tamaño: var(--texto-4xl))
- **Subtitular**: [Mensaje secundario] (tamaño: var(--texto-xl))
- **Imagen/Video**: [Tipo, dimensiones: 1920x800px]
- **CTA primario**: [Texto del botón] (clase: .boton-cta--principal)

**2. Sección: [Nombre]** (ej: Beneficios, Propuesta de valor)
- **H2**: [Subtitular] (tamaño: var(--texto-3xl))
- **Layout**: [Grid 3 columnas / Texto + imagen / Lista]
- **Contenido**: [Descripción del contenido]
- **Elementos**:
  - Card 1: [Título + descripción]
  - Card 2: [Título + descripción]
  - Card 3: [Título + descripción]

**3. Sección: [Nombre]**
[... continuar con todas las secciones]

**4. Footer**
- Menú footer
- Datos de contacto
- Redes sociales
- Legal (privacidad, cookies)

---

### Camino al CTA

**Flujo de conversión paso a paso**:

1. **Usuario llega** 
   → Ve hero con titular impactante
   → Entiende propuesta de valor en 3 segundos
   → Ve CTA 1 (above the fold)

2. **Scroll 1** (Sección beneficios)
   → Conoce 3-5 beneficios principales
   → Entiende QUÉ gana
   → Ve CTA 2 (si scroll sin clic en CTA 1)

3. **Scroll 2** (Sección diferenciación)
   → Entiende POR QUÉ este negocio vs competencia
   → Resuelve duda principal

4. **Scroll 3** (Prueba social)
   → Ve testimonios, casos de éxito, cifras
   → Genera confianza
   → Ve CTA 3

5. **Scroll 4** (Resolución de objeciones)
   → FAQ, garantías, facilidades
   → Elimina fricciones
   → Ve CTA 4 (reforzado)

6. **Footer**
   → CTA final o contacto alternativo

**Posiciones de CTA**:
- CTA 1: Hero (above the fold) - Primera oportunidad
- CTA 2: Después de beneficios - Si necesita más info
- CTA 3: Después de prueba social - Confianza generada
- CTA 4: Final antes de footer - Última oportunidad
- Footer: Contacto alternativo (siempre accesible)

---

### Notas Semánticas HTML

**Estructura recomendada**:

```html
<header>
  <nav aria-label="Navegación principal">
    <!-- Menú -->
  </nav>
</header>

<main>
  
  <section class="hero seccion--tarjeta-imagen-fondo">
    <div class="seccion__contenedor">
      <h1 class="seccion__titulo">[Titular]</h1>
      <p class="seccion__texto">[Subtitular]</p>
      <a href="[url]" class="boton-cta boton-cta--principal">[CTA]</a>
    </div>
  </section>
  
  <section class="beneficios seccion">
    <div class="seccion__contenedor">
      <h2 class="seccion__titulo">[Título sección]</h2>
      <div class="grid-m">
        <div class="card">
          <h3 class="card__titulo">[Beneficio 1]</h3>
          <p class="card__contenido">[Descripción]</p>
        </div>
        <!-- Más cards -->
      </div>
    </div>
  </section>
  
  <section class="prueba-social seccion">
    <div class="seccion__contenedor">
      <h2>[Casos de éxito]</h2>
      <!-- Testimonios -->
    </div>
  </section>
  
</main>

<footer>
  <nav aria-label="Navegación footer">
    <!-- Enlaces footer -->
  </nav>
</footer>
```

**Jerarquía de headings**:
- H1: Único por página (titular principal)
- H2: Secciones principales
- H3: Subsecciones o elementos de secciones
- H4-H6: Jerarquía descendente si necesario

**Schema.org recomendado**:
- `Product` (si ecommerce)
- `Service` (si servicios)
- `Article` (si blog)
- `Organization` (datos empresa)
- `FAQPage` (si tiene FAQ)

---

### Notas para Copywriter

**Por cada sección, especificar**:

```markdown
**Sección Hero**:
- Mensaje principal: [Comunicar propuesta de valor única en 1 frase]
- Pain point atacar: [Del perfil X: "falta de tiempo"]
- Tono: [Profesional/cercano/técnico según audiencia]

**Sección Beneficios**:
- Mensaje: [Qué gana el usuario concretamente]
- Estructura: Problema → Solución → Beneficio
- Enfoque: Beneficios (no características)
- Ejemplo: "Ahorra 20h/mes" (beneficio) vs "Automatización de procesos" (característica)

**Sección Diferenciación**:
- Mensaje: [Por qué nosotros vs competencia]
- Pain point: [Si aplica]
- Datos concretos: [Años experiencia, casos, certificaciones]

**Sección Prueba Social**:
- Tipo: [Testimonios / Casos de éxito / Cifras / Logos clientes]
- Cantidad: [Mínimo 3 testimonios o 5 cifras]
- Credibilidad: [Nombres reales, fotos, empresas]

**Sección FAQ**:
- Objeciones resolver: [De estrategia.md]
- Formato: Pregunta → Respuesta breve y clara
- Cantidad: [Mínimo 5 preguntas]
```

---

### Responsive (Consideraciones Mobile First)

**Anotar diferencias móvil vs desktop**:

```markdown
### Consideraciones Responsive

**Versión móvil (< 700px)**:
- Hero: Imagen reducida o como fondo con overlay
- Grid beneficios: 1 columna (no 3)
- Navegación: Menú hamburguesa
- CTA: Sticky en bottom (siempre visible)
- Orden elementos: [Si cambia el orden]

**Versión desktop (≥ 700px)**:
- Hero: Imagen grande, layout 2 columnas
- Grid beneficios: 3 columnas
- Navegación: Menú horizontal completo
- CTA: En posiciones definidas (no sticky)
```

---

## Output Esperado

**Documento**: `docs/wireframes.md`

**Contenido por template**:
- Template WordPress identificado
- Jerarquía de elementos completa
- Camino al CTA paso a paso
- Notas semánticas HTML
- Notas para copywriter
- Consideraciones responsive

---

## Criterios de Validación

- [ ] **Templates críticos tienen wireframe** (home, contacto, principales)
- [ ] **Cada wireframe define camino al CTA** (paso a paso)
- [ ] **Estructura semántica HTML** documentada (tags correctos)
- [ ] **Notas para copywriter** (qué comunicar, pain point, tono)
- [ ] **Jerarquía de headings** (H1 único, H2, H3)
- [ ] **Responsive considerado** (notas móvil/desktop)

---

## Errores Comunes

### ❌ Wireframe Sin Camino al CTA
**Mal**:
```
Secciones:
1. Hero
2. Beneficios
3. Footer
[No explica CÓMO se guía al usuario]
```

**Bien**:
```
Camino al CTA:
1. Usuario ve hero (3 segundos) → Entiende propuesta
2. Scroll → Ve 5 beneficios → Genera interés
3. Scroll → Ve testimonios → Genera confianza
4. Scroll → Ve FAQ → Resuelve objeción principal
5. Ve CTA → "Solicita demo gratuita" → Elimina fricción (gratis)
```

---

## Notas

- Esta skill es ejecutada por el **Wireframer**
- Los wireframes son input para Arquitecto (campos necesarios) y Maquetador (implementación)
