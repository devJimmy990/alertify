// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:news_app/constants/my_api.dart';
import 'package:news_app/constants/service.dart';
import 'package:news_app/model/model.news.dart';
import 'package:news_app/pages/components/home.news_item.dart';

class MyCustomListBuilder extends StatefulWidget {
  final String category;
  const MyCustomListBuilder({super.key, required this.category});

  @override
  State<MyCustomListBuilder> createState() => _MyCustomListStateBuilder();
}

class _MyCustomListStateBuilder extends State<MyCustomListBuilder> {
  late Future<List<News>> _futureNews;

  @override
  void initState() {
    super.initState();
    _futureNews = fetchNews();
  }

  Future<List<News>> fetchNews() async {
    List<News> myNews = [];
    var res = await Service.getInstance()
        ?.getRequest(url: MyApi.baseUrl(category: widget.category));
    for (var solo in res["articles"]) myNews.add(News.fromJson(solo));
    return myNews;
  }

  @override
  Widget build(BuildContext context) {
    // return FutureBuilder(
    //   future: _futureNews,
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.done) {
    //       if (snapshot.hasData) {
    //         final data = snapshot.data as List<News>;
    //         return newsListBuilder(data: data); // Call newsListBuilder here
    //       } else if (snapshot.hasError) {
    //         return SliverToBoxAdapter(
    //             child: Center(child: Text("Error Happened ${snapshot.error}")));
    //       }
    //     }
    //     return const SliverToBoxAdapter(
    //         child: Center(child: CircularProgressIndicator()));
    //   },
    // );

    return RefreshIndicator(

      onRefresh: () async {
        setState(() {
          _futureNews = fetchNews();
          print("Refreshed");
        });
      },
      child: FutureBuilder(
        future: _futureNews,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              final data = snapshot.data as List<News>;
              return newsListBuilder(data: data); // Call newsListBuilder here
            } else if (snapshot.hasError) {
              return SliverToBoxAdapter(child: Center(child: Text("Error Happened ${snapshot.error}")));
            }
          }
          return const  SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
        },
      ),
    );
  }
}

Widget newsListBuilder({required List<News> data}) {
  return SliverList(
    delegate: SliverChildBuilderDelegate(
      (context, index) => BuildNewItem(
        singleNew: data[index],
      ),
      childCount: data.length,
    ),
  );
}
