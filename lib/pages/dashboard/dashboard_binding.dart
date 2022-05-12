import 'package:get/get.dart';
import 'package:sil/pages/account/account_controller.dart';
import 'package:sil/pages/alerts/alerts_controller.dart';
import 'package:sil/pages/dashboard/dashboard_controller.dart';
import 'package:sil/pages/home/home_controller.dart';
import 'package:sil/pages/news/news_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AccountController>(() => AccountController());
    Get.lazyPut<NewsController>(() => NewsController());
    Get.lazyPut<AlertController>(() => AlertController());
  }
}
