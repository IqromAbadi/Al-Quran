import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/juz_controller.dart';

class JuzView extends GetView<JuzController> {
  const JuzView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JuzView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'JuzView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
