import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/metrica_servidor_mp.dart';

class MetricasNotifier extends AsyncNotifier<List<MetricaServidor>> {
  @override
  Future<List<MetricaServidor>> build() => _fetch();

  Future<List<MetricaServidor>> _fetch() async {
    await Future.delayed(const Duration(milliseconds: 800));
    return const [
      MetricaServidor(servidor:'ana-rosales', cpu:45.2, ram:62.1, ssd:80.5, conexiones:230),
      MetricaServidor(servidor:'luis-mendez',  cpu:88.1, ram:91.2, ssd:90.0, conexiones:80),
      MetricaServidor(servidor:'maria-lopez', cpu:22.4, ram:41.0, ssd:70.0, conexiones:50),
      MetricaServidor(servidor:'carlos-vega',  cpu:92.5, ram:95.0, ssd:92.0, conexiones:100),
      MetricaServidor(servidor:'sofia-torres', cpu:15.0, ram:40.0, ssd:75.0, conexiones:150),
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
