import 'package:flutter/material.dart';
import 'widgets/formulario_servidor_mp.dart';
import 'models/servidor_ssh_mp.dart';
import 'widgets/fila_servidor_mp.dart';
import 'screens/pantalla_servidores_mp.dart';
import 'screens/pantalla_busqueda_mp.dart';

const int paso = 5;

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF6A1B9A),
    ),
    useMaterial3: true,
  ),
  home: switch (paso) {
    1 => const _Paso1(),
    2 => const _Paso2(),
    3 => const _Paso3(),
    4 => const PantallaServidores(),
    5 => const PantallaBusqueda(),
    _ => Scaffold(body: Center(child: Text('Paso $paso no definido'))),
  },
));

class _Paso1 extends StatefulWidget {
  const _Paso1();
  @override
  State<_Paso1> createState() => _Paso1State();
}

class _Paso1State extends State<_Paso1> {
  final _ctrlHostname = TextEditingController();
  final _ctrlIp       = TextEditingController();
  final _ctrlPuerto   = TextEditingController(text: '100');
  final _focusIp      = FocusNode();
  final _focusPuerto  = FocusNode();

  @override
  void dispose() {
    _ctrlHostname.dispose();
    _ctrlIp.dispose();
    _ctrlPuerto.dispose();
    _focusIp.dispose();
    _focusPuerto.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title:           const Text('Registro Loyaltee'),
        backgroundColor: cs.primaryContainer,
        foregroundColor: cs.onPrimaryContainer,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller:      _ctrlHostname,
              decoration:      const InputDecoration(
                labelText:  'Nombre del cliente',
                hintText:   'ana-rosales',
                prefixIcon: Icon(Icons.person),
                border:     OutlineInputBorder(),
              ),
              textInputAction: TextInputAction.next,
              onSubmitted:     (_) => _focusIp.requestFocus(),
            ),
            const SizedBox(height: 12),
            TextField(
              controller:      _ctrlIp,
              focusNode:       _focusIp,
              decoration:      const InputDecoration(
                labelText:  'Correo electrónico',
                hintText:   'ana@loyaltee.com',
                prefixIcon: Icon(Icons.email),
                border:     OutlineInputBorder(),
              ),
              keyboardType:    TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              onSubmitted:     (_) => _focusPuerto.requestFocus(),
            ),
            const SizedBox(height: 12),
            TextField(
              controller:      _ctrlPuerto,
              focusNode:       _focusPuerto,
              decoration:      const InputDecoration(
                labelText:  'Puntos iniciales',
                prefixIcon: Icon(Icons.loyalty),
                border:     OutlineInputBorder(),
              ),
              keyboardType:    TextInputType.number,
              textInputAction: TextInputAction.done,
              onSubmitted:     (_) => FocusScope.of(context).unfocus(),
            ),
            const SizedBox(height: 20),
            FilledButton.icon(
              onPressed: () {
                FocusScope.of(context).unfocus();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Registrando a ${_ctrlHostname.text} '
                      '(${_ctrlIp.text} · ${_ctrlPuerto.text} pts)',
                    ),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              icon:  const Icon(Icons.person_add),
              label: const Text('Registrar'),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {
                _ctrlHostname.clear();
                _ctrlIp.clear();
                _ctrlPuerto.text = '100';
              },
              child: const Text('Limpiar campos'),
            ),
          ],
        ),
      ),
    );
  }
}

class _Paso2 extends StatelessWidget {
  const _Paso2();

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title:           const Text('Nuevo cliente'),
        backgroundColor: cs.primaryContainer,
        foregroundColor: cs.onPrimaryContainer,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: FormularioServidor(
          onGuardar: (datos) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                    'Guardado: ${datos['nombre']} — ${datos['ip']} · ${datos['puerto']} pts'),
                behavior: SnackBarBehavior.floating,
              ),
            );
          },
        ),
      ),
    );
  }
}

class _Paso3 extends StatefulWidget {
  const _Paso3();
  @override
  State<_Paso3> createState() => _Paso3State();
}

class _Paso3State extends State<_Paso3> {
  final _servidores = [
    ServidorSSH(id:'1', nombre:'ana-rosales',  ip:'ana@loyaltee.com',   puerto:850,   usuario:'Centro',   so:'Nivel Oro', ssl:true,  favorito:true),
    ServidorSSH(id:'2', nombre:'luis-mendez',   ip:'luis@loyaltee.com',   puerto:1200,   usuario:'Norte', so:'Nivel Platino',    ssl:true),
    ServidorSSH(id:'3', nombre:'maria-lopez',  ip:'maria@loyaltee.com',   puerto:320, usuario:'Sur',   so:'Nivel Bronce', ssl:false),
    ServidorSSH(id:'4', nombre:'carlos-vega',  ip:'carlos@loyaltee.com', puerto:500,   usuario:'Este',  so:'Nivel Oro', ssl:false),
  ];

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title:           Text('Clientes (${_servidores.length})'),
        backgroundColor: cs.primaryContainer,
        foregroundColor: cs.onPrimaryContainer,
      ),
      body: _servidores.isEmpty
          ? Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.people_outlined, size: 56, color: cs.onSurfaceVariant),
                  const SizedBox(height: 12),
                  Text('Sin clientes',
                      style: TextStyle(color: cs.onSurfaceVariant)),
                ],
              ),
            )
          : ListView.separated(
              itemCount:        _servidores.length,
              separatorBuilder: (_, __) =>
                  const Divider(height: 1, indent: 72),
              itemBuilder: (ctx, i) => FilaServidor(
                servidor:   _servidores[i],
                onFavorito: () => setState(() =>
                    _servidores[i].favorito = !_servidores[i].favorito),
                onEliminar: () =>
                    setState(() => _servidores.removeAt(i)),
              ),
            ),
    );
  }
}
