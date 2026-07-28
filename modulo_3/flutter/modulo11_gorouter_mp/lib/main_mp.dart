import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modulo11_gorouter_mp/providers/auth_provider_mp.dart';
import 'package:modulo11_gorouter_mp/router/app_router_paso3_mp.dart';
import 'package:modulo11_gorouter_mp/router/app_router_paso4_mp.dart';
import 'package:modulo11_gorouter_mp/router/app_routerpaso2_mp.dart';
import 'package:modulo11_gorouter_mp/router/approuterpaso5_mp.dart';
import 'router/app_router_mp.dart';

const int paso = 5;

void main() {
  runApp(
    ProviderScope(
      child: AppMonitoreo(paso: paso),
    ),
  );
}

class AppMonitoreo extends ConsumerWidget {
  final int paso;
  const AppMonitoreo({super.key, required this.paso});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(authProvider);

    final router = switch (paso) {
      1 => appRouter,
      2 => appRouterPaso2,
      3 => appRouterPaso3,
      4 => appRouterPaso4,
      5 => appRouterPaso5(ref),
      _ => appRouter,
    };

    return MaterialApp.router(
      title:        'Loyaltee',
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6A1B9A)),
        useMaterial3: true,
      ),
    );
  }
}
