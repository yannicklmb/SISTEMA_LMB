# Configuración de GitHub Template Repository

Este documento explica cómo configurar el repositorio SISTEMA_LMB como un **GitHub Template Repository** para que los alumnos puedan usarlo fácilmente.

---

## 📋 Checklist Pre-Publicación

Antes de publicar el template, verifica que NO haya datos personales:

- [ ] ✅ NO hay commits con tu identidad Git que no quieras compartir
- [ ] ✅ `roadmap.template.md` tiene placeholders, NO datos reales
- [ ] ✅ NO hay archivos con credenciales o API keys
- [ ] ✅ `.gitignore` excluye `roadmap.md` (archivo personalizado)
- [ ] ✅ Scripts de inicialización funcionan correctamente
- [ ] ✅ `GETTING_STARTED.md` está completo
- [ ] ✅ `README.md` actualizado con instrucciones de uso
- [ ] ✅ Todos los Custom Modes y Skills están presentes

---

## 🚀 Paso 1: Subir el Proyecto a GitHub

### 1.1 Crear el Repositorio en GitHub

1. Ir a: https://github.com/new
2. **Repository name**: `SISTEMA_LMB`
3. **Description**: "Template profesional para proyectos WordPress - Metodología LMB"
4. **Visibilidad**: 
   - `Public` si quieres que sea accesible públicamente
   - `Private` si solo lo usarán alumnos con acceso
5. **NO marcar**:
   - ⬜ Add a README file (ya tenemos)
   - ⬜ Add .gitignore (ya tenemos)
   - ⬜ Choose a license (ya tenemos LICENSE)
6. Click **"Create repository"**

### 1.2 Conectar el Proyecto Local

En tu terminal, en la carpeta `d:\SISTEMA_LMB`:

```bash
# Verificar que estás en la raíz del proyecto
cd d:\SISTEMA_LMB
ls README.md  # Debe existir

# Inicializar Git (si no está ya)
git init
git branch -M main

# Configurar tu identidad Git (global o local)
git config user.name "Yannick LMB"
git config user.email "yannicklmb@gmail.com"

# Añadir todos los archivos
git add .

# Crear commit inicial
git commit -m "Initial commit: Sistema LMB Template v1.0.0" -m "Template profesional para proyectos WordPress bajo metodología LMB"

# Conectar con GitHub
git remote add origin https://github.com/yannicklmb/SISTEMA_LMB.git

# Subir a GitHub
git push -u origin main
```

✅ **Repositorio ya está en GitHub**

---

## 🎯 Paso 2: Configurar como Template Repository

### 2.1 Activar la Opción de Template

1. **Ir a tu repositorio** en GitHub:
   ```
   https://github.com/yannicklmb/SISTEMA_LMB
   ```

2. **Click en "Settings"** (⚙️ arriba a la derecha)

3. **En la sección "General"**, buscar:
   ```
   ☑️ Template repository
   ```

4. **Marcar la casilla**: ☑️ **"Template repository"**

5. **Guardar** (si hay botón Save)

✅ **Ahora aparecerá el botón "Use this template" en la página principal del repo**

---

## 📦 Paso 3: Crear el Primer Release (v1.0.0)

Los releases permiten que los alumnos descarguen versiones específicas del template.

### 3.1 Crear Release

1. **Ir a tu repositorio** en GitHub

2. **Click en "Releases"** (lado derecho de la página)

3. **Click en "Create a new release"** o "Draft a new release"

