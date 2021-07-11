import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phone_packager/controller/dial_controller.dart';

class Root extends StatelessWidget {
  final DialController _dialController = Get.find<DialController>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("PACKAGOCH", style: TextStyle(fontSize: 34.0, fontWeight: FontWeight.w600, color: Color(0xff7C83FD))),
              // GridView.builder(gridDelegate: gridDelegate, itemBuilder: itemBuilder)
              SizedBox(height: size.height * 0.05),
              Expanded(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  children: [
                    buildCard(bgColor: Color(0xff96BAFF), ontap: () => _dialController.buyDaily3BirrInternetPackage(), text: "3 birr"),
                    buildCard(bgColor: Color(0xff7DEDFF), ontap: () => _dialController.buyDaily5BirrInternetPackage(), text: "5 birr"),
                    buildCard(bgColor: Color(0xff00EAD3), ontap: () {}, text: "10 birr"),
                    buildCard(bgColor: Color(0xff88FFF7), ontap: () {}, text: "15 birr"),
                    buildCard(bgColor: Color(0xff94D0CC), ontap: () {}, text: "20 birr"),
                    buildCard(bgColor: Color(0xff96BAFF), ontap: () {}, text: "25 birr"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard({required Color bgColor, required Function() ontap, required String text}) => InkWell(
        onTap: ontap,
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.phone),
              SizedBox(width: 10.0),
              Text(text),
            ],
          ),
        ),
      );
}
