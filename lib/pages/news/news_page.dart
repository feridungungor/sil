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
      body: Obx(
        () => controller.postsList.isNotEmpty
            ? Center(
                child: Text(
                  "veri geldi ${controller.postsList[0].body}",
                  style: TextStyle(fontSize: 50),
                ),
              )
            : CircularProgressIndicator(),
      ),
    );
  }
}
