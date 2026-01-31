# 🎓 Guía de Inicio - Sistema LMB

**Bienvenido al Sistema LMB**, un template profesional para proyectos WordPress bajo la metodología de La Máquina del Branding.

Esta guía te ayudará a **iniciar tu primer proyecto** paso a paso.

---

## 📋 Tabla de Contenidos

1. [Requisitos Previos](#-requisitos-previos)
2. [Método 1: GitHub Template (Recomendado)](#-método-1-github-template-recomendado)
3. [Método 2: Descarga ZIP](#-método-2-descarga-zip-sin-github)
4. [Siguientes Pasos](#-siguientes-pasos)
5. [Preguntas Frecuentes](#-preguntas-frecuentes)
6. [Troubleshooting](#-troubleshooting)

---

## 📋 Requisitos Previos

Antes de empezar, asegúrate de tener:

### Obligatorios

- ✅ **Git** instalado → [Descargar Git](https://git-scm.com/)
  - Verifica: `git --version` en tu terminal
  - Mínimo: Git 2.0+

- ✅ **Editor de código** → [VS Code](https://code.visualstudio.com/) (recomendado)
  - Alternativas: Sublime, Atom, etc.

### Recomendados

- ✅ **Cuenta de GitHub** → [Crear cuenta gratis](https://github.com/join)
  - No es obligatorio, pero facilita colaboración
  - Necesario si quieres usar "GitHub Template"

- ✅ **Roo Code** instalado → Para usar los Custom Modes
  - Sin Roo Code puedes seguir la metodología manualmente
  - Pero los agentes automatizan mucho el trabajo

### Para el proyecto final (no ahora)

- WordPress ≥ 6.0
- PHP ≥ 8.0
- Servidor con FTP

---

## 🚀 Método 1: GitHub Template (Recomendado)

Este método crea un **repositorio independiente** en tu GitHub, sin historial del template original.

### Paso 1: Crear Tu Proyecto desde el Template

1. **Ir al repositorio del template**:
   ```
   https://github.com/yannicklmb/SISTEMA_LMB
   ```

2. **Click en el botón verde** "Use this template"
   - Está arriba a la derecha, junto a "Code"

3. **Click en** "Create a new repository"

4. **Configurar tu nuevo repositorio**:

   | Campo | Valor | Ejemplo |
   |-------|-------|---------|
   | **Owner** | Tu usuario de GitHub | `alumno123` |
   | **Repository name** | Nombre del proyecto | `proyecto-restaurante-gourmet` |
   | **Description** | Breve descripción | "Proyecto web para Restaurante El Buen Sabor" |
   | **Visibility** | Public o Private | `Private` (si es confidencial) |
   | **Include all branches** | ☐ Desmarcado | Desmarcado |

5. **Click en** "Create repository"

✅ **Resultado**: Tienes un repositorio nuevo en `https://github.com/[TU-USUARIO]/proyecto-restaurante-gourmet`

**Importante**: Este repo NO es un fork, es completamente independiente y NO tiene historial del template.

---

### Paso 2: Clonar el Proyecto Localmente

Abre tu terminal y ejecuta:

```bash
# Clonar tu nuevo repositorio
git clone https://github.com/[TU-USUARIO]/proyecto-restaurante-gourmet.git

# Ejemplo real:
# git clone https://github.com/alumno123/proyecto-restaurante-gourmet.git

# Entrar al directorio
cd proyecto-restaurante-gourmet
```

**Verificar** que se clonó correctamente:
```bash
ls -la
# Debes ver: .roo/, docs/, scripts/, README.md, etc.
```

---

### Paso 3: Inicializar el Proyecto

Ejecuta el script de inicialización según tu sistema operativo:

#### Linux / macOS / Git Bash (Windows)

```bash
./scripts/init-project.sh
```

**Si sale "Permission denied"**:
```bash
chmod +x scripts/init-project.sh
./scripts/init-project.sh
```

#### Windows PowerShell

```powershell
.\scripts\init-project.ps1
```

**Si no ejecuta** (política de ejecución):
```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\scripts\init-project.ps1
```

---

### Paso 4: Responder las Preguntas del Script

El script te preguntará:

```
📋 Datos del Proyecto

Nombre del proyecto (ej: Web Restaurante Gourmet): 
```
👉 Escribe algo como: **Web Restaurante El Buen Sabor**

```
Nombre del cliente (ej: Restaurante El Buen Sabor): 
```
👉 Escribe: **Restaurante El Buen Sabor**

```
Fecha de inicio (YYYY-MM-DD) [2025-01-20]: 
```
👉 Presiona Enter para usar la fecha de hoy, o escribe otra: **2025-01-20**

```
👤 Tu Identidad (para Git)

Tu nombre completo: 
```
👉 Escribe tu nombre real: **Juan Pérez García**

```
Tu email: 
```
👉 Escribe tu email real: **juan.perez@example.com**

✅ **El script configura automáticamente todo**

---

### Paso 5: Verificar que Todo Está Bien

```bash
# Ver configuración de Git (debe ser TU nombre y email)
git config user.name
git config user.email

# Ver que roadmap.md se creó con tus datos
cat roadmap.md | head -30

# Ver el commit inicial
git log
```

Todo debe mostrar **tus datos**, no placeholders ni datos del profesor.

---

### Paso 6: Subir el Proyecto a GitHub

```bash
# Verificar estado
git status

# Subir los cambios
git push origin main
```

Si todo está bien, verás:
```
Writing objects: 100%...
To https://github.com/[TU-USUARIO]/proyecto-restaurante-gourmet.git
   abc1234..def5678  main -> main
```

✅ **¡Proyecto inicializado y en GitHub!**

Ahora puedes ver tu proyecto en:
```
https://github.com/[TU-USUARIO]/proyecto-restaurante-gourmet
```

---

### Paso 7: Empezar a Trabajar

#### Con VS Code

```bash
# Abrir el proyecto en VS Code
code .
```

#### Con Roo Code

1. Asegúrate de tener Roo Code instalado
2. El proyecto ya tiene la carpeta `.roo/` con 12 Custom Modes
3. Cambia al modo **Jefe de Proyectos**
4. Inicia el briefing:

```
Hola, quiero iniciar el proyecto "Web Restaurante El Buen Sabor".
Vamos a hacer el briefing inicial según la Fase 1.
```

5. Sigue las indicaciones del Jefe de Proyectos

---

## 🚀 Método 2: Descarga ZIP (Sin GitHub)

Si **no quieres usar GitHub** o prefieres trabajar solo localmente.

### Paso 1: Descargar el Template

1. **Ir a Releases**:
   ```
   https://github.com/yannicklmb/SISTEMA_LMB/releases/latest
   ```

2. **Descargar** `SISTEMA_LMB-v[version].zip`
   - Ejemplo: `SISTEMA_LMB-v1.0.0.zip`

3. **Extraer** el ZIP en la carpeta donde quieras trabajar
   - Ejemplo: `C:\Proyectos\restaurante-gourmet\`
   - O: `~/proyectos/restaurante-gourmet/`

---

### Paso 2: Inicializar el Proyecto

Abre terminal en la carpeta extraída y ejecuta:

**Linux/Mac/Git Bash**:
```bash
cd SISTEMA_LMB-main
./scripts/init-project.sh
```

**Windows PowerShell**:
```powershell
cd SISTEMA_LMB-main
.\scripts\init-project.ps1
```

El script te hará las mismas preguntas que en el Método 1.

✅ **El script automáticamente**:
- Inicializa Git desde cero (`git init`)
- Configura tu identidad Git
- Crea `roadmap.md` personalizado
- Crea commit inicial

---

### Paso 3: (Opcional) Conectar a GitHub Después

Si después decides subir a GitHub:

1. **Crear repositorio vacío** en GitHub
   - NO marcar "Initialize with README"
   - Repositorio completamente vacío

2. **Conectar tu proyecto local**:
   ```bash
   git remote add origin https://github.com/[TU-USUARIO]/proyecto-xyz.git
   git push -u origin main
   ```

✅ **Ya está en GitHub** con tu historial limpio

---

## 📚 Siguientes Pasos

### 1. Familiarízate con la Estructura

```
proyecto-cliente-xyz/
├── .roo/                      # 🤖 Sistema de agentes
│   ├── modes/                 # 12 Custom Modes (roles)
│   ├── skills/                # 28 Skills (procedimientos)
│   └── config.json            # Configuración de Roo Code
│
├── docs/                      # 📚 Documentación
│   ├── sistema-lmb.md         # ⭐ FUENTE DE VERDAD (léelo primero)
│   ├── plantillas/            # Templates de artefactos
│   ├── eventos/               # Gestión de cambios
│   ├── testing/               # Plan de QA
│   ├── validaciones/          # Validaciones cruzadas
│   └── ideas-mejora.md        # Propuestas de mejora al sistema
│
├── plans/                     # 📋 Planes de implementación
├── scripts/                   # 🛠️ Scripts de utilidad
├── roadmap.md                 # ⭐ TU ROADMAP (personalizado)
├── roadmap.template.md        # Template del roadmap (no tocar)
├── README.md                  # Documentación del template
└── .gitignore                 # Archivos excluidos de Git
```

---

### 2. Lee la Metodología (OBLIGATORIO)

📖 **Archivo más importante**: [`docs/sistema-lmb.md`](docs/sistema-lmb.md)

Este documento contiene:

- ✅ **16 fases** del sistema (Fase 0 a Fase 15)
- ✅ **12 roles/agentes** con responsabilidades claras
- ✅ **Reglas obligatorias** (NO negociables)
- ✅ **Validaciones** entre artefactos
- ✅ **Métricas de calidad** por fase
- ✅ **Gestión de eventos** (cambios de negocio)

**Tiempo de lectura**: ~2 horas

**No lo leas todo de una vez**. Lee por fases conforme avances:
- Al inicio: Lee Introducción + Fase 0, 1, 2
- Antes de cada fase: Lee esa fase específica

---

### 3. Conoce los Custom Modes

En Roo Code, tienes **12 modos especializados** (roles):

| Modo | Emoji | Función | Cuándo usarlo |
|------|-------|---------|---------------|
| **Jefe de Proyectos** | 🧭 | Orquestador central | ⭐ **¡Empieza aquí!** Briefing inicial |
| **Estratega** | 🧠 | Define estrategia de negocio | Fase 1: Perfiles, elevator pitch |
| **Planificador** | 🗺 | URLs y SEO | Fase 2: Keywords, planificación URLs |
| **Wireframer** | 🧩 | UX y estructura | Fase 3: Wireframes, jerarquía |
| **Arquitecto** | 🧱 | Modelo de datos WordPress | Fase 5: CPT, campos, relaciones |
| **Diseñador** | 🎨 | Decisiones de diseño | Fase 6: Paleta, psicología del color |
| **Implementador** | ⚙️ | Configuración técnica | Fase 0, 4, 7, 8: Setup, stack, plugins |
| **Programador** | 💻 | Código PHP/JS/CSS | Fase 8: Plugin propio, funciones |
| **Maquetador** | 🧱 | Templates y CSS | Fase 9-10: Framework CSS, maquetación |
| **Securizador** | 🔐 | Seguridad | Fase 11: Auditoría, hardening |
| **Optimizador** | 🚀 | WPO y rendimiento | Fase 12: Core Web Vitals, caché |
| **Testador** | 🧪 | QA y testing | Fase 13: Testing integral, bugs |

**Importante**: Cada modo tiene un **modelo sticky** asignado:
- Claude Sonnet 4.5 para roles de análisis/decisión
- GLM-4-Flash para roles de ejecución/generación

---

### 4. Sigue las Fases Secuencialmente

El sistema tiene **16 fases obligatorias**:

```
┌─────────────────────────────────────────────────┐
│ Fase 0: Setup del Proyecto                     │ ⚙️ Implementador
├─────────────────────────────────────────────────┤
│ Fase 1: Estrategia                             │ 🧠 Estratega
│ Fase 2: Planificación (SEO + URLs)            │ 🗺 Planificador
│ Fase 3: Wireframing                           │ 🧩 Wireframer
│ Fase 4: Stack (Builder + Plugins)             │ ⚙️ Implementador
│ Fase 5: Arquitectura (Modelo de Datos)        │ 🧱 Arquitecto
│ Fase 6: Diseño                                │ 🎨 Diseñador
│ Fase 6b: Creación de Contenidos              │ 🧠 Estratega
├─────────────────────────────────────────────────┤
│ Fase 7: Inserción de Contenido Base           │ ⚙️ Implementador
│ Fase 8: Implementación de Plugins             │ ⚙️ Implementador + 💻 Programador
│ Fase 9: Framework CSS LMB                     │ 🧱 Maquetador + 🎨 Diseñador
│ Fase 10: Maquetación                          │ 🧱 Maquetador
├─────────────────────────────────────────────────┤
│ Fase 11: Seguridad                            │ 🔐 Securizador
│ Fase 12: Optimización (WPO)                   │ 🚀 Optimizador
│ Fase 13: Testing (QA)                         │ 🧪 Testador
│ Fase 14: Pre-lanzamiento                      │ 🧭 Jefe de Proyectos
│ Fase 15: Post-lanzamiento                     │ 🧭 Jefe de Proyectos
└─────────────────────────────────────────────────┘
```

**No te saltes fases**. Cada fase depende de las anteriores.

---

### 5. Tu Primera Interacción

**Con el Jefe de Proyectos** (modo `jefe-proyectos`):

```
Hola, soy [Tu Nombre] y voy a gestionar el proyecto [Nombre del Proyecto] 
para el cliente [Nombre del Cliente].

Quiero iniciar con el briefing de la Fase 1 (Estrategia).
¿Qué información necesitas del cliente?
```

El Jefe de Proyectos te guiará paso a paso.

---

## ❓ Preguntas Frecuentes

### ¿Necesito saber Git?

**Sí, conocimientos básicos**. Necesitas saber:
- `git clone` - Clonar repositorio
- `git add` - Añadir cambios
- `git commit` - Guardar cambios
- `git push` - Subir a GitHub
- `git status` - Ver estado
- `git log` - Ver historial

**Aprende más**: [Git - La Guía Sencilla](https://rogerdudler.github.io/git-guide/index.es.html)

---

### ¿Puedo usar esto sin GitHub?

**Sí**, puedes:
- ✅ Trabajar solo localmente (Git local sin remote)
- ✅ Usar otro hosting Git (GitLab, Bitbucket)
- ✅ Compartir por Dropbox/Drive (no recomendado para desarrollo)

Pero **GitHub facilita mucho**:
- Backup automático en la nube
- Colaboración con equipo
- Issues para gestión
- Releases para versiones

---

### ¿Qué hago si no tengo Roo Code?

El template funciona con cualquier editor, pero **Roo Code es esencial** para usar los **Custom Modes** y **Skills**.

**Sin Roo Code puedes**:
- ✅ Usar manualmente las plantillas en `docs/plantillas/`
- ✅ Leer `docs/sistema-lmb.md` y seguir la metodología
- ✅ Crear los artefactos manualmente
- ❌ Pero NO tendrás los agentes automáticos

**Recomendación**: Instala Roo Code para aprovechar todo el sistema.

---

### ¿Puedo modificar el template?

**Sí, cada proyecto es único**. El template es una **base**, no una camisa de fuerza.

**Puedes modificar**:
- ✅ Fases específicas según el proyecto
- ✅ Artefactos (añadir campos, secciones)
- ✅ Estructura de carpetas (si tiene sentido)

**NO debes ignorar**:
- ❌ Reglas obligatorias marcadas con "DEBE", "SIEMPRE", "NUNCA"
- ❌ Validaciones cruzadas entre artefactos
- ❌ Principios fundamentales (ej: mínimo content, máximo campos)

Lee `docs/sistema-lmb.md` sección "⚠️ IMPORTANTE: Cómo leer este documento" para distinguir **reglas prescriptivas** vs **ejemplos ilustrativos**.

---

### ¿Qué pasa si el cliente cambia algo a mitad de proyecto?

El sistema tiene **gestión de eventos** (cambios de negocio).

**Proceso**:
1. Registrar evento en `roadmap.md`
2. Usar skill `analizar-impacto-evento`
3. Marcar artefactos afectados como "requiere_revision"
4. Re-ejecutar fases impactadas
5. Actualizar roadmap con nueva planificación

**Regla de oro**: NO se borra trabajo previo. Se marca obsolescencia y se itera.

Ver: `docs/sistema-lmb.md` sección "1.4 Roadmap vivo + Eventos"

---

### ¿El sistema funciona solo para WordPress?

Sí, **el sistema está diseñado específicamente para WordPress**.

Si tu proyecto NO es WordPress:
- ❌ Este template NO es adecuado
- ✅ Pero puedes adaptar la metodología (fases, roles, artefactos)

---

### ¿Debo usar WooCommerce siempre?

**Solo si el negocio es transaccional** (venta con pago).

**REGLA CRÍTICA**:
- ✅ Si vende productos/servicios con pago → **SIEMPRE usar WooCommerce**
- ✅ Si es contenido digital puro → Evaluar EDD (Easy Digital Downloads)
- ❌ NO crear sistema propio de ecommerce desde cero

Ver: `docs/sistema-lmb.md` Fase 4 y Fase 5.

---

### ¿Cuánto tiempo toma completar un proyecto?

Depende del alcance, pero **estimación orientativa**:

| Tipo de Proyecto | Duración | Fases críticas |
|------------------|----------|----------------|
| **Landing Page** | 2-3 semanas | 0-6b, 9-14 |
| **Web corporativa** | 4-6 semanas | Todas (0-15) |
| **Ecommerce básico** | 6-8 semanas | Todas + extra testing |
| **Plataforma compleja** | 8-12 semanas | Todas + iteraciones |

**Variables**:
- Disponibilidad del cliente (respuestas, contenidos)
- Complejidad del diseño
- Cantidad de integraciones (APIs, pasarelas)
- Nivel de customización

---

## 🐛 Troubleshooting

### Error: "roadmap.template.md not found"

**Causa**: Ejecutaste el script desde una carpeta incorrecta.

**Solución**:
```bash
# Volver a la raíz del proyecto
cd ..
# O navegar a la raíz correcta
cd /ruta/completa/al/proyecto

# Verificar que estás en la raíz
ls roadmap.template.md
# Debe mostrar el archivo

# Ejecutar el script
./scripts/init-project.sh
```

---

### Error: Git no configurado globalmente

**Síntoma**: El script pregunta tu identidad pero luego Git pide configuración global.

**Causa**: El script configura Git **localmente** (solo para este proyecto), pero algunas operaciones pueden requerir configuración global.

**Solución** (opcional, solo si tienes problemas):
```bash
git config --global user.name "Tu Nombre"
git config --global user.email "tu@email.com"
```

Esto NO sobrescribe la configuración local del proyecto.

---

### Los Custom Modes no aparecen en Roo Code

**Causa**: Roo Code no está reconociendo la carpeta `.roo/`

**Solución**:
1. Verificar que `.roo/` existe: `ls -la .roo`
2. Verificar que `config.json` existe: `cat .roo/config.json`
3. Reiniciar Roo Code
4. Abrir la carpeta del proyecto en Roo Code
5. Los modos deberían aparecer automáticamente

---

### El script no funciona en Windows

**Problema**: Windows CMD no ejecuta scripts Bash.

**Solución**: Usa una de estas alternativas:

**Opción A**: PowerShell (recomendado)
```powershell
.\scripts\init-project.ps1
```

**Opción B**: Git Bash (viene con Git para Windows)
```bash
bash scripts/init-project.sh
```

**Opción C**: WSL (Windows Subsystem for Linux)
```bash
./scripts/init-project.sh
```

---

### "Use this template" no aparece en GitHub

**Causa**: El repositorio del profesor aún no está configurado como "Template Repository".

**Solución temporal**: Usa el Método 2 (Descarga ZIP)

**Solución definitiva**: Espera a que el profesor configure el repo como template.

---

### No puedo push a GitHub (rejected)

**Error**:
```
! [rejected]        main -> main (fetch first)
error: failed to push some refs
```

**Causa**: El repo remoto tiene commits que no tienes localmente.

**Solución**:
```bash
git pull origin main
# Resolver conflictos si hay
git push origin main
```

---

### Olvidé mi configuración Git

**Ver tu configuración**:
```bash
git config user.name
git config user.email
```

**Cambiar tu configuración** (local al proyecto):
```bash
git config user.name "Nuevo Nombre"
git config user.email "nuevo@email.com"
```

---

## 📚 Recursos de Aprendizaje

### Git y GitHub

- [Git - La Guía Sencilla](https://rogerdudler.github.io/git-guide/index.es.html) - Español, muy claro
- [GitHub Skills](https://skills.github.com/) - Tutoriales interactivos
- [Git Cheat Sheet](https://education.github.com/git-cheat-sheet-education.pdf) - Comandos esenciales

### WordPress

- [WordPress.org Documentation](https://wordpress.org/documentation/) - Documentación oficial
- [WP Codex](https://codex.wordpress.org/) - Referencia completa
- [WooCommerce Docs](https://woocommerce.com/documentation/) - Si usas ecommerce

### Metodología LMB

- [`docs/sistema-lmb.md`](docs/sistema-lmb.md) - **Especificación completa del sistema**
- [`README.md`](README.md) - Resumen del template
- Comunidad privada: https://lamaquinadelbranding.com

---

## ✅ Checklist de Inicio

Antes de empezar con el cliente, verifica:

- [ ] ✅ Template clonado o descargado
- [ ] ✅ Script de inicialización ejecutado correctamente
- [ ] ✅ `roadmap.md` personalizado con datos reales (NO placeholders)
- [ ] ✅ Git configurado con TU identidad (no del profesor)
- [ ] ✅ Proyecto en GitHub (o Git local)
- [ ] ✅ Roo Code instalado y funcionando
- [ ] ✅ `.roo/modes/` con 12 Custom Modes visibles
- [ ] ✅ `docs/sistema-lmb.md` leído (al menos introducción y Fases 0-3)
- [ ] ✅ Modo Jefe de Proyectos activado
- [ ] ✅ Cliente contactado para briefing inicial

**Si todas las casillas están marcadas**: 

✅ **¡Estás listo para empezar tu proyecto!**

---

## 🎯 Primeros Pasos Concretos

### Hoy (Día 1)
1. ✅ Clonar/descargar template
2. ✅ Ejecutar script de inicialización
3. ✅ Leer esta guía completa
4. ✅ Leer `README.md`

### Mañana (Día 2)
1. ✅ Leer `docs/sistema-lmb.md` (introducción + Fase 0-1-2)
2. ✅ Contactar al cliente para briefing
3. ✅ Preparar preguntas para la Fase 1 (Estrategia)

### Esta Semana
1. ✅ **Fase 0**: Setup (WordPress, FTP)
2. ✅ **Fase 1**: Estrategia (briefing, perfiles, elevator pitch)
3. ✅ **Fase 2**: Planificación (keywords, URLs)

---

## 🆘 ¿Necesitas Ayuda?

### Documentación Interna

- **Metodología completa**: [`docs/sistema-lmb.md`](docs/sistema-lmb.md)
- **README del template**: [`README.md`](README.md)
- **Scripts**: [`scripts/README.md`](scripts/README.md)
- **Plan arquitectónico**: [`plans/arquitectura-template-reutilizable.md`](plans/arquitectura-template-reutilizable.md)

### Comunidad

- **Foro privado**: https://lamaquinadelbranding.com
- **Consulta con compañeros** que ya usan el sistema
- **Pregunta al profesor/mentor**

### GitHub (si tienes acceso)

- **Issues**: Reportar bugs o pedir features
- **Discussions**: Preguntas generales
- **Wiki**: Documentación adicional (si existe)

---

## 🎉 ¡Felicidades!

Has completado la guía de inicio. Ya tienes todo lo necesario para:

✅ Iniciar proyectos profesionales de WordPress
✅ Seguir la metodología LMB paso a paso  
✅ Usar los 12 agentes especializados  
✅ Generar artefactos de calidad  
✅ Entregar proyectos en tiempo y forma  

**¡Mucho éxito con tu proyecto!** 🚀

---

**Versión**: 1.0.0  
**Última actualización**: 2025-01-20  
**Mantenedor**: La Máquina del Branding

---

**¿Siguiente paso?** → Ejecuta `./scripts/init-project.sh` y comienza tu proyecto 💪
