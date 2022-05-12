import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sil/pages/dashboard/dashboard_binding.dart';
import 'package:sil/routes/app_pages.dart';
import 'package:sil/routes/app_routes.dart';
import 'package:sil/theme/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: AppRoutes.DASHBOARD,
      getPages: AppPages.list,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
    );
  }
}
