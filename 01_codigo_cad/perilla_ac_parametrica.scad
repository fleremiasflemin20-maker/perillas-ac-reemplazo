// ============================================================
//  Perillas y manillas de aire acondicionado de reemplazo
//  Generador paramétrico (OpenSCAD 2021+ / Customizer)
//  Diseño original: Fleremias
//
//  IMPORTANTE: salvo el preset GM_Express_Savana_08_20, las medidas
//  de los presets son ESTIMADAS. Imprime primero la pieza
//  "prueba_ajuste" y ajusta eje_d / eje_plano / holgura antes de la
//  perilla final. Ver LEEME.md.
// ============================================================

/* [1. Qué imprimir] */
// Auto de partida. "personalizado" usa solo los valores de abajo.
preset = "personalizado"; // [personalizado, GM_Express_Savana_08_20, Toyota_Hilux_05_15, Toyota_Tundra_99_06, Jeep_Wrangler_TJ_99_06, Honda_Civic_06_11, Chevrolet_Aveo_T250, VW_Jetta_A4_Golf_Mk4, Nissan_Tsuru_B13_palanca, Universal_D6]
// perilla = pieza final; prueba_ajuste = 3 anillos cortos con holgura -0.1 / 0 / +0.1 mm
pieza = "perilla"; // [perilla, prueba_ajuste]

/* [2. Cuerpo] */
estilo = "redonda"; // [redonda, barra, cubre_palanca]
diametro = 34;
alto = 18;
// Faldón inferior (0 = sin faldón)
faldon_d = 0;
faldon_h = 0;
chaflan_sup = 1.2;
// Hueca con buje central (más liviana y permite ranura elástica)
hueca = true;
pared = 2.0;
techo = 2.4;

/* [3. Agarre / textura antideslizante] */
textura = "estrias"; // [ninguna, estrias, moleteado]
n_textura = 30;
prof_textura = 0.6;
// Estilo barra: aleta central sobre la cara superior
barra_ancho = 9;
barra_alto = 8;

/* [4. Indicador] */
indicador = "ranura"; // [ninguno, ranura, relieve]
// Ángulo del indicador (0 = eje +Y, igual que la cara plana de la D)
indicador_ang = 0;

/* [5. Eje del tablero] */
eje = "D"; // [D, doble_D, estriado, pala, cruz, redondo]
// Diámetro exterior del eje
eje_d = 6.0;
// D: distancia de la cara plana al lado opuesto. Doble D: entre caras planas.
eje_plano = 4.5;
// Pala (eje plano rectangular) y cruz
pala_ancho = 10.9;
pala_grueso = 3.8;
estrias_n = 18;
estrias_prof = 0.4;
// Profundidad que entra el eje en la perilla
eje_prof = 11;
// Giro del perfil del eje respecto al indicador
eje_rot = 0;
// Holgura radial (sube si queda apretada, baja si queda suelta)
holgura = 0.15;
pared_buje = 2.0;
// Costillas de presión dentro del agujero (0 = sin costillas)
costillas = 3;
costilla_interf = 0.2;
// Ranura elástica en el buje (solo perilla hueca)
ranura_elastica = true;
ranura_ang = 180;

/* [6. Cubre palanca (manilla deslizante)] */
cap_ancho = 16;
cap_fondo = 10;
cap_alto = 14;
palanca_ancho = 8.0;
palanca_grueso = 2.4;
palanca_prof = 9;

/* [Oculto] */
$fn = 96;
e = 0.01;

