---
nombre: generar-plugin-base-wp
familia: codigo
control: autonoma
activacion: "crear plugin", "generar plugin base", "estructura plugin WordPress"
---

# Skill: Generar Plugin Base WordPress

## Propósito

Generar la estructura inicial de un plugin WordPress con header correcto, estructura de carpetas y archivos base.

## Cuándo Usar

- Al inicio del desarrollo del plugin propio
- Cuando el Programador necesita la estructura base
- Después de definir stack.md (nombre del plugin)

## Inputs Requeridos

### Obligatorios
- **Nombre del plugin** (de stack.md)
- **Descripción** del plugin
- **Funcionalidades** que incluirá (de stack.md)

## Proceso

### 1. Crear Estructura de Carpetas

```
[nombre-proyecto]-custom/
├── [nombre-proyecto]-custom.php  (archivo principal)
├── includes/
│   ├── cpt.php                   (si gestiona CPTs)
│   ├── taxonomies.php            (si gestiona taxonomías)
│   ├── fields.php                (si gestiona campos)
│   ├── hooks.php                 (hooks de WP/WooCommerce)
│   ├── functions.php             (funciones auxiliares)
│   └── shortcodes.php            (si tiene shortcodes)
├── assets/
│   ├── css/
│   │   └── admin.css             (estilos del admin)
│   └── js/
│       └── admin.js              (JavaScript del admin)
├── languages/                    (internacionalización)
└── README.md                     (documentación del plugin)
```

### 2. Generar Archivo Principal

**Archivo**: `[nombre-proyecto]-custom.php`

```php
<?php
/**
 * Plugin Name: [Nombre Proyecto] Custom
 * Plugin URI: https://[sitio-cliente].com
 * Description: Funcionalidades personalizadas para [Nombre Proyecto]
 * Version: 1.0.0
 * Author: La Máquina del Branding
 * Author URI: https://lamaquinadelbranding.com
 * License: GPL-2.0+
 * License URI: http://www.gnu.org/licenses/gpl-2.0.txt
 * Text Domain: [nombre-proyecto]-custom
 * Domain Path: /languages
 */

// Si se accede directamente, salir
if (!defined('ABSPATH')) {
    exit;
}

/**
 * Constantes del plugin
 */
define('PLUGIN_[NOMBRE]_VERSION', '1.0.0');
define('PLUGIN_[NOMBRE]_DIR', plugin_dir_path(__FILE__));
define('PLUGIN_[NOMBRE]_URL', plugin_dir_url(__FILE__));
define('PLUGIN_[NOMBRE]_BASENAME', plugin_basename(__FILE__));

/**
 * Incluir archivos del plugin
 */

// CPTs (si gestiona)
if (file_exists(PLUGIN_[NOMBRE]_DIR . 'includes/cpt.php')) {
    require_once PLUGIN_[NOMBRE]_DIR . 'includes/cpt.php';
}

// Taxonomías (si gestiona)
if (file_exists(PLUGIN_[NOMBRE]_DIR . 'includes/taxonomies.php')) {
    require_once PLUGIN_[NOMBRE]_DIR . 'includes/taxonomies.php';
}

// Campos personalizados (si gestiona)
if (file_exists(PLUGIN_[NOMBRE]_DIR . 'includes/fields.php')) {
    require_once PLUGIN_[NOMBRE]_DIR . 'includes/fields.php';
}

// Hooks y filters
if (file_exists(PLUGIN_[NOMBRE]_DIR . 'includes/hooks.php')) {
    require_once PLUGIN_[NOMBRE]_DIR . 'includes/hooks.php';
}

// Funciones auxiliares
if (file_exists(PLUGIN_[NOMBRE]_DIR . 'includes/functions.php')) {
    require_once PLUGIN_[NOMBRE]_DIR . 'includes/functions.php';
}

// Shortcodes (si tiene)
if (file_exists(PLUGIN_[NOMBRE]_DIR . 'includes/shortcodes.php')) {
    require_once PLUGIN_[NOMBRE]_DIR . 'includes/shortcodes.php';
}

/**
 * Hook de activación del plugin
 */
register_activation_hook(__FILE__, 'prefix_[nombre]_activate_plugin');
function prefix_[nombre]_activate_plugin() {
    // Flush rewrite rules
    flush_rewrite_rules();
    
    // Otras acciones de activación
}

/**
 * Hook de desactivación del plugin
 */
register_deactivation_hook(__FILE__, 'prefix_[nombre]_deactivate_plugin');
function prefix_[nombre]_deactivate_plugin() {
    // Flush rewrite rules
    flush_rewrite_rules();
    
    // Limpiar opciones temporales si necesario
}

/**
 * Cargar text domain para traducciones
 */
add_action('plugins_loaded', 'prefix_[nombre]_load_textdomain');
function prefix_[nombre]_load_textdomain() {
    load_plugin_textdomain(
        '[nombre-proyecto]-custom',
        false,
        dirname(PLUGIN_[NOMBRE]_BASENAME) . '/languages'
    );
}
```

