import 'package:flutter/material.dart';
import 'package:modulo09_formularios_mp/widgets/tarjetaservidorgrid_mp.dart';
import '../models/servidor_ssh_mp.dart';
import '../widgets/fila_servidor_mp.dart';

class PantallaServidores extends StatefulWidget {
  const PantallaServidores({super.key});
  @override
  State<PantallaServidores> createState() => _PantallaServidoresState();
}

class _PantallaServidoresState extends State<PantallaServidores> {
  final _servidores = [
    ServidorSSH(id:'1', nombre:'ana-rosales',  ip:'ana@loyaltee.com',   puerto:850,   usuario:'Centro',   so:'Nivel Oro', ssl:true,  favorito:true),
    ServidorSSH(id:'2', nombre:'luis-mendez',   ip:'luis@loyaltee.com',   puerto:1200,   usuario:'Norte', so:'Nivel Platino',    ssl:true),
    ServidorSSH(id:'3', nombre:'maria-lopez',  ip:'maria@loyaltee.com',   puerto:320, usuario:'Sur',   so:'Nivel Bronce', ssl:false),
    ServidorSSH(id:'4', nombre:'carlos-vega',  ip:'carlos@loyaltee.com', puerto:500,   usuario:'Este',  so:'Nivel Oro', ssl:false),
  ];

  bool _modoGrid = false;

  void _toggleFavorito(int i) =>
      setState(() => _servidores[i].favorito = !_servidores[i].favorito);

  void _eliminar(int i) => setState(() => _servidores.removeAt(i));

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title:           Text('Clientes (${_servidores.length})'),
        backgroundColor: cs.primaryContainer,
        foregroundColor: cs.onPrimaryContainer,
        actions: [
          IconButton(
            icon:    Icon(_modoGrid ? Icons.list : Icons.grid_view),
            onPressed: () => setState(() => _modoGrid = !_modoGrid),
            tooltip: _modoGrid ? 'Vista lista' : 'Vista cuadrícula',
          ),
        ],
      ),
      body: _modoGrid
          ? GridView.builder(
              padding: const EdgeInsets.all(12),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:   2,
                childAspectRatio: 1.1,
                crossAxisSpacing: 8,
                mainAxisSpacing:  8,
              ),
              itemCount:   _servidores.length,
              itemBuilder: (ctx, i) => TarjetaServidorGrid(
                servidor:   _servidores[i],
                onFavorito: () => _toggleFavorito(i),
                onEliminar: () => _eliminar(i),
              ),
            )
          : ListView.separated(
              itemCount:        _servidores.length,
              separatorBuilder: (_, __) =>
                  const Divider(height: 1, indent: 72),
              itemBuilder: (ctx, i) => FilaServidor(
                servidor:   _servidores[i],
                onFavorito: () => _toggleFavorito(i),
                onEliminar: () => _eliminar(i),
              ),
            ),
    );
  }
}
