---
tipo: especificacion-sistema
rol: fuente-de-verdad
editable: false
version: 1.0.0
---

# SISTEMA LMB (Template clonable)

## Producción agéntica para proyectos WordPress a medida — Especificación profesional

Este documento define un **TEMPLATE clonable** para iniciar proyectos web en WordPress bajo la metodología de La Máquina del Branding (LMB).

- En el TEMPLATE **no se incluyen datos de clientes**.
- Al clonar el TEMPLATE, en el **PROYECTO CLON** se ejecutan las fases, se rellenan documentos y se construye la web.

**Plataforma**: WordPress  
**Despliegue**: FTP  
**Modelo**: Agentes + Skills + Artefactos (documentos)  
**Interlocutor principal**: Jefe de Proyectos (Orquestador)

---

## ⚠️ IMPORTANTE: Cómo leer este documento

### Elementos PRESCRIPTIVOS (OBLIGATORIOS)

Aparecen como:
- "DEBE", "SIEMPRE", "NUNCA", "OBLIGATORIO", "CRÍTICO"
- Secciones tituladas "Reglas obligatorias"
- Criterios de validación
- Principios operativos

**Ejemplo prescriptivo:**
> "El sistema SIEMPRE debe crear un roadmap.md"  
> "NUNCA se borra trabajo previo"  
> "OBLIGATORIO: Mínimo 3 perfiles de audiencia"

**Estos elementos NO son negociables** y aplican a TODOS los proyectos.

---

### Elementos ILUSTRATIVOS (EJEMPLOS)

Aparecen como:
- "por ejemplo", "como", "tal como", "ejemplos:", "ilustrativo"
- Tablas con encabezado "Ejemplo ilustrativo"
- Entre corchetes `[nombre-variable]` indicando que es variable por proyecto
- Secciones "Ejemplo de proyecto..."

**Ejemplo ilustrativo:**
> "Por ejemplo, un CPT `[tipo-entidad]` podría ser: `servicio` en una consultoría, `propiedad` en una inmobiliaria, o `clase` en una escuela de yoga"

**Estos elementos son ORIENTATIVOS**. Cada proyecto tendrá sus propias entidades, campos y estructura según su negocio específico.

---

### Variables de proyecto

Los elementos que **VARÍAN por proyecto** aparecen entre corchetes:
- `[nombre-cpt]` → variable, depende del proyecto
- `[tipo-entidad]` → variable, depende del negocio
- `[slug-personalizado]` → variable, según nomenclatura del cliente

**Ejemplos concretos** (como "servicio", "caso-exito", "producto") son **solo ilustrativos**.

---

### ⚠️ ADVERTENCIA CRÍTICA PARA LOS AGENTES

**LA IA DEBE ANALIZAR CADA PROYECTO Y DECIDIR** qué entidades crear según:
- La estrategia del cliente (qué ofrece el negocio)
- Los servicios/productos reales del negocio
- La planificación de URLs (qué páginas necesita)
- Los wireframes (qué bloques de contenido existen)

**LA IA NO DEBE ASUMIR** que todo proyecto tiene:
- CPT "servicio"
- CPT "caso-exito"
- Taxonomía "categoria"
- Relación "servicio → casos"

**Cada proyecto es ÚNICO**. Los agentes deben:
1. **Leer** los artefactos del proyecto específico
2. **Identificar** las entidades reales que necesita
3. **Nombrar** según el vocabulario del negocio del cliente
4. **Justificar** cada decisión con base en artefactos
5. **Preguntar** al Jefe de Proyectos ante ambigüedades

---

## 1) Principios operativos del sistema

### 1.1 Template vs Proyecto Clon

**TEMPLATE (este repositorio):**
- Agentes, skills, principios, plantillas, estructura de carpetas y "contratos" de artefactos
- Sin datos reales de clientes
- **Reutilizable** para múltiples proyectos

**PROYECTO CLON (por cliente):**
- Datos del negocio específico
- Decisiones tomadas para ese cliente
- Artefactos vivos (estrategia.md, arquitectura.md, etc.)
- Implementación WordPress con código
- Roadmap en ejecución

---

### 1.2 Artefactos como fuente de verdad

El sistema se basa en **outputs documentados**.

Los agentes:
- **Leen** artefactos existentes
- **Generan** nuevos artefactos
- **Actualizan** artefactos cuando corresponda
- **Validan** coherencia entre artefactos

**Ejemplos de artefactos** (pueden variar por proyecto):
- `docs/estrategia.md`
- `docs/planificacion-urls.csv`
- `docs/wireframes.md`
- `docs/stack.md`
- `docs/arquitectura.md`
- `docs/diseno.md`
- `docs/contenidos.md`
- `docs/guia-estilos.html` + `docs/estilos.css`
- `docs/reporte-seguridad.md`
- `docs/reporte-wpo.md`
- `docs/testing/plan.md`, `docs/testing/checklist.md`, `docs/testing/reportes/*.md`, `docs/testing/bugs.md`

**Cada artefacto debe incluir frontmatter estándar:**

```yaml
---
tipo: estrategia | planificacion | arquitectura | wireframe | diseno | contenido | testing
estado: vigente | requiere_revision | obsoleto_parcial | archivado
fase: [nombre-fase]
version: 1
responsable: [nombre-rol]
creado: YYYY-MM-DD
ultima_revision: YYYY-MM-DD
validado_por: jefe-proyectos
validado_en: YYYY-MM-DD | null
impactado_por_evento: true | false
---
```

---

### 1.3 Orquestación centralizada (modelo realista y controlable)

Se mantiene la ambición de "sistema reactivo", pero con un diseño **profesional y controlable**:

**El Jefe de Proyectos es el único responsable de:**
- Decidir orden de ejecución de fases
- Validar entregables de cada agente
- Actualizar el roadmap
- Gestionar cambios/eventos con análisis de impacto
- Dirigir replanificación cuando sea necesaria

**Los agentes especialistas:**
- Ejecutan su fase/tarea asignada
- **Pueden detectar** impactos o incoherencias
- **Pueden avisar** al Jefe de Proyectos
- **NO re-orquestan** por su cuenta (evita caos y contradicciones)
- **NO toman decisiones** que afecten a otras fases sin aprobación

**Regla de oro**: Un agente que detecta un problema AVISA, no lo resuelve unilateralmente.

---

### 1.4 Roadmap vivo + Eventos (cambios de negocio)

Existe `roadmap.md` como **estado del sistema**:
- Fases, tareas, dependencias
- Estado (pendiente/en_curso/completa/bloqueada)
- Historial de eventos
- Métricas de progreso

**Eventos**: cambios de negocio o alcance que ocurren durante el proyecto.

**Ejemplos de eventos**:
- Añadir nuevo servicio/producto a mitad de proyecto
- Cambio en público objetivo
- Nueva integración técnica requerida
- Cambio en stack tecnológico

**Flujo de gestión de eventos (OBLIGATORIO)**:

1. **Usuario comunica evento** al Jefe de Proyectos
2. **Jefe de Proyectos registra evento** en roadmap
3. **Jefe de Proyectos analiza impacto** (usando skill correspondiente)
4. **Artefactos afectados se marcan** como "requiere_revision"
5. **Fases afectadas se re-ejecutan** en el orden correcto de dependencias
6. **Roadmap se actualiza** con nueva planificación

**Regla CRÍTICA**: **NO se borra trabajo previo**. Se marca obsolescencia parcial y se itera sobre lo existente.

---

### 1.5 Métricas y control de calidad del sistema

**Métricas por fase** (orientativas, ajustar según proyecto):

| Fase | Métrica clave | Umbral mínimo |
|------|---------------|---------------|
| Estrategia | Perfiles de audiencia completos | ≥ 3 perfiles, 100% campos |
| Planificación | Ratio keywords/URLs | ≥ 1.5:1 |
| Planificación | Cobertura de intenciones | 100% servicios con URL |
| Arquitectura | Ratio campos/content | ≥ 80/20 |
| Arquitectura | Relaciones documentadas | 100% |
| Diseño | Contraste WCAG AA | ≥ 4.5:1 texto, ≥ 3:1 UI |
| WPO | LCP (Largest Contentful Paint) | < 2.5s |
| WPO | FID (First Input Delay) | < 100ms |
| WPO | CLS (Cumulative Layout Shift) | < 0.1 |
| Testing | Cobertura de tests | ≥ 95% |
| Testing | Bugs críticos | 0 |
| Testing | Bugs altos | 0 |

**Indicadores de salud del proyecto**:
- % de artefactos vigentes vs requieren revisión
- Número de dependencias bloqueadas
- Deuda técnica acumulada
- Desviación tiempo real vs estimado por fase

---

## 2) Fases del sistema (con outputs esperados)

### Fase 0 — Setup del proyecto

**Objetivo**: Preparar el entorno técnico básico.

**Acciones**:
- Conexión FTP configurada
- Instalación de WordPress
- Activar modo "próximamente" (coming soon)
- Configurar robots.txt para disuadir motores de búsqueda (noindex/discourage search engines)

**Artefactos**:
- `docs/setup.md` (registro de decisiones técnicas, SIN credenciales sensibles)
- `roadmap.md` actualizado

**Responsable**: Implementador

---

### Fase 1 — Estrategia

**Objetivo**: Definir el corazón del negocio y del mensaje.

**Incluye (campos OBLIGATORIOS)**:

**1. Datos principales del negocio:**
- Nombre comercial
- Colores de marca (primario, secundario)
- Propuesta de valor única
- Misión/visión (opcional pero recomendado)

**2. Objetivos del negocio:**
- Objetivos principales (ej: generar leads, vender productos, educar)
- KPIs esperados (ej: conversiones/mes, ventas, suscriptores)

**3. Servicios/productos:**
- Listado completo de lo que ofrece el negocio
- Descripción de cada uno
- Diferenciación vs competencia por servicio/producto

**4. Competencia y sustitutivos:**
- Competidores directos (mínimo 3)
- Sustitutivos indirectos
- Análisis de fortalezas/debilidades

**5. Perfiles de audiencia (MÍNIMO 3 perfiles completos):**

Cada perfil DEBE incluir (campos obligatorios):
- **Demográficos**: edad, género, estado civil, nivel socioeconómico, nivel educativo, localización, ocupación
- **Motivaciones**: qué buscan, qué desean lograr
- **Pain points (miedos)**: qué les preocupa, qué problemas tienen
- **Objeciones**: por qué podrían NO comprar/contratar
- **Comportamientos**: 
  - Dispositivo preferido (móvil/desktop)
  - Frecuencia de compra
  - Momento de compra (día/hora)
  - Canales/redes preferidas

**6. Mapping servicios/productos → perfiles:**
- Matriz que relaciona cada servicio/producto con los perfiles de audiencia que lo consumen
- Por ejemplo: "Servicio Premium" → Perfil "Ejecutivo Senior" (principal), Perfil "Emprendedor" (secundario)

**7. Elevator pitch (5 componentes OBLIGATORIOS):**
- PROBLEMA que resuelve el negocio
- SOLUCIÓN que ofrece
- DIFERENCIACIÓN vs competencia
- AUTORIDAD (por qué creerles)
- LLAMADA A LA ACCIÓN

**8. Canales de adquisición:**
- Si habrá campañas de ads/marketing (Google Ads, Facebook Ads, etc.)
- Landings necesarias por canal
- Esto **impacta directamente** en la planificación de URLs

**Artefacto principal**:
- `docs/estrategia.md`

**Responsable**: Estratega

**Validación (Jefe de Proyectos)**:
- [ ] Mínimo 3 perfiles completos (15 campos cada uno)
- [ ] Elevator pitch con 5 componentes
- [ ] Mapping servicios → perfiles (100% cobertura)
- [ ] Pain points y objeciones por perfil (mín. 3 cada uno)

---

### Fase 2a — Planificación Inicial (URLs e intenciones)

