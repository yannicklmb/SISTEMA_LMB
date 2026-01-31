---
nombre: generar-informe-diseno
familia: produccion
control: autonoma
activacion: "crear diseño", "generar diseño", "Fase 6", "paleta de colores", "decisiones visuales"
---

# Skill: Generar Informe de Diseño

## Propósito

Crear el documento `docs/diseno.md` con paleta completa, proporciones de color, recomendaciones de multimedia y diferenciación visual.

## Cuándo Usar

- Fase 6 del proyecto (Diseño)
- Cuando el Diseñador necesita definir identidad visual
- Después de tener estrategia y wireframes

## Inputs Requeridos

### Obligatorios
- **`docs/estrategia.md`**: Perfiles de audiencia, competencia
- **`docs/wireframes.md`**: Componentes visuales necesarios

### Opcionales
- Colores de marca existentes (si el cliente ya tiene)
- Material de marca (logo, manual de identidad)

## Proceso

### 1. Analizar Audiencia y Competencia

**De estrategia.md**:
```
Perfiles de audiencia:
- Perfil 1: [Edad, nivel socioeconómico, industria]
  → Emociones a transmitir: [Confianza, innovación, etc.]
  → Colores asociados: [Análisis psicológico]

Competidores:
- Competidor 1: [Visitar web, analizar paleta]
- Competidor 2: [Visitar web, analizar paleta]
- Competidor 3: [Visitar web, analizar paleta]

Oportunidad de diferenciación:
- Todos usan [azul corporativo]
- Podemos diferenciarnos con [otro color] que transmite [emoción]
```

### 2. Definir Paleta de Colores

**8 colores mínimo con tabla completa**:

```markdown
## Paleta de Colores

| Color | Uso | Hex | RGB | Proporción | Contraste c/Blanco |
|-------|-----|-----|-----|------------|-------------------|
| Primario | Identidad principal | #2C5F8D | rgb(44,95,141) | 60% | 7.2:1 ✅ |
| Secundario | Apoyo visual | #E8952A | rgb(232,149,42) | 30% | 4.8:1 ✅ |
| Atención | CTAs | #D9534F | rgb(217,83,79) | 10% | 5.1:1 ✅ |
| Éxito | Mensajes positivos | #5CB85C | rgb(92,184,92) | Puntual | 4.6:1 ✅ |
| Error | Mensajes error | #D9534F | rgb(217,83,79) | Puntual | 5.1:1 ✅ |
| Info | Información neutral | #5BC0DE | rgb(91,192,222) | Puntual | 3.9:1 ⚠️ |
| Neutral oscuro | Textos | #333333 | rgb(51,51,51) | - | 12.6:1 ✅ |
| Neutral claro | Fondos | #F5F5F5 | rgb(245,245,245) | - | 1.1:1 N/A |
```

**Validar contraste WCAG AA**:
- Texto normal: ≥ 4.5:1 ✅
- Texto grande: ≥ 3:1 ✅
- UI/iconos: ≥ 3:1 ✅

**Herramientas**:
- WebAIM Contrast Checker
- Coolors Contrast Checker

**Si no cumple**: Ajustar luminosidad hasta cumplir.

### 3. Justificar Decisiones de Color

```markdown
## Psicología del Color

### Análisis de Audiencia

**Perfil principal**: [Ejecutivo Senior 45-55 años]
**Emociones a transmitir**: Confianza, profesionalidad, experiencia

**Color primario elegido**: Azul oscuro (#2C5F8D)
**Justificación**:
- Azul transmite confianza y profesionalidad (apropiado para B2B)
- Tono oscuro (no azul claro) transmite seriedad y experiencia
- Audiencia senior valora colores sobrios

**Color secundario elegido**: Naranja (#E8952A)
**Justificación**:
- Complementa al azul (contraste cálido/frío)
- Aporta energía sin ser agresivo
- Ningún competidor directo usa naranja (diferenciación)

### Análisis de Competencia

**Competidor 1**: [Nombre] - Azul claro (#3498DB) + Gris
**Competidor 2**: [Nombre] - Verde (#27AE60) + Blanco
**Competidor 3**: [Nombre] - Rojo (#E74C3C) + Negro

**Nuestra diferenciación**:
Azul oscuro profesional + Naranja energético
Ningún competidor usa esta combinación
```

### 4. Proporciones de Uso

```markdown
## Proporciones Recomendadas

**Regla 60/30/10**:
- 60% Color primario (identidad, headers, footers, elementos principales)
- 30% Color secundario (apoyo, secciones alternas, detalles)
- 10% Color atención (CTAs, elementos destacados)

**Colores funcionales**: Uso puntual según necesidad
**Neutrales**: Textos y fondos (no cuentan en proporción)
```

### 5. Ideas de Componentes

**Basado en wireframes.md**:

```markdown
## Ideas de Componentes

### Botones
- **Estilo principal**: Pill (border-radius: 9999px)
- **Variante secundaria**: Outlined (borde, fondo blanco)
- **Hover**: Box-shadow + scale(1.05)
- **Degradado**: Sí, en botón principal (atención → atención-dark)
- **Borde degradado**: Sí, usando patrón LMB

### Cards
- **Estilo**: Bordes degradados (patrón LMB)
- **Elevación**: Sombra suave en hover
- **Variantes**:
  - Clara: Fondo primario-light
  - Oscura: Fondo primario-dark, texto blanco
  - Neutra: Fondo blanco, borde degradado
- **Espaciado**: Generoso (padding: var(--espacio-m))

### Secciones
- **Alternancia**: Blanco → Gris claro (separación visual)
- **Hero**: Imagen de fondo con overlay oscuro
- **Padding**: Generoso vertical (var(--espacio-xl))

### Iconografía
- **Estilo**: Line icons (outline)
- **Librería**: Feather Icons / Heroicons / Custom
- **Color**: Primario para iconos principales
- **Fondo**: Círculo con color + icono blanco
```

