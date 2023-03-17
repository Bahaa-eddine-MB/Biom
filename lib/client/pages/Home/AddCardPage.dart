import 'package:biome/client/pages/Home/PurchasePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/Decoration.dart';
import '../../utils/TextFeildDecoration.dart';

class AddCardPage extends StatefulWidget {
  const AddCardPage({Key? key}) : super(key: key);

  @override
  State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
  final formKey = GlobalKey<FormState>();
  late String cardnumber, expire, cardholder, cvv;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
          child: Text(
            "New card",
            style: TextStyle(
                color: MyDecoration.green,
                fontFamily: "Poppins",
                fontSize: 30,
                fontWeight: FontWeight.w700),
          ),
        ),
        leading: Container(
          margin: const EdgeInsets.only(left: 10),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                color: MyDecoration.green,
                shape: BoxShape.circle,
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Image(
                  image: AssetImage("images/icon2.png"),
                  height: 40,
                  width: 40,
                ),
              ),
            ),
          ),
        ),
      ),
      body: CupertinoScrollbar(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Stack(
                    children: [
                      Image.asset("images/card.png"),
                      const Positioned(
                          top: 80,
                          left: 20,
                          child: Text(
                            "Full name",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontSize: 17),
                          )),
                      const Positioned(
                          top: 105,
                          left: 20,
                          child: Text('xxxx-xxxx-xxxx-xxxx',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Poppins",
                                  fontSize: 17)))
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                      keyboardType: TextInputType.number,
                      onSaved: (val) {
                        cardnumber = val!;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "This field cannot be empty!";
                        }
      
                        return null;
                      },
                      decoration: TextInputDecoration.getInputDecoration(
                          labelText: "Card number")),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                      keyboardType: TextInputType.datetime,
                      onSaved: (val) {
                        expire = val!;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "This field cannot be empty!";
                        }
      
                        return null;
                      },
                      decoration: TextInputDecoration.getInputDecoration(
                          labelText: "Expire date")),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                      keyboardType: TextInputType.name,
                      onSaved: (val) {
                        cardholder = val!;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "This field cannot be empty!";
                        }
                        return null;
                      },
                      decoration: TextInputDecoration.getInputDecoration(
                          labelText: "Cardholder’s name")),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                      onSaved: (val) {
                        cvv = val!;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "This field cannot be empty!";
                        }
      
                        return null;
                      },
                      decoration: TextInputDecoration.getInputDecoration(
                          labelText: "CVV")),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          formKey.currentState?.save();
      
                          if (formKey.currentState!.validate()) {
                            Get.to(() => const Purchase());
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40))),
                        child: const Text("Add card",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontSize: 20)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
