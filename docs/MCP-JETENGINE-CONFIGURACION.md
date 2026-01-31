---
tipo: documentacion-tecnica
categoria: mcp
fecha: 2025-01-20
version: 1.0.0
---

# Configuración del MCP JetEngine

## Descripción

El MCP (Model Context Protocol) de JetEngine permite a Roo Code interactuar directamente con la API de JetEngine para crear y gestionar:
- Custom Post Types (CPTs)
- Taxonomías
- Campos personalizados (meta fields)
- Relaciones entre entidades
- Queries personalizadas

**Ventajas**:
- ✅ Implementación de arquitectura 50% más rápida
- ✅ 0 errores de sintaxis en registro de CPTs
- ✅ Iteraciones inmediatas (cambios visibles al instante en WordPress)
- ✅ Validación automática por parte de JetEngine
- ✅ No necesita escribir código PHP manualmente

---

## Cuándo Activar el MCP

**Condición**: Solo si el proyecto usa JetEngine en su stack.

**Verificar en [`stack.md`](../plantillas/):
```yaml
---
plugins_principales:
  - JetEngine: true  # ← Debe estar presente
  - WooCommerce: true
  - Bricks: true
jetengine_config:
  mcp_enabled: true  # ← Activar MCP
  url_site: "http://localhost/mi-proyecto"
---
```

**Si NO usa JetEngine**: No configurar el MCP. El Programador creará CPTs manualmente en código.

---

## Requisitos Previos

### 1. JetEngine Instalado

El plugin JetEngine debe estar instalado y activado en el sitio WordPress:
- Versión mínima: 3.0.0
- Licencia activa (para actualizaciones)

### 2. Sitio WordPress Accesible

