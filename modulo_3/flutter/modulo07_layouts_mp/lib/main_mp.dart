import 'package:flutter/material.dart';
import 'package:modulo07_layouts_mp/widgets/avatar_badge_mp.dart';
import 'package:modulo07_layouts_mp/widgets/fila_estado_mp.dart';
import 'package:modulo07_layouts_mp/widgets/tarjeta_log_mp.dart';
const int paso = 5;

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: switch (paso) {
      1 => _paso1(),
      2 => Scaffold(
        body: ListView(
          children: [
            TarjetaLog(
              nivel: 'ERROR',
              componente: 'registro-cliente',
              mensaje: 'Puntos expirados — cliente notificado por correo',
              timestamp: DateTime.now(),
            ),
            TarjetaLog(
              nivel: 'WARN',
              componente: 'canje-puntos',
              mensaje: 'Canjes disponibles: 2 / 10',
              timestamp: DateTime.now().subtract(const Duration(minutes: 2)),
            ),
            TarjetaLog(
              nivel: 'INFO',
              componente: 'programa-loyaltee',
              mensaje: 'Actualización de niveles completada',
              timestamp: DateTime.now().subtract(const Duration(minutes: 5)),
            ),
            TarjetaLog(
              nivel: 'DEBUG',
              componente: 'api-fidelizacion',
              mensaje: 'GET /api/clientes → 200 OK (38ms)',
              timestamp: DateTime.now().subtract(const Duration(minutes: 8)),
            ),
          ],
        ),
      ),
      3 => const Scaffold(
        body: Column(
          children: [
            FilaEstado(
              nombre: 'Ana Rosales',
              detalle: 'Nivel Oro · 850 pts',
              activo: true,
            ),
            Divider(height: 1),
            FilaEstado(
              nombre: 'Luis Méndez',
              detalle: 'Nivel Platino · 1200 pts',
              activo: true,
            ),
            Divider(height: 1),
            FilaEstado(
              nombre: 'María López',
              detalle: 'Nivel Bronce · sin actividad',
              activo: false,
            ),
            Divider(height: 1),
            FilaEstado(
              nombre: 'cliente-premium-corporativo-region-norte',
              detalle: 'Nivel Oro · 920 pts',
              activo: true,
            ),
          ],
        ),
      ),
      4 => const Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AvatarBadge(nombre: 'Ana', alertas: 2,  activo: true),
            SizedBox(width: 24),
            AvatarBadge(nombre: 'Luis',  alertas: 0,  activo: true),
            SizedBox(width: 24),
            AvatarBadge(nombre: 'María', alertas: 0,  activo: false),
            SizedBox(width: 24),
            AvatarBadge(nombre: 'Carlos',  alertas: 11, activo: true),
          ],
        ),
      ),
    ),
    5 => Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('SizedBox', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text('Primer elemento'),
          const SizedBox(height: 32),
          const Text('Segundo elemento (después de 32px)'),
          const Divider(height: 32),
          const Text('Padding', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Container(
            color: Colors.indigo.shade50,
            child: const Padding(
              padding: EdgeInsets.only(left: 24),
              child:   Text('Texto con Padding izquierdo'),
            ),
          ),
          const Divider(height: 32),
          const Text('Align', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Align(
            alignment: Alignment.centerRight,
            child: Icon(Icons.settings, color: Colors.indigo),
          ),
          const Divider(height: 32),
          const Text('Wrap', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Wrap(
            spacing:    8,
            runSpacing: 8,
            children: ['Puntos', 'Canjes', 'Oro', 'Platino', 'Recompensas', 'Loyaltee', 'Fidelización']
                .map((t) => Chip(label: Text(t)))
                .toList(),
          ),
        ],
      ),
    ),
      _ => Scaffold(
        body: Center(child: Text('Paso $paso: crea el widget primero')),
      ),
    },
  ),
);

Widget _paso1() => Scaffold(
  body: Center(
    child: Container(
      width: double.infinity,
      height: 80,
      margin: const EdgeInsets.all(24),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.indigo.shade50,
        borderRadius: BorderRadius.circular(0),
        border: Border(left: BorderSide(color: Colors.indigo, width: 4)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: const Text(
        'Sucursal Centro Loyaltee',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
  ),
);
