---
nombre: definir-stack
familia: produccion
control: autonoma
activacion: "definir stack", "elegir stack", "Fase 4", "decidir tecnología", "builder o tema"
---

# Skill: Definir Stack

## Propósito

Decidir el stack tecnológico del proyecto (builder/tema + plugins) aplicando reglas obligatorias, especialmente la regla de WooCommerce para negocios transaccionales.

## Cuándo Usar

- Fase 4 del proyecto (Definición de stack)
- Cuando el Implementador necesita decidir tecnologías
- Después de tener estrategia, planificación y wireframes

## Inputs Requeridos

### Obligatorios
- **`docs/estrategia.md`**: ¿Es transaccional? ¿Qué ofrece?
- **`docs/planificacion-urls.csv`**: Número de templates, complejidad
- **`docs/wireframes.md`**: Componentes visuales, interacciones

## Proceso

### 1. Analizar Artefactos de Entrada

**De estrategia.md extraer**:
```
¿Es negocio transaccional? (venta con pago)
  → SÍ: WooCommerce OBLIGATORIO ✅
  → NO: Sin WooCommerce

¿Qué ofrece?
  → Productos físicos: WooCommerce
  → Servicios: Evaluar builder vs custom
  → Contenido digital: Evaluar EDD vs WooCommerce
  → Membresías: Evaluar MemberPress/Restrict Content Pro
  → Cursos: Evaluar LearnDash
  → Reservas: Evaluar Amelia/Bookly
```

**De planificacion-urls.csv extraer**:
```
Número de templates únicos: [XX]
  → Muchos (>10): Considerar builder (velocidad)
  → Pocos (<5): Tema custom viable

Complejidad de URLs:
  → Ecommerce URLs: WooCommerce ✅
  → URLs simples: Tema custom o builder
  → URLs complejas con filtros: JetEngine + Builder
```

**De wireframes.md extraer**:
```
Componentes complejos:
  → Muchas interacciones: Evaluar JavaScript custom
  → Componentes estándar: Builder suficiente
  → Diseño muy custom: Tema a medida
```

### 2. Decisión 1: Builder/Tema

**Matriz de decisión**:

| Criterio | Elementor PRO | Bricks | Tema Custom |
|----------|---------------|--------|-------------|
| Timeline corto | ✅ Rápido | ⚠️ Medio | ❌ Lento |
| Presupuesto bajo | ✅ | ✅ | ❌ |
| Control código | ❌ Bajo | ✅ Alto | ✅ Máximo |
| Performance | ❌ Regular | ✅ Bueno | ✅ Excelente |
| Accesibilidad | ⚠️ Requiere trabajo | ✅ Nativa | ✅ Total control |
| Curva aprendizaje | ✅ Fácil | ⚠️ Media | ❌ Alta |

**Factores de decisión**:
- Presupuesto del cliente
- Timeline del proyecto
- Complejidad de diseño (de wireframes)
- Requisitos de performance
- Experiencia del equipo

**Decisión final**: [Elegir UNA opción]

**Justificación**: [Por qué esta elección según el proyecto]

### 3. Decisión 2: Gestión de CPT/CCT

**Si SIN builder** (tema custom):
- Plugin propio lleva CPTs, taxonomías, campos
- Código PHP puro o ACF

**Si CON builder** (Elementor/Bricks):
- **JetEngine OBLIGATORIO** para:
  - CPTs
  - CCTs (tablas)
  - Meta Fields
  - Taxonomías
  - Relaciones
  - Queries
- Plugin propio solo para hooks/integraciones

### 4. Decisión 3: Plugin Propio (OBLIGATORIO)

**Nomenclatura**:
```
Proyecto: Inmobiliaria Costa Brava
Plugin: inmobiliaria-costabrava-custom

Proyecto: TechStartup
Plugin: lmb-techstartup-custom
```

**Funcionalidades** (según negocio):
- Hooks de WooCommerce (si aplica)
- Shortcodes personalizados
- Integraciones con APIs
- Cálculos custom
- Funcionalidades que plugins no cubren