**Objetivo**: Identificar keywords, intenciones de búsqueda y URLs destino, marcando templates que requieren definición de arquitectura.

**⚠️ NUEVO FLUJO**: La planificación se realiza en DOS pasadas para garantizar coherencia con la arquitectura.

**Fuentes de keywords/intenciones:**
- Keyword research formal (herramientas SEO)
- Demanda expresada por personas reales
- Redes sociales / foros / preguntas frecuentes
- Análisis de competencia

**Regla de oro**: Cada keyword/intención → asignada a UNA página destino con una URL específica.

**Artefacto principal**:
- `docs/planificacion-urls-inicial.csv`

**Estructura OBLIGATORIA del CSV (columnas mínimas)**:

| Columna | Descripción | Ejemplo |
|---------|-------------|---------|
| `keyword_intencion` | Keyword o intención de búsqueda | "abogado laboralista barcelona" |
| `url_destino` | URL de la página destino | /abogado-laboralista-barcelona/ |
| `template_wp` | Template WordPress que usará | page, [POR_DEFINIR-requiere-cpt], etc. |
| `titulo_seo` | Título optimizado para SEO | "Abogado Laboralista en Barcelona - [Nombre]" |
| `requisitos_conversion` | Qué debe ver/entender antes del CTA | "Diferenciación: 15 años experiencia, Pain point: despido improcedente, Prueba social: 200+ casos ganados, Fricción resuelta: primera consulta gratis" |
| `cta_texto` | Texto del Call To Action | "Solicita consulta gratuita" |
| `cta_destino` | A dónde lleva el CTA | /contacto/, formulario, teléfono, WhatsApp, etc. |

**Criterio para templates en Fase 2a**:

**Templates que SÍ se pueden definir**:
- `page` - Páginas estáticas (Inicio, Contacto, Sobre nosotros, etc.)
- `404` - Página de error
- Templates estándar conocidos

**Templates que se marcan como `[POR_DEFINIR]`**:
- URLs dinámicas que requieren CPT: `[POR_DEFINIR-requiere-cpt]`
- URLs que requieren taxonomía: `[POR_DEFINIR-requiere-taxonomia]`
- URLs cuyo template depende de la arquitectura

**Ejemplo de CSV inicial**:
```csv
keyword_intencion,url_destino,template_wp,titulo_seo,requisitos_conversion,cta_texto,cta_destino
"carta restaurante barcelona","/carta/","page","Carta - Restaurante X","...","Ver carta","/carta/"
"nuestros platos especiales","/platos/[slug]/","[POR_DEFINIR-requiere-cpt]","...","...","Reservar","/reservas/"
"arroces barcelona","/platos/tipo/arroces/","[POR_DEFINIR-requiere-taxonomia]","...","...","Ver arroces",""
```

**Responsable**: Planificador

**Validación (Jefe de Proyectos)**:
- [ ] CSV con columnas obligatorias presente
- [ ] Ratio keywords/URLs > 1.5:1 (una URL puede atacar varias keywords)
- [ ] Páginas estáticas tienen template `page` asignado
- [ ] URLs dinámicas marcadas como `[POR_DEFINIR]` con tipo documentado
- [ ] Requisitos de conversión definidos por URL
- [ ] Todos los servicios de estrategia.md tienen URL destino

**Nota**: Este CSV se completará en **Fase 2b** después de que Arquitectura defina las entidades.

---

### Fase 3 — Wireframing

**Objetivo**: Definir jerarquía visual, camino al CTA y estructura semántica HTML.

**Se crean wireframes para templates más importantes** según proyecto. Ejemplos ilustrativos de templates comunes:
- Inicio (home)
- Single de `[entidad-principal]` (ej: servicio, producto, propiedad, curso)
- Archive de `[taxonomía]` o `[entidad]`
- Single del blog
- Página de contacto
- Página de servicios/productos (si aplica)

**Cada wireframe DEBE incluir**:

1. **Jerarquía de elementos**:
   - Orden de lectura (qué ve primero el usuario)
   - Tamaños relativos (titular > subtitular > cuerpo)

2. **Camino al CTA**:
   - Cómo se guía al usuario hacia la conversión
   - Dónde aparece el CTA
   - Qué información previa necesita el usuario

3. **Notas para copywriter**:
   - Qué mensaje comunicar en cada bloque
   - Qué pain point atacar
   - Qué objeción resolver

4. **Notas de estructura semántica HTML** (orientada a SEO):
   - `<header>`, `<footer>`, `<aside>`, `<article>`, `<section>`, `<nav>`
   - `<ul>`, `<ol>` para listas
   - `<h1>`, `<h2>`, `<h3>` jerarquía de encabezados
   - Schema.org recomendado (si aplica: Product, Service, Article, etc.)

**Artefactos**:
- `docs/wireframes.md` (descripción textual + anotaciones)
- Diagramas visuales (Mermaid, Stitch, Excalidraw, o similar)

**Responsable**: Wireframer

**Validación (Jefe de Proyectos)**:
- [ ] Templates críticos de planificación tienen wireframe
- [ ] Cada wireframe define camino al CTA
- [ ] Estructura semántica HTML documentada
- [ ] Notas de contenido por bloque presentes

---

### Fase 4 — Definición de stack (builder/tema + plugins)

**Objetivo**: Decidir stack tecnológico orientado a WordPress a partir de estrategia/planificación/wireframes.

**Opciones de maquetación/tema** (elegir UNA):

1. **Elementor PRO**
   - Ventaja: Rápida implementación
   - Desventaja: Menos control, más código generado
   - Uso: Proyectos con presupuesto ajustado o timeline corto

2. **Bricks**
   - Ventaja: Equilibrio entre velocidad y control, accesibilidad nativa
   - Desventaja: Curva de aprendizaje
   - Uso: Proyectos que requieren control fino sin programar todo

3. **Tema a medida (desarrollo custom)**
   - Ventaja: Máximo control, código limpio, profesionalidad
   - Desventaja: Requiere tiempo de desarrollo
   - Uso: Proyectos con presupuesto adecuado y requisitos complejos
   - Incluye: Templates clásicos WP (PHP/HTML), CSS propio, functions.php personalizado, tamaños de medios basados en diseño

**Reglas OBLIGATORIAS del stack**:

**Regla 1: Plugin propio SIEMPRE existe**
- En TODOS los proyectos habrá un plugin custom con funcionalidades específicas
- Nomenclatura: `[nombre-proyecto]-custom` o `lmb-[cliente]-custom`

**Regla 2: Gestión de CPT/CCT/taxonomías**

Si desarrollo **SIN builder**:
- El plugin propio lleva CPTs, taxonomías, campos personalizados, funciones

Si desarrollo **CON builder** (Elementor/Bricks):
- Se usa **JetEngine** para CPT/CCT/taxonomías/campos/relaciones/queries
- El plugin propio lleva solo funcionalidades adicionales (hooks, cálculos, integraciones)

**Regla 3: Negocio transaccional → WooCommerce como base (CRÍTICO)**

Si el negocio es **transaccional** (venta de productos/servicios con pago):
- **SIEMPRE usar WooCommerce** como base
- Es preferible WooCommerce + integración con plugin que crear sistema propio
- Razón: ecosistema maduro (facturas, impuestos, devoluciones, pasarelas, stock, variaciones, informes)
- Se pueden añadir campos extra a productos/pedidos vía plugin propio o JetEngine

**Excepción**: Si es contenido digital puro (cursos, membresías, descargas), evaluar EDD (Easy Digital Downloads) como alternativa.

**Artefacto**:
- `docs/stack.md` (decisiones + justificación)

**Responsable**: Implementador

**Validación (Jefe de Proyectos)**:
- [ ] Stack elegido justificado según proyecto
- [ ] Si es transaccional, WooCommerce incluido (o EDD con justificación)
- [ ] Plugin propio definido
- [ ] Sistema de CPT/CCT claro (JetEngine o código)

---

### Fase 5 — Arquitectura (modelo de datos WordPress)

**Objetivo**: Definir entidades, campos, relaciones y reglas de acceso **del proyecto específico**.

**⚠️ ADVERTENCIA CRÍTICA**: Esta fase requiere **análisis del proyecto**, NO copiar ejemplos genéricos.

**Proceso de análisis OBLIGATORIO (antes de crear arquitectura.md)**:

**Paso 1: Leer artefactos de entrada**
- `docs/estrategia.md` → ¿Qué ofrece el negocio? (servicios, productos, contenidos)
- `docs/planificacion-urls.csv` → ¿Qué templates/URLs existen?
- `docs/wireframes.md` → ¿Qué bloques de contenido hay en cada template?
- `docs/stack.md` → ¿Usa WooCommerce? ¿JetEngine?

**Paso 2: Identificar entidades del PROYECTO ESPECÍFICO**

Preguntas clave:
- ¿Qué ofrece el negocio? → Posibles CPTs principales
- ¿Necesita ecommerce? → Usar `product` de WooCommerce
- ¿Hay suscripciones/membresías? → Evaluar CPT membership o plugin
- ¿Hay reservas? → Evaluar CPT `booking` o plugin especializado
- ¿Es directorio? → CPT por tipo de listing
- ¿Es blog/magazine? → CPT personalizado o `post` nativo + taxonomías

**Paso 3: Nombrar según el DOMINIO DEL NEGOCIO**

**NO usar nombres genéricos** si el negocio tiene vocabulario propio.

❌ **MAL (genérico, ignora el dominio del negocio)**:
- CPT: `servicio` (si el negocio vende "consultoría especializada")
- Taxonomía: `categoria` (si el dominio tiene clasificación específica)

✅ **BIEN (adaptado al proyecto)**:

**Ejemplo proyecto: Escuela de yoga**
- CPT: `clase-yoga` (no "servicio")
- Taxonomía: `estilo-yoga` (no "categoria")
- Términos: Hatha, Vinyasa, Kundalini, Yin

**Ejemplo proyecto: Inmobiliaria**
- CPT: `propiedad` (no "producto")
- Taxonomía: `tipo-propiedad` (Piso, Casa, Local)
- Taxonomía: `zona` (Barcelona Centro, Eixample, Gràcia)

**Ejemplo proyecto: SaaS**
- CPT: `funcionalidad` (para features del software)
- CPT: `caso-uso` (casos de éxito)

**Paso 4: Validar contra planificación**

Cada entidad debe corresponder a templates en `planificacion-urls.csv`:
- Si hay URL `/nuestros-servicios/[slug]` → CPT o taxonomía
- Si hay URL `/producto/[slug]` → WooCommerce `product` o CPT
- Si hay URL `/blog/[slug]` → CPT personalizado o `post` nativo

**Regla**: NO crear entidades que no aparecen en la planificación.

---

**Reglas OBLIGATORIAS de arquitectura (aplican a TODOS los proyectos)**:

**Regla 1: Mínimo `content`, máximo campos personalizados**

✅ **SIEMPRE**:
- Evitar usar el campo `content` de WordPress
- Preferir campos personalizados estructurados
- Crear campos para: beneficios, fricciones, testimonios, galerías, productos relacionados, etc.

❌ **EVITAR**:
- Meter todo en `content` como texto libre
- Usar `content` para listas, tablas, galerías (usar campos específicos)

⚠️ **ÚNICO USO VÁLIDO de `content`**:
- Textos largos sin estructura predefinida
- Ejemplo: "Historia de la empresa", "Biografía del autor"

**Regla 2: Criterio CPT vs CCT**

**Usar CPT (Custom Post Type) cuando**:
- La entidad **necesita single** (URL pública propia)
- Debe ser **indexable por Google**
- Debe estar en la **API REST de WordPress**
- Ejemplos ilustrativos: servicios, productos, propiedades, cursos, artículos, equipo

**Usar CCT (Custom Content Type / Tabla separada) cuando**:
- Es **tabla intermedia** de relación N:N (sin contenido propio)
- Son **datos privados** sin single (no accesibles públicamente ni por API)
- **No debe indexarse** en Google
- Ejemplos ilustrativos: tickets de soporte, envíos de formularios, facturas privadas, logs del sistema, reservas internas