// ------------------------------------------------------------
//  Presets. Cada fila: [clave, valor]. Las que no aparecen usan
//  el valor del Customizer. (S) = con fuente, (E) = estimado.
// ------------------------------------------------------------
PRESETS = [
  ["GM_Express_Savana_08_20", [   // (S) Dorman 76834: cara 1.1", largo 1.13", eje 0.43" x 0.15"
    ["estilo","redonda"],["diametro",27.9],["alto",28.7],["faldon_d",0],["faldon_h",0],
    ["textura","estrias"],["n_textura",24],["eje","pala"],["pala_ancho",10.9],
    ["pala_grueso",3.8],["eje_d",10.9],["eje_prof",14],["indicador","ranura"]]],
  ["Toyota_Hilux_05_15", [        // (E)
    ["estilo","redonda"],["diametro",36],["alto",16],["faldon_d",40],["faldon_h",2.5],
    ["textura","estrias"],["n_textura",36],["eje","D"],["eje_d",6],["eje_plano",4.5],
    ["eje_prof",10],["indicador","ranura"]]],
  ["Toyota_Tundra_99_06", [       // (E) OE 55905-0C010
    ["estilo","redonda"],["diametro",38],["alto",18],["faldon_d",42],["faldon_h",2.5],
    ["textura","estrias"],["n_textura",36],["eje","D"],["eje_d",6],["eje_plano",4.5],
    ["eje_prof",11],["indicador","relieve"]]],
  ["Jeep_Wrangler_TJ_99_06", [    // (E) OE Mopar 5011218AC
    ["estilo","barra"],["diametro",44],["alto",10],["barra_ancho",10],["barra_alto",9],
    ["textura","moleteado"],["n_textura",40],["eje","D"],["eje_d",6],["eje_plano",4.6],
    ["eje_prof",12],["indicador","ranura"]]],
  ["Honda_Civic_06_11", [         // (E) OE 79581-SNA-A01ZA
    ["estilo","redonda"],["diametro",46],["alto",13],["faldon_d",0],["faldon_h",0],
    ["textura","moleteado"],["n_textura",48],["eje","doble_D"],["eje_d",6],["eje_plano",4],
    ["eje_prof",9],["indicador","relieve"]]],
  ["Chevrolet_Aveo_T250", [       // (E)
    ["estilo","redonda"],["diametro",40],["alto",15],["faldon_d",0],["faldon_h",0],
    ["textura","estrias"],["n_textura",32],["eje","estriado"],["eje_d",6],["estrias_n",18],
    ["eje_prof",10],["indicador","ranura"]]],
  ["VW_Jetta_A4_Golf_Mk4", [      // (E)
    ["estilo","barra"],["diametro",40],["alto",9],["barra_ancho",8],["barra_alto",8],
    ["textura","estrias"],["n_textura",40],["eje","D"],["eje_d",6],["eje_plano",4.5],
    ["eje_prof",10],["indicador","ranura"]]],
  ["Nissan_Tsuru_B13_palanca", [  // (E) manilla de palanca deslizante
    ["estilo","cubre_palanca"],["cap_ancho",16],["cap_fondo",10],["cap_alto",14],
    ["palanca_ancho",8],["palanca_grueso",2.4],["palanca_prof",9],["textura","estrias"],
    ["n_textura",6]]],
  ["Universal_D6", [              // eje D de 6 mm (el más común en controles genéricos)
    ["estilo","redonda"],["diametro",34],["alto",18],["textura","moleteado"],["n_textura",36],
    ["eje","D"],["eje_d",6],["eje_plano",4.5],["eje_prof",11],["indicador","ranura"]]]
];

function _fila(n) = let(i = search([n], PRESETS, 1, 0)[0]) i == [] ? [] : PRESETS[i][1];
PL = _fila(preset);
function P(k, def) = let(i = search([k], PL, 1, 0)[0]) (i == [] || i == undef) ? def : PL[i][1];

ESTILO   = P("estilo", estilo);
D        = P("diametro", diametro);
H        = P("alto", alto);
FD       = P("faldon_d", faldon_d);
FH       = P("faldon_h", faldon_h);
TEX      = P("textura", textura);
NTEX     = P("n_textura", n_textura);
BA       = P("barra_ancho", barra_ancho);
BH       = P("barra_alto", barra_alto);
IND      = P("indicador", indicador);
EJE      = P("eje", eje);
ED       = P("eje_d", eje_d);
EPL      = P("eje_plano", eje_plano);
PA       = P("pala_ancho", pala_ancho);
PG       = P("pala_grueso", pala_grueso);
SN       = P("estrias_n", estrias_n);
EPROF    = P("eje_prof", eje_prof);
CA       = P("cap_ancho", cap_ancho);
CF       = P("cap_fondo", cap_fondo);
CH       = P("cap_alto", cap_alto);
LA       = P("palanca_ancho", palanca_ancho);
LG       = P("palanca_grueso", palanca_grueso);
LP       = P("palanca_prof", palanca_prof);

