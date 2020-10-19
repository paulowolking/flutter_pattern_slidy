import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pattern_slidy/app/modules/home/pages/home/home_controller.dart';

class OtherPage extends StatefulWidget {
  @override
  _OtherPageState createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    final homeController = Modular.get<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Other'),
      ),
      body: Center(
        child: Center(
          child: Text("homeController.text"),
        ),
      ),
    );
  }
}
