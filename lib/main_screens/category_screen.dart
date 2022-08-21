import 'package:fl_tienda_online/widgets/fake_tab_search.dart';
import 'package:flutter/material.dart';

class CategorySceen extends StatelessWidget {
  const CategorySceen({super.key});

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
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(color: Colors.red,height: height * 0.6,), width: width * 0.2),
            Positioned(
            bottom: 0,
            right: 0,
            child: Container(color: Colors.blue,height: height * 0.6,), width: width * 0.8),

        ],
      )
      ,
    );
  }
}
