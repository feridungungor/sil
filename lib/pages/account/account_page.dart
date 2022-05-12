import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sil/pages/account/account_controller.dart';

class AccountPage extends GetView<AccountController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Obx(()=>Text(controller.counter.toString(),style: TextStyle(fontSize: 50),)),
          ),
          GestureDetector(
            onTap: (){
              controller.artir();
            },
            child: Center(
              child: Text("Artır",style: TextStyle(fontSize: 50),),
            ),
          )
        ],
      ),
    );
  }
}