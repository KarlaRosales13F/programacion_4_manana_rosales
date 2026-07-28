import 'package:flutter/material.dart';

class FormularioServidor extends StatefulWidget {
  final void Function(Map<String, String> datos) onGuardar;
  const FormularioServidor({super.key, required this.onGuardar});

  @override
  State<FormularioServidor> createState() => _FormularioServidorState();
}

class _FormularioServidorState extends State<FormularioServidor> {
  final _formKey  = GlobalKey<FormState>();

  final _ctrlNombre  = TextEditingController();
  final _ctrlIp      = TextEditingController();

  final _ctrlMAC      = TextEditingController();

  final _ctrlPuerto  = TextEditingController(text: '100');
  final _ctrlUsuario = TextEditingController(text: 'Ana');

  final _focusIp      = FocusNode();

  final _focusMAC      = FocusNode();
  
  final _focusPuerto  = FocusNode();
  final _focusUsuario = FocusNode();

  String _so  = 'Nivel Oro';
  String _se = 'Programa Loyaltee';
  bool   _ssl = true;

  @override
  void dispose() {
    _ctrlNombre.dispose();
    _ctrlIp.dispose();
    _ctrlMAC.dispose();
    _ctrlPuerto.dispose();
    _ctrlUsuario.dispose();
    _focusIp.dispose();
    _focusMAC.dispose();
    _focusPuerto.dispose();
    _focusUsuario.dispose();
    super.dispose();
  }

  void _guardar() {
    if (!_formKey.currentState!.validate()) return;

    widget.onGuardar({
      'nombre':  _ctrlNombre.text,
      'ip':      _ctrlIp.text,
      'puerto':  _ctrlPuerto.text,
      'usuario': _ctrlUsuario.text,
      'so':      _so,
      'se':      _se,
      'ssl':     _ssl.toString(),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            controller:      _ctrlNombre,
            decoration:      const InputDecoration(
              labelText:  'Nombre del cliente',
              hintText:   'ana-rosales',
              prefixIcon: Icon(Icons.person),
              border:     OutlineInputBorder(),
            ),
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (_) => _focusIp.requestFocus(),
            validator: (v) {
              if (v == null || v.trim().isEmpty) return 'El nombre es obligatorio';
              if (v.length < 3)                  return 'Mínimo 3 caracteres';
              if (!RegExp(r'^[a-zA-Z0-9\-\_]+$').hasMatch(v))
                return 'Solo letras, números, guiones y guiones bajos';
              return null;
            },
          ),
          const SizedBox(height: 12),
          TextFormField(
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
            onFieldSubmitted: (_) => _focusPuerto.requestFocus(),
            validator: (v) {
              if (v == null || v.isEmpty) return 'El correo es obligatorio';
              if (!v.contains('@'))  return 'Formato de correo inválido';
              return null;
            },
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller:      _ctrlMAC,
            focusNode:       _focusMAC,
            decoration:      const InputDecoration(
              labelText:  'Teléfono',
              hintText:   '5551234567',
              prefixIcon: Icon(Icons.phone),
              border:     OutlineInputBorder(),
            ),
            keyboardType:    TextInputType.phone,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (_) => _focusPuerto.requestFocus(),
            validator: (v) {
              if (v == null || v.isEmpty) return 'El teléfono es obligatorio';
              if (v.length < 7)  return 'Teléfono inválido';
              return null;
            },
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller:      _ctrlPuerto,
            focusNode:       _focusPuerto,
            decoration:      const InputDecoration(
              labelText:  'Puntos iniciales',
              prefixIcon: Icon(Icons.loyalty),
              border:     OutlineInputBorder(),
            ),
            keyboardType:    TextInputType.number,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (_) => _focusUsuario.requestFocus(),
            validator: (v) {
              final puntos = int.tryParse(v ?? '');
              if (puntos == null)              return 'Los puntos deben ser un número';
              if (puntos < 0 || puntos > 99999) return 'Puntos entre 0 y 99999';
              return null;
            },
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller:      _ctrlUsuario,
            focusNode:       _focusUsuario,
            decoration:      const InputDecoration(
              labelText:  'Sucursal',
              prefixIcon: Icon(Icons.store),
              border:     OutlineInputBorder(),
            ),
            textInputAction: TextInputAction.next,
            validator: (v) =>
                v == null || v.trim().isEmpty ? 'La sucursal es obligatoria' : null,
          ),
          const SizedBox(height: 12),
          DropdownButtonFormField<String>(
            value:      _so,
            decoration: const InputDecoration(
              labelText:  'Nivel de membresía',
              prefixIcon: Icon(Icons.star),
              border:     OutlineInputBorder(),
            ),
            items: [
              'Nivel Bronce', 'Nivel Oro', 'Nivel Platino',
              'Nivel Diamante', 'Nivel Corporativo',
            ].map((s) => DropdownMenuItem(value: s, child: Text(s))).toList(),
            onChanged: (v) => setState(() => _so = v!),
          ),
          const SizedBox(height: 8),
          DropdownButtonFormField<String>(
            value:      _se,
            decoration: const InputDecoration(
              labelText:  'Programa',
              prefixIcon: Icon(Icons.loyalty),
              border:     OutlineInputBorder(),
            ),
            items: [
              'Programa Loyaltee', 'Programa Premium', 'Programa Corporativo',
              'Programa Estudiantes',
            ].map((s) => DropdownMenuItem(value: s, child: Text(s))).toList(),
            onChanged: (v) => setState(() => _so = v!),
          ),
          const SizedBox(height: 8),
          SwitchListTile(
            title:     const Text('Notificaciones activas'),
            subtitle:  const Text('Recibir alertas de puntos y canjes'),
            value:     _ssl,
            onChanged: (v) => setState(() => _ssl = v),
            secondary: const Icon(Icons.notifications),
          ),
          const SizedBox(height: 16),
          Row(children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () => _formKey.currentState?.reset(),
                child: const Text('Limpiar'),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              flex: 2,
              child: FilledButton.icon(
                onPressed: _guardar,
                icon:  const Icon(Icons.save),
                label: const Text('Guardar cliente'),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