// ------------------------------------------------------------
//  Perfiles de eje (2D). c = holgura radial.
// ------------------------------------------------------------
function r_max_eje() =
  EJE == "pala" ? sqrt(PA*PA + PG*PG)/2 :
  EJE == "cruz" ? PA/2 : ED/2;

module perfil_eje(c) {
  r = ED/2;
  if (EJE == "redondo") circle(r + c);
  else if (EJE == "D")
    intersection() {
      circle(r + c);
      translate([-r - c, -r - c]) square([2*r + 2*c, EPL + 2*c]);
    }
  else if (EJE == "doble_D")
    intersection() { circle(r + c); square([2*r + 2*c, EPL + 2*c], center = true); }
  else if (EJE == "pala")
    offset(delta = c) square([PA, PG], center = true);
  else if (EJE == "cruz")
    offset(delta = c) { square([PA, PG], center = true); square([PG, PA], center = true); }
  else if (EJE == "estriado")
    offset(delta = c) polygon([
      for (i = [0 : SN - 1]) let(a = i * 360 / SN, s = 360 / SN)
        each [ (r - estrias_prof) * [cos(a), sin(a)],
               r * [cos(a + s*0.15), sin(a + s*0.15)],
               r * [cos(a + s*0.45), sin(a + s*0.45)],
               (r - estrias_prof) * [cos(a + s*0.6), sin(a + s*0.6)] ]
    ]);
}

// Puntos donde van las costillas de presión (sobre el contorno del agujero)
function pos_costillas(c) =
  EJE == "pala" || EJE == "cruz" ?
    [[-PA/4, PG/2 + c], [PA/4, -PG/2 - c], [PA/4, PG/2 + c]] :
  EJE == "D" ? [for (a = [210, 270, 330]) (ED/2 + c) * [cos(a), sin(a)]] :
  EJE == "doble_D" ? [[ED/2 + c, 0], [-ED/2 - c, 0]] :
  [for (a = [0 : 360/3 : 359]) (ED/2 + c) * [cos(a + 90), sin(a + 90)]];

// Agujero del eje (3D), boca hacia abajo (z = 0) con chaflán de entrada
module agujero_eje(c, prof) {
  difference() {
    union() {
      translate([0, 0, -e]) linear_extrude(prof + e) perfil_eje(c);
      translate([0, 0, -e]) linear_extrude(0.8, scale = 0.85) scale(1/0.85) perfil_eje(c);
    }
    if (costillas > 0 && EJE != "estriado")
      for (p = [for (i = [0 : min(costillas, len(pos_costillas(c))) - 1]) pos_costillas(c)[i]])
        translate([p[0], p[1], 1.2]) cylinder(r = c + costilla_interf, h = prof, $fn = 16);
  }
}

// ------------------------------------------------------------
//  Manga texturizada como poliedro (rápido en CGAL)
// ------------------------------------------------------------
function _fr(x) = x - floor(x);
function _tri(x) = abs(_fr(x) - 0.5) * 2;   // 1 en enteros, 0 a mitad
function r_tex(R, a, z, tipo, n, p) =
  tipo == "estrias" ? R - p * max(0, cos((_fr(a * n / 360) - 0.5) * 360)) :
  tipo == "moleteado" ?
    let(pz = 2 * PI * R / n, u = a * n / 360, v = z / pz)
      R - p * max(0, 2 * max(_tri(u + v), _tri(u - v)) - 1) :
  R;

