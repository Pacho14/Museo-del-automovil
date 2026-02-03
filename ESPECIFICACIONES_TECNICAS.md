# 🏎️ MUSEO DEL AUTOMÓVIL VR - Especificaciones Técnicas

## Descripción General
Experiencia virtual interactiva 3D que permite explorar un museo de automóviles clásicos y modernos. Desarrollado con A-Frame (WebGL) para máxima compatibilidad web y soporte de realidad virtual.

---

## 📋 Especificaciones de Arquitectura

### Framework Principal
- **A-Frame 1.5.0**: Framework WebGL basado en Three.js
- **WebGL**: Renderizado 3D acelerado por GPU
- **Web Audio API**: Síntesis de audio en tiempo real
- **WebXR**: Soporte para dispositivos VR (Meta Quest, HTC Vive, Valve Index, etc.)

### Características de Renderizado
- **Resolución**: Adaptativa (responsive design)
- **Frame Rate**: 60 FPS target en navegadores modernos
- **Iluminación**: 3 luces 3D (ambiental + 2 direccionales con sombras)
- **Sombreado**: Soporte para sombras dinámicas

---

## 🚗 Vehículos Incluidos (8 Modelos)

| # | Modelo | Año | Origen | Potencia | Velocidad |
|---|--------|-----|--------|----------|-----------|
| 1 | Ferrari F40 | 1987 | Italia | 478 CV | 324 km/h |
| 2 | Fórmula 1 | 2024 | Mundial | 1050 CV | 370 km/h |
| 3 | Ferrari Testarossa | 1984 | Italia | 390 CV | 290 km/h |
| 4 | Porsche 911 | 1963 | Alemania | 130 CV | 200 km/h |
| 5 | Fast 71 GLB | 2024 | Moderno | 550 CV | 300 km/h |
| 6 | Lamborghini Revuelto | 2023 | Italia | 1001 CV | 350 km/h |
| 7 | Bugatti Chiron | 2016 | Francia | 1500 CV | 490 km/h |
| 8 | McLaren P1 | 2013 | Reino Unido | 913 CV | 350 km/h |