4. **Configurar el release**:

   **Tag version**:
   ```
   v1.0.0
   ```
   
   **Target**: `main` (branch principal)

   **Release title**:
   ```
   Sistema LMB Template v1.0.0 - Primera Versión Estable
   ```

   **Description** (copiar y pegar):
   ```markdown
   # 🎉 Sistema LMB Template v1.0.0

   Primera versión estable del **Sistema LMB** como template reutilizable para proyectos WordPress.

   ## 📦 ¿Qué incluye?

   - ✅ **12 Custom Modes** (roles especializados para Roo Code)
   - ✅ **28 Skills** (procedimientos reutilizables en 5 familias)
   - ✅ **8 Templates** de artefactos principales
   - ✅ **Scripts de inicialización** automática (Bash + PowerShell)
   - ✅ **Documentación completa** (sistema-lmb.md, GETTING_STARTED.md)
   - ✅ **16 fases** metodológicas claramente definidas
   - ✅ **Sistema de gestión** basado en artefactos vivos

   ## 🚀 Inicio Rápido

   ### Opción 1: GitHub Template (Recomendada)

   1. Click en **"Use this template"** arriba
   2. Crear nuevo repositorio con nombre del proyecto
   3. Clonar: `git clone [tu-repo]`
   4. Inicializar: `./scripts/init-project.sh`

   ### Opción 2: Descarga ZIP

   1. Descargar `SISTEMA_LMB-v1.0.0.zip` abajo
   2. Extraer en carpeta del proyecto
   3. Ejecutar: `./scripts/init-project.sh`

   ## 📚 Documentación

   - 📖 [Guía de Inicio (GETTING_STARTED.md)](https://github.com/yannicklmb/SISTEMA_LMB/blob/main/GETTING_STARTED.md)
   - 📖 [Metodología Completa (docs/sistema-lmb.md)](https://github.com/yannicklmb/SISTEMA_LMB/blob/main/docs/sistema-lmb.md)
   - 📖 [README Principal](https://github.com/yannicklmb/SISTEMA_LMB/blob/main/README.md)
   - 📖 [Scripts de Inicialización](https://github.com/yannicklmb/SISTEMA_LMB/blob/main/scripts/README.md)

   ## 🔧 Requisitos

   - **Git** instalado
   - **Roo Code** (para usar los Custom Modes)
   - **WordPress** ≥ 6.0 (para el proyecto final)
   - **PHP** ≥ 8.0 (para el proyecto final)

   ## ⚙️ Compatibilidad

   | Script | Linux | macOS | Windows |
   |--------|-------|-------|---------|
   | `init-project.sh` | ✅ | ✅ | ✅ Git Bash |
   | `init-project.ps1` | ❌ | ❌ | ✅ PowerShell |

   ## 🆘 Soporte

   - **Documentación**: Consulta [GETTING_STARTED.md](https://github.com/yannicklmb/SISTEMA_LMB/blob/main/GETTING_STARTED.md)
   - **Comunidad**: https://lamaquinadelbranding.com

   ---

   **¿Dudas?** Lee la [Guía Completa de Inicio](https://github.com/yannicklmb/SISTEMA_LMB/blob/main/GETTING_STARTED.md)

   **¿Primera vez?** Ejecuta `./scripts/init-project.sh` después de clonar 🚀
   ```

5. **Publicar**: Click en **"Publish release"**

✅ **Release v1.0.0 publicado**

GitHub automáticamente genera archivos ZIP y tar.gz del código fuente.

---

## 📢 Paso 4: Comunicar a los Alumnos

### 4.1 Mensaje por Email/Plataforma

```
🎓 ¡Nuevo Template Disponible: Sistema LMB!

He preparado un template profesional para vuestros proyectos WordPress.

🔗 Repositorio: https://github.com/yannicklmb/SISTEMA_LMB

🚀 Cómo empezar:

Opción A (Recomendada):
1. Ir al repo: https://github.com/yannicklmb/SISTEMA_LMB
2. Click en "Use this template" (botón verde)
3. Crear vuestro repositorio
4. Clonar localmente
5. Ejecutar: ./scripts/init-project.sh

Opción B (Descarga):
1. Descargar: https://github.com/yannicklmb/SISTEMA_LMB/releases/latest
2. Extraer ZIP
3. Ejecutar: ./scripts/init-project.sh

📖 Guía completa: https://github.com/yannicklmb/SISTEMA_LMB/blob/main/GETTING_STARTED.md

Cualquier duda, consultad la documentación o escribidme.

¡Éxito con vuestros proyectos! 💪
```

### 4.2 Mensaje por Chat/Discord/Slack

```
🏗️ Sistema LMB Template ya disponible!

Repo: https://github.com/yannicklmb/SISTEMA_LMB

Inicio rápido:
1️⃣ Click "Use this template"
2️⃣ Crear repo con nombre proyecto
3️⃣ Clonar y ejecutar: ./scripts/init-project.sh

Guía: https://github.com/yannicklmb/SISTEMA_LMB/blob/main/GETTING_STARTED.md

¿Dudas? Preguntad 👇
```