### 5. Decisión 4: Regla WooCommerce (CRÍTICA)

**⚠️ VERIFICAR EN ESTRATEGIA.MD**

**Buscar indicadores**:
```
Palabras clave en estrategia.md:
- "venta de productos"
- "ecommerce"
- "tienda online"
- "compra con pago"
- "checkout"
- "carrito"
- "pasarela de pago"

SI encuentra alguna → ES TRANSACCIONAL
```

**Si es TRANSACCIONAL**:
```markdown
## WooCommerce

**Decisión**: ✅ Incluir WooCommerce

**Justificación**: 
El negocio es transaccional (venta de [productos/servicios] con pago online).
WooCommerce proporciona ecosistema maduro para:
- Gestión de productos y stock
- Pasarelas de pago integradas
- Facturas y documentos fiscales
- Informes de ventas
- Variaciones de productos
- Gestión de pedidos

**Plugins complementarios de WooCommerce**:
- [Lista según necesidades del proyecto]
```

**Si NO es transaccional**:
```markdown
## WooCommerce

**Decisión**: ❌ No aplica

**Justificación**:
El negocio NO es transaccional. Se enfoca en [generación de leads / contenido educativo / portfolio].
No requiere sistema de ecommerce.
```

**Excepción (contenido digital puro)**:
```markdown
## Sistema de Venta

**Decisión**: Easy Digital Downloads (EDD)

**Justificación**:
El negocio vende contenido digital puro (cursos, ebooks, descargas).
EDD es más apropiado que WooCommerce para:
- Descargas digitales
- Licencias de software
- Gestión de archivos

WooCommerce descartado porque está optimizado para productos físicos.
```

### 6. Seleccionar Plugins Complementarios

**SOLO los estrictamente necesarios**:

**Por funcionalidad** (según proyecto):
- Formularios: JetFormBuilder / Gravity Forms / WPForms / CF7
- Seguridad: Wordfence / WP Cerber / iThemes
- WPO: LiteSpeed Cache / WP Rocket / Perfmatters
- SEO: Yoast / RankMath (si no tiene SEO propio)
- Multiidioma: Polylang / WPML (si aplica)
- Reservas: Amelia / Bookly (si aplica)
- LMS: LearnDash (si cursos)

**NO instalar "por si acaso"**.

**Verificar**:
- Compatibilidad entre plugins
- Versiones actualizadas
- Licencias disponibles (si premium)

### 7. Crear Documento stack.md

**Estructura completa**:

