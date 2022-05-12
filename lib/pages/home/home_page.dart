import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sil/pages/home/home_controller.dart';
import 'package:sil/routes/app_pages.dart';
import 'package:sil/routes/app_routes.dart';

class HomePage extends GetView<HomeController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.hometitle),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home Page",style: TextStyle(fontSize: 50),),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text("Home Page",style: TextStyle(color: Colors.white,fontSize: 40)),
            )          ],
        ),
      ),
    );
  }
}