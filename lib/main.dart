import 'package:flutter/material.dart';
import 'package:responsive_app/core/Constans/theme.dart';
import 'package:responsive_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashView()
      // onGenerateRoute: RoutesGenerator.getRoutes,
      // initialRoute: Routes.mainRoute,
      ,
      debugShowCheckedModeBanner: false,
      theme: getAppTheme(
        context: context,
      ),
    );
  }
}
