import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample_screens/routes.dart';
import 'package:sample_screens/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      theme: AppTheme.getAppTheme(),
      routes: ROUTES,
    );
  }
}
