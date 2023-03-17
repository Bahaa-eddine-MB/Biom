import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../components/Notification.dart';
import '../../../utils/Decoration.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05),
          child:  Text("Notifications",style: TextStyle(color: MyDecoration.green,fontFamily: "Poppins",fontSize: 30,fontWeight: FontWeight.w700),),
        ) ,
        leading:  Container(
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Today",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
            ),
            my_Notification(),
            my_Notification(),
            my_Notification(),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Yesterday",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
            ),
            my_Notification(),
            my_Notification(),
            my_Notification(),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Others",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
            ),
            my_Notification(),
            my_Notification(),
            my_Notification(),
            my_Notification(),
            my_Notification(),
            SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}
