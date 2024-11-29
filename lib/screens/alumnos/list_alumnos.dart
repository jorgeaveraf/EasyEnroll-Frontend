import 'package:flutter/material.dart';

class StudentsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> students = [
    {
      'name': 'Soto Hernández José Habacuc',
      'status': 'Inscrito a 1A',
      'gender': 'male', // Género del alumno
    },
    {
      'name': 'Vergara Alegra Sofía',
      'status': 'Pendiente de inscribir',
      'gender': 'female', // Género del alumno
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF253064), // Azul de fondo
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Encabezado (igual que en Home)
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
                          Navigator.pushNamed(context, '/login');
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Alumnos registrados',
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
                    // Lista de alumnos
                    Expanded(
                      child: ListView.builder(
                        itemCount: students.length,
                        itemBuilder: (context, index) {
                          final student = students[index];
                          // Selecciona el avatar basado en el género
                          final String avatarPath = student['gender'] == 'male'
                              ? 'assets/boy.png'
                              : 'assets/girl.png';

                          return Card(
                            margin: const EdgeInsets.symmetric(vertical: 8),
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage: AssetImage(avatarPath),
                                radius: 24, // Tamaño del avatar
                              ),
                              title: Text(
                                student['name'],
                                style: const TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xFF253064),
                                ),
                              ),
                              subtitle: Text(
                                student['status'],
                                style: const TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                              trailing: const Icon(
                                Icons.remove_red_eye,
                                color: Color(0xFF253064),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 24),
                    // Botón para añadir un alumno
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navegar al flujo de registro de alumnos
                          Navigator.pushNamed(context, '/addStudent');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF3BA53), // Dorado
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Añadir a un alumno',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // Barra de navegación inferior (igual que en Home)
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
        currentIndex: 0, // Resalta "Alumnos" como la pestaña activa
        onTap: (index) {
          if (index == 1) {
            Navigator.pushNamed(context, '/home');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/tutor');
          }
        },
      ),
    );
  }
}
