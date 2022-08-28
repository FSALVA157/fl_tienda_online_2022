import 'package:fl_tienda_online/models/category_model.dart';
import 'package:fl_tienda_online/provider/navigation_provider.dart';
import 'package:fl_tienda_online/themes/app_theme.dart';
import 'package:fl_tienda_online/utilities/categ_list.dart';
import 'package:fl_tienda_online/widgets/fake_tab_search.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      appBar: AppBar(
        title: FakeTabSearch()
      ),
      body: Stack(
        children: [
          _SideNavigator(height: height, width: width),
          _CategoryView(height: height, width: width),

        ],
      )
      ,
    );
  }
}

class _CategoryView extends StatelessWidget {
  const _CategoryView({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);

    return Positioned(
    bottom: 0,
    right: 0,
    child: SizedBox(
      height: height * 0.8,
      width: width * 0.8,
      child: PageView.builder(
        physics: BouncingScrollPhysics(),
        controller: navigationProvider.pageCategory,
        scrollDirection: Axis.vertical,        
        onPageChanged: (index) => navigationProvider.categorySelected = index,
        itemCount: maincateg.length,
        itemBuilder: (context, index) {
         return Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white, 
            child: Center(
              child: Text(navigationProvider.categories[index].name),
              
            )
            
          );
        }
        ),
      )
    );
  }
}

class _SideNavigator extends StatelessWidget {
  const _SideNavigator({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);
    final categories_list = navigationProvider.categories;

    return Positioned(
      bottom: 0,
      left: 0,
      child: SizedBox(
        height: height * 0.8,
        width: width * 0.2,
        child: ListView.builder(
          itemCount: categories_list.length,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap:(){
                navigationProvider.categorySelected = index;
              },
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                           children: [
                            _IconCategory(categoria: categories_list[index]),
                            SizedBox(height: 10),
                            Center(child: Text(categories_list[index].name, style: TextStyle(fontSize: 10, color: AppTheme.primary_color),))
                        ],
                        ),),
              )
            );
          })
          ),
          )
        );
  }
}

class _IconCategory extends StatelessWidget {
  final CategoryModel categoria;

  const _IconCategory({
    Key? key,
    required this.categoria,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: AppTheme.primary_color,
      ),
      child: Icon(categoria.icon, color: Colors.white, size: 30,)
      );
  }
}
