import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Inicializa Firebase con los valores de configuración proporcionados
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyAjqpqfAGRXVWk28cBkYFEujUQWsNOBnmQ",
      authDomain: "flutter-imgtxt.firebaseapp.com",
      projectId: "flutter-imgtxt",
      storageBucket: "flutter-imgtxt.appspot.com",
      messagingSenderId: "406521536502",
      appId: "1:406521536502:web:7a684b0f2d12a7de94f1d7",
      databaseURL: "https://flutter-imgtxt-default-rtdb.firebaseio.com",
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Firebase Initialized'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'Firebase está configurado correctamente.',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
