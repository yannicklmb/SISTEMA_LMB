---
tipo: wireframe
estado: vigente
fase: wireframing
version: 1
responsable: wireframer
creado: YYYY-MM-DD
ultima_revision: YYYY-MM-DD
validado_por: null
validado_en: null
impactado_por_evento: false
---

# Wireframes - [Nombre del Proyecto]

> **INSTRUCCIONES**: Este es un template. Crea un wireframe por cada template crítico identificado en planificacion-urls.csv.
> Elimina esta nota al completar el documento.

---

## Wireframe 1: Home (Página de Inicio)

### Template WordPress
`page` (front-page.php o home.php)

### URLs que usan este template
- `/` (home)

---

### Jerarquía de Elementos

#### 1. Hero / Encabezado Principal

- **H1**: [Titular principal - Propuesta de valor en 1 frase]
  - Tamaño: `var(--texto-4xl)`
  - Color: `var(--color-primario)`
  
- **Subtitular**: [Refuerzo del mensaje, expandir la propuesta]
  - Tamaño: `var(--texto-xl)`
  - Color: `var(--color-neutral)`
  
- **Imagen/Video**: [Hero image o video de fondo]
  - Dimensiones: 1920x800px (desktop), 800x600px (mobile)
  - Estilo: [Fotografía / Ilustración según diseno.md]
  
- **CTA primario**: [Texto específico del botón]
  - Clase: `.boton-cta--principal`
  - Destino: [/contacto/ o URL específica]

---

#### 2. Sección: [Nombre - ej: Propuesta de Valor]

- **H2**: [Título de la sección]
- **Layout**: [Texto centrado / Texto + imagen / Grid de items]
- **Contenido**: [Descripción de qué comunica esta sección]
- **Elementos**:
  - [Elemento 1: ej. Texto principal]
  - [Elemento 2: ej. Lista de beneficios]
  - [Elemento 3: ej. Imagen ilustrativa]

---

#### 3. Sección: Beneficios

- **H2**: "Por qué elegirnos" o similar
- **Layout**: Grid 3 columnas (desktop), 1 columna (móvil)
- **Elementos**: 3-5 cards
- **Cada card contiene**:
  - Icono (64x64px o SVG)
  - H3: Título del beneficio
  - Párrafo: Descripción breve (2-3 líneas)

---

#### 4. Sección: [Diferenciación / Cómo Funciona / etc.]

[Continuar con todas las secciones necesarias]

---

#### 5. Sección: Prueba Social

- **H2**: "Casos de éxito" / "Testimonios" / "Clientes"
- **Layout**: [Carousel / Grid / Lista]
- **Elementos**: 
  - Testimonios: Foto + Nombre + Cargo + Empresa + Texto
  - O Cifras impactantes: "200+ clientes", "98% satisfacción"
  - O Logos de clientes

---

#### 6. Sección: Resolución de Objeciones (FAQ)

- **H2**: "Preguntas frecuentes"
- **Layout**: Acordeón o lista simple
- **Elementos**: Mínimo 5 preguntas/respuestas
- **Cada item**:
  - Pregunta (H3 o strong)
  - Respuesta (párrafo breve)

---

#### 7. CTA Final

- **Mensaje reforzado**: [Resumen de valor]
- **CTA**: [Texto del botón - debe ser específico]
- **Clase**: `.boton-cta--principal`

---

#### 8. Footer

- Menú footer
- Datos de contacto
- Redes sociales
- Legal (Privacidad, Cookies, Términos)

---

### Camino al CTA

**Flujo de conversión paso a paso**:

1. **Usuario llega (0 segundos)**
   - Ve hero con titular impactante
   - Entiende propuesta de valor inmediatamente
   - Ve CTA 1 (above the fold) - Primera oportunidad

2. **Scroll 1 - Propuesta de Valor (3-5 segundos)**
   - Entiende QUÉ ofrece el negocio
   - Genera interés inicial
   - Continúa scrolling

3. **Scroll 2 - Beneficios (10-15 segundos)**
   - Conoce 3-5 beneficios concretos
   - Entiende QUÉ gana
   - Ve CTA 2 - Segunda oportunidad

4. **Scroll 3 - Diferenciación (20 segundos)**
   - Entiende POR QUÉ este negocio vs competencia
   - Resuelve duda principal: "¿Por qué ustedes?"

5. **Scroll 4 - Prueba Social (30 segundos)**
   - Ve testimonios, casos de éxito o cifras
   - Genera confianza y credibilidad
   - Ve CTA 3 - Con confianza establecida

6. **Scroll 5 - FAQ (40 segundos)**
   - Resuelve objeciones principales
   - Elimina fricciones ("¿Es caro? ¿Es difícil?")
   - Ve CTA 4 final - Última oportunidad reforzada

7. **Footer (siempre visible)**
   - CTA alternativo o contacto directo

**Posiciones de CTA**:
- **CTA 1**: Hero (above the fold) - Para usuarios decididos
- **CTA 2**: Después de beneficios - Para usuarios que necesitan ver valor
- **CTA 3**: Después de prueba social - Con confianza generada
- **CTA 4**: Final antes de footer - Última oportunidad con resumen
- **Footer**: Contacto alternativo (siempre accesible)

---

