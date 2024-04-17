import 'package:taxiapp/firebase_options.dart';
import 'package:taxiapp/pages/home/home.dart';
import 'package:taxiapp/repositories/user_repository.dart';
import 'package:taxiapp/ui/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    UserRepository.instance.signInCurrentUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taxi App',
      theme: CityTheme.theme,
      home: const HomePage(),
    );
  }
}
