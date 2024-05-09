import 'package:flutter/material.dart';
import 'package:news_app/pages/components/shared.list_builder.dart';

class CategoryPage extends StatelessWidget {
  final String category;
  const CategoryPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category),centerTitle: true,),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            MyCustomListBuilder(
              category: category,
            ),
          ],
        ),
      ),
    );
  }
}
