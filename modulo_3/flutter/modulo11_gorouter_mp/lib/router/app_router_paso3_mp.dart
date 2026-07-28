import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/pantalla_inicio_mp.dart';
import '../screens/pantallaservidoresfiltro_mp.dart';
import '../screens/pantalla_detalle_mp.dart';
import '../models/servidor_ssh_mp.dart';

final appRouterPaso3 = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path:    '/',
      builder: (context, state) => const PantallaInicio(),
    ),
    GoRoute(
      path:    '/servidores',
      builder: (context, state) {
        final soloSSL = state.uri.queryParameters['soloSSL'] == 'true';
        return PantallaServidoresFiltro(soloSSL: soloSSL);
      },
    ),
    GoRoute(
      path:    '/servidores/:id',
      builder: (context, state) {
        final id       = state.pathParameters['id']!;
        final servidor = state.extra as ServidorSSH?;
        return PantallaDetalle(id: id, servidor: servidor);
      },
    ),
  ],
);
