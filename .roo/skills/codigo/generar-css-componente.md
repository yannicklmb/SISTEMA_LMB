---
nombre: generar-css-componente
familia: codigo
control: autonoma
activacion: "generar CSS componente", "crear estilo componente", "CSS según framework LMB"
---

# Skill: Generar CSS de Componente

## Propósito

Generar CSS para un componente específico según el Framework LMB y decisiones de diseno.md.

## Inputs Requeridos

- **`docs/diseno.md`**: Paleta de colores, estilo de componentes
- Nombre del componente (botón, card, sección, etc.)
- Variantes necesarias (claro, oscuro, etc.)

## Plantilla de Código

### Componente Nuevo con Patrón LMB

```css
/* ============================================
   Componente: [nombre-componente]
   ============================================ */

/* Base */
.[nombre-componente] {
  display: flex;
  flex-direction: column;
  gap: var(--espacio-s);
  padding: var(--espacio-m);
  border: 2px solid transparent;
  background: 
    white padding-box,
    var(--degradado-primario) border-box;
  background-clip: padding-box, border-box;
  border-radius: var(--radio-m);
  transition: var(--transicion-rapida);
}

/* Hover */
.[nombre-componente]:hover {
  box-shadow: var(--sombra-m);
  transform: var(--escala-aumentar);
}

/* Variante clara */
.[nombre-componente]--l {
  background: 
    var(--color-primario-l) padding-box,
    var(--degradado-primario) border-box;
}

/* Variante oscura */
.[nombre-componente]--d {
  background: 
    var(--color-primario-d) padding-box,
    var(--degradado-primario) border-box;
  color: white;
}

/* Elementos */
.[nombre-componente]__titulo {
  font-size: var(--texto-l);
  font-weight: var(--peso-grueso);
  color: var(--color-primario);
}

.[nombre-componente]__contenido {
  font-size: var(--texto-m);
  line-height: 1.6;
}

/* Responsive */
@media (max-width: 700px) {
  .[nombre-componente] {
    padding: var(--espacio-s);
  }
}
```

## Reglas

- **Usar variables CSS** (no valores hardcodeados)
- **BEM en español** (bloque__elemento--modificador)
- **Responsive** (breakpoint 700px)
- **Patrón LMB** (borde degradado, color-mix)

## Notas

- Ejecutada por el **Maquetador**
- CSS se añade a docs/estilos.css
