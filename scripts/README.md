# Scripts de Utilidad - Sistema LMB

Esta carpeta contiene scripts para facilitar la inicialización y gestión de proyectos basados en el Sistema LMB.

---

## 📜 Scripts Disponibles

### `init-project.sh` (Linux/Mac/Git Bash)

Script de inicialización para nuevos proyectos en sistemas Unix y Git Bash.

**Uso**:
```bash
./scripts/init-project.sh
```

**Requisitos**:
- Bash 4.0 o superior
- Git instalado y en PATH
- Permisos de ejecución (ver troubleshooting)

**Qué hace**:
1. ✅ Solicita datos del proyecto y cliente
2. ✅ Configura tu identidad Git (local al proyecto)
3. ✅ Crea `roadmap.md` personalizado desde `roadmap.template.md`
4. ✅ Reemplaza todos los placeholders con tus datos
5. ✅ Inicializa repositorio Git (si no existe)
6. ✅ Crea commit inicial con el setup del proyecto

---

### `init-project.ps1` (Windows PowerShell)

Script de inicialización para Windows usando PowerShell.

**Uso**:
```powershell
.\scripts\init-project.ps1
```

**Ver ayuda**:
```powershell
.\scripts\init-project.ps1 -Help
```

**Requisitos**:
- PowerShell 5.1 o superior
- Git instalado y en PATH
- Política de ejecución configurada (ver troubleshooting)

**Qué hace**:
Exactamente lo mismo que la versión Bash, pero optimizado para Windows.

---

## 🚀 Guía de Uso Rápida

### Primera Vez: Inicializar Proyecto

1. **Clonar o descargar** el template
2. **Abrir terminal** en la raíz del proyecto
3. **Ejecutar el script** según tu sistema:

   **Linux/Mac/Git Bash**:
   ```bash
   ./scripts/init-project.sh
   ```

   **Windows PowerShell**:
   ```powershell
   .\scripts\init-project.ps1
   ```

4. **Responder las preguntas**:
   - Nombre del proyecto
   - Nombre del cliente
   - Fecha de inicio
   - Tu nombre completo
   - Tu email

5. **Verificar** que `roadmap.md` se creó correctamente

6. **Push a GitHub** (si ya configuraste remote):
   ```bash
   git push origin main
   ```

---

## 🛠️ Troubleshooting

### Error: "Permission denied" (Linux/Mac)

**Problema**: El script no tiene permisos de ejecución.

**Solución**:
```bash
chmod +x scripts/init-project.sh
./scripts/init-project.sh
```

---

### Error: PowerShell no ejecuta scripts (Windows)

**Problema**: Política de ejecución de PowerShell restrictiva.

**Solución temporal** (solo para esta sesión):
```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\scripts\init-project.ps1
```

**Solución permanente** (requiere admin):
```powershell
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
```

---

### Error: "sed: command not found" (Windows Git Bash)

**Problema**: Sed no está disponible en tu instalación de Git Bash.

**Solución**: Usa el script de PowerShell en su lugar:
```powershell
.\scripts\init-project.ps1
```

O instala Git completo con herramientas Unix desde: https://git-scm.com/

---

### Error: "Git no está instalado"

**Problema**: Git no está en PATH o no está instalado.

**Solución**:
1. Descargar Git: https://git-scm.com/downloads
2. Instalar con opciones por defecto
3. Reiniciar terminal
4. Verificar: `git --version`

---

### El script no reemplaza los placeholders correctamente

**Problema**: Caracteres especiales o encoding de archivo.

**Solución manual**:
1. El script ya creó `roadmap.md`
2. Ábrelo con tu editor
3. Buscar y reemplazar manualmente:
   - `[Nombre del Proyecto]` → Tu nombre del proyecto
   - `[Nombre del Cliente]` → Tu cliente
   - `[Nombre]` → Tu nombre
   - `YYYY-MM-DD` → Fecha actual

---

### Ya existe roadmap.md y no quiero sobrescribirlo

**Solución**: El script pregunta antes de sobrescribir. Si dices "No", se cancela.

Si ya lo sobrescribiste por error:
```bash
git checkout roadmap.md  # Recupera versión anterior (si estaba en Git)
```

---

## 📋 Qué hace cada script exactamente

### Configuración Git

```bash
# Solo para este proyecto (no global)
git config user.name "Tu Nombre"
git config user.email "tu@email.com"
```

