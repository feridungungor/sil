import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:sil/models/post.dart';
import 'package:sil/pages/news/news_provider.dart';

class NewsController extends GetxController {
  List<Post> postsList = [];
  bool isLoading = true;

  void fetchData() async {
    try {
      var response = await Dio().get('https://jsonplaceholder.typicode.com/posts');

      if (response.statusCode == 200) {
        print("En azından buradayım");

        postsList =
            (response.data as List).map((x) => Post.fromJson(x)).toList();
        isLoading = false;
        update();
        print(postsList[0].body);
      }
    } catch (e) {
      print(e);
    }
  }
}
