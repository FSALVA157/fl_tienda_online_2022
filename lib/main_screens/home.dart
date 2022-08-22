import 'package:fl_tienda_online/themes/app_theme.dart';
import 'package:fl_tienda_online/widgets/fake_tab_search.dart';
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
         // backgroundColor: Colors.white,
          title: FakeTabSearch(),
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

