import 'package:flutter/material.dart';
import 'package:news_app/model/demo.dart';
import 'package:news_app/pages/category_page.dart';
import 'package:news_app/pages/components/home.story_item.dart';
import 'package:news_app/pages/components/shared.list_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: lstStory.length,
                    itemBuilder: ((context, index) => storyItem(
                          stroy: lstStory[index],
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  CategoryPage(category: lstStory[index].title),
                            ),
                          ),
                        ))),
              ),
            ),
            const MyCustomListBuilder(
              category: "general",
            ),
          ],
        ),
      ),
    );
  }
}
