---
nombre: generar-cpt-fields-code
familia: codigo
control: autonoma
activacion: "generar código CPT", "registrar custom post type", "crear campos personalizados"
---

# Skill: Generar Código de CPT y Campos

## Propósito

Generar código PHP para registrar Custom Post Types y campos personalizados según especificación de arquitectura.md.

## Cuándo Usar

- Durante desarrollo del plugin propio
- Cuando el Programador necesita implementar CPTs de arquitectura.md
- Si stack.md indica gestión por código (no JetEngine)

## Inputs Requeridos

### Obligatorios
- **`docs/arquitectura.md`**: Especificación de CPTs y campos
- **`docs/stack.md`**: Verificar si usa JetEngine o código

## Proceso

### 1. Verificar Sistema de Gestión

**Leer stack.md**:
```
Si usa JetEngine:
  → Esta skill NO aplica (JetEngine gestiona vía interfaz)
  → Usar skill: configurar-jetengine-fields

Si NO usa JetEngine (tema custom):
  → Esta skill SÍ aplica
  → Generar código PHP
```

### 2. Leer Especificación de CPT

**De arquitectura.md**, por cada CPT:
```
CPT: clase-yoga
Slug: clase-yoga
Plural: Clases de Yoga
Singular: Clase de Yoga
Público: Sí
Tiene Archive: Sí
Show in REST: Sí

Campos:
- titulo (text)
- descripcion_corta (textarea, 150 chars)
- duracion (number, minutos)
- nivel (select: Principiante, Intermedio, Avanzado)
- beneficios (repeater: titulo, descripcion)
- instructor (relationship → CPT instructor)
```

### 3. Generar Código de Registro de CPT

**Archivo**: `includes/cpt.php` o `includes/cpt-[nombre].php`

```php
<?php
/**
 * Registro de Custom Post Types
 */

// Si se accede directamente, salir
if (!defined('ABSPATH')) {
    exit;
}

/**
 * Registrar CPT: [nombre-cpt]
 */
add_action('init', 'prefix_register_cpt_[nombre]');
function prefix_register_cpt_[nombre]() {
    
    $labels = array(
        'name' => __('[Plural]', 'text-domain'),
        'singular_name' => __('[Singular]', 'text-domain'),
        'menu_name' => __('[Plural]', 'text-domain'),
        'add_new' => __('Añadir nuevo', 'text-domain'),
        'add_new_item' => __('Añadir nuevo [Singular]', 'text-domain'),
        'edit_item' => __('Editar [Singular]', 'text-domain'),
        'new_item' => __('Nuevo [Singular]', 'text-domain'),
        'view_item' => __('Ver [Singular]', 'text-domain'),
        'search_items' => __('Buscar [Plural]', 'text-domain'),
        'not_found' => __('No se encontraron [Plural]', 'text-domain'),
        'not_found_in_trash' => __('No hay [Plural] en la papelera', 'text-domain'),
    );
    
    $args = array(
        'labels' => $labels,
        'public' => true, // [Según arquitectura.md]
        'publicly_queryable' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'show_in_rest' => true, // [Según arquitectura.md]
        'has_archive' => true, // [Según arquitectura.md]
        'rewrite' => array(
            'slug' => '[slug-url]',
            'with_front' => false,
        ),
        'capability_type' => 'post',
        'supports' => array('title', 'thumbnail'), // NO 'editor' si mínimo content
        'menu_icon' => 'dashicons-[icono]',
        'hierarchical' => false,
    );
    
    register_post_type('[nombre-cpt]', $args);
}
```

**Notas del código**:
- `public: true/false` según si es público (de arquitectura.md)
- `show_in_rest: true/false` según si debe estar en API
- `has_archive: true/false` según si necesita archivo
- `supports`: NO incluir 'editor' si arquitectura.md dice "mínimo content"
- Usar `dashicons-[icono]` apropiado (admin, building, groups, etc.)

### 4. Generar Código de Campos (ACF o Nativo)

#### **Opción A: Con ACF (Advanced Custom Fields)**

**Archivo**: `includes/fields.php`

```php
<?php
/**
 * Campos personalizados con ACF
 */

// Si se accede directamente, salir
if (!defined('ABSPATH')) {
    exit;
}

/**
 * Registrar campos para CPT: [nombre-cpt]
 */
add_action('acf/init', 'prefix_register_fields_[nombre_cpt]');
function prefix_register_fields_[nombre_cpt]() {
    
    if (function_exists('acf_add_local_field_group')) {
        
        acf_add_local_field_group(array(
            'key' => 'group_[nombre_cpt]',
            'title' => 'Datos de [Singular]',
            'fields' => array(
                
                // Campo: descripcion_corta
                array(
                    'key' => 'field_descripcion_corta',
                    'label' => 'Descripción Corta',
                    'name' => 'descripcion_corta',
                    'type' => 'textarea',
                    'required' => 1,
                    'maxlength' => 150,
                    'placeholder' => 'Máximo 150 caracteres',
                ),
                
                // Campo: duracion
                array(
                    'key' => 'field_duracion',
                    'label' => 'Duración (minutos)',
                    'name' => 'duracion',
                    'type' => 'number',
                    'required' => 1,
                    'min' => 15,
                    'max' => 180,
                ),
                
                // Campo: nivel (select)
                array(
                    'key' => 'field_nivel',
                    'label' => 'Nivel',
                    'name' => 'nivel',
                    'type' => 'select',
                    'required' => 1,
                    'choices' => array(
                        'principiante' => 'Principiante',
                        'intermedio' => 'Intermedio',
                        'avanzado' => 'Avanzado',
                    ),
                    'default_value' => 'principiante',
                ),
                
                // Campo: beneficios (repeater)
                array(
                    'key' => 'field_beneficios',
                    'label' => 'Beneficios',
                    'name' => 'beneficios',
                    'type' => 'repeater',
                    'min' => 3,
                    'max' => 5,
                    'layout' => 'block',
                    'button_label' => 'Añadir Beneficio',
                    'sub_fields' => array(
                        array(
                            'key' => 'field_beneficio_titulo',
                            'label' => 'Título del Beneficio',
                            'name' => 'titulo',
                            'type' => 'text',
                            'required' => 1,
                        ),
                        array(
                            'key' => 'field_beneficio_descripcion',
                            'label' => 'Descripción',
                            'name' => 'descripcion',
                            'type' => 'textarea',
                            'rows' => 3,
                        ),
                    ),
                ),
                
                // Campo: instructor (relationship)
                array(
                    'key' => 'field_instructor',
                    'label' => 'Instructor',
                    'name' => 'instructor',
                    'type' => 'post_object',
                    'post_type' => array('instructor'),
                    'return_format' => 'id',
                    'required' => 1,
                ),
                
                // ... resto de campos según arquitectura.md
                
            ),
            'location' => array(
                array(
                    array(
                        'param' => 'post_type',
                        'operator' => '==',
                        'value' => '[nombre-cpt]',
                    ),
                ),
            ),
            'menu_order' => 0,
            'position' => 'normal',
            'style' => 'default',
        ));
        
    }
}
```