---

## 🔄 Paso 5: Actualizaciones Futuras

### 5.1 Hacer Cambios al Template

Cuando necesites actualizar el template:

```bash
# Hacer cambios en archivos
# Ej: Añadir nuevo Custom Mode, corregir bug en script, etc.

# Commit
git add .
git commit -m "feat: Añadir nuevo Custom Mode X" -m "Descripción detallada del cambio"

# Push
git push origin main
```

### 5.2 Crear Nuevo Release

Cuando los cambios sean significativos:

1. Actualizar `CHANGELOG.md`:
   ```markdown
   ## [1.1.0] - 2025-02-15
   
   ### Added
   - Nuevo Custom Mode: Copywriter
   - Skill adicional: generar-copy-conversión
   
   ### Fixed
   - Bug en script init-project.sh con caracteres especiales
   ```

2. Actualizar versión en:
   - `README.md` (al final)
   - `CHANGELOG.md` (nueva entrada)

3. Crear nuevo release en GitHub:
   - Tag: `v1.1.0`
   - Title: "Sistema LMB Template v1.1.0 - Mejoras X"
   - Description: Listar cambios principales

4. Comunicar a alumnos las mejoras

---

## 🛡️ Paso 6: Seguridad y Privacidad

### 6.1 Verificar que NO hay Datos Sensibles

Antes de cada commit importante:

```bash
# Buscar posibles credenciales
grep -r "password" .
grep -r "api_key" .
grep -r "@gmail.com" . --exclude-dir=.git

# Buscar TODOs con datos personales
grep -r "TODO" . --exclude-dir=.git
```

### 6.2 Archivo .gitignore Crítico

Verificar que `.gitignore` incluye:

```gitignore
# Roadmap personalizado (NO versionar)
/roadmap.md

# Credenciales (NUNCA commitear)
**/credenciales.txt
**/passwords.txt
**/.env.local
**/.env.production
```

---

## 📊 Paso 7: Monitorear Uso

### 7.1 GitHub Insights

Puedes ver estadísticas en:
```
https://github.com/yannicklmb/SISTEMA_LMB/insights
```

- **Traffic**: Clones, visitas
- **Network**: Forks del template
- **Stars**: Si alumnos le dan estrella

### 7.2 Issues y Discussions

Considera habilitar:

**Issues** (para reportar bugs):
```
Settings → Features → ☑️ Issues
```

**Discussions** (para preguntas):
```
Settings → Features → ☑️ Discussions
```

---

## ✅ Checklist Final

Antes de comunicar a alumnos:

- [ ] ✅ Repositorio en GitHub: `https://github.com/yannicklmb/SISTEMA_LMB`
- [ ] ✅ Configurado como "Template repository"
- [ ] ✅ Botón "Use this template" visible
- [ ] ✅ Release v1.0.0 publicado
- [ ] ✅ ZIP descargable disponible
- [ ] ✅ README.md con instrucciones claras
- [ ] ✅ GETTING_STARTED.md completo
- [ ] ✅ Scripts de inicialización probados (Linux, Mac, Windows)
- [ ] ✅ NO hay datos personales en el template
- [ ] ✅ `.gitignore` excluye `roadmap.md`
- [ ] ✅ LICENSE presente

---

## 🆘 Troubleshooting

### No aparece "Use this template"

**Causa**: El repositorio no está configurado como template.

**Solución**: Settings → General → ☑️ Template repository

---

### Los alumnos no ven el botón

**Causa**: El repo es privado y no tienen acceso.

**Solución**: 
- Hacer el repo público, O
- Añadirlos como colaboradores en Settings → Collaborators

---

### Los scripts no funcionan después de clonar

**Causa**: Permisos de ejecución no se preservan en Git.

**Solución**: Los alumnos deben ejecutar:
```bash
chmod +x scripts/init-project.sh
```

Ya está documentado en `GETTING_STARTED.md` sección Troubleshooting.

---

## 📚 Referencias

- [GitHub Template Repositories](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-template-repository)
- [Creating Releases](https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository)

---

**Documento actualizado**: 2025-01-20  
**Responsable**: Yannick LMB  
**Próxima revisión**: Antes de publicar updates significativos
