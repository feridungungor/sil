import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:sil/models/post.dart';
import 'package:sil/pages/news/news_provider.dart';

class NewsController extends GetxController {
  List<Post> postsList = [];
  final isLoading = true.obs;

  void fetchData() async {
    try {
      var response = await Dio().get('https://jsonplaceholder.typicode.com/posts');

      if (response.statusCode == 200) {
        postsList = (response.data as List).map((x) => Post.fromJson(x)).toList();
        isLoading.value = false;
      }
    } catch (e) {
      print(e);
    }
  }
}
