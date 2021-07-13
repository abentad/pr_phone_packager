import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';

class DialController extends GetxController {
  late String _phoneNumber;

  String get phoneNumber => _phoneNumber;

  @override
  void onInit() async {
    update();
    super.onInit();
  }

  void calltele() async {
    const number = '909';
    // bool? res = await FlutterPhoneDirectCaller.callNumber(number);
    try {
      await FlutterPhoneDirectCaller.callNumber(number);
    } catch (e) {
      print(e);
    }
  }

  void buyDailyPackage(String dialNumber) async {
    // const number = '*999*2*1*2*1*1*1#';
    String number = '*999*2*1*2*1*$dialNumber#';
    // bool? res = await FlutterPhoneDirectCaller.callNumber(number);
    try {
      await FlutterPhoneDirectCaller.callNumber(number);
    } catch (e) {
      print(e);
    }
  }

  void buyDaily5BirrInternetPackage() async {
    // const number = '*999*2*1*2*1*1*1#';
    const number = '*999*2*1*2*1*2#';
    // bool? res = await FlutterPhoneDirectCaller.callNumber(number);
    try {
      await FlutterPhoneDirectCaller.callNumber(number);
    } catch (e) {
      print(e);
    }
  }

  void setPhoneNumber(String phoneNum) {
    _phoneNumber = phoneNum;
    update();
  }

  // void _savePhoneNumber() async {
  //   try {
  //     SharedPreferences prefs = await SharedPreferences.getInstance();
  //     String _phoneNum = (prefs.getString()('counter') ?? 0) + 1;
  //     print('Pressed $counter times.');
  //     await prefs.setInt('counter', counter);
  //   } catch (e) {
  //     print(e);
  //   }
  // }
}
