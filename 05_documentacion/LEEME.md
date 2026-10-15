# Perillas y manillas de aire acondicionado de reemplazo

Generador paramétrico en OpenSCAD para reponer perillas de A/C rotas o gastadas en autos de 10+ años,
con textura antideslizante opcional (estrías o moleteado) y 9 presets de partida.

Diseño original: **Fleremias** · Licencia propuesta: CC BY-NC-SA 4.0 (igual que el muelle de carga).

## ⚠️ Lo más importante: medidas con fuente vs estimadas
Los fabricantes no publican las medidas de los ejes de sus perillas. Después de buscar en catálogos
de repuestos (Dorman, Omix-ADA, APDTY, Hybrid Racing), en Thingiverse/Printables/MakerWorld y en
MercadoLibre, **solo un modelo tiene medidas publicadas**. Todo lo demás es estimado.

| Código | Auto | Estilo / eje del preset | Origen de las medidas |
|---|---|---|---|
| PA-01 | Chevrolet Express / GMC Savana 2008-2020 | Redonda Ø27,9 × 28,7 mm · eje **pala 10,9 × 3,8 mm** | **CON FUENTE**: ficha Dorman 76834 (cara 1,1", largo 1,13", eje 0,43" × 0,15") |
| PA-02 | Toyota Hilux 2005-2015 | Redonda Ø36 con faldón · eje D 6 mm | Estimado |
| PA-03 | Toyota Tundra 1999-2006 (OE 55905-0C010) | Redonda Ø38 con faldón · eje D 6 mm | Estimado (falla conocida: plástico se cristaliza con sol y calor) |
| PA-04 | Jeep Wrangler TJ 1999-2006 (OE 5011218AC) | Disco Ø44 con aleta · eje D 6 mm | Estimado (falla conocida: "se rompen al azar") |
| PA-05 | Honda Civic 2006-2011 (OE 79581-SNA-A01ZA) | Disco Ø46 moleteado · eje doble D | Estimado (falla conocida: se pela la pintura gris) |
| PA-06 | Chevrolet Aveo T250 / Sail | Redonda Ø40 · eje estriado 18 dientes | Estimado |
| PA-07 | VW Jetta A4 / Golf Mk4 (Climatic manual) | Disco Ø40 con aleta · eje D 6 mm | Estimado |
| PA-08 | Nissan Tsuru B13 (palancas deslizantes) | **Cubre-palanca** 16 × 10 × 14 · ranura 8 × 2,4 | Estimado |
| PA-09 | Universal eje D 6 mm | Redonda Ø34 moleteada | Eje D 6 mm es el más común en controles genéricos; forma libre |

**Conclusión práctica:** trata los presets como punto de partida. Antes de vender, mide la perilla
original (o el eje del tablero) del auto real e imprime la prueba de ajuste.

## Archivos
| Carpeta | Contenido |
|---|---|
| `01_codigo_cad/` | `perilla_ac_parametrica.scad` (abre con OpenSCAD → Ventana → Customizer) |
| `02_modelos_stl/` | PA-01 a PA-09, perilla final |
| `03_pruebas_ajuste_stl/` | Para cada preset: 3 anillos cortos unidos, holgura −0,1 / 0 / +0,1 mm, numerados 1-2-3 |
| `04_renders/` | `00_resumen_presets.png` + vista superior e inferior de cada pieza |

## Flujo recomendado (por cliente/auto)
1. **Medir** con pie de metro el eje del tablero (o el agujero de la perilla rota):
   - Ø exterior del eje → `eje_d`
   - Eje D: distancia de la cara plana al lado opuesto → `eje_plano`
   - Doble D: distancia entre las dos caras planas → `eje_plano`
   - Eje pala (rectangular): ancho y grosor → `pala_ancho`, `pala_grueso`
   - Estriado: cuenta los dientes → `estrias_n`
   - Cuánto entra el eje → `eje_prof`
   - Diámetro y alto de la perilla, y si tiene faldón.
2. En el Customizer elige el preset más parecido (o `personalizado`) y corrige esos valores.
3. Imprime `pieza = prueba_ajuste` (≈10 min). Prueba los tres anillos en el auto:
   - Elige el que entra firme sin forzar. Anillo 1 → holgura −0,1; anillo 3 → +0,1.
   - Si los tres quedan sueltos o apretados, cambia `holgura` en 0,2 y repite.
4. Imprime la perilla final con esa holgura.

## Parámetros útiles
- `textura`: `ninguna`, `estrias` o `moleteado` (diamante). `n_textura` y `prof_textura` regulan el agarre.
- `indicador`: `ranura` (se puede rellenar con pintura blanca o con 2º color) o `relieve`. `eje_rot` gira el eje respecto al indicador.
- `costillas`: 3 costillas de presión dentro del agujero (interferencia 0,2 mm) para que no se caiga.
- `hueca` + `ranura_elastica`: perilla hueca con buje central partido, como la original. Si la perilla es muy baja y ancha, el modelo se hace sólido solo (pasa en PA-04, PA-05, PA-06 y PA-07) para no imprimir techos en voladizo.

## Impresión
- **Material: ASA recomendado** (K2 Plus Combo). Un auto al sol supera los 70-80 °C y el PETG se ablanda cerca de 80 °C; el ASA aguanta ~100 °C y resiste UV. PETG sirve para autos con sombra/polarizado o como prueba.
- Orientación: tal como sale el STL, con la boca del eje apoyada en la cama. **Sin soportes** (el techo interior es cónico a 45°).
- Capa 0,16 mm (la textura sale mejor), 4 paredes, relleno 40 % giroide. El buje del eje trabaja a torsión: no bajes de 4 paredes.
- ASA en la K2: cámara cerrada, sin ventilador de capa las primeras capas, 260 °C / cama 100 °C (ajusta a tu perfil de Creality Print).
- Indicador bicolor: en Creality Print pinta la ranura con el 2º color o rellénala con pintura acrílica blanca.

## Por qué se rompen (lo que encontré)
Calor del tablero y rayos UV que cristalizan el plástico, uso diario que desgasta los dientes internos,
girar más allá del tope y sacarlas haciendo palanca (APDTY). En el Civic 8ª gen el problema es estético:
se pela la pintura gris y aparece el plástico claro (Hybrid Racing).

## Fuentes
- Dorman 76834, ficha con medidas (Express/Savana 2008-2020): https://finditparts.com/products/13494706/dorman-76834
- APDTY, perillas Tundra 1999-2006 y causas de rotura: https://apdty.com/blogs/news/apdty-133978-hvac-blower-speed-control-knob-set-99-06-tundra
- Omix-ADA perilla Wrangler TJ 1999-2006: https://extremeterrain.com/omix-ada-climate-control-knob-tj-179032.html
- Hybrid Racing, perilla Civic 2006-2011: https://www.hybrid-racing.com/products/honda-06-11-civic-hvac-control-knob-79581-sna-a01za
- Dorman 76835, Grand Cherokee 1993-1995 (sin medidas): https://finditparts.com/products/7021688/dorman-76835
