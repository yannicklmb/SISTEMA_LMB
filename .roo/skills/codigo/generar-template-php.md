---
nombre: generar-template-php
familia: codigo
control: autonoma
activacion: "generar template PHP", "crear template WordPress", "single archive page"
---

# Skill: Generar Template PHP WordPress

## Propósito

Generar templates PHP de WordPress (single, archive, page) según wireframes y arquitectura.

## Inputs Requeridos

- **`docs/wireframes.md`**: Estructura del template
- **`docs/arquitectura.md`**: Campos disponibles para queries
- **Framework CSS**: Clases disponibles

## Plantillas de Código

### Single de CPT

```php
<?php
/**
 * Template Name: Single [CPT]
 * Template Post Type: [nombre-cpt]
 */

get_header(); ?>

<main class="single-[cpt]">
    <?php while (have_posts()) : the_post(); ?>
    
    <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
        
        <!-- Hero -->
        <section class="seccion hero">
            <div class="seccion__contenedor">
                <h1 class="seccion__titulo"><?php the_title(); ?></h1>
                
                <?php 
                // Campo personalizado
                $descripcion = get_field('descripcion_corta');
                if ($descripcion) : ?>
                    <p class="seccion__texto"><?php echo esc_html($descripcion); ?></p>
                <?php endif; ?>
                
                <?php if (has_post_thumbnail()) : ?>
                    <img src="<?php echo esc_url(get_the_post_thumbnail_url(get_the_ID(), 'large')); ?>" alt="<?php echo esc_attr(get_the_title()); ?>" class="seccion__imagen" />
                <?php endif; ?>
            </div>
        </section>
        
        <!-- Beneficios (repeater) -->
        <?php 
        $beneficios = get_field('beneficios');
        if ($beneficios) : ?>
            <section class="seccion beneficios">
                <div class="seccion__contenedor">
                    <h2 class="seccion__titulo">Beneficios</h2>
                    <div class="grid-m">
                        <?php foreach ($beneficios as $beneficio) : ?>
                            <div class="card">
                                <h3 class="card__titulo"><?php echo esc_html($beneficio['titulo']); ?></h3>
                                <p class="card__contenido"><?php echo esc_html($beneficio['descripcion']); ?></p>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </section>
        <?php endif; ?>
        
        <!-- CTA -->
        <section class="seccion cta">
            <div class="seccion__contenedor seccion--encabezado">
                <a href="/contacto/" class="boton-cta boton-cta--principal">Solicita información</a>
            </div>
        </section>
        
    </article>
    
    <?php endwhile; ?>
</main>

<?php get_footer();
```

### Archive de CPT

```php
<?php
/**
 * Template Name: Archive [CPT]
 * Template Post Type: archive
 */

get_header(); ?>

<main class="archive-[cpt]">
    
    <header class="seccion hero">
        <div class="seccion__contenedor seccion--encabezado">
            <h1 class="seccion__titulo"><?php post_type_archive_title(); ?></h1>
        </div>
    </header>
    
    <section class="seccion listado">
        <div class="seccion__contenedor">
            
            <?php if (have_posts()) : ?>
                
                <div class="grid-m">
                    <?php while (have_posts()) : the_post(); ?>
                        
                        <article class="card">
                            <?php if (has_post_thumbnail()) : ?>
                                <img src="<?php echo esc_url(get_the_post_thumbnail_url(get_the_ID(), 'medium')); ?>" alt="<?php echo esc_attr(get_the_title()); ?>" class="card__imagen" />
                            <?php endif; ?>
                            
                            <h2 class="card__titulo"><?php the_title(); ?></h2>
                            <div class="card__contenido"><?php the_excerpt(); ?></div>
                            <a href="<?php the_permalink(); ?>" class="boton-cta boton-cta--secundario">Ver más</a>
                        </article>
                        
                    <?php endwhile; ?>
                </div>
                
                <!-- Paginación -->
                <div class="paginacion">
                    <?php
                    the_posts_pagination(array(
                        'mid_size' => 2,
                        'prev_text' => '← Anterior',
                        'next_text' => 'Siguiente →',
                    ));
                    ?>
                </div>
                
            <?php else : ?>
                <p><?php esc_html_e('No se encontraron resultados.', 'text-domain'); ?></p>
            <?php endif; ?>
            
        </div>
    </section>
    
</main>

<?php get_footer();
```

## Notas

- Usar campos de arquitectura.md (`get_field()` si ACF, `get_post_meta()` si nativo)
- Aplicar clases del Framework CSS LMB
- Siempre escapar outputs (`esc_html()`, `esc_url()`, `esc_attr()`)
- Estructura semántica HTML (según wireframes.md)