module manga(R, z0, z1, tipo, n, p) {
  M  = tipo == "ninguna" ? 96 : n * (tipo == "moleteado" ? 8 : 6);
  pz = 2 * PI * R / n;
  NZ = tipo == "moleteado" ? max(2, ceil((z1 - z0) / (pz / 8))) : 1;
  pts = [for (j = [0 : NZ]) for (i = [0 : M - 1])
           let(z = z0 + (z1 - z0) * j / NZ, a = 360 * i / M,
               r = r_tex(R, a, z - z0, tipo, n, p))
             [r * cos(a), r * sin(a), z]];
  idx = function (j, i) j * M + (i % M);
  caras = concat(
    [for (j = [0 : NZ - 1]) for (i = [0 : M - 1]) each [
        [idx(j, i), idx(j + 1, i), idx(j + 1, i + 1)],
        [idx(j, i), idx(j + 1, i + 1), idx(j, i + 1)]]],
    [[for (i = [0 : M - 1]) idx(0, i)]],
    [[for (i = [M - 1 : -1 : 0]) idx(NZ, i)]]);
  polyhedron(pts, caras, convexity = 6);
}

// ------------------------------------------------------------
//  Perilla redonda / barra
// ------------------------------------------------------------
module indicador_sup(R, ztop) {
  if (IND != "ninguno")
    rotate([0, 0, indicador_ang + 90])
      if (IND == "ranura")
        translate([R * 0.25, -0.7, ztop - 0.8]) cube([R, 1.4, 1 + e]);
      else
        translate([R * 0.25, -0.7, ztop - e]) cube([R * 0.7 - chaflan_sup, 1.4, 0.6]);
}

module cuerpo_redondo() {
  R = D / 2;
  zt = (ESTILO == "barra") ? H : H;
  zbase = max(FH, 0);
  union() {
    if (FD > 0 && FH > 0) cylinder(d = FD, h = FH);
    // núcleo
    cylinder(r = R - (TEX == "ninguna" ? 0 : prof_textura), h = zt - chaflan_sup);
    // manga con textura
    manga(R, zbase, zt - chaflan_sup, TEX, NTEX, prof_textura);
    // chaflán superior
    translate([0, 0, zt - chaflan_sup - e])
      cylinder(r1 = R - (TEX == "ninguna" ? 0 : prof_textura), r2 = R - chaflan_sup - prof_textura,
               h = chaflan_sup + e);
    if (ESTILO == "barra")
      hull() for (s = [-1, 1])
        translate([s * (R - BA/2 - 1), 0, zt - e])
          rotate([0, 0, 0]) scale([1, BA / BA, 1]) {
            cylinder(d = BA, h = BH - 1.5);
            translate([0, 0, BH - 1.5]) cylinder(d1 = BA, d2 = BA - 3, h = 1.5);
          }
  }
}

module perilla() {
  R    = D / 2;
  ztop = (ESTILO == "barra") ? H + BH : H;
  prof = min(EPROF, H - techo - 0.5 + (ESTILO == "barra" ? BH - 1 : 0));
  rb   = r_max_eje() + holgura + pared_buje;          // radio del buje
  rin  = R - prof_textura - pared;                    // radio interior de la cavidad
  zc   = H - techo - (rin - rb);                      // inicio del techo cónico 45°
  usar_hueca = hueca && zc > 1 && rin > rb + 1;

  difference() {
    rotate([0, 0, 90]) cuerpo_redondo();
    // cavidad anular (techo cónico a 45° = sin soportes)
    if (usar_hueca)
      difference() {
        union() {
          translate([0, 0, -e]) cylinder(r = rin, h = zc + e);
          translate([0, 0, zc - e]) cylinder(r1 = rin, r2 = rb, h = rin - rb + e);
        }
        cylinder(r = rb, h = H);
      }
    // agujero del eje
    rotate([0, 0, eje_rot]) agujero_eje(holgura, prof);
    // ranura elástica en el buje
    if (usar_hueca && ranura_elastica)
      rotate([0, 0, eje_rot + ranura_ang - 90])
        translate([0, -0.6, -e]) cube([rb + 1, 1.2, prof * 0.7]);
    if (IND == "ranura") indicador_sup(R, ztop);
    if (IND == "ranura" && ESTILO == "redonda")   // marca también en el costado
      rotate([0, 0, indicador_ang + 90]) translate([R - 0.8, -0.7, H * 0.35]) cube([2, 1.4, H]);
  }
  if (IND == "relieve") indicador_sup(R, ztop);
}

