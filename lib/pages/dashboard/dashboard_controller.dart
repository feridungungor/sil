import 'package:get/get.dart';
import 'package:sil/pages/news/news_controller.dart';

class DashboardController extends GetxController{
  var tabIndex = 0;

  void changeTabIndex(int index)  {
    if(index == 1){
       Get.find<NewsController>().fetchData();
    }
    tabIndex = index;
    update();
  }
}