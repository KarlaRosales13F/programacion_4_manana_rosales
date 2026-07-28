// Clase base — comportamiento y datos comunes
class MiembroPrograma {
  final String nombre;
  final int    puntosAcumulados;

  MiembroPrograma(this.nombre, this.puntosAcumulados);

  // Método que cada subclase debe especializar
  String obtenerBeneficio() => 'Sin beneficios';

  // Método común — reutilizado sin cambios por todas las subclases
  void presentarse() {
    print('Soy $nombre, tengo $puntosAcumulados pts y mi beneficio es: ${obtenerBeneficio()}');
  }
}

// HERENCIA: ClienteBronce y ClienteOro reutilizan MiembroPrograma y lo especializan
class ClienteBronce extends MiembroPrograma {
  ClienteBronce(super.nombre, super.puntosAcumulados);

  @override
  String obtenerBeneficio() => '5% de descuento';

  void verCatalogo() => print('$nombre accede al catálogo básico 📋');
}

class ClienteOro extends MiembroPrograma {
  ClienteOro(super.nombre, super.puntosAcumulados);

  @override
  String obtenerBeneficio() => '20% de descuento + envío gratis';

  void accederSalaVip() => print('$nombre accede a la sala VIP 🌟');
}

void main() {
  final bronce = ClienteBronce('Luis Torres', 350);
  final oro    = ClienteOro('Sofía Ruiz', 5200);

  bronce.presentarse();  // Soy Luis Torres, tengo 350 pts y mi beneficio es: 5% de descuento
  oro.presentarse();     // Soy Sofía Ruiz, tengo 5200 pts y mi beneficio es: 20% de descuento + envío gratis

  bronce.verCatalogo();
  oro.accederSalaVip();
}