```markdown
---
tipo: stack
estado: vigente
fase: stack
version: 1
responsable: implementador
creado: YYYY-MM-DD
ultima_revision: YYYY-MM-DD
validado_por: null
validado_en: null
impactado_por_evento: false
---

# Stack Tecnológico - [Nombre Proyecto]

## Análisis del Proyecto

### Resumen Estratégico
[Qué ofrece, si es transaccional, audiencia principal]

### Análisis de Planificación
[Número de templates, complejidad de URLs]

### Análisis de Wireframes
[Componentes necesarios, interacciones]

---

## Decisiones de Stack

### 1. Builder/Tema
**Decisión**: [Elementor PRO / Bricks / Tema custom]

**Justificación**:
[Razones específicas del proyecto]

**Ventajas para este proyecto**:
- [Ventaja 1]
- [Ventaja 2]

**Desventajas aceptadas**:
- [Desventaja 1 pero es aceptable porque...]

---

### 2. Gestión de CPT/CCT
**Decisión**: [JetEngine / Código propio vía plugin]

**Justificación**:
[Si builder: JetEngine gestiona CPTs/campos]
[Si tema custom: Código propio en plugin]

---

### 3. Plugin Propio
**Nombre**: `[nombre-proyecto]-custom`

**Funcionalidades que incluirá**:
- [Funcionalidad 1]
- [Funcionalidad 2]
- [Funcionalidad 3]

**Justificación**:
[Por qué estas funcionalidades van en plugin propio]

---

### 4. WooCommerce
**Decisión**: [✅ Incluir / ❌ No aplica / ⚠️ EDD alternativa]

**Justificación**:
[Si transaccional: DEBE incluir WooCommerce]
[Si NO transaccional: Explicar por qué no]
[Si EDD: Justificar por qué EDD en vez de WooCommerce]

---

## Plugins Seleccionados

### Core
- WordPress [última versión estable]
- [Builder/Tema elegido] [versión]
- Plugin propio custom

### Funcionalidad Principal
[Lista de plugins con justificación de cada uno]

### Ecommerce (si aplica)
- WooCommerce [versión]
- [Plugins complementarios WooCommerce]

### Formularios
[Plugin elegido con justificación]

### Seguridad
[Plugin elegido con justificación]

### Optimización
[Plugin elegido con justificación]

### Otros
[Solo si estrictamente necesarios]

---

## Integraciones Externas

### Pasarelas de Pago (si aplica)
- [Stripe / PayPal / Redsys / etc.]

### APIs
- [CRM: HubSpot / Salesforce / etc.]
- [Email marketing: Mailchimp / SendGrid / etc.]
- [Analytics: Google Analytics / etc.]

### Automatizaciones
- [Zapier / Make / n8n / ninguna]

---

## Consideraciones Técnicas

**Hosting recomendado**:
[Si requiere específico: LiteSpeed, etc.]

**Requisitos del servidor**:
- PHP ≥ 8.0
- MySQL ≥ 5.7
- HTTPS obligatorio
- [Otros requisitos]

**Compatibilidad**:
[Notas sobre compatibilidad entre plugins]

---

## Justificación de Decisiones

[Explicación de por qué este stack es el óptimo para ESTE proyecto específico]
```

---

## Output Esperado

**Documento**: `docs/stack.md`

**Decisiones documentadas**:
- Builder/tema elegido con justificación
- Sistema de CPT/CCT (JetEngine o código)
- Plugin propio con funcionalidades definidas
- WooCommerce (sí/no/alternativa) con justificación
- Lista de plugins complementarios necesarios
- Integraciones externas

---

## Criterios de Validación

- [ ] **Stack elegido justificado** (no "porque sí")
- [ ] **Si transaccional, WooCommerce incluido** (o EDD justificado)
- [ ] **Plugin propio definido** (nombre y funcionalidades)
- [ ] **Sistema CPT/CCT claro** (JetEngine o código)
- [ ] **Plugins listados con justificación** (no solo lista)
- [ ] **Integraciones documentadas** (si aplican)

---

## Errores Comunes

### ❌ Olvidar Regla WooCommerce
**Mal**:
```
Proyecto: Tienda online de productos
Stack:
- Bricks
- JetEngine
[WooCommerce no mencionado] ❌
```

**Bien**:
```
Proyecto: Tienda online de productos
→ Es TRANSACCIONAL (venta con pago)
Stack:
- Bricks (builder)
- WooCommerce ✅ (OBLIGATORIO para transaccional)
- JetEngine (para CPTs adicionales si necesarios)
```

### ❌ Lista de Plugins Sin Justificar
**Mal**:
```
Plugins:
- Contact Form 7
- Yoast SEO
- Wordfence
- WP Rocket
[Sin explicar por qué cada uno]
```

**Bien**:
```
Plugins:
- JetFormBuilder: Formularios integrados con JetEngine, permite lógica condicional necesaria para formulario de presupuesto
- Wordfence: Seguridad, firewall y scanner de malware
- LiteSpeed Cache: El servidor del cliente es LiteSpeed, máximo rendimiento
[Cada uno justificado según proyecto]
```

---

## Notas

- Esta skill es ejecutada por el **Implementador**
- Las decisiones de stack condicionan el resto del desarrollo
- Especialmente crítica la regla de WooCommerce para transaccionales
