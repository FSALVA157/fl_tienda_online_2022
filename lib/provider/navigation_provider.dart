import 'package:fl_tienda_online/models/category_model.dart';
import 'package:fl_tienda_online/utilities/categ_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationProvider extends ChangeNotifier{
  List<CategoryModel> categories = [];
  int _paginaActual = 0;
  String _categorySelected="men";

  NavigationProvider(){
    maincateg.forEach((cat) { 
      categories.add(
        CategoryModel(cat, FontAwesomeIcons.building)
        );
    });
  }

  //maanejo de controlador de tabs en CustomeHome
  PageController _pageController = new PageController();

  PageController get pageController => this._pageController;

  int get paginaActual => this._paginaActual;

  set paginaActual(int valor){
    this._paginaActual = valor;
    _pageController.animateToPage(valor, duration:  Duration(milliseconds: 250), curve: Curves.easeInOut, );
    notifyListeners();
  }

//manejo de category Selected en Category Screen
PageController _pageCategory = new PageController();
PageController get pageCategory => this._pageCategory;
String get categorySelected => this._categorySelected;
set categorySelected(String value){
  this._categorySelected = value;
  var page = maincateg.indexOf(value);
  _pageCategory.jumpToPage(page);
  notifyListeners();
}

}