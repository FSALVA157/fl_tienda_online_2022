import 'package:fl_tienda_online/models/category_model.dart';
import 'package:fl_tienda_online/utilities/categ_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationProvider extends ChangeNotifier{

  //este Map debe ingresar desde la bd
  Map<String, IconData> custom_icons = {
      "men": FontAwesomeIcons.person,
      'women': FontAwesomeIcons.childDress,
      'electronics': FontAwesomeIcons.mobile,
      'accessories': FontAwesomeIcons.watchmanMonitoring,
      'shoes': FontAwesomeIcons.shoePrints,
      'home & garden': FontAwesomeIcons.tree,
      'beauty': FontAwesomeIcons.eyeSlash,
      'kids': FontAwesomeIcons.children,
      'bags': FontAwesomeIcons.bagShopping
  };
  
  //armado de lista categoria con icono
  List<CategoryModel> categories = [];
  int _paginaActual = 0;
  //String _categorySelected;
  late int _categorySelected;

  NavigationProvider(){
    maincateg.forEach((cat) { 
      categories.add(
        CategoryModel(cat, custom_icons[cat]!)
        );
    });
    this._categorySelected = 0;
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
int get categorySelected => this._categorySelected;
set categorySelected(int value){
  this._categorySelected = value;

  for (var i = 0; i < categories.length; i++) {
    if(i != this._categorySelected){
      categories[i].selected = false;
    }else{
      categories[i].selected = true;
    }
  }
  //var page = maincateg.indexOf(value);
  _pageCategory.jumpToPage(this._categorySelected);
  notifyListeners();
}

}