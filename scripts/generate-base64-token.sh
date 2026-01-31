#!/bin/bash
# Script para generar token Base64 para MCP JetEngine
# Sistema LMB - Version 1.0.0

echo "========================================"
echo " Generador de Token Base64 para MCP"
echo " JetEngine - Sistema LMB"
echo "========================================"
echo ""

# Solicitar usuario
echo "Paso 1: Usuario de WordPress"
read -p "Introduce el nombre de usuario (ej: admin): " usuario

if [ -z "$usuario" ]; then
    echo "Error: El usuario no puede estar vacio"
    exit 1
fi

echo ""

# Solicitar Application Password
echo "Paso 2: Application Password"
echo "Copia la Application Password generada en WordPress"
echo "(Puede tener espacios, los quitaremos automaticamente)"
read -p "Introduce la Application Password: " password

if [ -z "$password" ]; then
    echo "Error: La password no puede estar vacia"
    exit 1
fi

echo ""
echo "Procesando..."

# Quitar espacios de la password
password_limpia=$(echo "$password" | tr -d ' ')

# Generar token Base64
credenciales="${usuario}:${password_limpia}"
token_base64=$(echo -n "$credenciales" | base64)

echo ""
echo "========================================"
echo " TOKEN GENERADO EXITOSAMENTE"
echo "========================================"
echo ""
echo "Usuario: $usuario"
echo ""
echo "Token Base64:"
echo "$token_base64"
echo ""
echo "Copia el token de arriba y usalo en la configuracion del MCP."
echo ""

# Opción para copiar al portapapeles (si está disponible)
if command -v pbcopy &> /dev/null; then
    read -p "Copiar al portapapeles? (s/n): " copiar
    if [ "$copiar" = "s" ] || [ "$copiar" = "S" ]; then
        echo "$token_base64" | pbcopy
        echo "Token copiado al portapapeles!"
    fi
elif command -v xclip &> /dev/null; then
    read -p "Copiar al portapapeles? (s/n): " copiar
    if [ "$copiar" = "s" ] || [ "$copiar" = "S" ]; then
        echo "$token_base64" | xclip -selection clipboard
        echo "Token copiado al portapapeles!"
    fi
fi

echo ""
echo "Siguiente paso: Anadir este token a la configuracion de MCP en Roo Code"
echo ""

# Mostrar ejemplo de configuración
echo "Ejemplo de configuracion MCP:"
cat << EOF
{
  "mcpServers": {
    "jetengine-[tu-proyecto]": {
      "url": "http://localhost/[tu-proyecto]/wp-json/jet-engine/v1/mcp/",
      "type": "http",
      "headers": {
        "Authorization": "Basic \${input:wp_token_[tu_proyecto]}"
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
EOF

echo ""
echo "Cuando Roo Code pida el token, introduce el valor generado arriba."
echo ""
