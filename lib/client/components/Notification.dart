import 'package:flutter/material.dart';

class my_Notification extends StatefulWidget {
  const my_Notification({Key? key}) : super(key: key);

  @override
  State<my_Notification> createState() => _my_NotificationState();
}

class _my_NotificationState extends State<my_Notification> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        
      },
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: ListTile(
            leading: const CircleAvatar(
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:const  [
                       Text(
                        "Notification title :",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            fontFamily: "Adel"),
                      ),
                       SizedBox(
                        height: 5,
                      ),
                       Text(
                        "this is a notification",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: "Adel"),
                      ),
                    
                  
                    ],
                  ),
                
                ],
              ),
            ),
          )),
    );
  }
}
