import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../models/servidor_ssh_mp.dart';

class ServidoresNotifier extends Notifier<List<ServidorSSH>> {
  @override
  List<ServidorSSH> build() => [
    ServidorSSH(id:'1', nombre:'ana-rosales', ip:'ana@loyaltee.com', puerto:850,   ssl:true,  favorito:true),
    ServidorSSH(id:'2', nombre:'luis-mendez',  ip:'luis@loyaltee.com', puerto:1200,   ssl:true),
    ServidorSSH(id:'3', nombre:'maria-lopez', ip:'maria@loyaltee.com', puerto:320, ssl:false),
    ServidorSSH(id:'4', nombre:'carlos-vega',  ip:'carlos@loyaltee.com', puerto:500, ssl:false)
  ];

  void toggleFavorito(String id) {
    state = state.map((s) =>
        s.id == id
          ? ServidorSSH(id:s.id, nombre:s.nombre, ip:s.ip,
                        puerto:s.puerto, ssl:s.ssl,
                        favorito:!s.favorito)
          : s
    ).toList();
  }

  void eliminar(String id) {
    state = state.where((s) => s.id != id).toList();
  }

  void agregar(ServidorSSH servidor) {
    state = [...state, servidor];
  }
}

final servidoresProvider =
    NotifierProvider<ServidoresNotifier, List<ServidorSSH>>(
  ServidoresNotifier.new,
);

final busquedaProvider = StateProvider<String>((ref) => '');

final servidoresFiltradosProvider = Provider<List<ServidorSSH>>((ref) {
  final todos    = ref.watch(servidoresProvider);
  final busqueda = ref.watch(busquedaProvider);

  if (busqueda.isEmpty) return todos;

  final q = busqueda.toLowerCase();
  return todos.where((s) =>
      s.nombre.toLowerCase().contains(q) || s.ip.contains(q)
  ).toList();
});
