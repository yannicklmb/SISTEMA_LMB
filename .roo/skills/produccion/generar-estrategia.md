---
nombre: generar-estrategia
familia: produccion
control: autonoma
activacion: "crear estrategia", "generar estrategia.md", "Fase 1", "definir negocio", "perfiles de audiencia"
---

# Skill: Generar Estrategia

## Propósito

Producir el documento `docs/estrategia.md` completo con las 8 secciones obligatorias, mínimo 3 perfiles de audiencia completos y elevator pitch con 5 componentes.

## Cuándo Usar

- Fase 1 del proyecto (Estrategia)
- Cuando el Estratega necesita crear el documento completo
- Después de tener briefing inicial o información del cliente

## Inputs Requeridos

### Obligatorios
- Información del negocio (de briefing o cliente)
- Descripción de servicios/productos
- Información de audiencia (aunque sea básica)

### Opcionales
- Briefing inicial previo
- Análisis de competencia existente
- Material de marca (logo, colores)

## Proceso

### 1. Verificar Información Disponible

**Si existe `docs/briefing-inicial.md`**:
- Leer y extraer información
- Usar como base

**Si NO existe briefing**:
- Solicitar información al Jefe de Proyectos
- Puede requerir sesión con cliente

### 2. Crear Estructura del Documento

**Frontmatter estándar**:
```yaml
---
tipo: estrategia
estado: vigente
fase: estrategia
version: 1
responsable: estratega
creado: YYYY-MM-DD
ultima_revision: YYYY-MM-DD
validado_por: null
validado_en: null
impactado_por_evento: false
---
```

### 3. Completar las 8 Secciones Obligatorias

#### **Sección 1: Datos Principales del Negocio**
```markdown
## 1. Datos Principales del Negocio

**Nombre comercial**: [Nombre]
**Colores de marca**: 
- Primario: [Color/Hex]
- Secundario: [Color/Hex]

**Propuesta de valor única**: 
[Qué hace único a este negocio, en 1-2 frases]

**Misión** (opcional pero recomendado):
[Para qué existe el negocio]

**Visión** (opcional pero recomendado):
[A dónde quiere llegar]
```

#### **Sección 2: Objetivos del Negocio**
```markdown
## 2. Objetivos del Negocio

**Objetivos principales**:
- [Generar leads / Vender productos / Educar / Posicionar marca]

**KPIs esperados**:
- [Conversiones/mes: XX]
- [Ventas/mes: €XXX]
- [Suscriptores: XXX]
- [Visitas/mes: XXX]
```

#### **Sección 3: Servicios/Productos**
```markdown
## 3. Servicios/Productos

### Servicio/Producto 1: [Nombre]
**Descripción**: [Qué es, para qué sirve]
**Diferenciación vs competencia**: [Qué lo hace único]
**Precio** (si aplica): [Rango o valor]

[... resto de servicios/productos]
```

#### **Sección 4: Competencia y Sustitutivos**
```markdown
## 4. Competencia y Sustitutivos

### Competidores Directos

**Competidor 1**: [Nombre]
- URL: [Si disponible]
- Fortalezas: [Qué hacen bien]
- Debilidades: [Qué hacen mal]
- Diferenciación nuestra: [Cómo nos diferenciamos]

[... competidores 2 y 3 mínimo]

### Sustitutivos Indirectos
[Alternativas diferentes que resuelven el mismo problema]
```

#### **Sección 5: Perfiles de Audiencia (MÍNIMO 3)**

**CRÍTICO**: Cada perfil DEBE tener 15 campos obligatorios.

```markdown
## 5. Perfiles de Audiencia

### Perfil 1: [Nombre Descriptivo del Perfil]

**Demográficos** (7 campos obligatorios):
- **Edad**: [Rango: XX-XX años]
- **Género**: [M/F/Ambos/No relevante]
- **Estado civil**: [Soltero/Casado/Divorciado/No relevante]
- **Nivel socioeconómico**: [Alto/Medio-alto/Medio/Medio-bajo/Bajo]
- **Nivel educativo**: [Universitario/FP/Bachiller/Secundaria]
- **Localización**: [Ciudad, región, país]
- **Ocupación**: [Cargo/profesión específica]

**Psicográficos** (2 campos):
- **Motivaciones**: 
  - [Qué busca este perfil]
  - [Qué desea lograr]
  - [Qué aspira conseguir]
- **Pain points / Miedos** (mínimo 3):
  1. [Problema o preocupación 1]
  2. [Problema o preocupación 2]
  3. [Problema o preocupación 3]

**Objeciones** (1 campo, mínimo 3 objeciones):
1. [Por qué podría NO comprar/contratar]
2. [Duda o freno a la decisión]
3. [Objeción común]

**Comportamientos** (5 campos):
- **Dispositivo preferido**: [Móvil / Desktop / Ambos]
- **Frecuencia de compra**: [Primera vez / Recurrente mensual/anual]
- **Momento de compra**: [Día y hora típicos]
- **Canales preferidos**: [Redes sociales, buscadores, recomendaciones]
- **Proceso de decisión**: [Impulsivo / Analítico / Necesita aprobación]

---

### Perfil 2: [Nombre]
[Mismo formato completo con 15 campos]

### Perfil 3: [Nombre]
[Mismo formato completo con 15 campos]
```

