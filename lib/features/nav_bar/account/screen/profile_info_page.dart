import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/dimensions.dart';
import '../../../../utils/styles.dart';

class ProfileInfoPage extends StatefulWidget {
  const ProfileInfoPage({super.key});

  @override
  State<ProfileInfoPage> createState() => _ProfileInfoPageState();
}

class _ProfileInfoPageState extends State<ProfileInfoPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  String? valueChoose;
  List genderItem=["Male","Female","Other"];

  Future<void> _selectDate()async{
   DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1980),
        lastDate: DateTime(2100));
   if(_picked != null){
     setState(() {
       dateController.text = _picked.toString().split(" ")[0];
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
        title: Text("Profile Info",
            style: jostSemiBold.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: Dimensions.fontSizeEighteen)),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Full Name",style: jostMedium.copyWith(
                  fontSize: Dimensions.fontSizeSixteen,
                  color: AppColors.black)),
              SizedBox(height: 12,),
              TextFormField(
                  style: TextStyle(color: AppColors.grey3,fontSize: Dimensions.fontSizeFifteen),
                  textInputAction: TextInputAction.next,
                  controller: nameController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: AppColors.grey2.withOpacity(0.2),
                    hintText: "Full Name",
                    hintStyle: TextStyle(color: AppColors.grey3,fontSize: Dimensions.fontSizeFifteen),
                  )),
              SizedBox(height: 25,),
              Text("Phone Number",style: jostMedium.copyWith(
                  fontSize: Dimensions.fontSizeSixteen,
                  color: AppColors.black)),
              SizedBox(height: 12,),
              TextFormField(
                  style: TextStyle(color: AppColors.grey3,fontSize: Dimensions.fontSizeFifteen),
                  textInputAction: TextInputAction.next,
                  controller: phoneController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: AppColors.grey2.withOpacity(0.2),
                    hintText: "Phone Number",
                    hintStyle: TextStyle(color: AppColors.grey3,fontSize: Dimensions.fontSizeFifteen),
                  )),
              SizedBox(height: 25,),
              Text("E-Mail Address",style: jostMedium.copyWith(
                  fontSize: Dimensions.fontSizeSixteen,
                  color: AppColors.black)),
              SizedBox(height: 12,),
              TextFormField(
                  style: TextStyle(color: AppColors.grey3,fontSize: Dimensions.fontSizeFifteen),
                  textInputAction: TextInputAction.next,
                  controller: emailController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: AppColors.grey2.withOpacity(0.2),
                    hintText: "E-Mail Address",
                    hintStyle: TextStyle(color: AppColors.grey3,fontSize: Dimensions.fontSizeFifteen),
                  )),
              SizedBox(height: 25,),
              Text("Gender",style: jostMedium.copyWith(
                  fontSize: Dimensions.fontSizeSixteen,
                  color: AppColors.black)),
              SizedBox(height: 12,),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.grey2.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(5)
                ),
                child: DropdownButton(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  dropdownColor: AppColors.white,
                  hint: Text("Select Gender",style: TextStyle(color: AppColors.grey3,fontSize: Dimensions.fontSizeFifteen),),
                  icon: Icon(Icons.arrow_drop_down,color: AppColors.grey3,size: 30,),
                  underline: SizedBox(),
                  isExpanded: true,
                  value: valueChoose,
                  onChanged: (newValue){
                    setState(() {
                      valueChoose=newValue as String;
                    });
                  },
                  items: genderItem.map((valueItem){
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem),);
                  }).toList(),
                ),
              ),
              SizedBox(height: 25,),
              Text("Date of Birth",style: jostMedium.copyWith(
                  fontSize: Dimensions.fontSizeSixteen,
                  color: AppColors.black)),
              SizedBox(height: 12,),
              TextFormField(
                onTap: (){
                  _selectDate();
                },
                  style: TextStyle(color: AppColors.grey3,fontSize: Dimensions.fontSizeFifteen),
                  textInputAction: TextInputAction.next,
                  controller: dateController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: AppColors.grey2.withOpacity(0.2),
                    suffixIcon: Icon(Icons.calendar_today_outlined,color: AppColors.grey3,),
                    hintText: "Select Date of Birth",
                    hintStyle: TextStyle(color: AppColors.grey3,fontSize: Dimensions.fontSizeFifteen),
                  ),
              readOnly: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