### 3. Crear Archivos Base en includes/

**includes/cpt.php** (plantilla vacía):
```php
<?php
/**
 * Registro de Custom Post Types
 */

// Si se accede directamente, salir
if (!defined('ABSPATH')) {
    exit;
}

// Espacio para registrar CPTs según arquitectura.md
```

**includes/hooks.php** (plantilla vacía):
```php
<?php
/**
 * Hooks y Filters de WordPress/WooCommerce
 */

// Si se accede directamente, salir
if (!defined('ABSPATH')) {
    exit;
}

// Espacio para hooks personalizados
```

**includes/functions.php** (plantilla vacía):
```php
<?php
/**
 * Funciones auxiliares del plugin
 */

// Si se accede directamente, salir
if (!defined('ABSPATH')) {
    exit;
}

// Espacio para funciones helper
```

### 4. Crear README.md del Plugin

```markdown
# [Nombre Proyecto] Custom Plugin

Plugin personalizado para [Nombre Proyecto] desarrollado por La Máquina del Branding.

## Descripción

[Descripción de las funcionalidades del plugin]

## Funcionalidades

- [Funcionalidad 1]
- [Funcionalidad 2]
- [Funcionalidad 3]

## Instalación

1. Subir carpeta del plugin a `/wp-content/plugins/`
2. Activar desde el panel de WordPress

## Requisitos

- WordPress ≥ 6.0
- PHP ≥ 8.0

## Dependencias

[Plugins que deben estar activos, ej: WooCommerce, JetEngine]

## Changelog

### 1.0.0 - YYYY-MM-DD
- Versión inicial
- [Funcionalidad implementada]

## Autor

La Máquina del Branding
https://lamaquinadelbranding.com
```

---

## Output Esperado

**Plugin completo** con:
- Estructura de carpetas
- Archivo principal con header correcto
- Archivos base en includes/ (vacíos pero listos)
- README.md
- Listo para añadir funcionalidades

---

## Criterios de Validación

- [ ] **Estructura de carpetas creada** (includes/, assets/)
- [ ] **Archivo principal** con header completo
- [ ] **Constantes definidas** (VERSION, DIR, URL)
- [ ] **Includes de archivos** con verificación
- [ ] **Hooks de activación/desactivación** presentes
- [ ] **README.md creado** con info básica
- [ ] **Código sin errores** (PHP válido)

---

## Errores Comunes

### ❌ Header Incompleto
**Mal**:
```php
/**
 * Plugin Name: Mi Plugin
 */
```

**Bien**:
```php
/**
 * Plugin Name: [Nombre] Custom
 * Plugin URI: https://[sitio].com
 * Description: [Descripción]
 * Version: 1.0.0
 * Author: La Máquina del Branding
 * Author URI: https://lamaquinadelbranding.com
 * License: GPL-2.0+
 * Text Domain: [nombre]-custom
 */
```

---

## Notas

- Esta skill es ejecutada por el **Programador**
- Genera solo la estructura base, no funcionalidades
- Las funcionalidades se añaden con otras skills (generar-cpt-fields-code, etc.)
