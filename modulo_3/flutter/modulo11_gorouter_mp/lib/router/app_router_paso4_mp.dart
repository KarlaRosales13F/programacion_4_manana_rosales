import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modulo11_gorouter_mp/screens/pantallaajustes_mp.dart';
import 'package:modulo11_gorouter_mp/screens/pantalladashboard_mp.dart';
import 'package:modulo11_gorouter_mp/screens/pantallametricas_mp.dart';
import 'package:modulo11_gorouter_mp/screens/scaffoldconnav_mp.dart';
import '../screens/pantalla_servidores_mp.dart';
import '../screens/pantalla_detalle_mp.dart';
import '../models/servidor_ssh_mp.dart';

final appRouterPaso4 = GoRouter(
  initialLocation: '/servidores',
  debugLogDiagnostics: true,
  routes: [
    ShellRoute(
      builder: (context, state, child) => ScaffoldConNav(child: child),
      routes: [
        GoRoute(
          path:    '/servidores',
          builder: (_, __) => const PantallaServidores(),
          routes: [
            GoRoute(
              path:    ':id',
              builder: (context, state) {
                final id       = state.pathParameters['id']!;
                final servidor = state.extra as ServidorSSH?;
                return PantallaDetalle(id: id, servidor: servidor);
              },
            ),
          ],
        ),
        GoRoute(
          path:    '/metricas',
          builder: (_, __) => const PantallaMetricas(),
        ),
        GoRoute(
          path:    '/ajustes',
          builder: (_, __) => const PantallaAjustes(),
        ),
        GoRoute(
          path:    '/dashboard',
          builder: (_, __) => const PantallaDashboard(),
        ),
      ],
    ),
  ],
);