**Validación interna**:
- Cada perfil tiene 15 campos completos ✓
- Cada perfil tiene mín. 3 pain points ✓
- Cada perfil tiene mín. 3 objeciones ✓

#### **Sección 6: Mapping Servicios → Perfiles**
```markdown
## 6. Mapping Servicios/Productos → Perfiles

| Servicio/Producto | Perfil Principal | Perfiles Secundarios | Prioridad |
|-------------------|------------------|---------------------|-----------|
| [Nombre] | [Perfil X] | [Perfil Y, Perfil Z] | Alta |
| [Nombre] | [Perfil Y] | [Perfil X] | Media |

**Cobertura**: 100% de servicios/productos tienen perfil asignado ✓
```

#### **Sección 7: Elevator Pitch (5 Componentes)**
```markdown
## 7. Elevator Pitch

**PROBLEMA**:
[Qué problema específico resuelve el negocio, en 1-2 frases]

**SOLUCIÓN**:
[Cómo lo resuelve, qué ofrece concretamente]

**DIFERENCIACIÓN**:
[Por qué elegir este negocio vs la competencia, qué lo hace único]

**AUTORIDAD**:
[Por qué creerles: años de experiencia, casos de éxito, certificaciones, equipo experto, etc.]

**LLAMADA A LA ACCIÓN**:
[Qué debe hacer el usuario ahora: contactar, comprar, descargar, agendar, etc.]
```

**Validar**: Los 5 componentes están presentes y completos ✓

#### **Sección 8: Canales de Adquisición**
```markdown
## 8. Canales de Adquisición

**Campañas planeadas**:
- [Google Ads / Facebook Ads / Instagram Ads / LinkedIn Ads / Ninguna]

**Landings necesarias por canal**:
- Google Ads: [Sí/No - si sí, cuántas y para qué]
- Facebook Ads: [Sí/No]
- [... otros canales]

**Impacto en planificación**:
[Cómo esto afecta las URLs que se crearán]
```

---

## Output Esperado

**Documento completo**: `docs/estrategia.md`

**Estructura**:
- Frontmatter estándar
- 8 secciones obligatorias
- Mínimo 3 perfiles completos (15 campos cada uno)
- Elevator pitch con 5 componentes
- Mapping servicios → perfiles (100% cobertura)

---

## Criterios de Validación

**La estrategia está completa cuando**:

- [ ] **3+ perfiles completos** (15 campos cada uno)
- [ ] **Cada perfil tiene mín. 3 pain points**
- [ ] **Cada perfil tiene mín. 3 objeciones**
- [ ] **Elevator pitch con 5 componentes** (todos presentes)
- [ ] **Mapping servicios → perfiles** (100% cobertura)
- [ ] **Análisis de competencia** (mín. 3 competidores)
- [ ] **Canales de adquisición definidos**
- [ ] **Frontmatter estándar incluido**

**Métricas objetivo**:
- ≥ 3 perfiles con 100% campos completos

---

## Errores Comunes

### ❌ Perfiles Genéricos
**Mal**:
```
Perfil 1: Adulto interesado en servicios
- Edad: 25-65
- Motivación: Busca calidad
[Demasiado genérico, inútil]
```

**Bien**:
```
Perfil 1: Ejecutivo Senior en Transición
- Edad: 45-55 años
- Ocupación: Director de empresa mediana (50-200 empleados)
- Nivel socioeconómico: Alto (€80K-150K/año)
- Motivación: Busca asesoría para vender su empresa y planificar jubilación
- Pain point 1: No sabe valorar correctamente su empresa
- Pain point 2: Teme perder control en la transición
- Pain point 3: Preocupación por implicaciones fiscales
[... 15 campos completos y específicos]
```

### ❌ Elevator Pitch Incompleto
**Mal**:
```
PROBLEMA: Las empresas tienen problemas
SOLUCIÓN: Ofrecemos servicios
[Sin DIFERENCIACIÓN, AUTORIDAD, ni CTA]
```

**Bien**:
```
PROBLEMA: Las empresas medianas pierden 20h/mes en gestión administrativa manual
SOLUCIÓN: Sistema de automatización que integra contabilidad, facturación y RRHH en una plataforma
DIFERENCIACIÓN: Único sistema especializado en empresas 50-200 empleados (competencia enfoca pymes o grandes)
AUTORIDAD: 15 años experiencia, 200+ empresas gestionadas, certificación ISO 27001
LLAMADA A LA ACCIÓN: Solicita auditoría gratuita de tus procesos (sin compromiso)
```

### ❌ Mapping Incompleto
**Mal**:
```
Servicio Premium → Todos
[No específica perfiles]
```

**Bien**:
```
Servicio Premium → Ejecutivo Senior (principal), Emprendedor Tech (secundario)
Servicio Básico → Startup (principal)
Consultoría Estratégica → Ejecutivo Senior (principal), Director Marketing (secundario)
[100% servicios con perfiles asignados]
```

---

## Notas

- Esta skill es ejecutada por el **Estratega**
- El output es input crítico para Fase 2 (Planificación)
- Documento debe ser validado por el Jefe de Proyectos antes de continuar