**Importante**: Esto NO afecta tu configuración global de Git. Solo aplica a este proyecto.

### Creación de roadmap.md

1. Copia `roadmap.template.md` → `roadmap.md`
2. Reemplaza placeholders:
   - `[Nombre del Proyecto]` → El nombre que ingresaste
   - `[Nombre del Cliente]` → El cliente que ingresaste
   - `[Nombre]` → Tu nombre
   - `YYYY-MM-DD` → La fecha que ingresaste

### Inicialización Git

Si el proyecto NO tiene `.git`:
```bash
git init
git branch -M main
```

Si ya existe `.git`, lo respeta y NO reinicializa.

### Commit Inicial

Si NO hay commits previos:
```bash
git add .
git commit -m "Initial project setup: [Proyecto]"
```

Si ya hay commits, NO crea uno nuevo (para no duplicar).

---

## 🔍 Verificación Post-Script

Después de ejecutar el script, verifica:

### 1. Git configurado correctamente
```bash
git config user.name
git config user.email
```

Debe mostrar TU nombre y email (no el del profesor/template).

### 2. roadmap.md existe y está personalizado
```bash
cat roadmap.md | head -20
```

Debe mostrar el nombre de tu proyecto y cliente, NO placeholders.

### 3. Commit inicial creado
```bash
git log
```

Debe mostrar al menos 1 commit con mensaje "Initial project setup".

---

## 🎯 Casos de Uso

### Caso 1: Proyecto desde GitHub Template

```bash
# 1. En GitHub: "Use this template" → Crear repo
# 2. Clonar
git clone https://github.com/tu-usuario/proyecto-xyz.git
cd proyecto-xyz

# 3. Inicializar
./scripts/init-project.sh

# 4. Push
git push origin main
```

✅ **Resultado**: Proyecto completamente inicializado en tu GitHub.

---

### Caso 2: Proyecto desde ZIP descargado

```bash
# 1. Descargar y extraer ZIP
cd SISTEMA_LMB-main

# 2. Inicializar
./scripts/init-project.sh

# 3. (Opcional) Conectar a GitHub
git remote add origin https://github.com/tu-usuario/proyecto-xyz.git
git push -u origin main
```

✅ **Resultado**: Proyecto local con opción de subir a GitHub después.

---

### Caso 3: Proyecto sin GitHub (solo local)

```bash
# 1. Descargar y extraer
cd SISTEMA_LMB-main

# 2. Inicializar
./scripts/init-project.sh

# 3. Trabajar localmente
# Git funciona, pero sin remote
```

✅ **Resultado**: Control de versiones local, sin necesidad de GitHub.

---

## 📚 Recursos Adicionales

- **Guía completa para alumnos**: [`../GETTING_STARTED.md`](../GETTING_STARTED.md)
- **Metodología del sistema**: [`../docs/sistema-lmb.md`](../docs/sistema-lmb.md)
- **README principal**: [`../README.md`](../README.md)

---

## 🐛 Reportar Problemas

Si encuentras un bug en los scripts:

1. Verifica que estés usando la última versión
2. Lee este README completo
3. Intenta las soluciones de troubleshooting
4. Si persiste, reporta en GitHub Issues (si tienes acceso)

---

## 📝 Notas Técnicas

### Compatibilidad

| Script | Linux | macOS | Windows Git Bash | Windows PowerShell | Windows CMD |
|--------|-------|-------|------------------|-------------------|-------------|
| `init-project.sh` | ✅ | ✅ | ✅ | ❌ | ❌ |
| `init-project.ps1` | ❌ | ❌ | ❌ | ✅ | ❌ |

### Encodings

- Los scripts usan **UTF-8** para asegurar compatibilidad con caracteres especiales
- Si ves caracteres raros, verifica el encoding de tu terminal

### Placeholders

Los scripts buscan estos patrones exactos:
- `[Nombre del Proyecto]` (con corchetes)
- `[Nombre del Cliente]` (con corchetes)
- `[Nombre]` (con corchetes)
- `YYYY-MM-DD` (formato fecha ISO)

Si modificas `roadmap.template.md`, mantén estos placeholders para que el script funcione.

---

**Versión**: 1.0.0  
**Última actualización**: 2025-01-20  
**Mantenedor**: La Máquina del Branding