// ------------------------------------------------------------
//  Cubre palanca (manilla deslizante tipo Tsuru / Hilux antigua)
// ------------------------------------------------------------
module cubre_palanca() {
  r = 2.5;
  difference() {
    hull() for (x = [-1, 1], y = [-1, 1]) {
      translate([x * (CA/2 - r), y * (CF/2 - r), 0]) cylinder(r = r, h = CH - r);
      translate([x * (CA/2 - r), y * (CF/2 - r), CH - r]) sphere(r = r);
    }
    // ranura para la lengüeta de la palanca
    translate([0, 0, -e]) linear_extrude(LP + e) offset(delta = holgura) square([LA, LG], center = true);
    translate([0, 0, -e]) linear_extrude(0.8, scale = 0.8) offset(delta = holgura + 0.3) square([LA, LG], center = true);
    // estrías antideslizantes en las dos caras de agarre
    if (TEX != "ninguna")
      for (s = [-1, 1], k = [1 : NTEX])
        translate([0, s * (CF/2 + 0.6), CH * 0.25 + (k - 1) * (CH * 0.6) / max(1, NTEX - 1)])
          rotate([0, 90, 0]) cylinder(r = 1.0, h = CA + 2, center = true, $fn = 24);
  }
  // costillas de presión dentro de la ranura
  if (costillas > 0)
    intersection() {
      translate([0, 0, 1]) linear_extrude(LP - 1) offset(delta = holgura) square([LA, LG], center = true);
      for (x = [-LA/4, LA/4]) translate([x, LG/2 + holgura, 1]) cylinder(r = holgura + costilla_interf, h = LP, $fn = 16);
    }
}

// ------------------------------------------------------------
//  Prueba de ajuste: 3 anillos con holgura -0.1 / 0 / +0.1
// ------------------------------------------------------------
module prueba_ajuste() {
  dh = [-0.1, 0, 0.1];
  for (k = [0 : 2]) {
    c = holgura + dh[k];
    if (ESTILO == "cubre_palanca") {
      bx = LA + 2*c + 4; by = LG + 2*c + 4;
      translate([k * (bx + 8), 0, 0]) {
        difference() {
          translate([-bx/2, -by/2, 0]) cube([bx, by, LP + 1.2]);
          translate([0, 0, -e]) linear_extrude(LP + e) offset(delta = c) square([LA, LG], center = true);
        }
        translate([-3, -by/2 - 6.5, 0]) etiqueta(k);
        if (k < 2) translate([bx/2 - e, -1.5, 0]) cube([8 + 2*e, 3, 1.5]);
      }
    } else {
      rb = r_max_eje() + c + 2;
      hh = min(EPROF, 8);
      translate([k * (2 * rb + 8), 0, 0]) {
        difference() {
          cylinder(r = rb, h = hh + 1.2);
          rotate([0, 0, eje_rot]) agujero_eje(c, hh);
          // marca del indicador
          rotate([0, 0, indicador_ang + 90]) translate([rb - 0.8, -0.6, hh * 0.5]) cube([1, 1.2, hh]);
        }
        translate([-3, -rb - 6, 0]) etiqueta(k);
        if (k < 2) translate([rb - 1, -1.5, 0]) cube([10, 3, 1.5]);
      }
    }
  }
}

module etiqueta(k) {
  cube([6, 7.5, 0.8]);
  translate([3, 3.5, 0.8 - e]) linear_extrude(0.6)
    text(str(k + 1), size = 5, font = "Liberation Sans:style=Bold", halign = "center", valign = "center");
}

// ------------------------------------------------------------
if (pieza == "prueba_ajuste") prueba_ajuste();
else if (ESTILO == "cubre_palanca") cubre_palanca();
else perilla();