**Regla 3: Si transaccional, usar entidades WooCommerce**

Si el negocio es **ecommerce/suscripciones/transaccional**:
- Productos → `product` (CPT de WooCommerce) ✅
- Pedidos → `shop_order` (CPT de WooCommerce) ✅
- Variaciones → `product_variation` (WooCommerce) ✅
- Campos extra → Añadir como meta fields en productos/pedidos ✅
- **NO crear CPT propios** que dupliquen lo que WooCommerce ya hace ❌

**Regla 4: Nomenclatura según dominio del negocio**

✅ **SIEMPRE**:
- Usar vocabulario del cliente/industria
- Nombres descriptivos y específicos
- Consultar al Jefe de Proyectos si hay duda

❌ **NUNCA**:
- Forzar nombres genéricos cuando existe vocabulario específico
- Copiar ejemplos de este documento sin adaptar

**Artefactos**:
- `docs/arquitectura.md` (especificación completa)
- Diagrama Mermaid (entidades y relaciones del PROYECTO)

**Responsable**: Arquitecto

**Validación (Jefe de Proyectos)**:
- [ ] Todas las entidades de wireframes están mapeadas
- [ ] Todos los templates de planificación tienen entidad asignada
- [ ] Criterio CPT/CCT aplicado correctamente
- [ ] Relaciones documentadas con claridad
- [ ] Campos estructurados, mínimo uso de `content`
- [ ] Si transaccional, WooCommerce como base
- [ ] Nombres según dominio del negocio (no genéricos)

---

### Fase 2b — Planificación Completa (Templates finales)

**Objetivo**: Completar el CSV de planificación con los templates correctos basados en la arquitectura ya definida.

**⚠️ IMPORTANTE**: Esta fase se ejecuta DESPUÉS de la Fase 5 (Arquitectura), cuando ya se conocen los CPTs, taxonomías y estructura de datos.

**Proceso**:

1. **Leer arquitectura.md** para conocer entidades definidas
2. **Identificar templates WordPress** según arquitectura:
   - CPTs definidos → `single-[nombre-cpt]`, `archive-[nombre-cpt]`
   - Taxonomías definidas → `archive-[nombre-taxonomia]`
   - Páginas especiales según estructura
3. **Actualizar CSV** reemplazando `[POR_DEFINIR]` con templates reales
4. **Validar cobertura 100%** de templates

**Artefacto principal**:
- `docs/planificacion-urls.csv` (versión final, completa)

**Ejemplo de transformación**:

**CSV Inicial (Fase 2a)**:
```csv
"nuestros platos","/platos/[slug]/","[POR_DEFINIR-requiere-cpt]","...","...","Reservar","/reservas/"
"arroces barcelona","/platos/tipo/arroces/","[POR_DEFINIR-requiere-taxonomia]","...","...","Ver arroces",""
```

**CSV Final (Fase 2b)** - después de leer arquitectura.md:
```csv
"nuestros platos","/platos/[slug]/","single-plato","...","...","Reservar","/reservas/"
"arroces barcelona","/platos/tipo/arroces/","archive-tipo-plato","...","...","Ver arroces",""
```

**Mapeo arquitectura → templates**:

| Entidad en arquitectura.md | Template WordPress resultante |
|----------------------------|------------------------------|
| CPT: `plato` | `single-plato` (para /platos/[slug]/) |
| CPT: `plato` con archive | `archive-plato` (para /platos/) |
| Taxonomía: `tipo-plato` | `archive-tipo-plato` (para /platos/tipo/[term]/) |
| CPT: `[cualquier-cpt]` | `single-[cualquier-cpt]` |

**Responsable**: Planificador

**Validación (Jefe de Proyectos)**:
- [ ] CSV con columnas obligatorias presente
- [ ] **0 templates marcados como `[POR_DEFINIR]`** (todos resueltos)
- [ ] Ratio keywords/URLs > 1.5:1
- [ ] Todas las URLs tienen template asignado
- [ ] Templates corresponden a entidades de arquitectura.md
- [ ] Todos los servicios de estrategia.md tienen URL destino

**Nota CRÍTICA**: Este CSV final es la pieza central que gobierna:
- Wireframes (qué templates diseñar)
- Diseño (qué páginas necesitan trabajo visual)
- Contenidos (qué contenido escribir por página)
- Maquetación (qué templates implementar)

---

### Fase 3 — Wireframing

**⚠️ CAMBIO DE ORDEN**: Esta fase ahora se ejecuta DESPUÉS de Fase 2b (Planificación Completa), garantizando que todos los templates estén definidos.

**Objetivo**: Definir jerarquía visual, camino al CTA y estructura semántica HTML.

**Se crean wireframes para templates más importantes** según proyecto. Ejemplos ilustrativos de templates comunes:
- Inicio (home)
- Single de `[entidad-principal]` (ej: servicio, producto, propiedad, curso)
- Archive de `[taxonomía]` o `[entidad]`
- Single del blog
- Página de contacto
- Página de servicios/productos (si aplica)

**Cada wireframe DEBE incluir**:

1. **Jerarquía de elementos**:
   - Orden de lectura (qué ve primero el usuario)
   - Tamaños relativos (titular > subtitular > cuerpo)

2. **Camino al CTA**:
   - Cómo se guía al usuario hacia la conversión
   - Dónde aparece el CTA
   - Qué información previa necesita el usuario

3. **Notas para copywriter**:
   - Qué mensaje comunicar en cada bloque
   - Qué pain point atacar
   - Qué objeción resolver

4. **Notas de estructura semántica HTML** (orientada a SEO):
   - `<header>`, `<footer>`, `<aside>`, `<article>`, `<section>`, `<nav>`
   - `<ul>`, `<ol>` para listas
   - `<h1>`, `<h2>`, `<h3>` jerarquía de encabezados
   - Schema.org recomendado (si aplica: Product, Service, Article, etc.)

**Artefactos**:
- `docs/wireframes.md` (descripción textual + anotaciones)
- **🆕 `docs/wireframes/*.html`** (wireframes visuales interactivos)
- **🆕 `docs/wireframes.css`** (estilos para wireframes HTML)
- Diagramas complementarios (Mermaid, Excalidraw, o similar)

**🆕 Wireframes Visuales HTML**:

El wireframer ahora genera versiones HTML interactivas de los wireframes usando las plantillas:
- `docs/plantillas/wireframes-visual.template.html` (plantilla base)
- `docs/plantillas/wireframes.css` (estilos reutilizables)

**Ventajas de wireframes HTML**:
- ✅ Visual e intuitivo (muestra proporciones reales)
- ✅ Mantiene notas técnicas y de copywriting
- ✅ Camino al CTA visualizado paso a paso
- ✅ Fácil de presentar a clientes/stakeholders
- ✅ Responsive (vista móvil y desktop)

**Responsable**: Wireframer

**Validación (Jefe de Proyectos)**:
- [ ] Templates críticos de planificación tienen wireframe
- [ ] Cada wireframe define camino al CTA
- [ ] Estructura semántica HTML documentada
- [ ] Notas de contenido por bloque presentes
- [ ] **🆕 Versión HTML generada** para templates principales

---

### Fase 6 — Diseño

**Objetivo**: Generar decisiones de diseño con criterio estratégico basado en psicología, audiencia y diferenciación.

**Incluye**:

**1. Psicología del color:**
- Qué emociones transmitir según audiencia
- Colores de la competencia (diferenciarse)
- Asociaciones culturales del color

**2. Paleta de colores definida (OBLIGATORIO)**:

| Color | Uso | Hex | Proporción recomendada |
|-------|-----|-----|------------------------|
| **Primario** (marca) | Identidad principal | #XXXXXX | 60% |
| **Secundario** (marca) | Apoyo visual | #XXXXXX | 30% |
| **Atención** (CTAs) | Llamadas a la acción | #XXXXXX | 10% (puntual) |
| **Éxito** | Mensajes positivos | #XXXXXX | Puntual |
| **Error** | Mensajes de error | #XXXXXX | Puntual |
| **Info** | Información neutral | #XXXXXX | Puntual |
| **Neutral oscuro** | Textos | #XXXXXX | - |
| **Neutral claro** | Fondos | #XXXXXX | - |

**3. Ideas de componentes e interfaz:**
- Estilo de botones (pill, squared, outlined, filled)
- Estilo de cards (flat, elevadas, con bordes)
- Espaciado (generoso vs compacto)
- Tipografía (serif vs sans-serif, pesos)

**4. Ideas de diferenciación visual:**
- Qué hace la competencia visualmente
- Cómo diferenciarse manteniendo profesionalidad
- Elementos únicos (ilustraciones custom, iconografía, patrones)

**5. Recomendaciones de multimedia:**
- **Ilustración vs Fotografía**: cuál usar y por qué
- **Estilo**: realista, minimalista, vectorial, 3D, etc.
- **Formato**: JPG, PNG, SVG, WebP
- **Dimensiones orientativas**: basadas en wireframes

**Artefacto**:
- `docs/diseno.md`

**Responsable**: Diseñador

**Validación (Jefe de Proyectos)**:
- [ ] Paleta completa con 6+ colores definidos
- [ ] Proporciones de uso de color documentadas
- [ ] Contraste WCAG AA verificado (4.5:1 texto, 3:1 UI)
- [ ] Decisiones basadas en audiencia de estrategia
- [ ] Diferenciación vs competencia argumentada

---

### Fase 6b — Creación de contenidos

**Objetivo**: Crear contenidos estratégicos basados en artefactos previos.

**Inputs requeridos (OBLIGATORIO leer antes de empezar)**:
- `docs/estrategia.md` → Perfiles, pain points, objeciones
- `docs/planificacion-urls.csv` → Requisitos de conversión por URL
- `docs/wireframes.md` → Jerarquía y camino al CTA
- `docs/arquitectura.md` → Campos disponibles por entidad

**Proceso de creación de contenidos**:

**1. Análisis de requisitos por URL:**

Para cada URL en planificación, identificar:
- ¿Qué debe **entender** el usuario antes del CTA?
- ¿Qué **pain point** atacar?
- ¿Qué **objeción** resolver?
- ¿Qué **prueba social** incluir?
- ¿Qué **fricción** reducir?

**2. Creación estructurada por campos personalizados:**

**Campos comunes por entidad** (adaptar según arquitectura):

- **Titular** (orientado a conversión, no solo descriptivo)
- **Subtitular** (refuerzo del mensaje principal)
- **Descripción corta** (para listados, excerpts, meta description)
- **Secciones de contenido** (por campo personalizado):
  - Beneficios (repeater: 3-5 puntos, título + descripción)
  - Fricciones resueltas (repeater: 2-4 puntos, qué preocupación elimina)
  - Prueba social (testimonios, casos, cifras, logos clientes)
  - Diferenciación (vs competencia/sustitutivos)
  - Llamada a la acción (según planificación)
- **Metadatos SEO**:
  - Title (50-60 caracteres, incluye keyword)
  - Meta description (150-160 caracteres, incluye CTA)
  - Slug (corto, descriptivo, keyword)

**3. Especificaciones multimedia:**

Por cada imagen/video/icono:
- **Dimensiones**: según diseño y wireframes
- **Peso máximo**: 
  - Imágenes hero: < 300KB (WebP)
  - Imágenes contenido: < 200KB (WebP)
  - Iconos: SVG preferiblemente
- **Alt text**: descriptivo y contextual (SEO + accesibilidad)
- **Formato**: WebP para fotos, SVG para iconos/ilustraciones
- **Estilo**: según decisiones de diseño (ilustración/foto, realista/flat, etc.)

**4. Matriz de contenidos (crear tabla):**

| URL | Template | Titular | Pain point atacado | Objeción resuelta | CTA | Estado |
|-----|----------|---------|-------------------|-------------------|-----|--------|
| /[url] | [template] | [Titular H1] | [Pain point] | [Objeción] | [CTA] | Pendiente/Completo |

