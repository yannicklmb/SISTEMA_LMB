---
nombre: generar-funciones-wp
familia: codigo
control: autonoma
activacion: "generar functions.php", "crear hooks WordPress", "filters personalizados"
---

# Skill: Generar Funciones WordPress

## Propósito

Generar código PHP para functions.php personalizadas (hooks, filters, utilidades) según necesidades del proyecto.

## Código Base

### Hooks de WordPress

```php
<?php
/**
 * Hooks y Filters personalizados
 */

// Modificar query principal
add_action('pre_get_posts', 'prefix_modify_main_query');
function prefix_modify_main_query($query) {
    if (!is_admin() && $query->is_main_query() && $query->is_post_type_archive('[cpt]')) {
        $query->set('posts_per_page', 12);
        $query->set('orderby', 'date');
        $query->set('order', 'DESC');
    }
}

// Añadir clase CSS al body
add_filter('body_class', 'prefix_custom_body_class');
function prefix_custom_body_class($classes) {
    if (is_singular('[cpt]')) {
        $classes[] = 'template-[nombre]';
    }
    return $classes;
}

// Deshabilitar scripts no usados
add_action('wp_enqueue_scripts', 'prefix_dequeue_scripts', 100);
function prefix_dequeue_scripts() {
    // Emojis
    remove_action('wp_head', 'print_emoji_detection_script', 7);
    remove_action('wp_print_styles', 'print_emoji_styles');
    
    // Gutenberg (si no se usa)
    wp_dequeue_style('wp-block-library');
}
```

### Hooks de WooCommerce

```php
<?php
// Añadir campo custom a producto
add_action('woocommerce_product_options_general_product_data', 'prefix_add_custom_field');
function prefix_add_custom_field() {
    woocommerce_wp_text_input(array(
        'id' => 'campo_custom',
        'label' => __('Campo Custom', 'text-domain'),
        'desc_tip' => true,
        'description' => __('Descripción del campo', 'text-domain'),
    ));
}

// Guardar campo
add_action('woocommerce_process_product_meta', 'prefix_save_custom_field');
function prefix_save_custom_field($post_id) {
    $value = isset($_POST['campo_custom']) ? sanitize_text_field($_POST['campo_custom']) : '';
    update_post_meta($post_id, 'campo_custom', $value);
}

// Mostrar en frontend
add_action('woocommerce_single_product_summary', 'prefix_display_custom_field', 25);
function prefix_display_custom_field() {
    global $product;
    $value = get_post_meta($product->get_id(), 'campo_custom', true);
    if ($value) {
        echo '<div class="custom-field">' . esc_html($value) . '</div>';
    }
}
```

## Notas

- Siempre sanitizar y escapar
- Prefijo único (evitar conflictos)
- Seguir WordPress Coding Standards
