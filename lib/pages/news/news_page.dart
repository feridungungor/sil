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
        () => !controller.isLoading.value
            ? Center(
                child: Text(
                  "veri geldi ${controller.postsList.length}",
                  style: TextStyle(fontSize: 50),
                ),
              )
            : CircularProgressIndicator(),
      ),
    );
  }
}
