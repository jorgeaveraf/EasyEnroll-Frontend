import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String? _errorMessage;
  bool _isPasswordVisible = false; // Controla la visibilidad de la contraseña

  void _handleLogin() {
    // Simular validación de credenciales
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    if (email == "user@example.com" && password == "password123") {
      // Credenciales correctas
      Navigator.pushNamed(context, '/step1'); // Navegar a la pantalla de registro
    } else {
      // Mostrar error
      setState(() {
        _errorMessage = "Correo o contraseña incorrectos. Intenta de nuevo.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF253064), // Azul de fondo
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'assets/logo.png', // Asegúrate de que el logo esté en el directorio correcto
                  height: 120,
                ),
              ),
              const SizedBox(height: 16),
              // Título
              const Text(
                'INICIO DE SESIÓN',
                style: TextStyle(
                  fontFamily: 'LeagueGothic',
                  fontSize: 22,
                  color: Colors.white,
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
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF253064),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Campo de correo
                    TextField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        labelText: 'Correo',
                        prefixIcon: Icon(Icons.email, color: Color(0xFF253064)),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Campo de contraseña
                    TextField(
                      controller: _passwordController,
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        prefixIcon: const Icon(Icons.lock, color: Color(0xFF253064)),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                            color: const Color(0xFF253064),
                          ),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                        ),
                        border: const OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 24),
                    // Mostrar mensaje de error si existe
                    if (_errorMessage != null)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Text(
                          _errorMessage!,
                          style: const TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 12,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    // Botón de inicio de sesión
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _handleLogin,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF3BA53), // Color dorado
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Entrar',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Link para registro
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/step1');
                        },
                        child: const Text(
                          '¿NO TIENES UNA CUENTA? REGÍSTRATE AQUÍ',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            color: Color(0xFF253064),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Botón de Google
                    Center(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Funcionalidad para iniciar sesión con Google
                        },
                        icon: Image.asset(
                          'assets/google_logo.png', // Agrega el ícono de Google en assets
                          height: 20,
                        ),
                        label: const Text(
                          'Iniciar sesión con Google',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            color: Color(0xFF253064),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: const BorderSide(color: Color(0xFF253064)),
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
