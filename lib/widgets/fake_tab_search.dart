import 'package:fl_tienda_online/themes/app_theme.dart';
import 'package:fl_tienda_online/widgets/search/product_search_delegate.dart';
import 'package:flutter/material.dart';

class FakeTabSearch extends StatelessWidget {
  const FakeTabSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
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
        MaterialButton(
          onPressed: (() => showSearch(
            context: context, 
            delegate: ProductSearchDelegate()
            )),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25)
            ),
            color: AppTheme.primary_color,
            elevation: 0,
            disabledColor: Colors.grey,
            child: Text('Search', style: TextStyle(color: Colors.white, fontSize: 16),      
            //child: Text('Search', style: TextStyle(color: Colors.grey.shade600, fontSize: 16),      
        ))      
      ],
    ),
  );
  }
}

