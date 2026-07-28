import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modulo11_gorouter_mp/models/servidor_ssh_mp.dart';

class PantallaServidores extends StatelessWidget {
  const PantallaServidores({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final servidores = servidoresSimulados;
    
    return Scaffold(
      appBar: AppBar(
        title:           const Text('Clientes'),
        backgroundColor: cs.primaryContainer,
        foregroundColor: cs.onPrimaryContainer,
      ),
      body: ListView.builder(
        itemCount:   servidores.length,
        itemBuilder: (context, i) => ListTile(
          leading: const Icon(Icons.person),
          title:   Text(servidores[i].nombre),
          onTap: () {
            context.push('/servidores/${servidores[i].id}', extra: servidores[i]);
          },
        ),
      ),
    );
  }
}
