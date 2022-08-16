import 'package:fl_tienda_online/main_screens/customer_home.dart';
import 'package:fl_tienda_online/models/models.dart';
import 'package:flutter/material.dart';

class AppRoutes{
  static const initialRoute = "home";
  static final optionsMenu = [
    MenuOptions(route:  'customer_home', icon:  Icons.home, name:  "Home Screen", screen:  CustomerHomeScreen()),
  ];


static  Map<String, Widget  Function(BuildContext)>  getAppRoutes() {
Map<String, Widget  Function(BuildContext)> appRoutes = {};
for (final item in optionsMenu) {
appRoutes.addAll({
item.route:(BuildContext context) => item.screen
});
}
return appRoutes;
}


static  Route<dynamic> onGenerateRoute(RouteSettings setting){
return  MaterialPageRoute(builder: (context){
return    CustomerHomeScreen();
});
}

}