**Reglas de copywriting (OBLIGATORIAS)**:

✅ **SIEMPRE**:
- Usar **lenguaje del perfil de audiencia** (evitar jerga técnica si B2C)
- Estructura **problema → solución → beneficio**
- CTAs en **segunda persona** ("Solicita tu consulta", no "Solicitar consulta")
- **Escaneabilidad**: párrafos cortos (3-4 líneas), listas con bullets
- **Densidad de keywords natural** (LSI, semánticas)

❌ **NUNCA**:
- Copiar textos de competencia
- Usar lenguaje genérico sin personalizar
- CTAs pasivos ("Más información" → específico "Descarga guía gratuita")

**Artefacto principal**:
- `docs/contenidos.md` (matriz + especificaciones)

**Artefactos complementarios** (opcional):
- `docs/contenidos/[entidad]/` (contenido por CPT/página si muy extenso)
- `docs/multimedia/especificaciones.md` (detalle de imágenes necesarias)

**Responsable**: Estratega o Content Creator (según equipo)

**Validación (Jefe de Proyectos)**:
- [ ] Contenidos creados para todas las URLs de planificación
- [ ] Cada contenido ataca pain point documentado
- [ ] Cada contenido resuelve objeción documentada
- [ ] CTAs específicos y en segunda persona
- [ ] Especificaciones multimedia completas

---

### Fase 7 — Inserción de contenido base

**Objetivo**: Poblar WordPress con contenido mínimo para poder maquetar y probar.

**Incluye**:
- Posts de `[entidades-principales]` (mín. 1-3 por tipo)
- Términos de taxonomías
- Campos personalizados rellenados
- Productos WooCommerce (si aplica, mín. 3-5)
- Entradas en CCTs (si aplica, datos de prueba)
- Imágenes/vídeos (placeholder o reales si disponibles)

**Regla IMPORTANTE**:
- **NO se mete todo el contenido** al principio
- Solo el **mínimo necesario** para maquetar cada template
- Ejemplo: 1 servicio para maquetar single-servicio, 3 productos para probar archive

**Artefacto**:
- `docs/insercion-contenido.md` (qué se insertó, cuánto, para qué templates)

**Responsable**: Implementador (asistido por Programador si importación masiva vía WP-CLI)

**Validación (Jefe de Proyectos)**:
- [ ] Al menos 1 entrada por CPT principal
- [ ] Términos de taxonomías creados
- [ ] Campos personalizados rellenados (no vacíos)
- [ ] Suficiente para probar maquetación

---

### Fase 8 — Implementación de plugins e integraciones

**Objetivo**: Dejar el entorno listo para maquetar y operar.

**Acciones**:

**1. Implementar y configurar plugins** (según stack.md):
- Activar plugins elegidos
- Configuración básica de cada uno
- Verificar compatibilidad entre plugins

**2. Desarrollar funcionalidades extra en plugin propio:**
- Hooks de WooCommerce (si aplica)
- Funciones auxiliares
- Shortcodes personalizados
- Widgets custom

**3. Configurar conexiones externas:**
- Pasarelas de pago (modo test primero)
- APIs (CRM, email marketing, analytics)
- MCPs (Model Context Protocol) si aplica
- Automatizaciones externas (Zapier, Make, n8n)

**Artefacto**:
- `docs/implementacion-plugins.md` (qué se configuró, cómo, credenciales de acceso sin datos sensibles)

**Responsable**: Implementador + Programador

**Validación (Jefe de Proyectos)**:
- [ ] Todos los plugins de stack.md instalados y configurados
- [ ] Plugin propio creado y funcional
- [ ] Conexiones externas probadas (modo test)
- [ ] No hay conflictos entre plugins

---

### Fase 9 — Creación del sistema de estilos (Framework CSS LMB)

**Objetivo**: Crear framework CSS propio del proyecto basado en metodología LMB.

**Output base OBLIGATORIO**:
- 1 documento HTML de guía de estilos (`docs/guia-estilos.html`)
- 1 archivo CSS vinculado (`docs/estilos.css`)

**Artefactos**:
- `docs/guia-estilos.html`
- `docs/estilos.css`
- `docs/framework-css.md` (documentación técnica)

---

#### Especificación del Framework CSS LMB

**Filosofía de nomenclatura (BEM modificada en español)**

**Estructura de nombres**:
- **Bloques**: nombres en español descriptivos (`seccion`, `boton`, `card`, `icono`)
- **Elementos**: `__` doble guion bajo (`seccion__contenedor`, `card__titulo`, `seccion__aside__frase`)
- **Modificadores**: `--` doble guion (`card--l`, `card--d`, `boton-cta--principal`, `seccion--encabezado`)
- **Variantes semánticas**: sufijos `-l` (claro), `-d` (oscuro), `-xl`, `-s`, etc.

**Ejemplo completo**:
```css
.card { /* Bloque base */ }
.card__titulo { /* Elemento */ }
.card__imagen { /* Elemento */ }
.card--l { /* Modificador: variante clara */ }
.card--d { /* Modificador: variante oscura */ }
```

---

**Sistema de variables CSS**

**1. Colores semánticos:**

```css
:root {
  /* Colores base de marca */
  --color-primario: #XXXXXX;
  --color-secundario: #XXXXXX;
  --color-atencion: #XXXXXX; /* Para CTAs */
  --color-exito: #XXXXXX;
  --color-error: #XXXXXX;
  --color-info: #XXXXXX;
  
  /* Neutrales */
  --color-neutral: #XXXXXX;
  --blanco: #FFFFFF;
  --negro: #000000;
  
  /* Variantes derivadas con color-mix() */
  --color-primario-d: color-mix(in srgb, var(--color-primario) 80%, black);
  --color-primario-l: color-mix(in srgb, var(--color-primario) 80%, white);
  --color-secundario-d: color-mix(in srgb, var(--color-secundario) 80%, black);
  --color-secundario-l: color-mix(in srgb, var(--color-secundario) 80%, white);
  /* ... etc para cada color semántico */
}
```

**Uso de variantes**:
- `-d` (dark): versión más oscura (mezcla con negro al 80%)
- `-l` (light): versión más clara (mezcla con blanco al 80%)

---

**2. Degradados reutilizables:**

```css
:root {
  /* Degradados verticales (arriba → abajo por defecto) */
  --degradado-primario: linear-gradient(to bottom, var(--color-primario), var(--color-primario-d));
  --degradado-secundario: linear-gradient(to bottom, var(--color-secundario), var(--color-secundario-d));
  --degradado-atencion: linear-gradient(to bottom, var(--color-atencion), var(--color-atencion-d));
  
  /* Degradados personalizados según diseño */
  --degradado-hero: linear-gradient(135deg, var(--color-primario), var(--color-secundario));
}
```

---

**3. Bordes con degradado (patrón común LMB):**

Técnica: `background-clip` con `padding-box` y `border-box`

```css
.card {
  border: 2px solid transparent;
  background: 
    linear-gradient(white, white) padding-box, /* Fondo interior */
    var(--degradado-primario) border-box; /* Borde degradado */
  background-clip: padding-box, border-box;
}
```

---

**4. Tipografía:**

```css
:root {
  /* Fuente principal (una sola familia recomendado) */
  --fuente-principal: 'Nombre Fuente', sans-serif;
  
  /* Pesos */
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
}
```

---

**5. Espaciado fluido:**

```css
:root {
  /* Escala completa con clamp() */
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
}
```

---

**6. Otros tokens:**

```css
:root {
  /* Border radius */
  --radio-s: 0.25rem;
  --radio-m: 0.5rem;
  --radio-l: 1rem;
  --radio-xl: 2rem;
  --radio-full: 9999px; /* Pill shape */
  
  /* Sombras */
  --sombra-s: 0 1px 3px rgba(0, 0, 0, 0.12);
  --sombra-m: 0 4px 6px rgba(0, 0, 0, 0.15);
  --sombra-l: 0 10px 25px rgba(0, 0, 0, 0.2);
  --sombra-xl: 0 20px 40px rgba(0, 0, 0, 0.25);
  
  /* Transiciones */
  --transicion-rapida: 0.15s ease-in-out;
  --transicion-lenta: 0.3s ease-in-out;
  
  /* Transformaciones */
  --escala-reducir: scale(0.95);
  --escala-aumentar: scale(1.05);
  
  /* Anchos de contenedor */
  --ancho-caja: min(90%, 1200px);
  --ancho-caja-xl: min(90%, 1400px);
}
```

---

**Patrones de componentes (ejemplos ilustrativos)**

**1. Botones CTA:**

```css
/* Base */
.boton-cta {
  padding: var(--espacio-xs) var(--espacio-m);
  font-size: var(--texto-m);
  font-weight: var(--peso-grueso);
  border: 2px solid transparent;
  border-radius: var(--radio-full); /* Pill */
  cursor: pointer;
  transition: var(--transicion-rapida);
}

/* Variante con degradado + borde */
.boton-cta--principal {
  background: 
    var(--degradado-atencion) padding-box,
    var(--degradado-atencion) border-box;
  color: white;
}

.boton-cta--principal:hover {
  box-shadow: var(--sombra-m);
  transform: var(--escala-aumentar);
}

/* Variante outline */
.boton-cta--secundario {
  background: white;
  border: 2px solid var(--color-primario);
  color: var(--color-primario);
}
```

---

**2. Cards:**

```css
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

/* Variantes de color */
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

/* Elementos */
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
```

---

**3. Secciones (bloques de página):**

```css
/* Base: sección con fondo, color y padding */
.seccion {
  width: 100%;
  padding: var(--espacio-xl) 0;
}

/* Contenedor centrado con max-width */
.seccion__contenedor {
  width: var(--ancho-caja);
  margin: 0 auto;
  display: flex;
  flex-direction: column;
  gap: var(--espacio-m);
}

/* Variantes de layout */
.seccion--encabezado {
  text-align: center;
}

.seccion--tarjeta-centrada .seccion__contenedor {
  align-items: center;
}

.seccion--tarjeta-izquierda .seccion__contenedor {
  flex-direction: row;
  gap: var(--espacio-l);
}

.seccion--tarjeta-derecha .seccion__contenedor {
  flex-direction: row-reverse;
  gap: var(--espacio-l);
}

/* Sección con imagen de fondo */
.seccion--tarjeta-imagen-fondo {
  position: relative;
  background-size: cover;
  background-position: center;
}

.seccion--tarjeta-imagen-fondo::before {
  content: '';
  position: absolute;
  inset: 0;
  background: rgba(0, 0, 0, 0.5); /* Overlay oscuro */
  z-index: 1;
}

.seccion--tarjeta-imagen-fondo .seccion__contenedor {
  position: relative;
  z-index: 2;
  color: white;
}

/* Elementos de sección */
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

.seccion__boton {
  align-self: flex-start; /* No ocupa todo el ancho */
}

.seccion__aside {
  flex: 1;
}

.seccion__aside__frase {
  font-size: var(--texto-xl);
  font-style: italic;
}
```

---

**4. Iconos:**

```css
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
```

---

**Utilidades (clases helper)**

```css
/* Contenedores */
.contenedor-caja {
  width: var(--ancho-caja);
  margin: 0 auto;
}

/* Texto */
.texto-lectura {
  max-width: 65ch; /* Óptimo para lectura */
  line-height: 1.7;
}

.texto-lectura--centrado {
  max-width: 65ch;
  margin: 0 auto;
  text-align: center;
}

/* Visibilidad */
.oculto {
  display: none;
}

/* Dimensiones */
.full-width {
  width: 100%;
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

.grid-xl {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(min(500px, 100%), 1fr));
  gap: var(--espacio-2xl);
}

.grid-2-col {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(min(50%, 100%), 1fr));
  gap: var(--espacio-l);
}
```

