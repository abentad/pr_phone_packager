import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phone_packager/controller/dial_controller.dart';
import 'package:phone_packager/root.dart';

class Introduction extends StatelessWidget {
  final DialController _dialController = Get.find<DialController>();
  final TextEditingController _phoneNumberController = TextEditingController();

  void savePhoneNum() {
    String _phoneNum = "+251${_phoneNumberController.text}";
    _dialController.setPhoneNumber(_phoneNum);
    Get.offAll(() => Root());
    print(_phoneNum);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hi", style: TextStyle(color: Colors.teal, fontSize: 50)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(
                  controller: _phoneNumberController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    // border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                    hintText: "912345678",
                    labelText: "phone number",
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                  onEditingComplete: () {
                    savePhoneNum();
                  },
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: MaterialButton(
                  onPressed: () {
                    savePhoneNum();
                  },
                  minWidth: double.infinity,
                  height: 50.0,
                  color: Colors.teal,
                  child: Text("Continue", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
