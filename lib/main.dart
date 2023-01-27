import 'package:flutter/material.dart';
import 'package:jobfinder/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

var router = RouteGenerator().router;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primaryColor: Colors.black,
          // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.black87)
          //     .copyWith(secondary: Colors.blue),
          ),
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
