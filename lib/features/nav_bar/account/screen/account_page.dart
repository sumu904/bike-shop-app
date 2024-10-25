import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:two_wheelers_bd/features/nav_bar/account/screen/profile/user_profile.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/dimensions.dart';
import '../../../../utils/styles.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final ImagePicker _picker = ImagePicker();
  File? _image;

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("Profile",
            style: jostSemiBold.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: Dimensions.fontSizeEighteen)),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(18),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Select Image Source'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.photo_library),
                                  title: Text('Gallery'),
                                  onTap: () {
                                    Navigator.of(context).pop();
                                    _pickImage(ImageSource.gallery);
                                    //Navigator.of(context).pop();
                                  },
                                ),
                                ListTile(
                                  leading: Icon(Icons.camera_alt),
                                  title: Text('Camera'),
                                  onTap: () {
                                    Navigator.of(context).pop();
                                    _pickImage(ImageSource.camera);
                                  },
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: TextButton(onPressed: (){
                                    Navigator.of(context).pop();
                                  }, child: Text("Cancel")),
                                )
                              ],
                            ),
                          );
                        },
                      );
                      //authController.pickImages();
                    },
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey[200],
                      backgroundImage:
                          _image != null ? FileImage(_image!) : null,
                      child: _image == null
                          ? Icon(Icons.person,
                              size: 80, color: Colors.grey[700])
                          : null,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UserProfile()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: AppColors.primaryClr,
                    child: Text(
                      "Sign in or register",
                      style: jostMedium.copyWith(
                          color: AppColors.white,
                          fontSize: Dimensions.fontSizeSixteen),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: AppColors.grey2.withOpacity(0.4),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.person_2_outlined,size: 30,),
                title: Text(
                  "Profile Info",
                  style: jostMedium.copyWith(
                      fontSize: Dimensions.fontSizeEighteen),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.motorcycle_outlined,size: 30,),
                title: Text(
                  "Your Bike Info",
                  style: jostMedium.copyWith(
                      fontSize: Dimensions.fontSizeEighteen),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.location_on_outlined,size: 30,),
                title: Text(
                  "Addresses",
                  style: jostMedium.copyWith(
                      fontSize: Dimensions.fontSizeEighteen),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.list_alt,size: 30,),
                title: Text(
                  "Orders",
                  style: jostMedium.copyWith(
                      fontSize: Dimensions.fontSizeEighteen),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.favorite_border,size: 30,),
                title: Text(
                  "Wishlist",
                  style: jostMedium.copyWith(
                      fontSize: Dimensions.fontSizeEighteen),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.compare,size: 30,),
                title: Text(
                  "Compare",
                  style: jostMedium.copyWith(
                      fontSize: Dimensions.fontSizeEighteen),
                ),
              ),
              Divider(
                color: AppColors.grey2.withOpacity(0.4),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.info_outline,size: 30,),
                title: Text(
                  "App Info",
                  style: jostMedium.copyWith(
                      fontSize: Dimensions.fontSizeEighteen),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.help_outline,size: 30,),
                title: Text(
                  "Help Center",
                  style: jostMedium.copyWith(
                      fontSize: Dimensions.fontSizeEighteen,),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.settings_outlined,size: 30,),
                title: Text(
                  "Settings",
                  style: jostMedium.copyWith(
                      fontSize: Dimensions.fontSizeEighteen),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.privacy_tip_outlined,size: 30,),
                title: Text(
                  "Privacy Policy",
                  style: jostMedium.copyWith(
                      fontSize: Dimensions.fontSizeEighteen),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.library_add_check,size: 30,),
                title: Text(
                  "Terms & Conditions",
                  style: jostMedium.copyWith(
                      fontSize: Dimensions.fontSizeEighteen),
                ),
              ),
              Divider(
                color: AppColors.grey2.withOpacity(0.4),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(
                  Icons.logout,size: 30,
                  color: AppColors.primaryClr,
                ),
                title: Text(
                  "Logout",
                  style: jostMedium.copyWith(
                      fontSize: Dimensions.fontSizeEighteen),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
