import 'package:flutter/material.dart';

class NavigationProvider extends ChangeNotifier{
  int _paginaActual = 0;
  PageController _pageController = new PageController();

  PageController get pageController => this._pageController;

  int get paginaActual => this._paginaActual;

  set paginaActual(int valor){
    this._paginaActual = valor;
    _pageController.animateToPage(valor, duration:  Duration(milliseconds: 250), curve: Curves.easeInOut, );
    notifyListeners();
  }


}