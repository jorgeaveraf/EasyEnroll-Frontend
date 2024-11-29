import 'package:flutter/material.dart';

class Step2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF253064), // Azul de fondo
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Encabezado con la flecha de retroceso
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Regresar al Step 1
                        Navigator.pop(context);
                      },
                    ),
                    const Spacer(), // Para centrar el logo y el título
                    Column(
                      children: [
                        Image.asset(
                          'assets/logo.png', // Asegúrate de tener este logo en tu carpeta de assets
                          height: 120,
                        ),
                        const SizedBox(height: 8),
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
                    const Spacer(), // Para mantener el diseño balanceado
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Subtítulo
                    const Center(
                      child: Text(
                        'SECUNDARIA\nINSTITUTO PATRIA',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'LeagueGothic',
                          fontSize: 18,
                          color: Color(0xFF253064),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'CONFIRMA TUS DATOS',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF253064),
                      ),
                    ),
                    const SizedBox(height: 24),
                    // Lista de datos extraídos (Nombre, CURP, Celular)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'NOMBRE',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Color(0xFF253064),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'John Doe',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 14,
                            color: Color(0xFF253064),
                          ),
                        ),
                        Divider(color: Color(0xFF253064)),
                        SizedBox(height: 16),
                        Text(
                          'CURP',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Color(0xFF253064),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'XXXX590808HVZNR01',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 14,
                            color: Color(0xFF253064),
                          ),
                        ),
                        Divider(color: Color(0xFF253064)),
                        SizedBox(height: 16),
                        Text(
                          'CELULAR',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Color(0xFF253064),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '527038197',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 14,
                            color: Color(0xFF253064),
                          ),
                        ),
                        Divider(color: Color(0xFF253064)),
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
                          width: MediaQuery.of(context).size.width * 0.66, // 66% de progreso
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
                          // Navegar al Step 3
                          Navigator.pushNamed(context, '/step3');
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
