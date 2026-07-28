import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/pantalla_inicio_mp.dart';
import '../screens/pantalla_servidores_mp.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path:    '/',
      name:    'inicio',
      builder: (context, state) => const PantallaInicio(),
    ),
    GoRoute(
      path:    '/servidores',
      name:    'servidores',
      builder: (context, state) => const PantallaServidores(),
    ),
  ],
);
