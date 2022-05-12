import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sil/pages/news/news_controller.dart';

class NewsPage extends GetView<NewsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
        centerTitle: true,
      ),
      body: GetBuilder(builder: (NewsController _) => !_.isLoading
          ? Center(
        child: Text(
          "veri geldi ${_.postsList.length}",
          style: TextStyle(fontSize: 50),
        ),

      )
          : CircularProgressIndicator()),
    );
  }
}
