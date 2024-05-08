import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
// import 'package:searching_app/styles/theme.dart';
import 'package:searching_app/pages/home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage()
      ),
      GoRoute(
        path: ':category/:search',
      )
    ]
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Searching App',
      theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      routerConfig: _router,
    );
  }
}