**Nota sobre grids**: Se usa `minmax(min(Xpx, 100%), 1fr)` para evitar overflow en pantallas pequeñas.

---

**Técnicas recurrentes del Framework LMB**

1. **Borde degradado**: `background` con `padding-box` + `border-box` y `border: Xpx solid transparent`
2. **Fondos con overlay**: Pseudo-elementos `::before` o `::after` con imagen de fondo + `opacity` o `background: rgba()`
3. **Spacing fluido**: `clamp()` para todos los espaciados y tamaños de fuente
4. **Grid responsivo**: `auto-fit` + `minmax(min(), 1fr)` para evitar overflow
5. **Z-index explícito**: En layouts complejos (secciones con fondo imagen, modales) siempre declarar `z-index`

---

**Responsive (Mobile First)**

**Breakpoint principal**: `700px`

```css
@media (max-width: 700px) {
  /* Grids colapsan a 1 columna */
  .grid-m,
  .grid-l,
  .grid-xl,
  .grid-2-col {
    grid-template-columns: 1fr;
  }
  
  /* Secciones con layout horizontal pasan a vertical */
  .seccion--tarjeta-izquierda .seccion__contenedor,
  .seccion--tarjeta-derecha .seccion__contenedor {
    flex-direction: column;
  }
  
  /* Reducir transformaciones decorativas (mejor rendimiento) */
  .boton-cta--principal:hover {
    transform: none;
  }
  
  /* Ajustar paddings */
  .seccion {
    padding: var(--espacio-l) 0;
  }
  
  /* Reordenar con order si necesario */
  .seccion__imagen {
    order: -1; /* Imagen primero en móvil */
  }
}
```

---

**Responsable**: Maquetador + Diseñador

**Validación (Jefe de Proyectos)**:
- [ ] `guia-estilos.html` generado con todos los componentes
- [ ] `estilos.css` vinculado y funcional
- [ ] Variables CSS definidas (colores, tipografía, espaciado)
- [ ] Componentes base creados (botón, card, sección)
- [ ] Sistema responsive con breakpoint 700px
- [ ] Documentación en `framework-css.md`

---

### Fase 10 — Maquetación

**Objetivo**: Maquetar templates según wireframes, diseño y framework CSS.

**Reglas OBLIGATORIAS**:
- Seguir wireframes (jerarquía y camino al CTA)
- Aplicar framework CSS LMB (clases definidas en Fase 9)
- Usar variables CSS del sistema
- Implementar visión estratégica (contenido orientado a conversión)

**Puede hacerse con**:
- **Tema propio** (templates PHP + framework CSS)
- **Builder** (Bricks preferido) aplicando clases del framework

**Templates a maquetar** (según planificación):
- Página inicio (home)
- Single de `[entidad-principal]` (según arquitectura)
- Archive de `[taxonomía]` o `[entidad]`
- Páginas estáticas (Contacto, Sobre nosotros, etc.)
- 404
- Header y Footer

**Artefacto**:
- `docs/maquetacion.md` (decisiones + checklist de templates completados)

**Responsable**: Maquetador

**Validación (Jefe de Proyectos)**:
- [ ] Todos los templates de planificación maquetados
- [ ] Framework CSS aplicado correctamente
- [ ] Wireframes respetados
- [ ] Responsive funcional (probado en móvil/tablet/desktop)
- [ ] Queries WP/WooCommerce funcionando (contenido dinámico)

---

### Fase 11 — Seguridad

**Objetivo**: Securización completa del sitio WordPress.

**Incluye**:

**1. Directrices de seguridad en código propio:**
- Sanitización de inputs (`sanitize_text_field()`, `esc_html()`, `esc_url()`)
- Validación de datos antes de guardar
- Nonces en formularios (`wp_nonce_field()`, `wp_verify_nonce()`)
- Escapado de output (`esc_html()`, `esc_attr()`, `wp_kses_post()`)
- Prepared statements en queries SQL (`$wpdb->prepare()`)

**2. Plugins de seguridad (opcional pero recomendado):**
- Wordfence / WP Cerber / iThemes Security / Sucuri
- Configuración de firewall
- Login protection (límite de intentos)
- 2FA para usuarios admin

**3. Revisión de código:**
- Escaneo de vulnerabilidades conocidas
- Revisión de permisos de archivos (644 archivos, 755 carpetas)
- `wp-config.php` con constantes de seguridad:
  ```php
  define('DISALLOW_FILE_EDIT', true); // Deshabilitar editor de temas/plugins
  define('WP_DEBUG', false); // En producción
  ```

**4. Control por roles:**
- Contenido restringido por capabilities
- Verificar que usuarios no privilegiados no accedan a datos sensibles

**5. Pruebas de exposición externa (API REST):**

**CRÍTICO**: Verificar que entidades **privadas** (CCTs) NO son accesibles vía:
- API REST de WordPress (`/wp-json/wp/v2/`)
- Búsqueda directa por URL
- Queries públicas

**Entidades a proteger** (ejemplos ilustrativos):
- Envíos de formularios
- Facturas privadas
- Pedidos (si no WooCommerce)
- Tickets de soporte
- Datos personales de usuarios

**Métodos de protección**:
```php
// Deshabilitar API REST para CPT privado
'show_in_rest' => false,

// Hook para bloquear acceso
add_filter('rest_authentication_errors', function($result) {
    if (!is_user_logged_in() && is_rest_request_to_private_endpoint()) {
        return new WP_Error('rest_forbidden', 'Acceso no autorizado', array('status' => 401));
    }
    return $result;
});
```

**Artefacto**:
- `docs/reporte-seguridad.md` (checklist + hallazgos + acciones tomadas)

**Responsable**: Securizador + Programador

**Validación (Jefe de Proyectos)**:
- [ ] Código propio sanitiza inputs y escapa outputs
- [ ] Nonces implementados en formularios
- [ ] Plugin de seguridad instalado (si aplica)
- [ ] Entidades privadas NO accesibles vía API REST
- [ ] Roles y capabilities correctos
- [ ] wp-config.php securizado

---

### Fase 12 — Optimización (WPO)

**Objetivo**: Mejorar rendimiento, estabilidad y limpieza del código.

**Incluye**:

**1. Core Web Vitals (métricas críticas de Google):**
- **LCP** (Largest Contentful Paint): < 2.5s
- **FID** (First Input Delay): < 100ms
- **CLS** (Cumulative Layout Shift): < 0.1

**2. Tiempo de carga:**
- TTFB (Time To First Byte): < 600ms
- Fully Loaded: < 3s (objetivo)

**3. Optimizaciones técnicas:**
- **Scripts sobrantes**: Deshabilitar scripts no usados (Gutenberg si no aplica, emojis, etc.)
- **Código basura**: Limpieza de `wp_head()` innecesario
- **Imágenes**: 
  - Formato WebP
  - Lazy loading nativo (`loading="lazy"`)
  - Dimensiones correctas (no redimensionar con CSS)
  - Compresión (TinyPNG, Squoosh)
- **CSS/JS**:
  - Minificación
  - Concatenación (si no HTTP/2)
  - Diferir JS no crítico (`defer`, `async`)
  - CSS crítico inline (above the fold)
- **Caché**:
  - Browser caching (headers)
  - Object caching (Redis/Memcached si servidor lo permite)
  - Page caching (plugin)
- **Database**:
  - Limpiar revisiones antiguas
  - Optimizar tablas
  - Índices en queries personalizadas

**Reglas CRÍTICAS**:
- **Cada tarea de optimización requiere verificación** de que todo funciona
- **Priorizar optimización de código propio** antes que plugins genéricos
- **Exclusiones en plugins de caché** si algo se rompe (ej: WP Rocket puede romper builders)

**Plugins recomendados**:
- **LiteSpeed Cache** (si servidor compatible con LiteSpeed)
- **WP Rocket** (configuración cuidadosa, exclusiones si rompe)
- **Perfmatters** (deshabilitar features no usados)
- WP Fastest Cache / WP Super Cache (alternativas simples)

**Herramientas de medición**:
- Google PageSpeed Insights
- GTmetrix
- WebPageTest
- Chrome DevTools (Lighthouse)

**Artefacto**:
- `docs/reporte-wpo.md` (métricas antes/después + acciones realizadas)

**Responsable**: Optimizador + Programador

**Validación (Jefe de Proyectos)**:
- [ ] Core Web Vitals en verde (LCP < 2.5s, FID < 100ms, CLS < 0.1)
- [ ] Imágenes optimizadas (WebP, lazy loading)
- [ ] Scripts diferidos o async
- [ ] Caché configurada
- [ ] Todo funciona después de optimizar (validación funcional)

---

### Fase 13 — Testing (QA)

**Objetivo**: Última línea de defensa antes de usuarios reales.

**Estructura de documentación**:
- `docs/testing/plan.md` (plan completo de testing)
- `docs/testing/checklist.md` (checklist de verificación)
- `docs/testing/reportes/iteracion-[N].md` (informes por iteración)
- `docs/testing/bugs.md` (bugs detectados con pasos para reproducir)
- `docs/testing/evidencias/` (capturas, vídeos, métricas)

**Workflow de testing**:

1. **Pre-testing** (plan + checklist)
2. **Ejecución** (pruebas por área)
3. **Documentación** (bugs + informe)
4. **Corrección** (por agentes correspondientes)
5. **Re-testing** (verificar fixes)
6. **Aprobación** (sign-off cuando cumple criterios)

**Áreas de testing (10 áreas OBLIGATORIAS)**:

**1. Responsive (dispositivos)**:
- Móvil (320px, 375px, 414px)
- Tablet (768px, 1024px)
- Desktop (1366px, 1920px)
- Orientación portrait/landscape

**2. Formularios**:
- Validaciones (campos obligatorios, formato email, teléfono)
- Envío y recepción de emails
- Mensajes de error/éxito
- Protección anti-spam (Honeypot, reCAPTCHA)

**3. Checkout E2E** (si ecommerce):
- Añadir producto al carrito
- Modificar cantidades
- Aplicar cupón/descuento
- Rellenar datos de envío/facturación
- Seleccionar método de pago
- Confirmar pedido
- Recibir email de confirmación
- Ver pedido en "Mi cuenta"

**4. Targeting de audiencia (URLs correctas)**:
- Cada perfil de audiencia tiene su landing
- URLs de planificación funcionan
- Intenciones de búsqueda bien atacadas

**5. Navegación**:
- Menús (desktop/móvil)
- Breadcrumbs
- Enlaces internos funcionales
- 404 personalizada funciona
- Búsqueda interna (si aplica)

**6. Rendimiento (CWV)**:
- PageSpeed Insights (móvil y desktop)
- LCP, FID, CLS en verde
- GTmetrix grado A/B

**7. Accesibilidad (WCAG 2.1 AA)**:
- Contraste de color (mín. 4.5:1 texto, 3:1 UI)
- Navegación por teclado (Tab, Enter, Esc)
- Alt text en imágenes
- Labels en formularios
- ARIA roles donde necesario
- Herramienta: WAVE, axe DevTools

**8. SEO técnico**:
- Titles únicos por página (50-60 chars)
- Meta descriptions (150-160 chars)
- H1 único por página
- Jerarquía de headings (H1 → H2 → H3)
- Canonical tags
- Sitemap.xml generado y enviado
- Robots.txt correcto
- Schema.org (si aplica: Product, Service, Article, Organization)
- Open Graph (redes sociales)

**9. Cross-browser**:
- Chrome (última versión)
- Firefox (última versión)
- Safari (macOS/iOS)
- Edge (última versión)

**10. RGPD (privacidad)**:
- Banner de cookies funcional
- Política de privacidad publicada
- Política de cookies publicada
- Términos y condiciones (si ecommerce)
- Formularios con checkbox de consentimiento
- Datos personales protegidos

---

**Criterios de aprobación (OBLIGATORIOS para dar sign-off)**:

- [ ] **≥ 95% de tests pasados**
- [ ] **0 bugs críticos** (bloquean funcionalidad principal)
- [ ] **0 bugs altos** (afectan experiencia pero no bloquean)
- [ ] **Core Web Vitals en verde** (LCP, FID, CLS)
- [ ] **Funcionalidad crítica 100% OK** (checkout si ecommerce, formularios, navegación)

**Clasificación de bugs**:

| Severidad | Descripción | Ejemplo |
|-----------|-------------|---------|
| **Crítico** | Bloquea funcionalidad principal | Checkout no funciona, formulario no envía, página 500 |
| **Alto** | Afecta experiencia gravemente | Diseño roto en móvil, menú no abre, CTA no visible |
| **Medio** | Afecta pero no bloquea | Espaciado incorrecto, color de texto poco legible |
| **Bajo** | Cosmético, no afecta | Typo en texto, alineación menor |

**Herramientas recomendadas**:
- Chrome DevTools (responsive, performance, lighthouse)
- PageSpeed Insights
- BrowserStack (testing cross-browser)
- WAVE (accesibilidad)
- Screaming Frog (SEO técnico, rastreo de enlaces)

**Artefactos**:
- `docs/testing/plan.md`
- `docs/testing/checklist.md`
- `docs/testing/reportes/*.md`
- `docs/testing/bugs.md`
- `docs/testing/evidencias/` (capturas, vídeos)

**Responsable**: Testador

**Validación (Jefe de Proyectos)**:
- [ ] Plan de testing completo
- [ ] 10 áreas probadas
- [ ] Bugs documentados con pasos
- [ ] Criterios de aprobación cumplidos
- [ ] Evidencias adjuntadas

---

### Fase 14 — Pre-lanzamiento

**Objetivo**: Garantizar que todo está listo para producción.

**Checklist de pre-lanzamiento (OBLIGATORIO completar 100%)**:

**Infraestructura y configuración**:
- [ ] Backup completo de BD y archivos (antes de cualquier cambio)
- [ ] Entorno de producción configurado (hosting definitivo)
- [ ] DNS apuntando correctamente al servidor
- [ ] SSL activo y forzado (HTTPS everywhere)
- [ ] Redirects HTTP → HTTPS configurados
- [ ] Robots.txt actualizado (PERMITIR indexación)
- [ ] Sitemap.xml generado y enviado a Google Search Console
- [ ] Google Analytics / Google Tag Manager configurado
- [ ] Google Search Console verificado (propiedad y sitemap)
- [ ] Página de mantenimiento/construcción DESACTIVADA

**Funcionalidad**:
- [ ] Formularios probados (recepción de emails verificada)
- [ ] Pasarelas de pago en **modo producción** (si aplica)
- [ ] Emails transaccionales configurados (SMTP, SendGrid, Mailgun)
- [ ] Usuarios admin/editor creados con credenciales seguras
- [ ] Roles y permisos verificados

**Legal y privacidad**:
- [ ] Política de privacidad publicada y enlazada en footer
- [ ] Política de cookies publicada
- [ ] Términos y condiciones publicados (si ecommerce)
- [ ] Banner de cookies funcional (RGPD)
- [ ] Textos legales adaptados al negocio (no genéricos)

**Optimización final**:
- [ ] Caché configurada y **purgada** (para empezar limpio)
- [ ] Imágenes optimizadas (WebP, comprimidas)
- [ ] Plugins innecesarios desactivados y eliminados
- [ ] Revisión final de WPO (PageSpeed)

**Migración (si aplica)**:
- [ ] Redirects 301 de URLs antiguas configurados (si migración desde otro sitio)
- [ ] Importación de contenido verificada
- [ ] Verificar que no hay contenido duplicado (canonical tags)

**Verificación final responsive**:
- [ ] Móvil (iPhone, Android)
- [ ] Tablet (iPad, Android tablet)
- [ ] Desktop (mínimo 2 resoluciones: 1366px y 1920px)

**Ecommerce (si aplica)**:
- [ ] Prueba de compra E2E en producción (con tarjeta de prueba o pedido real)
- [ ] Stock configurado
- [ ] Métodos de envío configurados y probados
- [ ] Impuestos configurados según legislación
- [ ] Emails de WooCommerce personalizados

**Artefacto**:
- `docs/pre-lanzamiento.md` (checklist + evidencias + credenciales encriptadas si necesarias)

**Responsable**: Jefe de Proyectos + Implementador

**Validación (Jefe de Proyectos)**:
- [ ] 100% del checklist completado
- [ ] Evidencias de checks críticos adjuntadas
- [ ] Credenciales de producción guardadas de forma segura

---

### Fase 15 — Post-lanzamiento y monitorización

**Objetivo**: Garantizar estabilidad y recoger datos para mejora continua.

**Acciones primeras 72 horas (CRÍTICAS)**:
- [ ] Monitorización de errores (logs del servidor, Sentry si aplica)
- [ ] Verificación de indexación en Google (Search Console)
- [ ] Comprobación de conversiones/formularios (recepción real de leads)
- [ ] Revisión de rendimiento bajo tráfico real (Google Analytics Real-Time)
- [ ] Atención a feedback inicial de usuarios/cliente
- [ ] Verificar que pasarelas de pago funcionan (si aplica)

**Acciones primera semana**:
- [ ] Análisis de Core Web Vitals con tráfico real (datos de campo en PageSpeed)
- [ ] Identificación de páginas lentas (top 5 más visitadas)
- [ ] Revisión de Heat Maps (Hotjar, Microsoft Clarity)
- [ ] Detección de problemas de UX (% rebote alto, tiempo en página bajo)
- [ ] Ajustes de contenido según comportamiento real

**Acciones primer mes**:
- [ ] Informe de métricas completo:
  - Páginas más visitadas (top 10)
  - Tasa de rebote por template
  - Conversiones por canal (orgánico, directo, social, ads)
  - Palabras clave posicionadas (Search Console)
  - Errores 404 (corregir o redirigir)
- [ ] Priorización de mejoras detectadas
- [ ] Planificación de contenido adicional (blog, nuevos servicios)
- [ ] Revisión de estrategia SEO (ajustar según datos reales)

**Herramientas de monitorización**:
- Google Analytics 4 (tráfico, conversiones)
- Google Search Console (indexación, keywords, errores)
- Hotjar / Microsoft Clarity (heat maps, grabaciones)
- Error logs del servidor
- Uptime monitoring (Uptime Robot, Pingdom)

**Artefactos**:
- `docs/post-lanzamiento/informe-72h.md`
- `docs/post-lanzamiento/informe-semana-1.md`
- `docs/post-lanzamiento/informe-mes-1.md`
- `docs/mejora-continua/backlog.md` (mejoras priorizadas)

**Responsable**: Jefe de Proyectos + Optimizador

**Validación (Jefe de Proyectos)**:
- [ ] Informes generados en tiempos establecidos
- [ ] Métricas clave identificadas
- [ ] Backlog de mejoras priorizado
- [ ] Cliente informado del estado

---



## 3) Agentes y roles (con responsabilidades claras)

### 🧭 Jefe de Proyectos (Orquestador)

**Función**: Coordinador central del sistema.

**Responsabilidades**:
- Interlocutor único con el cliente
- Inicializa proyecto (briefing inicial)
- Coordina fases y dependencias
- Valida outputs de cada agente
- Actualiza `roadmap.md` continuamente
- Gestiona eventos (impacto + replanificación dirigida)
- Resuelve conflictos entre artefactos
- Da aprobación final (sign-off)

**Límites**:
- NO ejecuta fases técnicas (delega)
- NO escribe código (delega a Programador)
- NO diseña (delega a Diseñador)
- Su rol es COORDINAR y DECIDIR, no ejecutar

**Modelo asignado**: `claude-sonnet-4-5-20250929` (razonamiento y visión holística)

---

### 🧠 Estratega

**Función**: Define el corazón del negocio y mensaje.

**Responsabilidades**:
- Crear `docs/estrategia.md` completo
- Realizar preguntas pertinentes al cliente (briefing)
- Definir perfiles de audiencia (mín. 3, completos)
- Mapear servicios → perfiles
- Crear elevator pitch (5 componentes)
- Identificar pain points y objeciones por perfil

**Límites**:
- NO decide URLs (eso es del Planificador)
- NO crea contenidos (eso es de Content Creator)
- Define QUÉ comunicar, no CÓMO implementarlo

**Modelo asignado**: `claude-sonnet-4-5-20250929` (análisis de negocio y psicología)

---

### 🗺 Planificador

**Función**: Traduce estrategia a estructura de URLs y SEO.

**Responsabilidades**:
- Crear `docs/planificacion-urls.csv` con columnas obligatorias
- Keyword research
- Asignar intenciones de búsqueda a URLs
- Definir templates WP por URL
- Especificar requisitos de conversión por página
- Realizar preguntas pertinentes sobre intenciones

**Límites**:
- NO decide arquitectura de datos (eso es del Arquitecto)
- NO crea diseño (eso es del Diseñador)
- Define estructura de URLs, no implementación técnica

**Modelo asignado**: `claude-sonnet-4-5-20250929` (estrategia SEO y análisis de intención)

---

### 🧩 Wireframer

**Función**: Define jerarquía, UX y camino al CTA.

**Responsabilidades**:
- Crear wireframes (docs/wireframes.md + diagramas visuales)
- Definir jerarquía de elementos
- Diseñar camino al CTA
- Añadir notas semánticas HTML/SEO
- Añadir notas para copywriter
- Realizar preguntas pertinentes sobre UX

**Límites**:
- NO decide colores ni tipografía (eso es del Diseñador)
- NO implementa maquetación (eso es del Maquetador)
- Define estructura y jerarquía, no estética

**Modelo asignado**: `claude-sonnet-4-5-20250929` (diseño UX y experiencia de usuario)

---

### 🧱 Arquitecto

**Función**: Define modelo de datos de WordPress.

**Responsabilidades**:
- Crear `docs/arquitectura.md` + diagrama Mermaid
- Decidir CPT/CCT según reglas
- Definir campos personalizados por entidad
- Definir relaciones (1:N con IDs, N:N con JetEngine Relations)
- Aplicar regla "mínimo content, máximo campos"
- Nombrar entidades según dominio del negocio
- Realizar preguntas pertinentes sobre estructura de datos

**Límites**:
- NO implementa código (eso es del Programador/Implementador)
- NO decide stack (eso es del Implementador)
- Define QUÉ estructura, no CÓMO implementarla

**Advertencia CRÍTICA**: NO copiar ejemplos genéricos. Analizar el proyecto específico y nombrar según su dominio.

**Modelo asignado**: `claude-sonnet-4-5-20250929` (decisiones de estructura de datos complejas)

---

### ⚙️ Implementador

**Función**: Decide stack y ejecuta configuración de plugins.

**Responsabilidades**:
- Decidir stack (Fase 4): builder/tema + plugins
- Crear `docs/stack.md` con justificaciones
- Aplicar regla WooCommerce para negocio transaccional
- Instalar y configurar WordPress (Fase 0)
- Configurar plugins (Fase 8)
- Configurar conexiones externas (APIs, pasarelas)
- Realizar preguntas pertinentes sobre requisitos técnicos

**Límites**:
- NO escribe código complejo (delega a Programador)
- NO define arquitectura de datos (eso es del Arquitecto)
- Configura y conecta, no desarrolla funcionalidad custom

**Modelo asignado**: `glm-4-flash` (Z.AI) (tareas de configuración técnica repetitivas)

---

### 🎨 Diseñador

**Función**: Toma decisiones estratégicas de diseño visual.

**Responsabilidades**:
- Crear `docs/diseno.md`
- Definir paleta de colores (con proporciones)
- Aplicar psicología del color según audiencia
- Recomendar estilo de multimedia (foto vs ilustración)
- Sugerir diferenciación visual vs competencia
- Realizar preguntas pertinentes sobre preferencias visuales

