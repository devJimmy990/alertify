// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:news_app/model/model.news.dart';
import 'package:news_app/pages/single_new_page.dart';

class BuildNewItem extends StatelessWidget {
  final News singleNew;
  const BuildNewItem({super.key, required this.singleNew});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => WebViewApp(singleNew: singleNew),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: Card(
          shadowColor: Colors.black,
          elevation: 10,
          child: SizedBox(
            height: 200,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                _buildNewsImg(url: singleNew.imgSrc),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _buildNewsTitle(title: singleNew.title),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildNewsImg({required String url}) => Image.network(
      url,
      fit: BoxFit.fitWidth,
      width: double.infinity,
      loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) =>
          loadingProgress == null
              ? child
              : const Center(child: CircularProgressIndicator()),
      errorBuilder:
          (BuildContext context, Object exception, StackTrace? stackTrace) =>
              const Center(child: Icon(Icons.error)),
    );

Widget _buildNewsTitle({required String title}) => Container(
      decoration: BoxDecoration(
          color: Colors.amber.withOpacity(.8),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
