---
nombre: generar-briefing-inicial
familia: produccion
control: autonoma
activacion: "briefing inicial", "iniciar proyecto", "preguntas al cliente", "recopilar información inicial"
---

# Skill: Generar Briefing Inicial

## Propósito

Crear un briefing base estructurado a partir de preguntas estratégicas al cliente para iniciar el proyecto.

## Cuándo Usar

- Al inicio de un proyecto nuevo (antes de Fase 1)
- Cuando el Jefe de Proyectos necesita recopilar información del cliente
- Para estructurar la primera conversación con el cliente

## Inputs Requeridos

### Mínimos
- Nombre del negocio/proyecto
- Contacto del cliente

### Opcionales (se preguntarán)
- Toda la información estratégica del negocio

## Proceso

### 1. Preparar Preguntas Estructuradas

**Sección A: Identidad del Negocio**
- ¿Cuál es el nombre comercial de tu negocio?
- ¿Tienes colores de marca definidos? (primario, secundario)
- ¿Tienes logo?
- ¿Cuál es tu propuesta de valor única? (qué te hace diferente)
- ¿Tienes misión y visión definidas?

**Sección B: Oferta**
- ¿Qué servicios o productos ofreces? (lista completa)
- Describe cada servicio/producto brevemente
- ¿Qué te diferencia de la competencia en cada uno?
- ¿Cuál es tu servicio/producto estrella?

**Sección C: Objetivos**
- ¿Cuál es el objetivo principal de la web? (generar leads, vender online, educar, etc.)
- ¿Qué KPIs esperas? (conversiones/mes, ventas, suscriptores)
- ¿Tienes objetivos numéricos específicos?

**Sección D: Audiencia**
- ¿A quién te diriges? Describe 3 perfiles de cliente ideal
- ¿Qué problemas tienen tus clientes? (pain points)
- ¿Por qué podrían dudar en comprarte? (objeciones)
- ¿Qué dispositivos usan principalmente? (móvil, desktop)
- ¿Dónde los encuentras normalmente? (canales, redes sociales)

**Sección E: Competencia**
- ¿Quiénes son tus 3 principales competidores?
- ¿Qué hacen bien? ¿Qué hacen mal?
- ¿Hay alternativas diferentes a tu solución? (sustitutivos)

**Sección F: Marketing y Canales**
- ¿Harás campañas de publicidad online? (Google Ads, Facebook Ads)
- ¿Qué canales de marketing usarás?
- ¿Necesitas landings específicas por canal?

**Sección G: Técnico**
- ¿Tienes hosting contratado? ¿Cuál?
- ¿Tienes dominio registrado?
- ¿Tienes sitio web actual? (si sí, URL)
- ¿Hay contenido a migrar?

### 2. Recopilar Respuestas

**Formato de interacción**:
- Presentar preguntas agrupadas por sección
- Permitir respuestas abiertas
- Hacer follow-up si respuestas son vagas
- Documentar todo textualmente

### 3. Generar Documento de Briefing

**Estructura del output**:

```markdown
---
tipo: briefing
estado: vigente
fase: inicial
version: 1
responsable: jefe-proyectos
creado: YYYY-MM-DD
ultima_revision: YYYY-MM-DD
---

# Briefing Inicial - [Nombre Proyecto]

## Datos del Cliente

**Nombre del negocio**: [Nombre]
**Contacto**: [Nombre, email, teléfono]
**Fecha de briefing**: [Fecha]

---

## Identidad del Negocio

**Nombre comercial**: [Respuesta]
**Colores de marca**: [Respuesta]
**Logo**: [Sí/No, si sí adjuntar]
**Propuesta de valor única**: [Respuesta]
**Misión**: [Respuesta]
**Visión**: [Respuesta]

---

## Oferta (Servicios/Productos)

[Lista de respuestas]

---

## Objetivos del Negocio

**Objetivo principal de la web**: [Respuesta]
**KPIs esperados**: [Respuesta]
**Objetivos numéricos**: [Respuesta]

---

## Audiencia

### Perfil 1: [Nombre]
[Descripción del cliente]

### Perfil 2: [Nombre]
[Descripción del cliente]

### Perfil 3: [Nombre]
[Descripción del cliente]

**Pain points generales**: [Lista]
**Objeciones generales**: [Lista]

---

## Competencia

### Competidor 1: [Nombre]
- URL: [Si disponible]
- Fortalezas: [Respuesta]
- Debilidades: [Respuesta]

[... competidores 2 y 3]

**Sustitutivos**: [Respuesta]

---

## Marketing y Canales

**Campañas planeadas**: [Respuesta]
**Canales**: [Respuesta]
**Landings específicas**: [Respuesta]

---

## Información Técnica

**Hosting**: [Proveedor, plan]
**Dominio**: [URL]
**Sitio actual**: [URL o "No existe"]
**Migración necesaria**: [Sí/No]

---

## Próximos Pasos

1. Validar briefing con cliente
2. Asignar Fase 1 (Estrategia) al Estratega
3. Estratega profundizará en perfiles de audiencia
4. Crear roadmap.md inicial
```

### 4. Validar Briefing

**Antes de considerar completo**:
- [ ] Todas las secciones tienen respuestas
- [ ] Si hay respuestas vagas, hacer follow-up
- [ ] Información suficiente para iniciar Fase 1
- [ ] Cliente ha validado la información

---

## Output Esperado

**Documento**: `docs/briefing-inicial.md`

**Contenido mínimo**:
- Datos del cliente
- Identidad del negocio
- Oferta (servicios/productos)
- Objetivos y KPIs
- Audiencia (descripción inicial de perfiles)
- Competencia (mínimo 3)
- Canales de marketing
- Info técnica

---

## Criterios de Validación

**El briefing está completo cuando**:
- [ ] Tiene las 7 secciones obligatorias
- [ ] Información suficiente para Fase 1 (Estrategia)
- [ ] Cliente ha validado las respuestas
- [ ] No hay secciones vacías o con "N/A" sin justificar

---

## Errores Comunes

### ❌ Aceptar Respuestas Vagas
**Mal**:
```
P: ¿A quién te diriges?
R: "A todo el mundo"
[Aceptar sin profundizar]
```

**Bien**:
```
P: ¿A quién te diriges?
R: "A todo el mundo"
Follow-up: "¿Puedes describir 3 tipos específicos de cliente que compran tu servicio? Por ejemplo: edad, ocupación, qué problema tienen"
R: "Ah sí: ejecutivos 40-55 años, emprendedores 30-40, directores de marketing..."
```

### ❌ No Documentar Textualmente
**Mal**:
```
Hacer preguntas y no documentar respuestas
```

**Bien**:
```
Cada respuesta se documenta en el briefing.md
Citas textuales del cliente (útil para copywriting)
```

---

## Notas

- Este briefing es el input para que el Estratega cree `docs/estrategia.md`
- Es un documento inicial que se profundiza en fases posteriores
- NO reemplaza la estrategia completa