#### **Opción B: Meta Boxes Nativos**

**Archivo**: `includes/fields.php`

```php
<?php
/**
 * Meta boxes nativos de WordPress
 */

// Si se accede directamente, salir
if (!defined('ABSPATH')) {
    exit;
}

/**
 * Añadir meta boxes
 */
add_action('add_meta_boxes', 'prefix_add_meta_boxes_[nombre_cpt]');
function prefix_add_meta_boxes_[nombre_cpt]() {
    add_meta_box(
        'prefix_[nombre]_meta',
        __('Datos de [Singular]', 'text-domain'),
        'prefix_[nombre]_meta_callback',
        '[nombre-cpt]',
        'normal',
        'high'
    );
}

/**
 * Callback del meta box
 */
function prefix_[nombre]_meta_callback($post) {
    // Nonce para seguridad
    wp_nonce_field('prefix_save_[nombre]_meta', 'prefix_[nombre]_nonce');
    
    // Obtener valores actuales
    $descripcion = get_post_meta($post->ID, 'descripcion_corta', true);
    $duracion = get_post_meta($post->ID, 'duracion', true);
    $nivel = get_post_meta($post->ID, 'nivel', true);
    
    ?>
    <table class="form-table">
        <tr>
            <th><label for="descripcion_corta">Descripción Corta</label></th>
            <td>
                <textarea id="descripcion_corta" name="descripcion_corta" rows="3" class="large-text" maxlength="150"><?php echo esc_textarea($descripcion); ?></textarea>
                <p class="description">Máximo 150 caracteres</p>
            </td>
        </tr>
        <tr>
            <th><label for="duracion">Duración (minutos)</label></th>
            <td>
                <input type="number" id="duracion" name="duracion" value="<?php echo esc_attr($duracion); ?>" min="15" max="180" />
            </td>
        </tr>
        <tr>
            <th><label for="nivel">Nivel</label></th>
            <td>
                <select id="nivel" name="nivel">
                    <option value="principiante" <?php selected($nivel, 'principiante'); ?>>Principiante</option>
                    <option value="intermedio" <?php selected($nivel, 'intermedio'); ?>>Intermedio</option>
                    <option value="avanzado" <?php selected($nivel, 'avanzado'); ?>>Avanzado</option>
                </select>
            </td>
        </tr>
    </table>
    <?php
}

/**
 * Guardar meta boxes
 */
add_action('save_post', 'prefix_save_[nombre]_meta');
function prefix_save_[nombre]_meta($post_id) {
    
    // Verificar nonce
    if (!isset($_POST['prefix_[nombre]_nonce']) || !wp_verify_nonce($_POST['prefix_[nombre]_nonce'], 'prefix_save_[nombre]_meta')) {
        return;
    }
    
    // Verificar autosave
    if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) {
        return;
    }
    
    // Verificar permisos
    if (!current_user_can('edit_post', $post_id)) {
        return;
    }
    
    // Sanitizar y guardar campos
    if (isset($_POST['descripcion_corta'])) {
        update_post_meta($post_id, 'descripcion_corta', sanitize_textarea_field($_POST['descripcion_corta']));
    }
    
    if (isset($_POST['duracion'])) {
        update_post_meta($post_id, 'duracion', intval($_POST['duracion']));
    }
    
    if (isset($_POST['nivel'])) {
        $nivel_permitido = array('principiante', 'intermedio', 'avanzado');
        $nivel = sanitize_text_field($_POST['nivel']);
        if (in_array($nivel, $nivel_permitido)) {
            update_post_meta($post_id, 'nivel', $nivel);
        }
    }
}
```

---

## Output Esperado

**Código PHP completo** para:
- Registro de CPT con `register_post_type()`
- Campos personalizados (ACF o meta boxes nativos)
- Listo para incluir en plugin

---

## Criterios de Validación

- [ ] **CPT según arquitectura.md** (nombre, configuración)
- [ ] **Campos según arquitectura.md** (todos implementados)
- [ ] **Código seguro** (nonces, sanitización, escapado)
- [ ] **WordPress Coding Standards** (nomenclatura, indentación)
- [ ] **Traducible** (text-domain, funciones __)
- [ ] **Sin errores PHP** (sintaxis válida)

---

## Notas

- Esta skill es ejecutada por el **Programador**
- Solo aplica si gestión por código (no JetEngine)
- El código debe seguir EXACTAMENTE la especificación de arquitectura.md
