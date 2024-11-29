import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF253064), // Azul de fondo
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Encabezado
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/logo.png', // Ruta del escudo
                            height: 32, // Tamaño del escudo
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            '¡Bienvenido!',
                            style: TextStyle(
                              fontFamily: 'LeagueGothic',
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.exit_to_app,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          // Acción del botón de salida
                          Navigator.pushReplacementNamed(context, '/login');
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    '¡Hola, Habacuc!',
                    style: TextStyle(
                      fontFamily: 'LeagueGothic',
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Caja blanca con contenido
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(24),
                  ),
                ),
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Mensaje principal
                    const Text(
                      'Nos alegra verte de nuevo en EasyEnroll. ¿Listo para inscribir o gestionar a tus alumnos? Explora las opciones en el menú para continuar.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 14,
                        color: Color(0xFF253064),
                      ),
                    ),
                    const SizedBox(height: 24),
                    // Notificación de pago
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF3BA53).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color(0xFFF3BA53),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.notifications_active,
                            color: Color(0xFFF3BA53),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Tienes una inscripción pendiente de pagar',
                                  style: TextStyle(
                                    fontFamily: 'OpenSans',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF253064),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Haz clic para proceder con el pago.',
                                  style: TextStyle(
                                    fontFamily: 'OpenSans',
                                    fontSize: 12,
                                    color: Color(0xFF253064),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          ElevatedButton(
                            onPressed: () {
                              // Navegar a la pantalla de pagos
                              Navigator.pushNamed(context, '/payment');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFF3BA53),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text(
                              'Pagar Ahora',
                              style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    // Logo o imagen decorativa
                    Center(
                      child: Image.asset(
                        'assets/logo.png',
                        height: 200,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // Barra de navegación inferior
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF253064), // Azul
        selectedItemColor: const Color(0xFFF3BA53), // Dorado
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_outlined),
            label: 'Alumnos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Tutor',
          ),
        ],
        currentIndex: 1, // Resalta "Inicio" como la pestaña activa
        onTap: (index) {
          // Cambiar pestaña según el índice
          if (index == 0) {
            Navigator.pushNamed(context, '/students');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/tutor');
          }
        },
      ),
    );
  }
}
