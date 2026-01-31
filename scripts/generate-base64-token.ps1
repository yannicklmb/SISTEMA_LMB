# Script para generar token Base64 para MCP JetEngine
# Sistema LMB - Version 1.0.0

Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Generador de Token Base64 para MCP" -ForegroundColor Cyan
Write-Host " JetEngine - Sistema LMB" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Solicitar usuario
Write-Host "Paso 1: Usuario de WordPress" -ForegroundColor Yellow
$usuario = Read-Host "Introduce el nombre de usuario (ej: admin)"

if ([string]::IsNullOrWhiteSpace($usuario)) {
    Write-Host "Error: El usuario no puede estar vacio" -ForegroundColor Red
    exit 1
}

Write-Host ""

# Solicitar Application Password
Write-Host "Paso 2: Application Password" -ForegroundColor Yellow
Write-Host "Copia la Application Password generada en WordPress" -ForegroundColor Gray
Write-Host "(Puede tener espacios, los quitaremos automaticamente)" -ForegroundColor Gray
$password = Read-Host "Introduce la Application Password"

if ([string]::IsNullOrWhiteSpace($password)) {
    Write-Host "Error: La password no puede estar vacia" -ForegroundColor Red
    exit 1
}

Write-Host ""

# Quitar espacios de la password
$password_limpia = $password -replace ' ', ''

Write-Host "Procesando..." -ForegroundColor Gray

# Generar token Base64
$credenciales = "${usuario}:${password_limpia}"
$bytes = [System.Text.Encoding]::UTF8.GetBytes($credenciales)
$token_base64 = [System.Convert]::ToBase64String($bytes)

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host " TOKEN GENERADO EXITOSAMENTE" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "Usuario: " -NoNewline
Write-Host $usuario -ForegroundColor Cyan
Write-Host ""
Write-Host "Token Base64:" -ForegroundColor Yellow
Write-Host $token_base64 -ForegroundColor White
Write-Host ""
Write-Host "Copia el token de arriba y usalo en la configuracion del MCP." -ForegroundColor Gray
Write-Host ""

# Opción para copiar al portapapeles
$copiar = Read-Host "Copiar al portapapeles? (S/N)"
if ($copiar -eq "S" -or $copiar -eq "s" -or $copiar -eq "Si" -or $copiar -eq "si") {
    Set-Clipboard -Value $token_base64
    Write-Host "Token copiado al portapapeles!" -ForegroundColor Green
}

Write-Host ""
Write-Host "Siguiente paso: Anadir este token a la configuracion de MCP en Roo Code" -ForegroundColor Cyan
Write-Host ""

# Mostrar ejemplo de configuración
Write-Host "Ejemplo de configuracion MCP:" -ForegroundColor Yellow
Write-Host @"
{
  "mcpServers": {
    "jetengine-[tu-proyecto]": {
      "url": "http://localhost/[tu-proyecto]/wp-json/jet-engine/v1/mcp/",
      "type": "http",
      "headers": {
        "Authorization": "Basic `${input:wp_token_[tu_proyecto]}"
      }
    }
  },
  "inputs": [
    {
      "type": "promptString",
      "id": "wp_token_[tu_proyecto]",
      "description": "Token Base64 WordPress",
      "password": true
    }
  ]
}
"@ -ForegroundColor Gray

Write-Host ""
Write-Host "Cuando Roo Code pida el token, introduce el valor de arriba." -ForegroundColor Cyan
Write-Host ""
