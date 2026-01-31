# Sistema LMB - Script de Inicialización de Proyecto (PowerShell)
# Versión: 1.0.0
# Autor: La Máquina del Branding

param(
    [switch]$Help
)

# Mostrar ayuda si se solicita
if ($Help) {
    Write-Host @"
Sistema LMB - Script de Inicialización de Proyecto

Uso:
    .\scripts\init-project.ps1

Este script:
    1. Configura tu identidad Git (local al proyecto)
    2. Crea roadmap.md personalizado desde la plantilla
    3. Inicializa Git (si no existe)
    4. Crea commit inicial

Requisitos:
    - PowerShell 5.1 o superior
    - Git instalado y en PATH

"@
    exit 0
}

# Colores
$ColorGreen = "Green"
$ColorBlue = "Cyan"
$ColorYellow = "Yellow"
$ColorRed = "Red"

Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor $ColorBlue
Write-Host "  🏗️  Sistema LMB - Inicialización de Proyecto" -ForegroundColor $ColorBlue
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor $ColorBlue
Write-Host ""

# Verificar que estamos en la raíz del proyecto
if (-not (Test-Path "roadmap.template.md")) {
    Write-Host "⚠️  Error: Ejecuta este script desde la raíz del proyecto" -ForegroundColor $ColorRed
    Write-Host "   Uso: .\scripts\init-project.ps1" -ForegroundColor $ColorYellow
    exit 1
}

# Verificar que Git está instalado
try {
    $gitVersion = git --version 2>$null
    if (-not $gitVersion) {
        throw "Git no encontrado"
    }
} catch {
    Write-Host "⚠️  Error: Git no está instalado o no está en PATH" -ForegroundColor $ColorRed
    Write-Host "   Descarga Git desde: https://git-scm.com/" -ForegroundColor $ColorYellow
    exit 1
}

# Verificar roadmap.md existente
if (Test-Path "roadmap.md") {
    Write-Host "⚠️  Advertencia: roadmap.md ya existe" -ForegroundColor $ColorYellow
    $overwrite = Read-Host "¿Deseas sobrescribirlo? (s/N)"
    if ($overwrite -notmatch '^[Ss]$') {
        Write-Host "Operación cancelada."
        exit 1
    }
}

# Recopilar información del proyecto
Write-Host "📋 Datos del Proyecto" -ForegroundColor $ColorGreen
Write-Host ""

do {
    $projectName = Read-Host "Nombre del proyecto (ej: Web Restaurante Gourmet)"
    if ([string]::IsNullOrWhiteSpace($projectName)) {
        Write-Host "⚠️  El nombre del proyecto no puede estar vacío" -ForegroundColor $ColorRed
    }
} while ([string]::IsNullOrWhiteSpace($projectName))

do {
    $clientName = Read-Host "Nombre del cliente (ej: Restaurante El Buen Sabor)"
    if ([string]::IsNullOrWhiteSpace($clientName)) {
        Write-Host "⚠️  El nombre del cliente no puede estar vacío" -ForegroundColor $ColorRed
    }
} while ([string]::IsNullOrWhiteSpace($clientName))

$defaultDate = Get-Date -Format 'yyyy-MM-dd'
$startDate = Read-Host "Fecha de inicio (YYYY-MM-DD) [$defaultDate]"
if ([string]::IsNullOrWhiteSpace($startDate)) {
    $startDate = $defaultDate
}

Write-Host ""
Write-Host "👤 Tu Identidad (para Git)" -ForegroundColor $ColorGreen
Write-Host ""

do {
    $userName = Read-Host "Tu nombre completo"
    if ([string]::IsNullOrWhiteSpace($userName)) {
        Write-Host "⚠️  Tu nombre no puede estar vacío" -ForegroundColor $ColorRed
    }
} while ([string]::IsNullOrWhiteSpace($userName))

do {
    $userEmail = Read-Host "Tu email"
    if ([string]::IsNullOrWhiteSpace($userEmail)) {
        Write-Host "⚠️  Tu email no puede estar vacío" -ForegroundColor $ColorRed
    }
} while ([string]::IsNullOrWhiteSpace($userEmail))

Write-Host ""
Write-Host "⚙️  Configurando proyecto..." -ForegroundColor $ColorGreen
Write-Host ""

# Configurar Git (local al repositorio)
try {
    git config user.name "$userName" 2>$null
    git config user.email "$userEmail" 2>$null
    Write-Host "  ✅ Git configurado (local a este proyecto)"
} catch {
    Write-Host "  ⚠️  Error configurando Git" -ForegroundColor $ColorYellow
}

# Crear roadmap.md desde template
Copy-Item "roadmap.template.md" "roadmap.md" -Force

# Reemplazar placeholders
try {
    $content = Get-Content "roadmap.md" -Raw -Encoding UTF8
    $content = $content -replace '\[Nombre del Proyecto\]', $projectName
    $content = $content -replace '\[Nombre del Cliente\]', $clientName
    $content = $content -replace '\[Nombre\]', $userName
    $content = $content -replace 'YYYY-MM-DD', $startDate
    Set-Content "roadmap.md" $content -Encoding UTF8
    Write-Host "  ✅ roadmap.md creado y personalizado"
} catch {
    Write-Host "  ⚠️  Error personalizando roadmap.md" -ForegroundColor $ColorYellow
    Write-Host "     Por favor, edita roadmap.md manualmente"
}

# Verificar si es un repo Git
if (-not (Test-Path ".git")) {
    Write-Host "  📦 Inicializando repositorio Git..."
    git init 2>$null
    git branch -M main 2>$null
}

# Stage archivos
git add roadmap.md 2>$null

# Verificar si hay commits previos
$hasCommits = $false
try {
    git rev-parse HEAD 2>$null | Out-Null
    $hasCommits = $true
} catch {
    $hasCommits = $false
}

# Crear commit inicial si no hay commits
if (-not $hasCommits) {
    git add . 2>$null
    $commitMessage = "Initial project setup: $projectName`n`nCliente: $clientName`nFecha inicio: $startDate"
    git commit -m $commitMessage 2>$null
    Write-Host "  ✅ Commit inicial creado"
} else {
    Write-Host "  ℹ️  Repositorio ya tiene commits previos" -ForegroundColor $ColorBlue
    Write-Host "  💡 Puedes hacer commit manual: git commit -m `"Setup $projectName`"" -ForegroundColor $ColorBlue
}

Write-Host ""
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor $ColorGreen
Write-Host "  ✨ Proyecto inicializado correctamente" -ForegroundColor $ColorGreen
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor $ColorGreen
Write-Host ""
Write-Host "📌 Próximos pasos:" -ForegroundColor $ColorBlue
Write-Host ""
Write-Host "  1. Revisar roadmap.md con los datos del proyecto"
Write-Host "  2. Ejecutar: " -NoNewline
Write-Host "git push origin main" -ForegroundColor $ColorBlue -NoNewline
Write-Host " (si ya configuraste remote)"
Write-Host "  3. Iniciar con el Jefe de Proyectos (modo jefe-proyectos)"
Write-Host "  4. Consultar docs/sistema-lmb.md para la metodología"
Write-Host ""
Write-Host "💡 Consejo: Si aún no configuraste el repositorio remoto:" -ForegroundColor $ColorYellow
Write-Host "   " -NoNewline
Write-Host "git remote add origin https://github.com/[TU-USUARIO]/[TU-REPO].git" -ForegroundColor $ColorBlue
Write-Host ""
Write-Host "🎉 ¡Éxito con tu proyecto!" -ForegroundColor $ColorGreen
Write-Host ""
