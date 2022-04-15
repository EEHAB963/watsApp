import 'package:flutter/material.dart';
import 'package:wats_app/presentation/screen/splash_screen.dart';
import 'package:wats_app/presentation/widgets/theme/style.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: ThemeData(
          primaryColor: primaryColor,
          appBarTheme: const AppBarTheme(
            color: primaryColor,
          ),
        ),
        home: const SplashScreen());
  }
}
