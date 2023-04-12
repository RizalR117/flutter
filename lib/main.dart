import 'package:flutter/material.dart';
import 'package:rizal2/detail.screen.dart';
import 'package:rizal2/error.dart';
import 'package:rizal2/list_screen.dart';


void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List View Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => ListScreen(),
        '/detail': (context) => const DetailScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
            builder: (context) => ListScreen(),
            settings: settings,
          );
        }
        if (settings.name == '/detail') {
          return MaterialPageRoute(
            builder: (context) => const DetailScreen(),
            settings: settings,
          );
        }
        return MaterialPageRoute(
          builder: (context) => const ErrorScreen(),
          settings: settings,
        );
      },
    );
  }
}
