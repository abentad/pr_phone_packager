import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phone_packager/controller/dial_controller.dart';

class DailyInternet extends StatelessWidget {
  final DialController _dialController = Get.find<DialController>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // GridView.builder(gridDelegate: gridDelegate, itemBuilder: itemBuilder)
              SizedBox(height: size.height * 0.05),
              buildCard(bgColor: Colors.teal, ontap: () => _dialController.buyDailyPackage("1"), text: "3 BIRR", size: size, iconData: Icons.wifi, megabyte: "30MB"),
              SizedBox(height: size.height * 0.02),
              buildCard(bgColor: Colors.teal, ontap: () => _dialController.buyDailyPackage("2"), text: "5 BIRR", size: size, iconData: Icons.wifi, megabyte: "70MB"),
              SizedBox(height: size.height * 0.02),
              buildCard(bgColor: Colors.teal, ontap: () => _dialController.buyDailyPackage("3"), text: "10 BIRR", size: size, iconData: Icons.wifi, megabyte: "145MB"),
              SizedBox(height: size.height * 0.02),
              buildCard(bgColor: Colors.teal, ontap: () => _dialController.buyDailyPackage("4"), text: "15 BIRR", size: size, iconData: Icons.wifi, megabyte: "250MB"),
              SizedBox(height: size.height * 0.02),
              buildCard(bgColor: Colors.teal, ontap: () => _dialController.buyDailyPackage("5"), text: "28 BIRR", size: size, iconData: Icons.wifi, megabyte: "500MB"),
              SizedBox(height: size.height * 0.02),
              buildCard(bgColor: Colors.teal, ontap: () => _dialController.buyDailyPackage("6"), text: "45 BIRR", size: size, iconData: Icons.wifi, megabyte: "1GB"),
            ],
          ),
        ),
      ),
    );
  }

  static Widget buildCard({required Color bgColor, required Function() ontap, required String text, required Size size, required IconData iconData, required String megabyte}) =>
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: InkWell(
          onTap: ontap,
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            padding: const EdgeInsets.only(left: 50),
            height: size.height * 0.13,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(iconData, color: Colors.white),
                SizedBox(width: size.width * 0.05),
                Text(text, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18.0)),
                Spacer(),
                Container(
                  width: size.width * 0.3,
                  decoration: BoxDecoration(color: Color(0xff78DEC7), borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), bottomRight: Radius.circular(10.0))),
                  child: Center(child: Text(megabyte, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18.0))),
                ),
              ],
            ),
          ),
        ),
      );
}
