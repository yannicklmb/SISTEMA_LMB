---
nombre: generar-framework-css
familia: produccion
control: autonoma
activacion: "crear framework CSS", "generar estilos", "Fase 9", "guía de estilos", "sistema de diseño"
---

# Skill: Generar Framework CSS LMB

## Propósito

Crear el Framework CSS del proyecto con guía de estilos HTML, archivo CSS y documentación técnica según la metodología LMB.

## Cuándo Usar

- Fase 9 del proyecto (Framework CSS)
- Cuando el Maquetador necesita crear el sistema de estilos
- Después de tener diseno.md y wireframes.md

## Inputs Requeridos

### Obligatorios
- **`docs/diseno.md`**: Paleta de colores, ideas de componentes
- **`docs/wireframes.md`**: Componentes necesarios

## Proceso

### 1. Extraer Valores de Diseño

**De diseno.md obtener**:
- Colores (hex) para variables CSS
- Tipografía (familia, pesos)
- Estilos de componentes (botones, cards)
- Decisiones de espaciado (generoso vs compacto)

### 2. Crear `docs/estilos.css`

**Estructura del archivo**:

```css
/* ============================================
   Framework CSS LMB - [Nombre Proyecto]
   Versión: 1.0.0
   ============================================ */

/* --------------------------------------------
   1. Variables CSS
   -------------------------------------------- */

:root {
  /* Colores base de marca (de diseno.md) */
  --color-primario: #XXXXXX;
  --color-secundario: #XXXXXX;
  --color-atencion: #XXXXXX;
  --color-exito: #XXXXXX;
  --color-error: #XXXXXX;
  --color-info: #XXXXXX;
  --color-neutral: #XXXXXX;
  --blanco: #FFFFFF;
  --negro: #000000;
  
  /* Variantes con color-mix() */
  --color-primario-d: color-mix(in srgb, var(--color-primario) 80%, black);
  --color-primario-l: color-mix(in srgb, var(--color-primario) 80%, white);
  --color-secundario-d: color-mix(in srgb, var(--color-secundario) 80%, black);
  --color-secundario-l: color-mix(in srgb, var(--color-secundario) 80%, white);
  --color-atencion-d: color-mix(in srgb, var(--color-atencion) 80%, black);
  --color-atencion-l: color-mix(in srgb, var(--color-atencion) 80%, white);
  
  /* Degradados */
  --degradado-primario: linear-gradient(to bottom, var(--color-primario), var(--color-primario-d));
  --degradado-secundario: linear-gradient(to bottom, var(--color-secundario), var(--color-secundario-d));
  --degradado-atencion: linear-gradient(to bottom, var(--color-atencion), var(--color-atencion-d));
  --degradado-hero: linear-gradient(135deg, var(--color-primario), var(--color-secundario));
  
  /* Tipografía */
  --fuente-principal: 'Nombre Fuente', sans-serif;
  --peso-fino: 300;
  --peso-normal: 400;
  --peso-grueso: 700;
  --peso-black: 900;
  
  /* Tamaños fluidos con clamp() */
  --texto-xs: clamp(0.75rem, 0.7rem + 0.25vw, 0.875rem);
  --texto-s: clamp(0.875rem, 0.8rem + 0.375vw, 1rem);
  --texto-m: clamp(1rem, 0.95rem + 0.25vw, 1.125rem);
  --texto-l: clamp(1.125rem, 1rem + 0.625vw, 1.5rem);
  --texto-xl: clamp(1.5rem, 1.3rem + 1vw, 2rem);
  --texto-2xl: clamp(2rem, 1.6rem + 2vw, 3rem);
  --texto-3xl: clamp(2.5rem, 2rem + 2.5vw, 4rem);
  --texto-4xl: clamp(3rem, 2.5rem + 3vw, 5rem);
  
  /* Espaciado fluido */
  --espacio-4xs: clamp(0.25rem, 0.2rem + 0.25vw, 0.375rem);
  --espacio-3xs: clamp(0.5rem, 0.45rem + 0.25vw, 0.625rem);
  --espacio-2xs: clamp(0.75rem, 0.7rem + 0.25vw, 0.875rem);
  --espacio-xs: clamp(1rem, 0.95rem + 0.25vw, 1.125rem);
  --espacio-s: clamp(1.5rem, 1.4rem + 0.5vw, 1.75rem);
  --espacio-m: clamp(2rem, 1.85rem + 0.75vw, 2.5rem);
  --espacio-l: clamp(3rem, 2.75rem + 1.25vw, 4rem);
  --espacio-xl: clamp(4rem, 3.5rem + 2.5vw, 6rem);
  --espacio-2xl: clamp(6rem, 5rem + 5vw, 10rem);
  --espacio-3xl: clamp(8rem, 6.5rem + 7.5vw, 14rem);
  --espacio-4xl: clamp(10rem, 8rem + 10vw, 18rem);
  
  /* Otros tokens */
  --radio-s: 0.25rem;
  --radio-m: 0.5rem;
  --radio-l: 1rem;
  --radio-xl: 2rem;
  --radio-full: 9999px;
  
  --sombra-s: 0 1px 3px rgba(0, 0, 0, 0.12);
  --sombra-m: 0 4px 6px rgba(0, 0, 0, 0.15);
  --sombra-l: 0 10px 25px rgba(0, 0, 0, 0.2);
  --sombra-xl: 0 20px 40px rgba(0, 0, 0, 0.25);
  
  --transicion-rapida: 0.15s ease-in-out;
  --transicion-lenta: 0.3s ease-in-out;
  
  --escala-reducir: scale(0.95);
  --escala-aumentar: scale(1.05);
  
  --ancho-caja: min(90%, 1200px);
  --ancho-caja-xl: min(90%, 1400px);
}

/* --------------------------------------------
   2. Reset Básico (opcional)
   -------------------------------------------- */

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: var(--fuente-principal);
  font-size: var(--texto-m);
  line-height: 1.6;
  color: var(--color-neutral);
}

/* --------------------------------------------
   3. Componentes Base
   -------------------------------------------- */

/* Botones CTA */
.boton-cta {
  padding: var(--espacio-xs) var(--espacio-m);
  font-size: var(--texto-m);
  font-weight: var(--peso-grueso);
  border: 2px solid transparent;
  border-radius: var(--radio-full);
  cursor: pointer;
  transition: var(--transicion-rapida);
  text-decoration: none;
  display: inline-block;
}

.boton-cta--principal {
  background: 
    var(--degradado-atencion) padding-box,
    var(--degradado-atencion) border-box;
  background-clip: padding-box, border-box;
  color: white;
}

.boton-cta--principal:hover {
  box-shadow: var(--sombra-m);
  transform: var(--escala-aumentar);
}

.boton-cta--secundario {
  background: white;
  border: 2px solid var(--color-primario);
  color: var(--color-primario);
}

/* Cards con borde degradado (Patrón LMB) */
.card {
  display: flex;
  flex-direction: column;
  gap: var(--espacio-s);
  padding: var(--espacio-m);
  border: 2px solid transparent;
  background: 
    white padding-box,
    var(--degradado-primario) border-box;
  background-clip: padding-box, border-box;
  border-radius: var(--radio-m);
}

.card--l {
  background: 
    var(--color-primario-l) padding-box,
    var(--degradado-primario) border-box;
}

.card--d {
  background: 
    var(--color-primario-d) padding-box,
    var(--degradado-primario) border-box;
  color: white;
}

.card__titulo {
  font-size: var(--texto-l);
  font-weight: var(--peso-grueso);
}

.card__imagen {
  width: 100%;
  height: auto;
  border-radius: var(--radio-s);
}

.card__contenido {
  font-size: var(--texto-m);
  line-height: 1.6;
}

/* Secciones */
.seccion {
  width: 100%;
  padding: var(--espacio-xl) 0;
}

.seccion__contenedor {
  width: var(--ancho-caja);
  margin: 0 auto;
  display: flex;
  flex-direction: column;
  gap: var(--espacio-m);
}

.seccion--encabezado {
  text-align: center;
}

.seccion--tarjeta-izquierda .seccion__contenedor {
  flex-direction: row;
  gap: var(--espacio-l);
}

.seccion--tarjeta-derecha .seccion__contenedor {
  flex-direction: row-reverse;
  gap: var(--espacio-l);
}

.seccion--tarjeta-imagen-fondo {
  position: relative;
  background-size: cover;
  background-position: center;
}

.seccion--tarjeta-imagen-fondo::before {
  content: '';
  position: absolute;
  inset: 0;
  background: rgba(0, 0, 0, 0.5);
  z-index: 1;
}

.seccion--tarjeta-imagen-fondo .seccion__contenedor {
  position: relative;
  z-index: 2;
  color: white;
}

.seccion__titulo {
  font-size: var(--texto-3xl);
  font-weight: var(--peso-black);
}

.seccion__texto {
  font-size: var(--texto-l);
  line-height: 1.6;
}

.seccion__imagen {
  width: 100%;
  max-width: 500px;
  height: auto;
}

/* Iconos */
.icono {
  width: 60px;
  height: 60px;
  display: flex;
  align-items: center;
  justify-content: center;
  border-radius: var(--radio-full);
  background: var(--color-primario);
  color: white;
}

.icono--exito {
  background: var(--color-exito);
}

.icono--error {
  background: var(--color-error);
}

.icono--especial {
  background: var(--degradado-atencion);
}

/* --------------------------------------------
   4. Utilidades
   -------------------------------------------- */

/* Contenedores */
.contenedor-caja {
  width: var(--ancho-caja);
  margin: 0 auto;
}

/* Texto */
.texto-lectura {
  max-width: 65ch;
  line-height: 1.7;
}

.texto-lectura--centrado {
  max-width: 65ch;
  margin: 0 auto;
  text-align: center;
}

/* Grids responsivos */
.grid-s {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(min(200px, 100%), 1fr));
  gap: var(--espacio-m);
}

.grid-m {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(min(300px, 100%), 1fr));
  gap: var(--espacio-l);
}

.grid-l {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(min(400px, 100%), 1fr));
  gap: var(--espacio-xl);
}

.grid-2-col {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(min(50%, 100%), 1fr));
  gap: var(--espacio-l);
}

/* Visibilidad */
.oculto {
  display: none;
}

/* Dimensiones */
.full-width {
  width: 100%;
}

/* --------------------------------------------
   5. Responsive (Mobile First)
   -------------------------------------------- */

@media (max-width: 700px) {
  /* Grids a 1 columna */
  .grid-m,
  .grid-l,
  .grid-xl,
  .grid-2-col {
    grid-template-columns: 1fr;
  }
  
  /* Secciones horizontales a verticales */
  .seccion--tarjeta-izquierda .seccion__contenedor,
  .seccion--tarjeta-derecha .seccion__contenedor {
    flex-direction: column;
  }
  
  /* Reducir transformaciones (performance móvil) */
  .boton-cta--principal:hover {
    transform: none;
  }
  
  /* Ajustar paddings */
  .seccion {
    padding: var(--espacio-l) 0;
  }
  
  /* Reordenar si necesario */
  .seccion__imagen {
    order: -1; /* Imagen primero en móvil */
  }
}
```

