import 'package:fl_tienda_online/themes/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
     List<String> categories = [
  'men',
  'women',
  'electronics',
  'accessories',
  'shoes',
  'home & garden',
  'beauty',
  'kids',
  'bags'
];

    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: _customSearchBox(),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: AppTheme.primary_color,
            indicatorWeight: 8,
            tabs: tabs(categories),
          ) ,
        ),
        body: TabBarView(
          children: tabsBodies(categories)
          ),
      ),
    );
  }

  Container _customSearchBox() => Container(
    height: 35,
    decoration: BoxDecoration(
      border: Border.all(color: AppTheme.primary_color, width: 1.4),
      borderRadius: BorderRadius.circular(25),      
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.search_outlined, color: Colors.grey.shade700,),
        Text('Que estas buscando?', style: TextStyle(color: Colors.grey.shade600, fontSize: 16),),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 7),
        decoration: BoxDecoration(color:AppTheme.primary_color, borderRadius: BorderRadius.circular(25)),
        height: 42,
        child: Center(child: Text('Search', style: TextStyle(color: Colors.grey.shade600, fontSize: 16),)),
        )
      ],
    ),
  );

  List<Widget> tabsBodies(List<String> titulos) {
    List<Widget> listado=[];
    
    titulos.forEach((element) {
      listado.add(
            Center(child: Text(element, style: TextStyle(color: Colors.black, fontSize: 30),))
      );
    });

    return listado;   

  }

  List<Tab> tabs(List<String> titulos) {
    List<Tab> listado=[];
    
    titulos.forEach((element) {
      listado.add(
            Tab(child: Text(element, style: TextStyle(color: Colors.grey.shade600),),)
      );
    });

    return listado;   
    
  }
}

