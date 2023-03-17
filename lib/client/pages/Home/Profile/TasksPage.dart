import 'package:biome/client/components/Task.dart';
import 'package:biome/client/utils/Decoration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  final formKey = GlobalKey<FormState>();
  late String myTask;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Task(),
            Task(),
            Task(),
            Task(),
            Task(),
            Task(),
            Task(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Material(
                shape: const CircleBorder(),
                clipBehavior: Clip.hardEdge,
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    Get.defaultDialog(
                      title: "Add a task !",
                      middleText: "Please write the title description",
                      backgroundColor: MyDecoration.lightBrown,
                      titleStyle: TextStyle(
                          color: MyDecoration.darkBrown,
                          fontFamily: "Poppins",
                          fontSize: 20),
                      middleTextStyle: const TextStyle(
                          color: Colors.white, fontFamily: "Poppins"),
                      radius: 30,
                      textConfirm: "Add",
                      textCancel: "Cancel",
                      onConfirm: () {
                        formKey.currentState?.save();
                        if (formKey.currentState!.validate()) {
                          //
                        }
                      },
                      confirm: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {
                          Get.back();
                        },
                        child: Ink(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: MyDecoration.green,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: MyDecoration.green,
                                width: 1.5,
                              ),
                            ),
                            child: const Text(
                              "Add",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      cancel: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {
                          Get.back();
                        },
                        child: Ink(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.red,
                                width: 1.5,
                              ),
                            ),
                            child: const Text(
                              "Cancel",
                              style: TextStyle(color: Colors.red),
                            )),
                      ),
                      confirmTextColor: Colors.white,
                      cancelTextColor: Colors.red,
                      content: Form(
                        key: formKey,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: TextFormField(
                              style: TextStyle(color: MyDecoration.darkBrown),
                              onSaved: (val) {
                                myTask = val!;
                              },
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "This field cannot be empty!";
                                }

                                return null;
                              },
                              decoration: InputDecoration(
                                errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      width: 2.5,
                                      color: Colors.red,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        const BorderSide(color: Colors.red)),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 17),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: MyDecoration.green),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                labelText: "Task description",
                                labelStyle: TextStyle(
                                    color: MyDecoration.darkBrown,
                                    fontFamily: "Poppins"),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 2.5,
                                      color: MyDecoration.green,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                              )),
                        ),
                      ),
                    );
                  },
                  child: Ink(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: MyDecoration.green,
                        width: 1.5,
                      ),
                    ),
                    child: Icon(
                      Icons.add,
                      color: MyDecoration.green,
                      size: 30,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
