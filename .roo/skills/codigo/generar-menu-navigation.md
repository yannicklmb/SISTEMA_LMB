---
nombre: generar-menu-navigation
familia: codigo
control: autonoma
activacion: "generar menú navegación", "registrar menús", "navigation menus WordPress"
---

# Skill: Generar Menú de Navegación

## Propósito

Generar código PHP para registrar ubicaciones de menús de navegación en WordPress.

## Código Base

### Registrar Ubicaciones de Menús

```php
<?php
/**
 * Registrar ubicaciones de menús
 */

add_action('after_setup_theme', 'prefix_register_menus');
function prefix_register_menus() {
    register_nav_menus(array(
        'menu-principal' => __('Menú Principal', 'text-domain'),
        'menu-footer' => __('Menú Footer', 'text-domain'),
        'menu-legal' => __('Menú Legal', 'text-domain'),
        'menu-movil' => __('Menú Móvil', 'text-domain'), // Si diferente del principal
    ));
}
```

### Mostrar Menú en Template

```php
<?php
// En header.php o template
if (has_nav_menu('menu-principal')) {
    wp_nav_menu(array(
        'theme_location' => 'menu-principal',
        'container' => 'nav',
        'container_class' => 'navegacion-principal',
        'menu_class' => 'menu',
        'fallback_cb' => false,
    ));
}
```

### Menú Móvil con Toggle

```php
<!-- HTML -->
<button class="menu-toggle" aria-label="Abrir menú">
    <span class="menu-toggle__icon">☰</span>
</button>

<nav class="menu-movil" aria-label="Menú móvil">
    <?php
    wp_nav_menu(array(
        'theme_location' => 'menu-movil',
        'container' => false,
        'menu_class' => 'menu',
    ));
    ?>
</nav>

<!-- JavaScript -->
<script>
document.querySelector('.menu-toggle').addEventListener('click', function() {
    document.querySelector('.menu-movil').classList.toggle('activo');
    this.setAttribute('aria-expanded', 
        this.getAttribute('aria-expanded') === 'true' ? 'false' : 'true'
    );
});
</script>

<!-- CSS -->
<style>
.menu-movil {
    display: none;
}
.menu-movil.activo {
    display: block;
}
@media (min-width: 701px) {
    .menu-toggle {
        display: none;
    }
    .menu-movil {
        display: block;
    }
}
</style>
```

## Notas

- Registrar ubicaciones según diseño del sitio
- Menú principal casi siempre necesario
- Menú footer común
- Menú móvil si diferente del principal
