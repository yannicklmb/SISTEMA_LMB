---
nombre: generar-shortcode-wp
familia: codigo
control: autonoma
activacion: "generar shortcode", "crear shortcode WordPress", "shortcode personalizado"
---

# Skill: Generar Shortcode WordPress

## Propósito

Generar código PHP para shortcodes personalizados según especificación funcional.

## Cuándo Usar

- Cuando se necesita mostrar contenido dinámico en páginas/posts
- Para crear bloques reutilizables
- Listados personalizados de CPTs

## Inputs Requeridos

- Especificación del shortcode (qué debe mostrar, qué parámetros acepta)
- CPT/taxonomía a consultar (si aplica)

## Código Base

```php
<?php
/**
 * Shortcode: [nombre-shortcode]
 * Uso: [nombre-shortcode numero="3" categoria="slug"]
 */
function prefix_shortcode_[nombre]($atts) {
    
    // Atributos con valores por defecto
    $atts = shortcode_atts(array(
        'numero' => 3,
        'categoria' => '',
        'orden' => 'date',
    ), $atts);
    
    // Query
    $args = array(
        'post_type' => '[cpt]',
        'posts_per_page' => intval($atts['numero']),
        'orderby' => sanitize_text_field($atts['orden']),
        'order' => 'DESC',
    );
    
    // Si hay categoría filtrar
    if (!empty($atts['categoria'])) {
        $args['tax_query'] = array(
            array(
                'taxonomy' => '[taxonomia]',
                'field' => 'slug',
                'terms' => sanitize_text_field($atts['categoria']),
            ),
        );
    }
    
    $query = new WP_Query($args);
    
    // Output buffer
    ob_start();
    
    if ($query->have_posts()) {
        echo '<div class="shortcode-[nombre] grid-m">';
        
        while ($query->have_posts()) {
            $query->the_post();
            ?>
            <div class="card">
                <?php if (has_post_thumbnail()) : ?>
                    <img src="<?php echo esc_url(get_the_post_thumbnail_url(get_the_ID(), 'medium')); ?>" alt="<?php echo esc_attr(get_the_title()); ?>" class="card__imagen" />
                <?php endif; ?>
                <h3 class="card__titulo"><?php echo esc_html(get_the_title()); ?></h3>
                <div class="card__contenido"><?php echo esc_html(get_the_excerpt()); ?></div>
                <a href="<?php echo esc_url(get_permalink()); ?>" class="boton-cta boton-cta--secundario">Ver más</a>
            </div>
            <?php
        }
        
        echo '</div>';
    } else {
        echo '<p>' . esc_html__('No se encontraron resultados.', 'text-domain') . '</p>';
    }
    
    wp_reset_postdata();
    
    return ob_get_clean();
}
add_shortcode('nombre-shortcode', 'prefix_shortcode_[nombre]');
```

## Notas

- Siempre usar `ob_start()` y `ob_get_clean()`
- Sanitizar atributos
- Escapar outputs
- Resetear post data (`wp_reset_postdata()`)