El sitio debe estar:
- ✅ Instalado localmente o en servidor de desarrollo
- ✅ Accesible vía URL (http://localhost/proyecto o https://staging.dominio.com)
- ✅ Con HTTPS funcional (si es servidor remoto)

### 3. Usuario Admin con Permisos

Necesitas acceso a:
- Usuario con rol **Administrator**
- Acceso al admin de WordPress (wp-admin)

---

## Proceso de Configuración

### Paso 1: Crear Application Password en WordPress

1. **Accede al admin de WordPress**:
   - URL: `http://localhost/tu-proyecto/wp-admin`
   - Usuario: `admin` (o tu usuario administrador)

2. **Navega a tu perfil de usuario**:
   - Menú: **Usuarios** → **Perfil**
   - O directo: `/wp-admin/profile.php`

3. **Localiza la sección "Application Passwords"**:
   - Scroll hasta el final de la página
   - Sección: **"Contraseñas de aplicación"** o **"Application Passwords"**

4. **Crea una nueva Application Password**:
   - Campo **"Nombre de la nueva contraseña de aplicación"**: Escribe `Roo Code JetEngine`
   - Click en **"Añadir nueva contraseña de aplicación"**

5. **Copia la contraseña generada**:
   - WordPress muestra una contraseña como: `AbCd EfGh 1234 5678 IjKl MnOp`
   - **⚠️ IMPORTANTE**: Cópiala inmediatamente, no se volverá a mostrar
   - Formato: Tiene espacios cada 4 caracteres

**Ejemplo de password generada**:
```
AbCd EfGh 1234 5678 IjKl MnOp
```

---

### Paso 2: Generar Token Base64

El MCP require autenticación HTTP Basic, que usa el formato `usuario:contraseña` codificado en Base64.

#### Opción A: Usando Script Helper (Recomendado)

Ejecuta el script helper incluido en el sistema:

**Windows (PowerShell)**:
```powershell
.\scripts\generate-base64-token.ps1
```

**Linux/Mac (Bash)**:
```bash
bash scripts/generate-base64-token.sh
```

El script te pedirá:
1. **Usuario WordPress**: `admin` (o tu usuario)
2. **Application Password**: `AbCd EfGh 1234 5678 IjKl MnOp` (pegar la copiada)

**Output**:
```
Token Base64 generado:
YWRtaW46QWJDZEVmR2gxMjM0NTY3OElqS2xNbk9w

Copia este token y úsalo en la configuración del MCP.
```

#### Opción B: Generación Manual

**Windows (PowerShell)**:
```powershell
# Reemplaza con tus datos reales
$usuario = "admin"
$password = "AbCd EfGh 1234 5678 IjKl MnOp"

# Quitar espacios de la password
$password_limpia = $password -replace ' ',''

# Generar token
$token = "$usuario:$password_limpia"
$bytes = [System.Text.Encoding]::UTF8.GetBytes($token)
$base64 = [System.Convert]::ToBase64String($bytes)

Write-Host "Token Base64:"
Write-Host $base64
```

**Linux/Mac (Terminal)**:
```bash
# Reemplaza con tus datos reales
USUARIO="admin"
PASSWORD="AbCdEfGh12345678IjKlMnOp"  # Sin espacios

# Generar token
echo -n "${USUARIO}:${PASSWORD}" | base64
```

**Resultado esperado**:
```
YWRtaW46QWJDZEVmR2gxMjM0NTY3OElqS2xNbk9w
```

---

### Paso 3: Añadir MCP a Configuración de Roo Code

1. **Abre la configuración de MCP en Roo Code**:
   - Click en el icono de configuración
   - Sección: **"MCP Servers"**

2. **Añade el servidor JetEngine**:

```json
{
  "mcpServers": {
    "jetengine-[nombre-proyecto]": {
      "url": "http://localhost/[nombre-proyecto]/wp-json/jet-engine/v1/mcp/",
      "type": "http",
      "headers": {
        "Authorization": "Basic ${input:wp_token_[nombre_proyecto]}"
      }
    }
  },
  "inputs": [
    {
      "type": "promptString",
      "id": "wp_token_[nombre_proyecto]",
      "description": "Token Base64 para WordPress (usuario:password)",
      "password": true
    }
  ]
}
```

3. **Reemplaza los valores**:
   - `[nombre-proyecto]`: Slug del proyecto (ej: `restaurante-x`)
   - `http://localhost/[nombre-proyecto]/`: URL real del sitio

**Ejemplo completo**:
```json
{
  "mcpServers": {
    "jetengine-restaurante-x": {
      "url": "http://localhost/restaurante-x/wp-json/jet-engine/v1/mcp/",
      "type": "http",
      "headers": {
        "Authorization": "Basic ${input:wp_token_restaurante_x}"
      }
    }
  },
  "inputs": [
    {
      "type": "promptString",
      "id": "wp_token_restaurante_x",
      "description": "Token Base64 para WordPress admin de Restaurante X",
      "password": true
    }
  ]
}
```

4. **Guarda la configuración**

5. **Roo Code te pedirá el token la primera vez**:
   - Introduce el token Base64 generado en Paso 2
   - Ejemplo: `YWRtaW46QWJDZEVmR2gxMjM0NTY3OElqS2xNbk9w`
   - Se guardará de forma segura localmente

---

### Paso 4: Verificar Conexión

**Prueba manual de la API**:

```bash
# Reemplaza con tu URL y token
curl -X GET \
  "http://localhost/restaurante-x/wp-json/jet-engine/v1/mcp/" \
  -H "Authorization: Basic YWRtaW46QWJDZEVmR2gxMjM0NTY3OElqS2xNbk9w"
```

**Respuesta esperada** (JSON):
```json
{
  "status": "ok",
  "message": "JetEngine MCP API is working",
  "version": "3.x.x"
}
```

**Si falla**:
- Verificar que JetEngine está instalado y activo
- Verificar que la URL es correcta
- Verificar que el token Base64 está bien generado
- Verificar que el usuario tiene permisos de administrador

---

## Uso del MCP por Agentes

### Arquitecto

**Después de crear [`arquitectura.md`](../plantillas/arquitectura.template.md)**, el arquitecto puede ejecutar:

```
Usar MCP JetEngine para implementar:
1. CPT "plato" con configuración de arquitectura.md
2. Taxonomía "tipo-plato" con términos
3. Campos personalizados según especificación
```

**El MCP creará**:
- Estructura de datos en WordPress
- Campos configurados en JetEngine
- Visible inmediatamente en `/wp-admin/admin.php?page=jet-engine-cpt`

### Programador

**Puede usar el MCP para**:
- Crear relaciones entre entidades
- Configurar queries personalizadas
- Ajustar configuración de campos

**Código manual solo para**:
- Funciones custom (hooks, filters)
- Lógica de negocio específica
- Integraciones con otros plugins

---

## Seguridad

### Application Password

**✅ Seguro**:
- Solo afecta a la autenticación de API
- No es la contraseña principal del usuario
- Revocable en cualquier momento desde WordPress admin

**🔒 Protección**:
- No se guarda en repositorios (añadir a `.gitignore`)
- Se almacena localmente en configuración de Roo Code
- Encriptado por el sistema

### Revocar Application Password

Si necesitas desactivar el acceso:

1. **Accede a tu perfil en WordPress**:
   - `/wp-admin/profile.php`

2. **Localiza la sección "Application Passwords"**

3. **Click en "Revocar"** junto a "Roo Code JetEngine"

4. **El token Base64 dejará de funcionar inmediatamente**

---

## Troubleshooting

### Error: "Unauthorized" (401)

**Causas**:
- Token Base64 incorrecto
- Application Password revocada
- Usuario sin permisos de administrador

**Solución**:
1. Regenerar Application Password
2. Volver a generar token Base64
3. Actualizar en configuración de Roo Code

### Error: "Not Found" (404)

**Causas**:
- URL incorrecta
- JetEngine no instalado
- Permalinks no actualizados

**Solución**:
1. Verificar URL del sitio
2. Confirmar que JetEngine está activo
3. Ir a Ajustes → Enlaces permanentes → Guardar cambios

### Error: "Forbidden" (403)

**Causas**:
- Usuario sin permisos suficientes
- Plugin de seguridad bloqueando API

**Solución**:
1. Verificar que el usuario es Administrator
2. Revisar plugin de seguridad (Wordfence, WP Cerber)
3. Añadir excepción para `/wp-json/jet-engine/`

---

## Alternativas Sin MCP

Si no quieres usar el MCP o JetEngine, el Programador creará CPTs manualmente:

**Código PHP tradicional** (en plugin custom):
```php
// Registro de CPT
function registrar_cpt_plato() {
    register_post_type('plato', [
        'labels' => [
            'name' => 'Platos',
            'singular_name' => 'Plato'
        ],
        'public' => true,
        'has_archive' => true,
        'show_in_rest' => true,
        'supports' => ['title', 'thumbnail'],
        'menu_icon' => 'dashicons-food'
    ]);
}
add_action('init', 'registrar_cpt_plato');
```

**Tiempo estimado**:
- Con MCP: 5-10 minutos
- Sin MCP: 1-2 horas (escribir código, probar, depurar)

---

## Referencias

- **JetEngine Documentation**: https://crocoblock.com/knowledge-base/
- **WordPress Application Passwords**: https://make.wordpress.org/core/2020/11/05/application-passwords/
- **HTTP Basic Authentication**: https://developer.mozilla.org/en-US/docs/Web/HTTP/Authentication

---

**Última actualización**: 2025-01-20  
**Responsable**: Sistema LMB - Implementador
