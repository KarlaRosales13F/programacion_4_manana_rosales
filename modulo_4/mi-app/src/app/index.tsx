// app/index.tsx
import { StyleSheet, Text, View } from 'react-native'

// ┌──────────────────────────────────────────────────────────────────┐
// │  Cambia este número y guarda (Ctrl+S) para navegar entre pasos. │
// │  1  Paso 1  Texto y vistas básicas                               │
// │  2  Paso 2  Imágenes y botones                                   │
// └──────────────────────────────────────────────────────────────────┘
const PASO = 1

export default function Index() {
  switch (PASO) {
    case 1:
      return <Paso1 />
    default:
      return (
        <View style={{ flex: 1, justifyContent: 'center', alignItems: 'center' }}>
          <Text>Paso {PASO}: crea la pantalla primero</Text>
        </View>
      )
  }
}

// ─── Paso 1 — lo creamos abajo ──────────────────────────────────────
function Paso1() {
  return (
    <>
    <View style={styles.contenedor1}>
      <Text style={styles.titulo1}>Hola desde React Native</Text>
      <Text style={styles.subtitulo1}>SProgramacion IV</Text>
      <Text style={styles.detalle1}>10.0.2.10 · Ubuntu 24.04</Text>
    </View>
      <View style={{ flex: 1, justifyContent: 'center', alignItems: 'center' }}>
      <Text>Hola desde React Native</Text>
      <Text>Programacion IV</Text>
      <Text>Karla Rosales</Text>
    </View>
    <View style={styles.contenedor}>
      <Text style={styles.titulo}>Sistema de Monitoreo</Text>
      <Text style={styles.subtitulo}>Servidor web-01</Text>
      <Text style={styles.detalle}>10.0.2.10 · Ubuntu 24.04</Text>
    </View>
    </>
  )
}

const styles = StyleSheet.create({
  contenedor: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#dbd1ff',
    gap: 8,
  },
  titulo: {
    fontSize: 22,
    fontWeight: 'bold',
    color: '#ffffff',
  },
  subtitulo: {
    fontSize: 16,
    color: '#ffffff',
  },
  detalle: {
    fontSize: 13,
    color: '#ffffff',
  },
  contenedor1: {
     flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#76c8ff',
    gap: 8,
  },
  titulo1: {
    fontSize: 22,
    fontWeight: 'bold',
    color: '#ffffff',
  },
  subtitulo1: {
    fontSize: 16,
    color: '#ffffff',
  },
  detalle1: {
    fontSize: 13,
    color: '#ffffff',
  },
})