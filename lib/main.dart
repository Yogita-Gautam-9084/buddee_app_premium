import 'package:buddee_app_premium/modules/login/add_hobbies/add_hobbies_search_screen.dart';
import 'package:buddee_app_premium/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      // home: AddHobbiesSearchScreen(),
    );
  }
}
