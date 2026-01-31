---
nombre: checklist-seguridad
familia: validacion
control: autonoma
activacion: "checklist seguridad", "verificar seguridad", "auditoría seguridad", "hardening"
---

# Skill: Checklist de Seguridad

## Propósito

Verificar hardening de WordPress, exposición de API REST, roles y capabilities, y directrices de seguridad en código.

## Cuándo Usar

- Durante Fase 11 (Seguridad)
- Cuando el Securizador necesita auditar el sitio
- Validación periódica de seguridad

## Inputs Requeridos

### Obligatorios
- Acceso al sitio (admin)
- Acceso al código (plugin propio, templates)
- **`docs/arquitectura.md`**: Entidades privadas (CCTs) a proteger

## Proceso

### 1. Auditoría de Código Propio

**Revisar plugin custom**:
```markdown
### Plugin: [nombre-proyecto]-custom

**Archivo: [archivo].php**
Línea | Tipo | Código | Estado | Acción
------|------|--------|--------|-------
45 | Input | `$_POST['campo']` | ❌ Sin sanitizar | Añadir `sanitize_text_field()`
52 | Output | `echo $var` | ❌ Sin escapar | Cambiar a `esc_html($var)`
67 | Nonce | Formulario | ❌ Sin nonce | Añadir `wp_nonce_field()`
89 | SQL | Query | ✅ Usa prepare() | OK

**Resumen**:
- Issues detectados: 3
- Issues críticos: 2 (input sin sanitizar, output sin escapar)
```

**Checklist por archivo**:
- [ ] Inputs sanitizados (`sanitize_text_field()`, `esc_url()`, etc.)
- [ ] Outputs escapados (`esc_html()`, `esc_attr()`, `esc_url()`)
- [ ] Nonces en formularios (`wp_nonce_field()`, `wp_verify_nonce()`)
- [ ] SQL con prepared statements (`$wpdb->prepare()`)

### 2. Verificar Exposición API REST

**Identificar entidades privadas** (de arquitectura.md):
```
CCTs privadas:
- envio-formulario (no debe ser pública)
- ticket-soporte (no debe ser público)
- factura (no debe ser pública)
```

**Probar acceso** a cada una:
```bash
# Probar sin autenticar
curl https://[sitio]/wp-json/wp/v2/envio-formulario

Resultado esperado: 401 Unauthorized o 404 Not Found
Resultado actual: [Documentar]
```

**Checklist**:
- [ ] CCT privada NO accesible vía API (/wp-json/wp/v2/)
- [ ] `show_in_rest: false` en CPTs privados
- [ ] Hooks de bloqueo implementados (si necesario)
- [ ] Capabilities verificadas en endpoints custom

### 3. Verificar wp-config.php

**Constantes obligatorias**:
```php
// ¿Están presentes?
define('DISALLOW_FILE_EDIT', true); // [ ] Sí / [ ] No
define('WP_DEBUG', false); // [ ] Sí / [ ] No (producción)

// Claves de seguridad
// [ ] Son únicas (no las por defecto)
// [ ] Fueron generadas recientemente
```

### 4. Verificar Permisos de Archivos

**Desde terminal**:
```bash
# Verificar permisos
ls -la wp-config.php
# Esperado: 400 o 440

ls -la *.php
# Esperado: 644

ls -ld */
# Esperado: 755
```

**Checklist**:
- [ ] wp-config.php: 400 o 440
- [ ] Archivos PHP: 644
- [ ] Carpetas: 755

### 5. Verificar Roles y Capabilities

**Por cada rol**:
```markdown
### Rol: Administrator
- [x] Acceso completo (correcto)

### Rol: Editor
- [ ] ¿Puede instalar plugins? (verificar - NO debería)
- [ ] ¿Puede editar temas? (verificar - NO debería)
- [x] Puede gestionar contenido (correcto)

### Rol: Author
- [x] Solo sus posts (correcto)
- [ ] ¿Puede editar posts de otros? (NO debería)

### Rol: Custom (si hay roles personalizados)
- [ ] Capabilities correctas según diseño
```

### 6. Plugins de Seguridad

**Si hay plugin instalado** (Wordfence, WP Cerber, etc.):
```markdown
### Plugin: [Nombre]

**Configuración**:
- [ ] Firewall activado
- [ ] Límite de intentos login: [X] intentos
- [ ] Bloqueo de IPs configurado
- [ ] Escaneo programado: [Frecuencia]
- [ ] 2FA activado para admin
- [ ] Emails de alerta configurados
```

**Si NO hay plugin**:
```markdown
⚠️ Recomendación: Instalar plugin de seguridad
Opciones: Wordfence / WP Cerber / iThemes Security
```

### 7. Generar Reporte

**Documento**: `docs/reporte-seguridad.md` (actualización o creación)

```markdown
## Checklist de Seguridad

### Código Propio
- [ ] Inputs sanitizados: [XX/XX]
- [ ] Outputs escapados: [XX/XX]
- [ ] Nonces implementados: [XX/XX]
- [ ] SQL con prepare: [XX/XX]
- **Issues detectados**: [X] ([lista])

### Exposición API REST
- [ ] CCTs privadas protegidas: [XX/XX]
- [ ] Tests realizados: [XX endpoints]
- **Vulnerabilidades**: [X] ([lista])

### wp-config.php
- [ ] DISALLOW_FILE_EDIT: true
- [ ] WP_DEBUG: false
- [ ] Claves únicas: Sí
- **Issues**: [Lista o "Ninguno"]

### Permisos de Archivos
- [ ] wp-config.php: 400 ✅
- [ ] Archivos: 644 ✅
- [ ] Carpetas: 755 ✅

### Roles y Capabilities
- [ ] Admin: OK
- [ ] Editor: Verificado sin acceso a plugins
- [ ] Roles custom: OK
- **Issues**: [Lista o "Ninguno"]

### Plugin de Seguridad
- [ ] Instalado: [Sí/No]
- [ ] Configurado: [Sí/No/No aplica]

---

## Resultado

**Estado general**: ✅ Seguro / ⚠️ Requiere ajustes / ❌ Vulnerable

**Issues críticos**: [Número]
**Issues altos**: [Número]
**Issues medios**: [Número]

**Aprobación**: [Sí/No - si NO, qué debe corregirse]
```

---

## Output Esperado

**Reporte** con:
- Checklist completo de 6 áreas
- Issues detectados por severidad
- Estado general (seguro/vulnerable)
- Acciones de corrección

---

## Criterios de Validación

- [ ] **Código auditado** (plugin y templates)
- [ ] **API REST verificada** (CCTs privadas protegidas)
- [ ] **wp-config.php revisado** (constantes presentes)
- [ ] **Permisos verificados** (644/755/400)
- [ ] **Roles verificados** (capabilities correctas)
- [ ] **Plugin seguridad evaluado** (instalado o recomendado)

**Aprobar solo si**: 0 issues críticos.

---

## Errores Comunes

### ❌ No Probar API REST Realmente
**Mal**:
```
Asumir que show_in_rest: false es suficiente
[Sin probar con curl]
```

**Bien**:
```
Probar con curl cada CCT privada:
curl https://sitio/wp-json/wp/v2/envio-formulario
Resultado: 401 Unauthorized ✅ Protegido
```

---

## Notas

- Esta skill es ejecutada por el **Securizador**
- Si detecta vulnerabilidades críticas, debe avisar inmediatamente al Jefe de Proyectos
- No se puede lanzar con issues críticos de seguridad
