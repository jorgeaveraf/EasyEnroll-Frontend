import 'package:flutter/material.dart';

class Step1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF253064), // Azul de fondo
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Encabezado con flecha y texto
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context); // Regresa a la pantalla anterior
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.arrow_back, // Icono de flecha
                            color: Colors.white,
                            size: 24,
                          ),
                          const SizedBox(width: 4),
                          const Text(
                            'INICIAR SESIÓN',
                            style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // Logo y título
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/logo.png', // Asegúrate de tener este logo en tu carpeta de assets
                      height: 120,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'CREAR CUENTA',
                      style: TextStyle(
                        fontFamily: 'LeagueGothic',
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // Caja blanca con contenido
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 24),
                padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    // Subtítulo
                    const Text(
                      'SECUNDARIA\nINSTITUTO PATRIA',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'LeagueGothic',
                        fontSize: 20,
                        color: Color(0xFF253064),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'DA CLIC Y ESCANEA',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF253064),
                      ),
                    ),
                    const SizedBox(height: 24),
                    // Iconos de OCR
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'assets/credencial_icon.png', // Agrega este ícono en tu carpeta assets
                              height: 60,
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Credencial de elector',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 12,
                                color: Color(0xFF253064),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/comprobante_icon.png', // Agrega este ícono en tu carpeta assets
                              height: 60,
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Comprobante de domicilio',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 12,
                                color: Color(0xFF253064),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    // Barra de progreso
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.33, // 33% de progreso
                          height: 10,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF3BA53),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    // Botón "Siguiente"
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Aquí se navegará al siguiente paso
                          Navigator.pushNamed(context, '/step2');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF3BA53), // Color dorado
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Siguiente',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
