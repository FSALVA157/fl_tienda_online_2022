import 'package:fl_tienda_online/app_routes.dart';
import 'package:fl_tienda_online/provider/navigation_provider.dart';
//import 'package:fl_tienda_online/main_screens/customer_home_screen.dart';
import 'package:fl_tienda_online/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() => runApp(AppState());

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      child: MyApp(),
      providers: [
        ChangeNotifierProvider(create: (_) => NavigationProvider(),)
      ]
      );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: AppTheme.lightTheme,
      initialRoute: 'customer_home',
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: (setting) => AppRoutes.onGenerateRoute(setting),
      
    );
  }
}