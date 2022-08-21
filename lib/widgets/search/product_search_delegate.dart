
import 'package:fl_tienda_online/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ProductSearchDelegate extends SearchDelegate{

  @override
  // TODO: implement searchFieldLabel
  String? get searchFieldLabel => "Buscar Producto";
  
  @override
  ThemeData appBarTheme(BuildContext context) {
     return AppTheme.lightTheme.copyWith(
      //appBarTheme: AppBarTheme(),
      inputDecorationTheme: InputDecorationTheme(
          constraints: BoxConstraints(maxHeight: 40),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), ),
          
        // focusedBorder: InputBorder.none,
        // enabledBorder: InputBorder.none,
        // hintStyle: TextStyle(
        //   color: Colors.white,
        //),
  )
    );
  }

  

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () => query = "",
        icon: Icon(Icons.clear_sharp), 
        color: Colors.black,
        )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: (){
        close(context, null);
      },
      icon: Icon(Icons.keyboard_arrow_left_outlined),
      color: Colors.black,
      );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('BuildResult ${query}');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Text('BuildSuggestions ${query}');
  }

}