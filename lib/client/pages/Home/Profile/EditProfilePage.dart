import 'dart:io';
import 'package:biome/client/utils/Decoration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  String? firstname, lastname, about, email, phone, picture;
  final formKey = GlobalKey<FormState>();

  File? img;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WillPopScope(
            onWillPop: () async {
              return false;
            },
            child: Form(
              key: formKey,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                physics: const BouncingScrollPhysics(),
                children: [
                  Center(
                    child: Stack(children: [
                      buildImage(""),
                      Positioned(
                          bottom: 0,
                          right: 4,
                          child: buildEditIcon(MyDecoration.green))
                    ]),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Username",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        onSaved: (val) {
                          firstname = val;
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "This field cannot be empty";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Edit your Username",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        controller:
                            TextEditingController(text: "this is my username"),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Name",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        onSaved: (val) {
                          firstname = val;
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "This field cannot be empty";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Edit your name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        controller:
                            TextEditingController(text: "this is my name"),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70),
                    child: ElevatedButton(
                      onPressed: () async {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        child: const Center(
                            child: Text(
                          "Confirm changes",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            )));
  }

  Widget buildImage(String input) {
    if (img == null) {
      return ClipOval(
        child: input != ""
            ? Material(
                borderRadius: BorderRadius.circular(100),
                color: Colors.transparent,
                child: Ink.image(
                  image: NetworkImage(input),
                  fit: BoxFit.cover,
                  width: 128,
                  height: 128,
                  child: InkWell(
                    onTap: () {
                      Get.defaultDialog(
                          title: "Choose diractory",
                          backgroundColor: Colors.white,
                          titleStyle: const TextStyle(color: Colors.black),
                          middleTextStyle: const TextStyle(color: Colors.white),
                          textCancel: "Cancel",
                          cancelTextColor: Colors.black,
                          buttonColor: Colors.black,
                          barrierDismissible: false,
                          radius: 50,
                          content: Column(children: [
                            InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  children: const [
                                    Expanded(
                                      child: Icon(
                                        Icons.camera,
                                        size: 20,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Text(
                                        "Camera",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: EdgeInsets.all(15),
                                child: Row(
                                  children: const [
                                    Expanded(
                                      child: Icon(
                                        Icons.image,
                                        size: 20,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Text(
                                        "Gallery",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]));
                    },
                  ),
                ),
              )
            : InkWell(
                borderRadius: BorderRadius.circular(100),
                onTap: () {
                  Get.defaultDialog(
                      title: "Choose diractory",
                      backgroundColor: Colors.white,
                      titleStyle: const TextStyle(color: Colors.black),
                      middleTextStyle: const TextStyle(color: Colors.white),
                      textCancel: "Cancel",
                      cancelTextColor: Colors.black,
                      buttonColor: Colors.black,
                      barrierDismissible: false,
                      radius: 50,
                      content: Column(children: [
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: const [
                                Expanded(
                                  child: Icon(
                                    Icons.camera,
                                    size: 20,
                                    color: Colors.black54,
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Text(
                                    "Camera",
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: const [
                                Expanded(
                                  child: Icon(
                                    Icons.image,
                                    size: 20,
                                    color: Colors.black54,
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Text(
                                    "Gallery",
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 25, color: MyDecoration.green),
                    color: MyDecoration.green,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 20,
                        offset: Offset(5, 5),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 80,
                    color: Colors.white,
                  ),
                )),
      );
    } else {
      return ClipOval(
        child: Material(
          color: Colors.transparent,
          child: Ink.image(
            image: FileImage(img!),
            fit: BoxFit.cover,
            width: 128,
            height: 128,
            child: InkWell(
              onTap: () {
                Get.defaultDialog(
                    title: "Choose diractory",
                    backgroundColor: Colors.white,
                    titleStyle: const TextStyle(color: Colors.black),
                    middleTextStyle: const TextStyle(color: Colors.white),
                    textCancel: "Cancel",
                    cancelTextColor: Colors.black,
                    buttonColor: Colors.black,
                    barrierDismissible: false,
                    radius: 50,
                    content: Column(children: [
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            children: const [
                              Expanded(
                                child: Icon(
                                  Icons.camera,
                                  size: 20,
                                  color: Colors.black54,
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  "Camera",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            children: const [
                              Expanded(
                                child: Icon(
                                  Icons.image,
                                  size: 20,
                                  color: Colors.black54,
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  "Gallery",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]));
              },
            ),
          ),
        ),
      );
    }
  }

  Widget buildEditIcon(Color color) => buildCircle(
        color: Colors.white,
        all: 3,
        child: buildCircle(
            color: color,
            all: 8,
            child: const Icon(
              Icons.add_a_photo,
              size: 20,
              color: Colors.white,
            )),
      );

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          child: child,
          color: color,
        ),
      );

  // Future uploadFile() async {
  //   File file = File(img!.path);
  //   var refStorage = FirebaseStorage.instance.ref("images/${img!}.jpg");
  //   await refStorage.putFile(file);
  //   var url = await refStorage.getDownloadURL();
  //   await FirebaseFirestore.instance
  //       .collection("Users")
  //       .doc(FirebaseAuth.instance.currentUser?.uid)
  //       .update({
  //     "picture": url,
  //   });
  // }
}