**Límites**:
- NO implementa CSS (eso es del Maquetador)
- NO decide estructura (eso es del Wireframer)
- Define QUÉ diseño, no CÓMO implementarlo técnicamente

**Modelo asignado**: `claude-sonnet-4-5-20250929` (decisiones de diseño basadas en estrategia)

---

### 💻 Programador

**Función**: Escribe código PHP/JS/CSS funcional.

**Responsabilidades**:
- Desarrollar funcionalidad en plugin propio
- Registrar CPTs, taxonomías, campos (según arquitectura)
- Crear functions.php personalizadas
- Desarrollar shortcodes
- Queries personalizadas (WP_Query, wpdb)
- Hooks y filters de WordPress/WooCommerce
- Código frontend (JavaScript, AJAX)
- Seguir estándares WordPress/PHP

**Límites**:
- NO decide arquitectura (ejecuta lo que Arquitecto definió)
- NO decide plugins (eso es del Implementador)
- EJECUTA especificaciones, no las crea

**Modelo asignado**: `glm-4-flash` (Z.AI) (generación de código según especificaciones)

---

### 🧱 Maquetador

**Función**: Implementa templates según diseño y wireframes.

**Responsabilidades**:
- Crear guía de estilos HTML + CSS (Fase 9)
- Generar framework CSS LMB
- Maquetar templates según wireframes (Fase 10)
- Aplicar variables CSS del sistema
- Implementar queries WP para contenido dinámico
- Responsive (mobile first)
- Conocimientos de WooCommerce (si aplica)

**Límites**:
- NO decide diseño (aplica lo que Diseñador definió)
- NO modifica framework CSS sin consultar
- NO cambia estructura de wireframes sin aprobación
- IMPLEMENTA según docs, no innova

**Modelo asignado**: `glm-4-flash` (Z.AI) (implementación HTML/CSS según especificaciones)

---

### 🔐 Securizador

**Función**: Garantiza seguridad del sitio.

**Responsabilidades**:
- Ejecutar Fase 11 (Seguridad)
- Crear `docs/reporte-seguridad.md`
- Revisar código (sanitización, validación, escapado)
- Configurar plugins de seguridad
- Verificar que entidades privadas NO son accesibles vía API
- Revisar permisos y roles
- Intervenciones puntuales si se le llama durante otras fases

**Límites**:
- NO escribe funcionalidad nueva (delega a Programador si requiere código)
- Enfoque en AUDITAR y RECOMENDAR, implementación puede delegarse

**Modelo asignado**: `claude-sonnet-4-5-20250929` (análisis de vulnerabilidades requiere razonamiento)

---

### 🚀 Optimizador

**Función**: Mejora rendimiento (WPO).

**Responsabilidades**:
- Ejecutar Fase 12 (WPO)
- Crear `docs/reporte-wpo.md`
- Optimizar imágenes (WebP, lazy loading)
- Configurar caché
- Minificar/concatenar CSS/JS
- Diferir scripts no críticos
- Limpieza de database
- Sugerir e implementar mejoras técnicas
- Validar que optimizaciones no rompen funcionalidad

**Límites**:
- NO modifica diseño (solo optimiza)
- NO cambia funcionalidad (solo mejora rendimiento)
- Validación funcional OBLIGATORIA después de cada cambio

**Modelo asignado**: `glm-4-flash` (Z.AI) (implementación de optimizaciones técnicas)

---

### 🧪 Testador

**Función**: QA integral, última línea de defensa.

**Responsabilidades**:
- Ejecutar Fase 13 (Testing)
- Crear plan de testing y checklist
- Probar 10 áreas obligatorias
- Documentar bugs con pasos para reproducir
- Generar informes de QA por iteración
- Validar correcciones (re-testing)
- Dar aprobación final (sign-off) cuando cumple criterios
- Probar funcionalidad, usabilidad, accesibilidad, responsive
- Pruebas de compra/formularios E2E

**Límites**:
- NO corrige bugs (documenta y delega a agente correspondiente)
- Su rol es DETECTAR, no RESOLVER

**Modelo asignado**: `claude-sonnet-4-5-20250929` (análisis de calidad y detección de patrones)

---

## 4) Skills (familias y skills recomendadas)

Las skills son **procedimientos reutilizables**. Se diseñan para:
- Estandarizar outputs
- Acelerar tareas repetitivas
- Mantener consistencia del método

**Clasificación por control**:
- **🔒 Controladas**: Solo se ejecutan cuando el Jefe de Proyectos las solicita explícitamente
- **🔓 Autónomas**: Pueden activarse automáticamente por coincidencia semántica

---

### 4.1 Skills de Producción

**Objetivo**: Generar artefactos principales del sistema.

| Skill | Control | Descripción |
|-------|---------|-------------|
| `generar-briefing-inicial` | 🔓 | Crear briefing base desde preguntas al cliente |
| `generar-estrategia` | 🔓 | Producir `estrategia.md` con secciones obligatorias |
| `generar-planificacion-urls-csv` | 🔓 | Producir CSV con columnas obligatorias y enfoque conversión |
| `generar-wireframes` | 🔓 | Crear wireframes + notas semánticas HTML |
| `definir-stack` | 🔓 | Decidir builder/tema + plugins + regla WooCommerce |
| `definir-arquitectura-wp` | 🔓 | Crear entidades/campos/relaciones + criterios CPT/CCT |
| `generar-informe-diseno` | 🔓 | Crear paleta, proporciones, multimedia, diferenciación |
| `generar-framework-css` | 🔓 | Crear guía HTML + CSS + tokens según sistema LMB |
| `generar-plan-testing` | 🔓 | Crear plan/checklist/estructura de QA |

---

### 4.2 Skills de Validación

**Objetivo**: Detectar incoherencias entre artefactos.

| Skill | Control | Descripción |
|-------|---------|-------------|
| `validar-estrategia-vs-planificacion` | 🔓 | Detectar servicios sin URL o URLs sin objetivo estratégico |
| `validar-planificacion-vs-wireframes` | 🔓 | Detectar templates críticos sin wireframe |
| `validar-wireframes-vs-arquitectura` | 🔓 | Detectar bloques sin soporte de datos/campos en arquitectura |
| `checklist-seguridad` | 🔓 | Verificar hardening + exposición API + roles |
| `checklist-wpo` | 🔓 | Verificar CWV, scripts, cache, imágenes |
| `validacion-qa-final` | 🔓 | Verificar criterios ≥95%, 0 críticos, CWV verde |

---

### 4.3 Skills de Gestión de Cambios (Eventos)

**Objetivo**: Manejar cambios de negocio durante el proyecto.

| Skill | Control | Descripción |
|-------|---------|-------------|
| `registrar-evento` | 🔒 | Describir evento en roadmap con fecha y detalle |
| `analizar-impacto-evento` | 🔒 | Matriz de impacto (qué artefactos revisar) |
| `analizar-impacto-nuevo-servicio` | 🔒 | Análisis específico para añadir nuevo servicio/producto |
| `replanificacion-dirigida` | 🔒 | Re-ejecutar solo fases afectadas en orden correcto |
| `marcar-artefactos-revision` | 🔒 | Marcar artefactos como "requiere_revision" sin borrar |

---

### 4.4 Skills de Estandarización

**Objetivo**: Mantener consistencia y calidad en nomenclatura y estructura.

| Skill | Control | Descripción |
|-------|---------|-------------|
| `normalizar-nombres-slugs` | 🔓 | Aplicar criterios de naming (CPT/CCT/campos/taxonomías/URLs) |
| `validar-estructura-minima` | 🔓 | Comprobar que existe carpeta/docs esperados en proyecto |
| `preparar-resumen-para-cliente` | 🔓 | Generar resumen: estado actual + próximos pasos |

---

### 4.5 Skills de Código (usan GLM-4-Flash)

**Objetivo**: Acelerar generación de código repetitivo.

| Skill | Control | Descripción |
|-------|---------|-------------|
| `generar-plugin-base-wp` | 🔓 | Estructura inicial de plugin WordPress |
| `generar-cpt-fields-code` | 🔓 | Código de registro CPT + campos personalizados |
| `generar-shortcode-wp` | 🔓 | Shortcodes personalizados según especificación |
| `generar-template-php` | 🔓 | Templates WordPress (single, archive, page) |
| `generar-css-componente` | 🔓 | CSS según framework LMB para componente específico |
| `generar-funciones-wp` | 🔓 | Functions.php personalizadas (hooks, filters) |
| `configurar-jetengine-fields` | 🔓 | Generar JSON de configuración para JetEngine |
| `generar-menu-navigation` | 🔓 | Código de registro de menús de navegación |

---

## 5) Recomendaciones de plugins (catálogo del sistema)

**Regla transversal CRÍTICA**:
- Negocio transaccional → **WooCommerce como base** siempre que sea razonable

El catálogo forma parte del template para guiar al Implementador. Esta lista es **orientativa y NO prescriptiva**. Evaluar según proyecto.

---

### Ecommerce y Transaccional

**Base (si ecommerce)**:
- **WooCommerce** (core para productos, pedidos, stock, impuestos, pasarelas)

**Facturas**:
- WooCommerce PDF Invoices & Packing Slips

**Integración con builders**:
- WooLentor (Elementor + WooCommerce)
- ShopEngine (Elementor + WooCommerce)

**Descuentos y precios**:
- Conditional Discounts for WooCommerce
- WooCommerce Dynamic Pricing With Discount Rules
- Product Prices by User Roles
- MWB Role Based Pricing
- YITH Role Based Prices

**Productos avanzados**:
- WPC Composite Products (productos compuestos)
- WooCommerce Product Table (mostrar productos en tabla)
- WPC Product Timer (temporizador de ofertas)
- WPC Force Sells (venta forzada de productos relacionados)
- WPC Linked Variation (variaciones con URL única)
- WooCommerce Product Sample (muestras de productos)

**Checkout y campos**:
- WooCommerce Checkout Field Editor and Manager
- Checkout Field Editor for WooCommerce
- WPC Countdown Timer (urgencia en checkout)

**Envíos y logística**:
- WooCommerce Bookings (reservas de productos por fechas)
- APG Envío por peso
- SuperShipping
- WooCommerce Multiple Customer Addresses & Shipping (múltiples direcciones)

**Pagos y finanzas**:
- WooCommerce Deposits & Partial Payments (depósitos/anticipos)
- WooCommerce Currency Switcher (multi-moneda)
- APG NIF/CIF/NIE (campos fiscales España)

**Otros**:
- WooCommerce Fast Cart (mini-cart optimizado)
- WooCommerce Multiple Email Recipients (múltiples destinatarios en emails)
- States, cities and places for WooCommerce (localización España/LATAM)

---

### Membresías y Restricción de Contenido

**Membresías**:
- Restrict Content Pro (membresías y suscripciones)
- MemberPress (alternativa robusta)

**Contenido digital + membresía**:
- Easy Digital Downloads (EDD) + Content Restriction + Recurring

**Restricción simple**:
- WooCommerce + Restrict.io
- PublishPress Capabilities (gestión de roles)

---

### E-learning

- LearnDash (LMS completo)
- Uncanny Toolkit PRO (extensiones para LearnDash)
- LifterLMS (alternativa a LearnDash)

---

### Reservas y Citas

**Por horas/citas**:
- Amelia
- Bookly PRO
- JetAppointment (JetEngine)

**Por días/alojamiento**:
- WooCommerce Bookings
- MotoPress Hotel Booking
- JetBooking (JetEngine)

---

### Directorios y Listados

- Business Directory Plugin
- Directories PRO
- JetEngine + JetSmartFilters (solución completa con filtros)

---

### Formularios

- JetFormBuilder (potente, integrado con JetEngine)
- Gravity Forms (solución premium completa)
- WPForms (simple y rápido)
- Contact Form 7 (básico, gratuito)

---

### Marketplace

- Dokan (multi-vendor marketplace)
- WCFM (WooCommerce Multivendor Marketplace)
- WC Marketplace (WCMP)