### 3. Crear `docs/guia-estilos.html`

**Documento HTML funcional**:

```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Guía de Estilos - [Nombre Proyecto]</title>
    <link rel="stylesheet" href="estilos.css">
    <style>
        /* Estilos solo para la guía */
        body {
            padding: var(--espacio-l);
            max-width: 1400px;
            margin: 0 auto;
        }
        .seccion-guia {
            margin-bottom: var(--espacio-xl);
            padding-bottom: var(--espacio-l);
            border-bottom: 1px solid #eee;
        }
        .color-muestra {
            width: 100px;
            height: 100px;
            border-radius: var(--radio-m);
            display: inline-block;
            margin: var(--espacio-xs);
        }
    </style>
</head>
<body>
    
    <h1>Guía de Estilos - [Nombre Proyecto]</h1>
    <p>Framework CSS LMB - Versión 1.0.0</p>
    
    <!-- Sección 1: Colores -->
    <section class="seccion-guia">
        <h2>1. Paleta de Colores</h2>
        
        <h3>Colores de Marca</h3>
        <div>
            <div class="color-muestra" style="background: var(--color-primario);"></div>
            <p>Primario: var(--color-primario)</p>
            
            <div class="color-muestra" style="background: var(--color-secundario);"></div>
            <p>Secundario: var(--color-secundario)</p>
            
            <div class="color-muestra" style="background: var(--color-atencion);"></div>
            <p>Atención (CTAs): var(--color-atencion)</p>
        </div>
        
        <h3>Variantes</h3>
        <div>
            <div class="color-muestra" style="background: var(--color-primario-d);"></div>
            <p>Primario Dark: var(--color-primario-d)</p>
            
            <div class="color-muestra" style="background: var(--color-primario-l);"></div>
            <p>Primario Light: var(--color-primario-l)</p>
        </div>
    </section>
    
    <!-- Sección 2: Tipografía -->
    <section class="seccion-guia">
        <h2>2. Tipografía</h2>
        
        <p style="font-size: var(--texto-xs);">Texto XS (var(--texto-xs))</p>
        <p style="font-size: var(--texto-s);">Texto S (var(--texto-s))</p>
        <p style="font-size: var(--texto-m);">Texto M (var(--texto-m))</p>
        <p style="font-size: var(--texto-l);">Texto L (var(--texto-l))</p>
        <p style="font-size: var(--texto-xl);">Texto XL (var(--texto-xl))</p>
        <h2 style="font-size: var(--texto-2xl);">Texto 2XL (var(--texto-2xl))</h2>
        <h1 style="font-size: var(--texto-3xl);">Texto 3XL (var(--texto-3xl))</h1>
    </section>
    
    <!-- Sección 3: Botones -->
    <section class="seccion-guia">
        <h2>3. Botones CTA</h2>
        
        <button class="boton-cta boton-cta--principal">Botón Principal</button>
        <button class="boton-cta boton-cta--secundario">Botón Secundario</button>
    </section>
    
    <!-- Sección 4: Cards -->
    <section class="seccion-guia">
        <h2>4. Cards</h2>
        
        <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: var(--espacio-m);">
            
            <div class="card">
                <h3 class="card__titulo">Card Normal</h3>
                <p class="card__contenido">Contenido de ejemplo con borde degradado (patrón LMB).</p>
            </div>
            
            <div class="card card--l">
                <h3 class="card__titulo">Card Clara</h3>
                <p class="card__contenido">Variante clara con fondo primario-light.</p>
            </div>
            
            <div class="card card--d">
                <h3 class="card__titulo">Card Oscura</h3>
                <p class="card__contenido">Variante oscura con fondo primario-dark.</p>
            </div>
            
        </div>
    </section>
    
    <!-- Sección 5: Iconos -->
    <section class="seccion-guia">
        <h2>5. Iconos</h2>
        
        <div class="icono">✓</div>
        <div class="icono icono--exito">✓</div>
        <div class="icono icono--error">✗</div>
        <div class="icono icono--especial">★</div>
    </section>
    
    <!-- Sección 6: Grids -->
    <section class="seccion-guia">
        <h2>6. Grids Responsivos</h2>
        
        <h3>Grid S (200px mínimo)</h3>
        <div class="grid-s">
            <div class="card"><p>Item 1</p></div>
            <div class="card"><p>Item 2</p></div>
            <div class="card"><p>Item 3</p></div>
            <div class="card"><p>Item 4</p></div>
        </div>
        
        <h3>Grid M (300px mínimo)</h3>
        <div class="grid-m">
            <div class="card"><p>Item 1</p></div>
            <div class="card"><p>Item 2</p></div>
            <div class="card"><p>Item 3</p></div>
        </div>
    </section>
    
    <!-- Sección 7: Secciones -->
    <section class="seccion-guia">
        <h2>7. Secciones (Ejemplos)</h2>
        <p>Ver en página real implementada</p>
    </section>
    
</body>
</html>
```

