# Sistema LMB - Template Clonable

Template profesional para proyectos WordPress bajo la metodología de **La Máquina del Branding (LMB)**.

---

## 🚀 Inicio Rápido (Para Alumnos/Nuevos Proyectos)

### Opción A: Usar GitHub Template (Recomendada) ⭐

1. **Usa este template**: Click en **"Use this template"** arriba ☝️
2. **Crea tu repo**: Nombre: `proyecto-cliente-xyz`
3. **Clona localmente**:
   ```bash
   git clone https://github.com/[tu-usuario]/proyecto-cliente-xyz.git
   cd proyecto-cliente-xyz
   ```
4. **Inicializa proyecto**:
   ```bash
   # Linux/Mac/Git Bash
   ./scripts/init-project.sh
   
   # Windows PowerShell
   .\scripts\init-project.ps1
   ```
5. **Push inicial**:
   ```bash
   git push origin main
   ```

✅ **Listo para trabajar** con el Jefe de Proyectos

---

### Opción B: Descargar ZIP

1. **Descargar**: [Latest Release](https://github.com/yannicklmb/SISTEMA_LMB/releases/latest)
2. **Extraer** en carpeta del proyecto
3. **Ejecutar**: `./scripts/init-project.sh`
4. **(Opcional)** Conectar a tu GitHub después

---

### 📖 Guía Completa

**Primera vez usando este template?** Lee la guía paso a paso: **[GETTING_STARTED.md](GETTING_STARTED.md)**

---

## 🎯 ¿Qué es este template?

Este repositorio es un **template clonable** que contiene:

- **12 Custom Modes** (roles especializados para Roo Code)
- **28 Skills** (procedimientos reutilizables)
- **8 Templates** de artefactos principales
- **Estructura de carpetas** completa
- **Sistema de gestión** basado en artefactos vivos

## 📋 Características Principales

### Sistema Agéntico
- Orquestación centralizada por Jefe de Proyectos
- Especialistas con responsabilidades claras
- Modelos sticky asignados por rol (Claude Sonnet 4.5 / GLM-4-Flash)

### Metodología
- **16 fases** (Fase 0 a Fase 15)
- **Roadmap vivo** con gestión de eventos
- **Validaciones cruzadas** entre artefactos
- **NO se borra trabajo previo** (se itera)

### Plataforma
- **WordPress** como CMS base
- **Despliegue FTP**
- **WooCommerce** para proyectos transaccionales (regla obligatoria)

## 📖 Fases del Proyecto

El sistema sigue **16 fases secuenciales** definidas en [`docs/sistema-lmb.md`](docs/sistema-lmb.md):

- **Fase 0**: Setup del proyecto
- **Fase 1**: Estrategia
- **Fase 2**: Planificación (SEO + URLs)
- **Fase 3**: Wireframing
- **Fase 4**: Definición de stack
- **Fase 5**: Arquitectura
- **Fase 6**: Diseño
- **Fase 6b**: Creación de contenidos
- **Fase 7**: Inserción de contenido base
- **Fase 8**: Implementación de plugins
- **Fase 9**: Framework CSS LMB
- **Fase 10**: Maquetación
- **Fase 11**: Seguridad
- **Fase 12**: Optimización (WPO)
- **Fase 13**: Testing (QA)
- **Fase 14**: Pre-lanzamiento
- **Fase 15**: Post-lanzamiento

## 📁 Estructura del Template

```
proyecto-lmb/
├── .roo/
│   ├── modes/              # 12 Custom Modes
│   ├── skills/             # 28 Skills en 5 familias
│   └── config.json         # Configuración de Roo Code
├── docs/
│   ├── sistema-lmb.md      # Fuente de verdad (editable: false)
│   ├── plantillas/         # 8 templates de artefactos
│   ├── eventos/            # Registro de cambios de negocio
│   ├── testing/            # Plan, checklist, reportes, bugs
│   ├── validaciones/       # Validaciones cruzadas
│   ├── post-lanzamiento/   # Monitorización
│   ├── mejora-continua/    # Backlog de mejoras
│   └── ideas-mejora.md     # Propuestas de mejora al sistema
├── plans/                  # Planes de implementación
├── scripts/                # 🆕 Scripts de inicialización
│   ├── init-project.sh     # Script para Linux/Mac/Git Bash
│   ├── init-project.ps1    # Script para Windows PowerShell
│   └── README.md           # Documentación de scripts
├── roadmap.template.md     # Template de roadmap vivo
├── GETTING_STARTED.md      # 🆕 Guía completa para alumnos
├── README.md               # Este archivo
├── CHANGELOG.md            # Historial de cambios
└── .gitignore              # Archivos excluidos
```

## 🎭 Roles del Sistema (Custom Modes)

### Coordinación y Estrategia
- **🧭 Jefe de Proyectos**: Orquestador central
- **🧠 Estratega**: Define el corazón del negocio
- **🗺 Planificador**: Estructura de URLs y SEO
- **🧩 Wireframer**: Jerarquía UX y camino al CTA

### Arquitectura y Diseño
- **🧱 Arquitecto**: Modelo de datos WordPress
- **🎨 Diseñador**: Decisiones estratégicas de diseño
- **⚙️ Implementador**: Stack y configuración de plugins

### Desarrollo
- **💻 Programador**: Código PHP/JS/CSS
- **🧱 Maquetador**: Templates según diseño

### Calidad
- **🔐 Securizador**: Seguridad del sitio
- **🚀 Optimizador**: Rendimiento (WPO)
- **🧪 Testador**: QA integral

## ⚠️ Reglas Críticas

### 1. Ejemplos vs Reglas Prescriptivas

**Elementos PRESCRIPTIVOS** (obligatorios):
- Marcados con: "DEBE", "SIEMPRE", "NUNCA", "OBLIGATORIO", "CRÍTICO"
- Aplican a TODOS los proyectos sin excepción

**Elementos ILUSTRATIVOS** (orientativos):
- Marcados con: "por ejemplo", "como", "ilustrativo"
- Variables entre `[corchetes]`
- Deben adaptarse al negocio específico

### 2. Análisis Obligatorio

**Los agentes DEBEN**:
1. Leer los artefactos del proyecto específico
2. Identificar entidades reales según el negocio
3. Nombrar según vocabulario del cliente
4. Justificar decisiones con base en artefactos
5. Preguntar ante ambigüedades

**Los agentes NO DEBEN**:
- Copiar ejemplos literalmente
- Asumir estructura genérica (CPT "servicio", taxonomía "categoria")
- Tomar decisiones sin analizar el proyecto

### 3. WooCommerce para Transaccionales

**CRÍTICO**: Si el negocio es transaccional (venta con pago):
- ✅ SIEMPRE usar WooCommerce como base
- ✅ Productos → `product` (CPT de WooCommerce)
- ✅ Pedidos → `shop_order` (WooCommerce)
- ❌ NO crear CPT propios que dupliquen WooCommerce

## 📚 Documentación Principal

- **[docs/sistema-lmb.md](docs/sistema-lmb.md)**: Especificación completa del sistema
- **[plans/plan-implementacion-template-lmb.md](plans/plan-implementacion-template-lmb.md)**: Plan de construcción del template

## 🔄 Gestión de Cambios (Eventos)

Cuando el cliente comunica un cambio de negocio:

1. **Jefe de Proyectos** registra evento en roadmap
2. Analiza impacto con skill correspondiente
3. Marca artefactos afectados como "requiere_revision"
4. Re-ejecuta fases afectadas en orden correcto
5. Actualiza roadmap con nueva planificación

**Regla de oro**: NO se borra trabajo previo. Se marca obsolescencia y se itera.

## 📊 Métricas de Calidad

### Por Fase
- **Estrategia**: ≥ 3 perfiles completos (100% campos)
- **Planificación**: Ratio keywords/URLs ≥ 1.5:1
- **Arquitectura**: Ratio campos/content ≥ 80/20
- **Diseño**: Contraste WCAG AA (4.5:1 texto, 3:1 UI)
- **WPO**: LCP < 2.5s, FID < 100ms, CLS < 0.1
- **Testing**: ≥ 95% tests pasados, 0 bugs críticos/altos

## 🛠️ Herramientas Recomendadas

### Desarrollo
- **Roo Code**: Plataforma de agentes IA
- **WordPress**: CMS base
- **WooCommerce**: Para proyectos transaccionales
- **JetEngine**: CPT/CCT/campos (con builders)

### Testing
- Chrome DevTools (Lighthouse)
- PageSpeed Insights
- BrowserStack
- WAVE (accesibilidad)
- Screaming Frog (SEO)

## 🤝 Contribuir al Sistema

Para proponer mejoras al sistema:

1. Documenta en [`docs/ideas-mejora.md`](docs/ideas-mejora.md)
2. **NO modifiques** `docs/sistema-lmb.md` (tiene `editable: false`)
3. Usa el formato establecido
4. Incluye justificación y propuesta concreta

## 📜 Licencia

Este template es propiedad de **La Máquina del Branding (LMB)**.

Uso exclusivo para proyectos de la agencia.

---

## 🆘 Soporte

Para dudas sobre el sistema:
1. Consulta [`docs/sistema-lmb.md`](docs/sistema-lmb.md)
2. Consulta en la comunidad privada de https://lamaquinadelbranding.com

---

**Versión del Template**: 1.0.0  
**Última Actualización**: 2025-01-20
