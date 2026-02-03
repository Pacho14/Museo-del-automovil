╔════════════════════════════════════════════════════════════════════════════╗
║                    🏎️  MUSEO DEL AUTOMÓVIL EN VR  🏎️                      ║
║                           A-Frame WebXR Museum                             ║
╚════════════════════════════════════════════════════════════════════════════╝

CARACTERÍSTICAS PRINCIPALES:
═════════════════════════════════════════════════════════════════════════════

1. ✨ 8 Vehículos Clásicos y Modernos:
   - Ferrari F40 (1987)
   - Fórmula 1 2024
   - Ferrari Testarossa (1984)
   - Porsche 911 (1963)
   - Fast 71 GLB (2024)
   - Lamborghini Revuelto (2023)
   - Bugatti Chiron (2016)
   - McLaren P1 (2013)

2. 🎮 CONTROLES INTERACTIVOS:

   MOVIMIENTO:
   • W/A/S/D o Flechas ↑↓←→ - Movimiento en el museo
   • Espacio - Saltar
   • Ratón - Mirar alrededor (cámara libre)

   SELECCIÓN DE AUTOS:
   • Teclas 1-8 - Seleccionar auto específico
   • Click/Toque en auto - Seleccionar y rotar auto

   CAMBIO DE COLOR:
   • Teclas 0-9 - Cambiar color del auto seleccionado
   • Paleta de 10 colores distintos
   • Los autos reproducen sonido al cambiar color

   INTERACCIONES:
   • R - Rotar el auto seleccionado
   • Sonidos de motor al interactuar
   • Panel de información de cada auto

3. 📱 COMPATIBILIDAD:
   • Navegadores de escritorio (Chrome, Firefox, Edge)
   • Dispositivos móviles (soporte táctil)
   • Visores VR (Meta Quest, HTC Vive, etc.)
   • Modo WebXR compatible

4. 🎨 CARACTERÍSTICAS TÉCNICAS:
   • Entorno 3D con iluminación realista
   - Pedestal amarillo para cada auto
   - Paredes blancas con vigas de madera
   - Techo aerodinámico
   - Ventanas arqueadas grandes
   - Piso brillante del museo

5. 🔊 AUDIO INTERACTIVO:
   • Sonidos de motor generados por síntesis de audio
   • Efectos sonoros al cambiar color
   • Realista y envolvente


CÓMO USAR:
═════════════════════════════════════════════════════════════════════════════

OPCIÓN 1 - Abrir directamente:
1. Abre el archivo "museo-autos.html" en tu navegador web
2. Permite acceso a la cámara si se solicita (para VR)
3. Disfruta del museo interactivo

OPCIÓN 2 - Con servidor local (recomendado):
1. Abre una terminal/PowerShell en este directorio
2. Ejecuta: python -m http.server 8000
   O: npx http-server
   O: cualquier servidor local que tengas disponible
3. Accede a: http://localhost:8000/museo-autos.html

OPCIÓN 3 - Servir desde VS Code:
1. Instala la extensión "Live Server"
2. Click derecho en museo-autos.html → "Open with Live Server"
3. Se abrirá automáticamente en tu navegador


EJEMPLO DE INTERACCIÓN:
═════════════════════════════════════════════════════════════════════════════

1. Carga la página y espera a que cargue A-Frame (5-10 segundos)
2. Usa W/A/S/D para moverte por el museo
3. Presiona "1" para seleccionar el Ferrari F40
4. El auto rotará y verás su información
5. Presiona "0-9" para cambiar su color
6. Presiona "2" para ir al siguiente auto (Fórmula 1)
7. Presiona "R" para rotar el auto actual
8. Presiona las flechas para moverte libremente
9. Presiona espacio para saltar


PALETA DE COLORES DISPONIBLES:
═════════════════════════════════════════════════════════════════════════════

Tecla → Color
  0   → Rojo Clásico (#DC143C)
  1   → Rojo Puro (#FF0000)
  2   → Verde (#00FF00)
  3   → Azul (#0000FF)
  4   → Amarillo (#FFFF00)
  5   → Naranja (#FF6600)
  6   → Magenta (#FF00FF)
  7   → Cian (#00FFFF)
  8   → Blanco (#FFFFFF)
  9   → Naranja Oscuro (#FFA500)

* Los pedestales amarillos y vigas de madera NO cambian de color


REQUISITOS:
═════════════════════════════════════════════════════════════════════════════

• Navegador moderno compatible con WebGL y A-Frame
• Conexión a internet (para descargar librería A-Frame de CDN)
• Para VR: dispositivo compatible y navegador VR-ready
• Pantalla de al menos 1024x768 píxeles recomendado


RENDERIZADO Y RENDIMIENTO:
═════════════════════════════════════════════════════════════════════════════

• Optimizado para 60 FPS en navegadores modernos
• Modelado 3D básico con cilindros y cajas para bajo consumo
• Iluminación 3D realista con sombras
• Recomendado GPU dedicada para mejor experiencia


INFORMACIÓN TÉCNICA:
═════════════════════════════════════════════════════════════════════════════

Basado en:
• A-Frame 1.5.0 (WebGL + Three.js)
• WebXR API para compatibilidad VR
• Web Audio API para síntesis de sonido
• HTML5 + JavaScript vanilla


AUTOR:
═════════════════════════════════════════════════════════════════════════════
Creado por: Francisco
Versión: 1.0.0
Licencia: MIT


TIPS Y TRUCOS:
═════════════════════════════════════════════════════════════════════════════

1. Para mejor inmersión, usa un visores VR
2. Los controles con teclado funcionan mejor en desktop
3. En móvil, usa los toques para seleccionar autos
4. Presiona F11 para pantalla completa
5. Los autos rotan automáticamente al seleccionarlos
6. Prueba cambiar colores rápidamente para efectos visuales
7. La información de cada auto aparece en la esquina superior izquierda


SOLUCIÓN DE PROBLEMAS:
═════════════════════════════════════════════════════════════════════════════

Problema: No se cargan los autos
→ Solución: Espera a que A-Frame se cargue completamente (mira la consola)

Problema: Sin sonido
→ Solución: Verifica que el audio no esté silenciado en el navegador

Problema: Movimiento lento
→ Solución: Cierra otras aplicaciones pesadas, usa navegador actualizado

Problema: No funciona en VR
→ Solución: Usa navegador compatible con WebXR (Chrome, Edge con VR device)


¡DISFRUTA DEL MUSEO! 🏎️🚗✨
═════════════════════════════════════════════════════════════════════════════