### 4. Crear `docs/framework-css.md`

**Documentación técnica**:

```markdown
---
tipo: documentacion
estado: vigente
fase: framework-css
version: 1
responsable: maquetador
creado: YYYY-MM-DD
---

# Framework CSS LMB - [Nombre Proyecto]

## Nomenclatura (BEM Modificada en Español)

### Estructura de Nombres
- **Bloques**: `seccion`, `boton`, `card`, `icono`
- **Elementos**: `__` doble guion bajo (`card__titulo`)
- **Modificadores**: `--` doble guion (`card--l`, `card--d`)
- **Variantes**: `-l` (light), `-d` (dark), `-xl`, `-s`

### Ejemplos
```css
.card { }                /* Bloque base */
.card__titulo { }        /* Elemento */
.card--l { }             /* Modificador: variante clara */
.card--d { }             /* Modificador: variante oscura */
```

---

## Variables CSS Disponibles

### Colores
- `--color-primario`, `--color-primario-d`, `--color-primario-l`
- `--color-secundario`, `--color-secundario-d`, `--color-secundario-l`
- `--color-atencion` (CTAs)
- `--color-exito`, `--color-error`, `--color-info`
- `--blanco`, `--negro`, `--color-neutral`

### Degradados
- `--degradado-primario`
- `--degradado-secundario`
- `--degradado-atencion`
- `--degradado-hero`

### Tipografía
- Tamaños: `--texto-xs` hasta `--texto-4xl`
- Pesos: `--peso-fino` (300) hasta `--peso-black` (900)

### Espaciado
- `--espacio-4xs` hasta `--espacio-4xl`

### Otros
- Radios: `--radio-s` hasta `--radio-full`
- Sombras: `--sombra-s` hasta `--sombra-xl`
- Transiciones: `--transicion-rapida`, `--transicion-lenta`

---

## Componentes Disponibles

### Botones
- `.boton-cta` (base)
- `.boton-cta--principal` (degradado)
- `.boton-cta--secundario` (outlined)

### Cards
- `.card` (base con borde degradado)
- `.card--l` (variante clara)
- `.card--d` (variante oscura)
- Elementos: `.card__titulo`, `.card__imagen`, `.card__contenido`

### Secciones
- `.seccion` (base)
- `.seccion__contenedor` (ancho máximo centrado)
- Modificadores: `--encabezado`, `--tarjeta-izquierda`, `--tarjeta-derecha`, `--tarjeta-imagen-fondo`

### Grids
- `.grid-s`, `.grid-m`, `.grid-l`, `.grid-2-col`

---

## Patrones Técnicos LMB

### 1. Borde Degradado
```css
.elemento {
  border: 2px solid transparent;
  background: 
    [color-fondo] padding-box,
    var(--degradado-X) border-box;
  background-clip: padding-box, border-box;
}
```

### 2. Overlay en Imagen de Fondo
```css
.elemento::before {
  content: '';
  position: absolute;
  inset: 0;
  background: rgba(0, 0, 0, 0.5);
  z-index: 1;
}
.contenido {
  position: relative;
  z-index: 2;
}
```

### 3. Spacing Fluido
Usar siempre variables, nunca valores fijos:
```css
padding: var(--espacio-m); /* ✅ */
padding: 20px; /* ❌ */
```

---

## Responsive

**Breakpoint principal**: 700px (Mobile First)

**Comportamiento**:
- Grids colapsan a 1 columna
- Layouts horizontales pasan a verticales
- Transformaciones reducidas (performance)
```

---

## Output Esperado

**3 Archivos**:
1. **`docs/estilos.css`**: Framework CSS completo
2. **`docs/guia-estilos.html`**: Guía visual interactiva
3. **`docs/framework-css.md`**: Documentación técnica

---

## Criterios de Validación

- [ ] **Variables CSS definidas** (colores, tipografía, espaciado)
- [ ] **Componentes base creados** (botón, card, sección, icono)
- [ ] **Utilidades disponibles** (grids, contenedores, texto)
- [ ] **Sistema responsive** (breakpoint 700px)
- [ ] **Guía HTML funcional** (muestra todos los componentes)
- [ ] **Documentación técnica** (framework-css.md completo)

---

## Errores Comunes

### ❌ Valores Hardcodeados
**Mal**:
```css
.boton {
  color: #3498db;
  padding: 16px 32px;
}
```

**Bien**:
```css
.boton {
  color: var(--color-primario);
  padding: var(--espacio-xs) var(--espacio-m);
}
```

---

## Notas

- Esta skill es ejecutada por el **Maquetador**
- El Framework CSS será usado en Fase 10 (Maquetación)
- Todos los componentes deben estar en la guía de estilos
