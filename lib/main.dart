import 'package:flutter/material.dart';
import 'screens/alumnos/list_alumnos.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart'; // Ajusta según tu estructura
import 'screens/register/step1.dart';
import 'screens/register/step2.dart';
import 'screens/register/step3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EasyEnroll',
      theme: ThemeData(
        primaryColor: const Color(0xFF253064),
        fontFamily: 'OpenSans',
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/step1': (context) => Step1Screen(),
        '/step2': (context) => Step2Screen(),
        '/step3': (context) => Step3Screen(),
        '/home': (context) => HomeScreen(),
        '/students': (context) => StudentsScreen(),
      },
    );
  }
}
