import 'package:flutter/material.dart';

class FilaEstado extends StatelessWidget {
  final String nombre;
  final String detalle;
  final bool activo;

  const FilaEstado({
    super.key,
    required this.nombre,
    required this.detalle,
    required this.activo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Ícono de estado
          Icon(
            activo ? Icons.circle : Icons.cancel,
            color: activo ? Colors.green : Colors.red,
            size: 20,
          ),

          const SizedBox(width: 12),

          // Se quitó Expanded y Column
          Text(
            nombre,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),

          // Spacer para empujar el chip a la derecha
          const Spacer(),

          // Chip de estado
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              color: (activo ? Colors.green : Colors.red)
                  .withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              activo ? 'Activo' : 'Caído',
              style: TextStyle(
                fontSize: 11,
                color: activo
                    ? Colors.green.shade700
                    : Colors.red.shade700,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}