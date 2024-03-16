import 'package:flutter/material.dart';
import 'package:https/api_client.dart';
import 'package:https/configs/routes.dart';
import 'package:https/mainScreen.dart';

void main() {
  Client().getPost();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: _routes,
    );
  }

  Map<String, WidgetBuilder> get _routes {
    return {
      Routes.mainScreen: (context) => const MainScreen(),
    };
  }
}
