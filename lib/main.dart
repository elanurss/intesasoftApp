import 'package:case_02/core/init/navigation/NavigationService.dart';
import 'package:case_02/view/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'core/init/navigation/navigation_route.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigationService.instance.navigatorKey,
      onGenerateRoute: NaigationRoute.instance.generateRoute,
      home: const HomeView(),
    );
  }
}
