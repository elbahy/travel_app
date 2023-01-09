import 'package:flutter/material.dart';
import 'package:travel_app/app_data.dart';
import 'package:travel_app/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("الدليل السياحي")),
        ),
        body: GridView(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 7 / 8,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
          children:
              Categories_data.map((e) => CategoryItem(e.id, e.title, e.imageUrl))
                  .toList(),
        ));
  }
}
