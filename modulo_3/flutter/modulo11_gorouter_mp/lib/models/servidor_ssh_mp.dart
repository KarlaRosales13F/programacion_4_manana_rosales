class ServidorSSH {
  final String id;
  final String nombre;
  final String ip;
  final int    puerto;
  final bool   ssl;

  const ServidorSSH({
    required this.id,
    required this.nombre,
    required this.ip,
    required this.puerto,
    required this.ssl,
  });
}

const servidoresSimulados = [
  ServidorSSH(id: '1', nombre: 'ana-rosales', ip: 'ana@loyaltee.com',   puerto: 850,   ssl: true),
  ServidorSSH(id: '2', nombre: 'luis-mendez',  ip: 'luis@loyaltee.com',   puerto: 1200,   ssl: true),
  ServidorSSH(id: '3', nombre: 'maria-lopez', ip: 'maria@loyaltee.com',   puerto: 320, ssl: false),
];
