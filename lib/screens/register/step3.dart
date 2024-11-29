import 'package:flutter/material.dart';

class Step3Screen extends StatelessWidget {
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
                        // Regresar al Step 2
                        Navigator.pop(context);
                      },
                    ),
                    const Spacer(),
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
                    const Spacer(),
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
                      'DATOS DE ACCESO',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF253064),
                      ),
                    ),
                    const SizedBox(height: 24),
                    // Formulario de ingreso de correo y contraseñas
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'CORREO',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Color(0xFF253064),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'correo@email.com',
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'CONTRASEÑA',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Color(0xFF253064),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '********',
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'CONFIRMAR CONTRASEÑA',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Color(0xFF253064),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '********',
                          ),
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
                          width: MediaQuery.of(context).size.width * 0.99, // 99% de progreso
                          height: 10,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF3BA53),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    // Botón "Registrarse"
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navegar al login o mostrar mensaje de éxito
                          Navigator.pushNamed(context, '/home');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF3BA53), // Color dorado
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Registrarse',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Enlace para volver a iniciar sesión
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          // Volver a la pantalla de inicio de sesión
                          Navigator.popUntil(context, ModalRoute.withName('/login'));
                        },
                        child: const Text(
                          '¿YA TIENES UNA CUENTA? INICIA SESIÓN',
                          style: TextStyle(
                            color: Color(0xFF253064),
                            fontSize: 12,
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