---

### Área Privada y Gestión

- WP Customer Area (área de clientes con documentos)
- JetEngine (queries y listados privados)

---

### Contenido y Engagement

- WordPress Popular Posts (popularidad de posts)
- JetEngine (queries avanzadas y vistas personalizadas)
- The Newsletter Plugin (newsletter nativo)

---

### Migración e Importación

- WP All Export
- WP All Import
- Ultimate CSV Importer
- Frèderic Guilles Plugins (migración desde otros CMS)

---

### Multi-idioma

- Polylang (gratuito, sencillo)
- WPML (premium, completo)
- TranslatePress (visual)
- Weglot (automático, cloud)

---

### Seguridad

- Wordfence (firewall + scanner)
- WP Cerber (protección login)
- iThemes Security (hardening)
- Sucuri Security (auditoría)

---

### Optimización (WPO)

**Caché**:
- LiteSpeed Cache (si servidor LiteSpeed)
- WP Rocket (premium, potente, cuidado con configuración)
- WP Fastest Cache (gratuito, simple)
- W3 Total Cache (avanzado, configuración compleja)
- WP Super Cache (simple, de Automattic)

**Optimización avanzada**:
- Perfmatters (deshabilitar features)
- NitroPack (automático, cloud)

---

### Funcionalidades Específicas

**Afiliados**:
- AffiliateWP

**Eventos y entradas**:
- Tickera
- FooEvents (integrado con WooCommerce)

**Donaciones**:
- GiveWP

**Restaurantes**:
- Gloria Food (pedidos online para restaurantes)

**Base de datos desde dashboard**:
- SQL Buddy (gestor SQL en WP admin)

**Medios en Google Drive**:
- Use your Google Drive for WordPress

**Reviews externas**:
- WP Review Slider PRO (importar reseñas de Google, Yelp, etc.)

**Migración desde Shopify**:
- S2W - Import Shopify to WooCommerce

---

**Nota importante**: Esta lista es **orientativa**. El Implementador debe:
1. Leer la estrategia y planificación del proyecto
2. Identificar qué funcionalidades son necesarias
3. Investigar plugins actualizados (versiones recientes)
4. Evaluar alternativas
5. Justificar elección en `stack.md`

**NO instalar plugins "por si acaso"**. Solo los estrictamente necesarios.

---

## 6) Estructura objetivo del TEMPLATE (carpetas)

**Objetivo**: Que Roo Code pueda crear todo a partir de este documento.

```
proyecto-lmb/
├── .roo/
│   ├── modes/
│   │   ├── jefe-proyectos.md
│   │   ├── estratega.md
│   │   ├── planificador.md
│   │   ├── wireframer.md
│   │   ├── arquitecto.md
│   │   ├── implementador.md
│   │   ├── disenador.md
│   │   ├── programador.md
│   │   ├── maquetador.md
│   │   ├── securizador.md
│   │   ├── optimizador.md
│   │   └── testador.md
│   ├── skills/
│   │   ├── produccion/
│   │   │   ├── generar-briefing-inicial.md
│   │   │   ├── generar-estrategia.md
│   │   │   ├── generar-planificacion-urls-csv.md
│   │   │   ├── generar-wireframes.md
│   │   │   ├── definir-stack.md
│   │   │   ├── definir-arquitectura-wp.md
│   │   │   ├── generar-informe-diseno.md
│   │   │   ├── generar-framework-css.md
│   │   │   └── generar-plan-testing.md
│   │   ├── validacion/
│   │   │   ├── validar-estrategia-vs-planificacion.md
│   │   │   ├── validar-planificacion-vs-wireframes.md
│   │   │   ├── validar-wireframes-vs-arquitectura.md
│   │   │   ├── checklist-seguridad.md
│   │   │   ├── checklist-wpo.md
│   │   │   └── validacion-qa-final.md
│   │   ├── eventos/
│   │   │   ├── registrar-evento.md
│   │   │   ├── analizar-impacto-evento.md
│   │   │   ├── analizar-impacto-nuevo-servicio.md
│   │   │   ├── replanificacion-dirigida.md
│   │   │   └── marcar-artefactos-revision.md
│   │   ├── estandarizacion/
│   │   │   ├── normalizar-nombres-slugs.md
│   │   │   ├── validar-estructura-minima.md
│   │   │   └── preparar-resumen-para-cliente.md
│   │   └── codigo/
│   │       ├── generar-plugin-base-wp.md
│   │       ├── generar-cpt-fields-code.md
│   │       ├── generar-shortcode-wp.md
│   │       ├── generar-template-php.md
│   │       ├── generar-css-componente.md
│   │       ├── generar-funciones-wp.md
│   │       ├── configurar-jetengine-fields.md
│   │       └── generar-menu-navigation.md
│   └── config.json
├── docs/
│   ├── sistema-lmb.md
│   ├── plantillas/
│   │   ├── estrategia.template.md
│   │   ├── planificacion.template.csv
│   │   ├── wireframes.template.md
│   │   ├── arquitectura.template.md
│   │   ├── diseno.template.md
│   │   ├── contenidos.template.md
│   │   └── testing-plan.template.md
│   ├── eventos/
│   │   └── .gitkeep
│   ├── testing/
│   │   ├── plan.template.md
│   │   ├── checklist.template.md
│   │   ├── reportes/
│   │   │   └── .gitkeep
│   │   └── evidencias/
│   │       └── .gitkeep
│   ├── validaciones/
│   │   └── .gitkeep
│   ├── post-lanzamiento/
│   │   └── .gitkeep
│   ├── mejora-continua/
│   │   └── .gitkeep
│   ├── propuestas/
│   │   ├── pendientes/
│   │   │   └── .gitkeep
│   │   └── aprobadas/
│   │       └── .gitkeep
│   └── ideas-mejora.md
├── roadmap.template.md
├── README.md
├── .gitignore
└── CHANGELOG.md
```

---

## 7) Nota final (alineación técnica con Roo Code)

La intención de "agentes que se comunican entre sí y disparan triggers" se implementa como:

**Sistema de detección y escalación**:
- Especialistas **detectan** impactos o incoherencias
- Especialistas **avisan** al Jefe de Proyectos
- Jefe de Proyectos **analiza** la situación
- Jefe de Proyectos **decide** y **registra** en roadmap
- Jefe de Proyectos **dirige re-ejecución** de fases afectadas

**Esto logra**:
- ✅ Coherencia (decisiones centralizadas)
- ✅ Control (trazabilidad de cambios)
- ✅ Auditabilidad (roadmap como registro)
- ✅ Escalabilidad (proceso repetible)

**Evita**:
- ❌ Caos (agentes modificando sin coordinación)
- ❌ Contradicciones (decisiones conflictivas)
- ❌ Pérdida de trazabilidad (cambios sin documentar)

---

# ANEXO — Implementación técnica del sistema en Roo Code

Este anexo describe cómo se implementa técnicamente el sistema definido en este documento dentro de **Roo Code**, sin modificar roles, fases ni criterios metodológicos.

Su objetivo es traducir el sistema conceptual a una estructura ejecutable por IA, manteniendo coherencia, control y trazabilidad.

---

## 1. Roles del sistema y Custom Modes

Cada **rol definido en este documento** se implementa en Roo Code como un **Custom Mode**.

**Principio fundamental**:
- **NO se crean roles nuevos**
- **NO se renombran roles**
- **NO se fusionan responsabilidades**

Cada Custom Mode representa **exactamente un rol del sistema**.

---

### Correspondencia directa Rol → Custom Mode

| Rol del sistema | Custom Mode |
|-----------------|-------------|
| Jefe de Proyectos | `jefe-proyectos` |
| Estratega | `estratega` |
| Planificador | `planificador` |
| Wireframer | `wireframer` |
| Arquitecto | `arquitecto` |
| Implementador | `implementador` |
| Diseñador | `disenador` |
| Programador | `programador` |
| Maquetador | `maquetador` |
| Securizador | `securizador` |
| Optimizador | `optimizador` |
| Testador | `testador` |

Cada Custom Mode dispone de:
- Un prompt base específico
- Un conjunto limitado de herramientas
- Un modelo de IA asignado de forma persistente (sticky model)
- Advertencias sobre ejemplos vs reglas prescriptivas
- Protocolo de análisis antes de tomar decisiones

---

## 2. Uso de modelos (sticky model) por rol

Cada Custom Mode mantiene un **modelo sticky**, es decir, el modelo queda asociado de forma permanente a ese rol.

**Criterio general de asignación**:
- Roles de **análisis, decisión y planificación** → modelos de razonamiento profundo
- Roles de **ejecución, generación y producción** → modelos eficientes y rápidos

---

### Matriz de modelos por rol

| Rol | Modelo sticky | Razón |
|-----|---------------|-------|
| **Jefe de Proyectos** | `claude-sonnet-4-5-20250929` | Razonamiento complejo, decisiones estratégicas, análisis de impacto, visión holística del proyecto |
| **Estratega** | `claude-sonnet-4-5-20250929` | Análisis de negocio, psicología de audiencia, construcción de perfiles, elevator pitch |
| **Planificador** | `claude-sonnet-4-5-20250929` | Estrategia SEO, análisis de intención de búsqueda, keyword research, mapping URLs |
| **Wireframer** | `claude-sonnet-4-5-20250929` | Diseño UX, jerarquía de información, camino al CTA, experiencia de usuario |
| **Arquitecto** | `claude-sonnet-4-5-20250929` | Decisiones de estructura de datos complejas, relaciones entre entidades, criterios CPT/CCT |
| **Diseñador** | `claude-sonnet-4-5-20250929` | Psicología del color, decisiones de diseño estratégicas basadas en audiencia |
| **Implementador** | `glm-4-flash` (Z.AI) | Instalación de plugins, configuración técnica, tareas repetitivas de setup |
| **Programador** | `glm-4-flash` (Z.AI) | Generación de código PHP/JS/CSS, implementación de especificaciones ya definidas |
| **Maquetador** | `glm-4-flash` (Z.AI) | Implementación HTML/CSS según framework, maquetación de templates |
| **Securizador** | `claude-sonnet-4-5-20250929` | Análisis de vulnerabilidades, detección de patrones de seguridad, evaluación de riesgos |
| **Optimizador** | `glm-4-flash` (Z.AI) | Implementación de optimizaciones técnicas (caché, minificación, lazy loading) |
| **Testador** | `claude-sonnet-4-5-20250929` | Análisis de calidad, detección de problemas, evaluación de criterios QA complejos |

---

## 3. Artefactos del sistema y estado

Todos los documentos, CSVs, esquemas e informes generados por el sistema se consideran **artefactos vivos**.

Cada artefacto debe incluir un **frontmatter estándar** (YAML):

```yaml
---
tipo: estrategia | planificacion | arquitectura | wireframe | diseno | contenido | testing | setup | stack | wpo | seguridad
estado: vigente | requiere_revision | obsoleto_parcial | archivado
fase: [nombre-fase]
version: 1
responsable: [nombre-rol]
creado: YYYY-MM-DD
ultima_revision: YYYY-MM-DD
validado_por: jefe-proyectos | null
validado_en: YYYY-MM-DD | null
impactado_por_evento: true | false
evento_id: EVT-XXX | null
---
```

---

## 4. Sistema de gestión de mejoras

Durante la construcción del TEMPLATE, si un agente detecta una mejora al sistema:

**NO debe** modificar este documento (tiene `editable: false`)

**SÍ debe** documentar en `docs/ideas-mejora.md`:

```markdown
## IDEA-[ID]: [Título breve]
- **Detectado por**: [rol] (sesión X)
- **Descripción**: [qué mejorar]
- **Propuesta**: [texto específico o cambio sugerido]
- **Sección afectada**: [dónde iría en sistema-lmb]
- **Estado**: Pendiente revisión
```

---

## FIN DEL DOCUMENTO COMPLETO

---

