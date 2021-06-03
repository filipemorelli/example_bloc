import 'package:example_bloc/routes/routes.dart';
import 'package:example_bloc/themes/light_theme.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ScreetWall App',
      theme: lightTheme,
      navigatorKey: AppRoutes.navigatorKey,
      initialRoute: AppRoutes.posts,
      routes: AppRoutes.routes,
    );
  }
}
