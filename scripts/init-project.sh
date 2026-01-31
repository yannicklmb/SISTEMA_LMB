#!/bin/bash

# Sistema LMB - Script de Inicialización de Proyecto
# Versión: 1.0.0
# Autor: La Máquina del Branding

# Colores para output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${BLUE}  🏗️  Sistema LMB - Inicialización de Proyecto${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""

# Verificar que estamos en la raíz del proyecto
if [ ! -f "roadmap.template.md" ]; then
    echo -e "${RED}⚠️  Error: Ejecuta este script desde la raíz del proyecto${NC}"
    echo -e "${YELLOW}   Uso: ./scripts/init-project.sh${NC}"
    exit 1
fi

# Verificar que roadmap.md no existe ya
if [ -f "roadmap.md" ]; then
    echo -e "${YELLOW}⚠️  Advertencia: roadmap.md ya existe${NC}"
    read -p "¿Deseas sobrescribirlo? (s/N): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Ss]$ ]]; then
        echo "Operación cancelada."
        exit 1
    fi
fi

# Recopilar información del proyecto
echo -e "${GREEN}📋 Datos del Proyecto${NC}"
echo ""

read -p "Nombre del proyecto (ej: Web Restaurante Gourmet): " PROJECT_NAME
while [ -z "$PROJECT_NAME" ]; do
    echo -e "${RED}⚠️  El nombre del proyecto no puede estar vacío${NC}"
    read -p "Nombre del proyecto: " PROJECT_NAME
done

read -p "Nombre del cliente (ej: Restaurante El Buen Sabor): " CLIENT_NAME
while [ -z "$CLIENT_NAME" ]; do
    echo -e "${RED}⚠️  El nombre del cliente no puede estar vacío${NC}"
    read -p "Nombre del cliente: " CLIENT_NAME
done

read -p "Fecha de inicio (YYYY-MM-DD) [$(date +%Y-%m-%d)]: " START_DATE
START_DATE=${START_DATE:-$(date +%Y-%m-%d)}

echo ""
echo -e "${GREEN}👤 Tu Identidad (para Git)${NC}"
echo ""

read -p "Tu nombre completo: " USER_NAME
while [ -z "$USER_NAME" ]; do
    echo -e "${RED}⚠️  Tu nombre no puede estar vacío${NC}"
    read -p "Tu nombre completo: " USER_NAME
done

read -p "Tu email: " USER_EMAIL
while [ -z "$USER_EMAIL" ]; do
    echo -e "${RED}⚠️  Tu email no puede estar vacío${NC}"
    read -p "Tu email: " USER_EMAIL
done

echo ""
echo -e "${GREEN}⚙️  Configurando proyecto...${NC}"
echo ""

# Configurar Git (solo para este repositorio)
git config user.name "$USER_NAME"
git config user.email "$USER_EMAIL"
echo -e "  ✅ Git configurado (local a este proyecto)"

# Crear roadmap.md desde template
cp roadmap.template.md roadmap.md

# Reemplazar placeholders en roadmap.md
# Usar perl para compatibilidad multiplataforma
if command -v perl &> /dev/null; then
    perl -i -pe "s/\[Nombre del Proyecto\]/$PROJECT_NAME/g" roadmap.md
    perl -i -pe "s/\[Nombre del Cliente\]/$CLIENT_NAME/g" roadmap.md
    perl -i -pe "s/\[Nombre\]/$USER_NAME/g" roadmap.md
    perl -i -pe "s/YYYY-MM-DD/$START_DATE/g" roadmap.md
elif command -v sed &> /dev/null; then
    # Fallback a sed (puede tener problemas en algunos sistemas)
    sed -i.bak "s/\[Nombre del Proyecto\]/${PROJECT_NAME}/g" roadmap.md
    sed -i.bak "s/\[Nombre del Cliente\]/${CLIENT_NAME}/g" roadmap.md
    sed -i.bak "s/\[Nombre\]/${USER_NAME}/g" roadmap.md
    sed -i.bak "s/YYYY-MM-DD/${START_DATE}/g" roadmap.md
    rm roadmap.md.bak 2>/dev/null
else
    echo -e "${YELLOW}⚠️  No se pudo reemplazar automáticamente los placeholders${NC}"
    echo -e "${YELLOW}   Por favor, edita roadmap.md manualmente${NC}"
fi

echo -e "  ✅ roadmap.md creado y personalizado"

# Verificar si es un repo Git
if [ ! -d ".git" ]; then
    echo -e "  📦 Inicializando repositorio Git..."
    git init
    git branch -M main
fi

# Stage archivos
git add roadmap.md

# Crear commit inicial (solo si no hay commits previos)
if ! git rev-parse HEAD >/dev/null 2>&1; then
    git add .
    git commit -m "Initial project setup: ${PROJECT_NAME}" -m "Cliente: ${CLIENT_NAME}" -m "Fecha inicio: ${START_DATE}"
    echo -e "  ✅ Commit inicial creado"
else
    echo -e "  ℹ️  Repositorio ya tiene commits previos"
    echo -e "  💡 Puedes hacer commit manual: ${BLUE}git commit -m \"Setup ${PROJECT_NAME}\"${NC}"
fi

echo ""
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}  ✨ Proyecto inicializado correctamente${NC}"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "${BLUE}📌 Próximos pasos:${NC}"
echo ""
echo "  1. Revisar roadmap.md con los datos del proyecto"
echo "  2. Ejecutar: ${BLUE}git push origin main${NC} (si ya configuraste remote)"
echo "  3. Iniciar con el Jefe de Proyectos (modo jefe-proyectos)"
echo "  4. Consultar docs/sistema-lmb.md para la metodología"
echo ""
echo -e "${YELLOW}💡 Consejo: Si aún no configuraste el repositorio remoto:${NC}"
echo -e "   ${BLUE}git remote add origin https://github.com/[TU-USUARIO]/[TU-REPO].git${NC}"
echo ""
echo -e "${GREEN}🎉 ¡Éxito con tu proyecto!${NC}"
echo ""
