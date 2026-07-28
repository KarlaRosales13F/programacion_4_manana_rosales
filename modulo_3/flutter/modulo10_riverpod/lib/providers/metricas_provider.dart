// lib/providers/metricas_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/metrica_servidor.dart';

class MetricasNotifier extends AsyncNotifier<List<MetricaServidor>> {
  // build() puede ser async — es la carga inicial
  @override
  Future<List<MetricaServidor>> build() => _fetch();

  Future<List<MetricaServidor>> _fetch() async {
    await Future.delayed(const Duration(milliseconds: 800));
    return const [
      MetricaServidor(servidor:'prod-web-01', cpu:45.2, ram:62.1, ssd:80.5, conexiones:230),
      MetricaServidor(servidor:'prod-db-01',  cpu:88.1, ram:91.2, ssd:90.0, conexiones:80),
      MetricaServidor(servidor:'staging-api', cpu:22.4, ram:41.0, ssd:70.0, conexiones:50),
      MetricaServidor(servidor:'dev-nest-api',  cpu:92.5, ram:95.0, ssd:92.0, conexiones:100),
      MetricaServidor(servidor:'dev-db-api', cpu:15.0, ram:40.0, ssd:75.0, conexiones:150),
    ];
  }

  Future<void> recargar() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_fetch);
  }
}

final metricasProvider =
    AsyncNotifierProvider<MetricasNotifier, List<MetricaServidor>>(
  MetricasNotifier.new,
);