import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sil/pages/alerts/alerts_controller.dart';

class AlertsPage extends GetView<AlertController>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Alerts",style: TextStyle(fontSize: 40),),
      ),
    );
  }
}