### 6. Diferenciación Visual

```markdown
## Diferenciación Visual vs Competencia

### Competencia Visual

**Competidor 1**:
- Paleta: Azul claro + Gris
- Multimedia: Fotografía stock corporativa
- Estilo: Diseño sobrio, tradicional

**Competidor 2**:
- Paleta: Verde + Blanco
- Multimedia: Ilustraciones flat
- Estilo: Minimalista moderno

**Competidor 3**:
- Paleta: Rojo + Negro
- Multimedia: Fotografía propia, estilo agresivo
- Estilo: Corporativo serio

### Nuestra Propuesta de Diferenciación

**Paleta única**: Azul oscuro + Naranja (no usada por competencia)
**Multimedia**: [Ilustración vectorial personalizada / Fotografía natural propia]
**Estilo**: [Profesional pero cercano / Moderno y accesible]

**Elementos únicos**:
- Patrón de bordes degradados (marca LMB)
- Iconografía custom con estilo coherente
- [Otro elemento distintivo]

**Justificación**:
Nos diferencia visualmente mientras mantenemos profesionalidad requerida por audiencia B2B senior.
```

### 7. Recomendaciones de Multimedia

**Decisión: Ilustración vs Fotografía**

```markdown
## Multimedia

### Decisión Principal
[Fotografía propia / Ilustración vectorial / Mix de ambos]

### Justificación
**Audiencia**: [Perfil principal] responde mejor a [tipo] porque [razón]
**Presupuesto**: [Disponibilidad de fotógrafo / ilustrador / banco stock]
**Competencia**: [Usan X, nos diferenciamos con Y]
**Tipo de negocio**: [Servicios abstractos favorecen ilustración / Productos físicos requieren foto]

### Estilo Visual
[Realista / Minimalista / Vectorial / Flat / Material / 3D]

### Especificaciones Técnicas

**Formato**:
- Fotografías: WebP (optimización)
- Ilustraciones: SVG (escalabilidad)
- Iconos: SVG

**Dimensiones**:
- Hero: 1920x800px (desktop), 800x600px (mobile)
- Contenido: 1200x800px
- Thumbnails: 600x400px
- Iconos: 64x64px o SVG

**Peso máximo**:
- Hero: < 300KB (WebP comprimido)
- Contenido: < 200KB
- Iconos: < 50KB o SVG

**Estilo fotográfico** (si fotografía):
- Luz natural
- Fondos limpios
- Personas reales (no modelos obvios)
- Tratamiento: Filtro sutil con tonalidad primaria

**Estilo ilustrativo** (si ilustración):
- Vectorial flat
- Paleta de colores de marca
- Personajes inclusivos
- Proveedor: unDraw / Storyset / Custom
```

---

## Output Esperado

**Documento**: `docs/diseno.md`

**Secciones**:
1. Psicología del color (análisis de audiencia y competencia)
2. Paleta de colores (tabla completa con 8+ colores)
3. Proporciones de uso (60/30/10 o justificado)
4. Ideas de componentes (botones, cards, secciones, iconos)
5. Diferenciación visual (vs competencia)
6. Recomendaciones de multimedia (tipo, estilo, especificaciones)

---

## Criterios de Validación

- [ ] **Paleta completa** (6+ colores con hex y RGB)
- [ ] **Proporciones documentadas** (60/30/10 o justificado)
- [ ] **Contraste WCAG AA verificado** (tabla con ratios)
- [ ] **Decisiones basadas en audiencia** (referenciando estrategia.md)
- [ ] **Diferenciación vs competencia** argumentada
- [ ] **Recomendaciones multimedia completas** (tipo, estilo, formato, dimensiones)
- [ ] **Ideas de componentes** (basadas en wireframes.md)

---

## Errores Comunes

### ❌ Paleta Sin Justificación
**Mal**:
```
Primario: #3498DB
Secundario: #2ECC71
[Sin explicar por qué]
```

**Bien**:
```
Primario: #2C5F8D (azul corporativo oscuro)
Justificación: Audiencia B2B senior valora confianza. Azul oscuro transmite profesionalidad. Competencia usa azules claros, nos diferenciamos con tono profundo.

Secundario: #E8952A (naranja)
Justificación: Complementa al azul, aporta energía. Ningún competidor usa naranja (oportunidad de diferenciación).
```

### ❌ Contraste No Verificado
**Mal**:
```
Definir paleta sin verificar accesibilidad
```

**Bien**:
```
Tabla de verificación:
| Fondo | Texto | Ratio | WCAG AA |
|-------|-------|-------|---------|
| #2C5F8D | #FFFFFF | 7.2:1 | ✅ |
| #E8952A | #FFFFFF | 3.8:1 | ❌ Falla |

Acción: Oscurecer a #D67A1A (ratio 4.6:1) ✅
```

---

## Notas

- Esta skill es ejecutada por el **Diseñador**
- Las decisiones visuales deben basarse en audiencia, no en gustos personales
- La paleta será implementada en CSS por el Maquetador
