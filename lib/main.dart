import 'package:flutter/material.dart';
import 'package:unasfit/pages/exercise_detail_page.dart';
import 'package:unasfit/pages/exercises_page.dart';
import 'package:unasfit/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromARGB(255, 27, 54, 100),
          secondary: const Color.fromARGB(255, 22, 43, 80),
        ),
        fontFamily: 'Lato',
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 27, 54, 100),
        ),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => ExcercisesPage(),
        AppRoutes.EXERCISE_DETAIL: (ctx) => ExerciseDetailPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
