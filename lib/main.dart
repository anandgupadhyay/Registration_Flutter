import 'package:flutter/material.dart';
import 'package:tors_tv/screens/signup_screen.dart';
import 'package:tors_tv/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sync Screen',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blueGrey,
        ),

        useMaterial3: true,
        canvasColor: Colors.black,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          color: Colors.grey,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        textTheme: TextTheme(
            bodyLarge: TextStyle(color: Colors.white),
            bodyMedium: TextStyle(color: Colors.white),
            bodySmall: TextStyle(color: Colors.white),

        ),
      ),
      darkTheme: ThemeData.dark(),
      home: SignupScreen(),//SplashScreen(),
    );
  }
}

const MaterialColor primaryBlack = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
    50: Color(0xFF000000),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  },
);
const int _blackPrimaryValue = 0xFF000000;
