class Cliente {
  // 1. Propiedades
  final String id;
  final String nombre;
  String       email;
  bool         _activo = false;  // _ indica uso interno

  // 2. Constructor nombrado con parámetros nombrados
  Cliente({
    required this.id,
    required this.nombre,
    required this.email,
  });

  // 3. Getter — propiedad derivada, solo lectura
  bool   get activo => _activo;
  String get estado => _activo ? 'activo' : 'inactivo';

  // 4. Setter — escritura controlada
  set estadoActivo(bool valor) {
    _activo = valor;
    print('$nombre: ${valor ? "inscrito" : "dado de baja"}');
  }

  // 5. Métodos
  void inscribir() {
    _activo = true;
    print('$nombre inscrito con email $email');
  }

  void darDeBaja() {
    _activo = false;
    print('$nombre dado de baja del programa');
  }

  String resumen() => 'ID: $id | Nombre: $nombre | Email: $email | Estado: $estado';

  // 6. toString
  @override
  String toString() => 'Cliente($nombre, $email, $estado)';
}

void main() {
  // Crear una instancia
  final cliente = Cliente(
    id:     'CLI-001',
    nombre: 'María García',
    email:  'maria.garcia@email.com',
  );

  // Usar sus métodos y propiedades
  cliente.inscribir();
  print(cliente.estado);       // activo
  print(cliente.resumen());
  print(cliente);              // llama toString() automáticamente

  cliente.estadoActivo = false;  // usa el setter
  print(cliente.activo);   // false
}