### Notas Semánticas HTML

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
  
  <section class="propuesta seccion">
    <div class="seccion__contenedor seccion--encabezado">
      <h2 class="seccion__titulo">[Título]</h2>
      <p class="texto-lectura--centrado">[Texto]</p>
    </div>
  </section>
  
  <section class="beneficios seccion">
    <div class="seccion__contenedor">
      <h2 class="seccion__titulo">[Título]</h2>
      <div class="grid-m">
        <div class="card">
          <div class="icono">[Icon]</div>
          <h3 class="card__titulo">[Beneficio 1]</h3>
          <p class="card__contenido">[Descripción]</p>
        </div>
        <!-- Más cards -->
      </div>
    </div>
  </section>
  
  <section class="prueba-social seccion">
    <div class="seccion__contenedor">
      <h2 class="seccion__titulo">[Título]</h2>
      <!-- Testimonios o cifras -->
    </div>
  </section>
  
  <section class="faq seccion">
    <div class="seccion__contenedor">
      <h2 class="seccion__titulo">Preguntas Frecuentes</h2>
      <!-- FAQ items -->
    </div>
  </section>
  
</main>

<footer>
  <nav aria-label="Navegación footer"></nav>
</footer>
```

**Jerarquía de headings**:
- **H1**: Único por página (titular principal hero)
- **H2**: Títulos de secciones principales
- **H3**: Subtítulos dentro de secciones (cards, items)
- **H4-H6**: Jerarquía descendente si necesario

**Schema.org recomendado**:
- `Organization` (datos de la empresa en footer)
- `FAQPage` (si tiene sección FAQ)

---

### Notas para Copywriter

#### Sección Hero

**Mensaje principal**: 
[Comunicar propuesta de valor única en 1 frase impactante]

**Pain point atacar**: 
[Del perfil principal: ej. "Falta de tiempo para gestión administrativa"]

**Tono**: 
[Profesional / Cercano / Técnico - según audiencia de estrategia.md]

**Ejemplo**:
"Libera 20 horas al mes automatizando tu gestión administrativa" (para B2B que valora tiempo)

---

#### Sección Beneficios

**Mensaje**: 
[Qué gana el usuario concretamente - usar números si posible]

**Estructura**: 
Problema → Solución → Beneficio

**Enfoque**: 
Beneficios (resultados), no características (features)

**Ejemplo**:
✅ "Ahorra 20h/mes" (beneficio, resultado)
❌ "Automatización de procesos" (característica, feature)

---

#### Sección Diferenciación

**Mensaje**: 
[Por qué nosotros vs competencia - datos concretos]

**Pain point** (si aplica): 
[Reforzar problema que otros no resuelven bien]

**Datos concretos**: 
[Años experiencia, casos, certificaciones, especialización]

---

#### Sección Prueba Social

**Tipo**: 
[Testimonios / Casos de éxito / Cifras / Logos clientes]

**Cantidad**: 
Mínimo 3 testimonios o 5 cifras impactantes

**Credibilidad**: 
Nombres reales, fotos, empresas (no genéricos)

---

#### Sección FAQ

**Objeciones resolver** (de estrategia.md):
1. [Objeción 1 del perfil principal]
2. [Objeción 2]
3. [Objeción 3]

**Formato**: 
Pregunta directa → Respuesta breve y clara (2-3 frases)

**Cantidad**: 
Mínimo 5 preguntas

---

### Consideraciones Responsive

#### Versión Móvil (< 700px)

- **Hero**: 
  - Imagen como fondo con overlay (no al lado)
  - Texto centrado
  - CTA full-width o centrado
  
- **Grid beneficios**: 
  - 1 columna (no 3)
  - Cards apiladas verticalmente
  
- **Navegación**: 
  - Menú hamburguesa
  - Abre modal o sidebar
  
- **CTA**: 
  - Sticky bottom (siempre visible)
  - O repetido frecuentemente
  
- **Imágenes**: 
  - Reducidas o como fondos
  - No al lado del texto (todo apilado)

#### Versión Desktop (≥ 700px)

- **Hero**: 
  - Imagen grande, puede ser 2 columnas (texto | imagen)
  
- **Grid beneficios**: 
  - 3 columnas
  
- **Navegación**: 
  - Menú horizontal completo
  
- **CTA**: 
  - En posiciones definidas (no sticky)

---

## Wireframe 2: [Single de CPT Principal]

### Template WordPress
`single-[nombre-cpt]`

### URLs que usan este template
- `/[cpt]/[slug]/` (múltiples URLs con este template)

---

[Repetir estructura completa: Jerarquía + Camino CTA + Notas HTML + Notas Copy + Responsive]

---

## Wireframe 3: Contacto

[Estructura completa]

---

## Wireframe 4: [Otros templates críticos según planificacion-urls.csv]

[Añadir todos los templates críticos]

---

## Checklist de Completitud

**Antes de entregar al Jefe de Proyectos, verificar**:

- [ ] Templates críticos wireframeados (home, contacto, principales)
- [ ] Cada wireframe tiene jerarquía de elementos completa
- [ ] Cada wireframe define camino al CTA paso a paso
- [ ] Estructura semántica HTML documentada (tags correctos)
- [ ] Notas para copywriter por sección (qué comunicar, pain point, tono)
- [ ] Consideraciones responsive (móvil vs desktop)
- [ ] H1 único identificado por template
- [ ] Frontmatter actualizado

---

**Preparado por**: [Wireframer]  
**Fecha de entrega**: [YYYY-MM-DD]
