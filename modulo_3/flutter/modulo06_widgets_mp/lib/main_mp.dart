import 'package:flutter/material.dart';
import 'package:modulo06_widgets_mp/widgets/catalogo_basicos_mp.dart';
import 'package:modulo06_widgets_mp/widgets/contador_limitado_mp.dart';
import 'package:modulo06_widgets_mp/widgets/etiqueta_mp.dart';
import 'package:modulo06_widgets_mp/widgets/reloj_mp.dart';
import 'package:modulo06_widgets_mp/widgets/servicio_estado_mp.dart';
import 'package:modulo06_widgets_mp/widgets/indicador_mp.dart';
import 'package:modulo06_widgets_mp/widgets/pantalla_contexto_mp.dart';

const int paso = 8;

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: switch (paso) {
      1 => const Scaffold(body: Center(child: Saludo())),
      2 => const CatalogoBasicos(),
      3 => const Scaffold(
        body: Center(
          child: Wrap(
            spacing: 12,
            runSpacing: 8,
            children: [
              Etiqueta(texto: 'Activo', color: Colors.green),
              Etiqueta(texto: 'Error', color: Colors.red, relleno: true),
              Etiqueta(texto: 'En espera', color: Colors.orange),
              Etiqueta(
                texto: 'Crítico',
                color: Colors.red,
                fontSize: 16,
                relleno: true,
              ),
              Etiqueta(texto: 'Info', color: Colors.blue, fontSize: 11),
            ],
          ),
        ),
      ),
      4 => const Scaffold(
        body: Center(child: ServicioEstado(nombre: 'programa-oro')),
      ),
      5 => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContadorLimitado(
                etiqueta: 'Canjes realizados',
                limite: 3,
                color: Colors.red,
                onLimite: () => debugPrint('Límite de canjes alcanzado'),
              ),
              const SizedBox(height: 40),
              ContadorLimitado(
                etiqueta: 'Puntos acumulados',
                limite: 10,
                color: Colors.indigo,
              ),
            ],
          ),
        ),
      ),
      6 => Scaffold(
        appBar: AppBar(title: const Text('Cronómetro')),
        body: const Center(child: Reloj()),
      ),
      7 => const PantallaContexto(),
      8 => Scaffold(
      body: Center(
        child: Wrap(
          spacing:    32,
          runSpacing: 24,
          alignment:  WrapAlignment.center,
          children: const [
            Indicador(label: 'Clientes activos', valor: '128',
                      color: Colors.green, icono: Icons.loyalty),
            Indicador(label: 'Canjes pendientes',   valor: '5',
                      color: Colors.red,   icono: Icons.warning_amber,
                      subtitulo: 'Requieren aprobación'),
            Indicador(label: 'Puntos otorgados',            valor: '12.4K',
                      color: Colors.indigo),
            Indicador(label: 'Retención',             valor: '94.2%',
                      color: Colors.teal, subtitulo: 'Últimos 30 días'),
          ],
        ),
      ),
    ),
      _ => Scaffold(
        body: Center(child: Text('Paso $paso: crea el widget primero')),
      ),
    },
  ),
);

class Saludo extends StatelessWidget {
  const Saludo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SelectableText(
      'Loyaltee conecta clientes con recompensas exclusivas en cada compra.',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        letterSpacing: 4,
        color: Colors.deepPurple,
        shadows: [
          Shadow(color: Colors.black26, blurRadius: 4, offset: Offset(2, 2)),
        ],
      ),
      textAlign: TextAlign.left,
      maxLines: 3,
    );
  }
}
