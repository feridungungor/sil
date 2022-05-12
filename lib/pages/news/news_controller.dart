import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:sil/models/post.dart';

class NewsController extends GetxController {
  var postsList = <PostModel>[].obs;

  void fetchData() async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/posts');

      if (response.statusCode == 200) {
        postsList.value = (response.data as List).map((x) => PostModel.fromJson(x)).toList();
      }
    } catch (e) {
      print(e);
    }
  }
}
