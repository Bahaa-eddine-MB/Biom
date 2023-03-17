import 'package:biome/client/pages/Home/Profile/EditProfilePage.dart';
import 'package:biome/client/pages/Home/Profile/ProfileInfos.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isEdit = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: isEdit
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isEdit = false;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.all(15),
                    child: Image.asset('images/icons/Icon.png'),
                  ),
                )
              : const SizedBox(),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            !isEdit
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isEdit = true;
                      });
                    },
                    icon:const Icon(
                      Icons.edit_note_outlined,
                      size: 30,
                    ))
                : const SizedBox()
          ],
        ),
        body: isEdit ? const EditProfilePage() : ProfileInfo());
  }
}