### Geometría de Modelos
Cada auto está compuesto por:
- **Carrocería**: Cilindro/Caja con color personalizable
- **Ruedas**: 4 cilindros negros girables
- **Detalles**: Alerón, spoiler, líneas decorativas
- **Pedestal**: Cilindro amarillo (#FFD700) fijo
- **Etiqueta**: Texto 3D con nombre del auto

---

## 🎮 Sistema de Interacción

### Entrada por Teclado
```
Movimiento:
- W/A/S/D: Desplazamiento XZ
- Espacio: Salto vertical
- Flechas: Alternativa de movimiento

Selección:
- 1-8: Seleccionar auto específico
- Click: Raycast para click 3D

Modificación:
- 0-9: Cambiar color del auto seleccionado
- R: Rotar auto seleccionado

Cámara:
- Ratón: Look-around (WASD Controls de A-Frame)
```

### Entrada Táctil (Móvil/VR)
```
- Toque simple: Seleccionar auto (dentro de 50px)
- Raycasting: Detección de intersección 3D
- Eventos: touchstart/touchend con cálculo de desplazamiento
```

### Detección de Colisión
- **Raycaster**: THREE.Raycaster para detección mouse/touch
- **Intersección**: Cálculo AABB para geometrías básicas
- **Rango**: Centro pantalla para mouse, coordenadas de toque para táctil

---

## 🎨 Sistema de Colores

### Paleta Disponible (10 Colores)
```
Tecla 0: #DC143C - Rojo Clásico (Crimson)
Tecla 1: #FF0000 - Rojo Puro
Tecla 2: #00FF00 - Verde
Tecla 3: #0000FF - Azul
Tecla 4: #FFFF00 - Amarillo
Tecla 5: #FF6600 - Naranja
Tecla 6: #FF00FF - Magenta
Tecla 7: #00FFFF - Cian
Tecla 8: #FFFFFF - Blanco
Tecla 9: #FFA500 - Naranja Oscuro
```

### Lógica de Aplicación
- Solo se colorean las cajas del auto (no pedestal ni vigas)
- Cambio instantáneo de color HTML5
- Efecto de sonido al cambiar color

---

## 🔊 Sistema de Audio

### Síntesis de Audio Web
```javascript
// OsciladorType: Sine Wave
// Contexto: AudioContext nativo del navegador
// Ganancia: Rampa exponencial para fade-out
```

### Sonidos
1. **Motor**: Secuencia de 3 tonos (150Hz → 200Hz → 250Hz)
2. **Cambio de Color**: 600Hz simple de 150ms
3. **Duración**: 100-250ms por sonido

### Características
- **Sin archivos de audio**: 100% generado por síntesis
- **Bajo uso de memoria**: Sin caché de audio
- **Bajo latency**: <100ms de respuesta

---

## 🏗️ Estructura del Escenario VR

### Componentes Principales
```
<a-scene> (Contexto WebGL)
├── <a-light> (Iluminación 3D - x3)
├── <a-plane> (Suelo - 30x30 unidades)
├── <a-plane> (Paredes - 4)
├── <a-cylinder> (Vigas techo - 5)
├── <a-box> (Vigas transversales - 5)
├── <a-plane> (Techo principal)
├── <a-cylinder> (Elementos arquitectónicos)
├── <a-entity data-car="..."> (Auto x8)
│   ├── <a-cylinder> (Pedestal)
│   ├── <a-box> (Carrocería)
│   ├── <a-cylinder> (Ruedas x4)
│   ├── <a-box> (Detalles aerodinámicos)
│   └── <a-text> (Etiqueta)
├── <a-text> (Cartel principal)
└── <a-entity id="player"> (Cámara + Controles)
```

### Dimensiones
- **Ancho museo**: 30 unidades
- **Profundidad museo**: 30 unidades
- **Altura museo**: 8 unidades
- **Separación autos**: 8-12 unidades
- **Altura cámara inicial**: 1.8 unidades (altura ojo humano)

---

## 📊 Estadísticas de Rendimiento

### Optimizaciones
1. **Geometría simple**: Solo cajas y cilindros (bajo polígonaje)
2. **Materiales planos**: Sin texturas (bajo VRAM)
3. **Iluminación**: 3 luces máximo (balance calidad/rendimiento)
4. **LOD**: No aplicado (escena pequeña)

### Requisitos Mínimos
- **GPU**: Cualquier GPU moderna (2012+)
- **RAM**: 512MB (navegador + escena)
- **CPU**: Dual Core 2GHz
- **Ancho de banda**: 2MB (carga inicial)

### Navegadores Soportados
- Chrome 65+
- Firefox 55+
- Edge 79+
- Safari 12.1+
- Opera 50+

### Dispositivos VR Soportados
- Meta Quest 2/3/Pro
- HTC Vive
- Valve Index
- Samsung Gear VR
- Google Cardboard
- Pico Neo 3/4

---

## 📁 Estructura de Archivos

```
museo-autos-vr/
├── index.html                  # Página de inicio interactiva
├── museo-autos.html            # Escena VR principal
├── package.json                # Metadatos del proyecto
├── README.md                   # Documentación principal
├── README_INSTRUCCIONES.txt    # Guía de usuario (texto)
├── servidor.bat                # Script para servidor local
└── .gitignore                  # Configuración Git
```

### Tamaño Total
- **HTML Principal**: ~23.5 KB
- **Índice**: ~12 KB
- **Documentación**: ~10 KB
- **Total**: ~46 KB sin dependencias
- **CDN A-Frame**: ~1.2 MB (descargado una sola vez)

---

## 🔧 Configuración Personalizable

### Parámetros Editables en museo-autos.html

```javascript
// Cambiar colors
colorPalette = ['#DC143C', '#FF0000', ...] // Agregar/modificar

// Cambiar posiciones de autos
position="X Y Z" // En cada <a-entity>

// Cambiar iluminación
<a-light intensity="1.2"> // Ajustar intensidad

// Cambiar tamaño de escena
width="30" height="30" // En <a-plane> principal
```

---

## 🌐 Formato de URL para Parámetros

Potencial para expansión futura:
```
museo-autos.html?auto=1&color=5&view=360
museo-autos.html?debug=true&stats=true
```

---

## 🚀 Opciones de Despliegue

### Opción 1: Local (Archivos)
```bash
# Solo abrir museo-autos.html en navegador
# Funciona con: file:// protocol (con limitaciones)
```

### Opción 2: HTTP Server Local
```bash
# Python 3
python -m http.server 8000

# Node.js
npx http-server

# PHP
php -S localhost:8000
```

### Opción 3: Web Hosting
```
- Hosting estático: GitHub Pages, Netlify, Vercel
- Hosting tradicional: Hostgator, Bluehost, GoDaddy
- CDN: CloudFlare, AWS CloudFront
```

---

## 📈 Posibles Mejoras Futuras

1. **Modelos 3D Avanzados**: Cambiar de geometría a modelos .glTF
2. **Texturas Realistas**: Agregar materiales PBR (Physically Based Rendering)
3. **Física**: Agregar motores de física (Cannon.js, Ammo.js)
4. **Animaciones**: Puertas, ruedas girando, efectos de luz
5. **Multiplayer**: Sincronización en tiempo real (Firebase, WebSocket)
6. **Base de Datos**: Guardar colores/configuraciones personalizadas
7. **Controles VR**: Interacción con controladores 6DOF
8. **Persistencia**: LocalStorage para preferencias del usuario
9. **Estadísticas**: Analytics de qué autos son más visitados
10. **Mobile App**: Wrapper Cordova/Capacitor para iOS/Android

---

## 📝 Notas de Desarrollo

### Arquitectura JavaScript
- **Sin frameworks frontend**: Vanilla JavaScript puro
- **DOM manipulation**: Mínimo (solo <div> de UI)
- **Event listeners**: Keyboard, Touch, Click
- **Estado global**: Variables simples (selectedCar, keys, colorPalette)

### Patrones Utilizados
- **Factory Pattern**: Creación repetida de autos
- **Event-Driven**: Respuesta a entrada de usuario
- **Immediate Feedback**: Audio y rotación visual al interactuar

### Compatibilidad
- **Cross-browser**: Testeado en navegadores modernos
- **Cross-device**: Desktop, Tablet, Mobile, VR
- **Fallbacks**: Audio context check, A-Frame loading checks

---

## 📞 Soporte y Troubleshooting

### Problema: Bajo rendimiento
**Solución**: 
- Cerrar pestañas innecesarias
- Usar navegador actualizado
- Reducir resolución de pantalla
- Desactivar otras extensiones

### Problema: Sin sonido
**Solución**:
- Verificar volumen del sistema
- Permitir acceso a audio en navegador
- Verificar AudioContext no está suspendido
- Probar en navegador diferente

### Problema: No carga A-Frame
**Solución**:
- Verificar conexión a internet
- Limpiar caché del navegador (Ctrl+Shift+Del)
- Esperar 5-10 segundos a que cargue
- Ver consola (F12) para errores

### Problema: VR no funciona
**Solución**:
- Verificar dispositivo VR conectado
- Usar navegador compatible con WebXR
- Permitir permisos de sensores
- Usar conexión HTTPS (protocolo requerido)

---

## 📚 Referencias y Recursos

### Documentación Oficial
- [A-Frame Documentation](https://aframe.io/docs)
- [Three.js Documentation](https://threejs.org/docs)
- [Web Audio API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API)
- [WebXR Device API](https://www.w3.org/TR/webxr-device-api)

### Herramientas Utilizadas
- **IDE**: Visual Studio Code
- **Version Control**: Git + GitHub
- **Testing**: Chrome DevTools, Firefox Developer Edition
- **Documentation**: Markdown

---

**Versión**: 1.0.0  
**Fecha**: Febrero 2024  
**Autor**: Francisco  
**Licencia**: MIT
