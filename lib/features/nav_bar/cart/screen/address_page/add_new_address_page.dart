import 'package:flutter/material.dart';
import 'package:two_wheelers_bd/features/nav_bar/cart/screen/address_page/select_address_page.dart';
import 'package:two_wheelers_bd/utils/colors.dart';

import '../../../../../utils/dimensions.dart';
import '../../../../../utils/styles.dart';

class AddNewAddressPage extends StatefulWidget {
  const AddNewAddressPage({super.key});

  @override
  State<AddNewAddressPage> createState() => _AddNewAddressPageState();
}

class _AddNewAddressPageState extends State<AddNewAddressPage> {
  TextEditingController addressController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController fulladdressController = TextEditingController();
  String? valueChoose;
  List districtItem=["Dhaka","Narayanganj","Cumilla","Chittagong"];
  List areaItem=["Middle Badda","Dhanmondi","Banani","Mirpur"];

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
        title: Text("Add New Address",
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
              RichText(
                text: TextSpan(
                  text: 'Address Label ',
                  style: jostMedium.copyWith(
                      fontSize: Dimensions.fontSizeFifteen,
                      color: AppColors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: '*',
                      style: jostMedium.copyWith(
                          fontSize: Dimensions.fontSizeFifteen,
                          color: AppColors.primaryClr),
                    )
                  ],
                ),
              ),
                SizedBox(height: 12,),
                TextFormField(
                    style: TextStyle(color: AppColors.grey3),
                    textInputAction: TextInputAction.next,
                    controller: addressController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: AppColors.grey2.withOpacity(0.2),
                      hintText: "Address Label",
                      hintStyle: TextStyle(color: AppColors.grey3,fontSize: Dimensions.fontSizeFourteen),
                    )),
              SizedBox(height: 20,),
              RichText(
                text: TextSpan(
                  text: 'Full Name ',
                  style: jostMedium.copyWith(
                      fontSize: Dimensions.fontSizeFifteen,
                      color: AppColors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: '*',
                      style: jostMedium.copyWith(
                          fontSize: Dimensions.fontSizeFifteen,
                          color: AppColors.primaryClr),
                    )
                  ],
                ),
              ),
              SizedBox(height: 12,),
              TextFormField(
                  style: TextStyle(color: AppColors.grey3),
                  textInputAction: TextInputAction.next,
                  controller: nameController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: AppColors.grey2.withOpacity(0.2),
                    hintText: "Full Name",
                    hintStyle: TextStyle(color: AppColors.grey3,fontSize: Dimensions.fontSizeFourteen),
                  )),
              SizedBox(height: 20,),
              RichText(
                text: TextSpan(
                  text: 'Phone Number ',
                  style: jostMedium.copyWith(
                      fontSize: Dimensions.fontSizeFifteen,
                      color: AppColors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: '*',
                      style: jostMedium.copyWith(
                          fontSize: Dimensions.fontSizeFifteen,
                          color: AppColors.primaryClr),
                    )
                  ],
                ),
              ),
              SizedBox(height: 12,),
              TextFormField(
                  style: TextStyle(color: AppColors.grey3),
                  textInputAction: TextInputAction.next,
                  controller: phoneController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: AppColors.grey2.withOpacity(0.2),
                    hintText: "Phone Number",
                    hintStyle: TextStyle(color: AppColors.grey3,fontSize: Dimensions.fontSizeFourteen),
                  )),
              SizedBox(height: 20,),
              RichText(
                text: TextSpan(
                  text: 'E-Mail Address ',
                  style: jostMedium.copyWith(
                      fontSize: Dimensions.fontSizeFifteen,
                      color: AppColors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: '*',
                      style: jostMedium.copyWith(
                          fontSize: Dimensions.fontSizeFifteen,
                          color: AppColors.primaryClr),
                    )
                  ],
                ),
              ),
              SizedBox(height: 12,),
              TextFormField(
                  style: TextStyle(color: AppColors.grey3),
                  textInputAction: TextInputAction.next,
                  controller: emailController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: AppColors.grey2.withOpacity(0.2),
                    hintText: "E-Mail Address",
                    hintStyle: TextStyle(color: AppColors.grey3,fontSize: Dimensions.fontSizeFourteen),
                  )),
              SizedBox(height: 20,),
              RichText(
                text: TextSpan(
                  text: 'District ',
                  style: jostMedium.copyWith(
                      fontSize: Dimensions.fontSizeFifteen,
                      color: AppColors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: '*',
                      style: jostMedium.copyWith(
                          fontSize: Dimensions.fontSizeFifteen,
                          color: AppColors.primaryClr),
                    )
                  ],
                ),
              ),
              SizedBox(height: 12,),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.grey2.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5)
                ),
                child: DropdownButton(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  dropdownColor: AppColors.white,
                  hint: Text("District",style: TextStyle(color: AppColors.grey3),),
                  icon: Icon(Icons.arrow_drop_down,color: AppColors.grey3,size: 30,),
                  style: TextStyle(color: AppColors.grey3,fontSize: Dimensions.fontSizeFourteen),
                  underline: SizedBox(),
                  isExpanded: true,
                  value: valueChoose,
                  onChanged: (newValue){
                    setState(() {
                      valueChoose=newValue as String;
                    });
                  },
                  items: districtItem.map((valueItem){
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem),);
                  }).toList(),
                ),
              ),
              SizedBox(height: 20,),
              RichText(
                text: TextSpan(
                  text: 'Area/District ',
                  style: jostMedium.copyWith(
                      fontSize: Dimensions.fontSizeFifteen,
                      color: AppColors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: '*',
                      style: jostMedium.copyWith(
                          fontSize: Dimensions.fontSizeFifteen,
                          color: AppColors.primaryClr),
                    )
                  ],
                ),
              ),
              SizedBox(height: 12,),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.grey2.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(5)
                ),
                child: DropdownButton(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  dropdownColor: AppColors.white,
                  hint: Text("Area/District",style: TextStyle(color: AppColors.grey3),),
                  icon: Icon(Icons.arrow_drop_down,color: AppColors.grey3,size: 30,),
                  style: TextStyle(color: AppColors.grey3,fontSize: Dimensions.fontSizeFourteen),
                  underline: SizedBox(),
                  isExpanded: true,
                  value: valueChoose,
                  onChanged: (newValue){
                    setState(() {
                      valueChoose=newValue as String;
                    });
                  },
                  items: areaItem.map((valueItem){
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem),);
                  }).toList(),
                ),
              ),
              SizedBox(height: 20,),
              RichText(
                text: TextSpan(
                  text: 'Full Address ',
                  style: jostMedium.copyWith(
                      fontSize: Dimensions.fontSizeFifteen,
                      color: AppColors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: '*',
                      style: jostMedium.copyWith(
                          fontSize: Dimensions.fontSizeFifteen,
                          color: AppColors.primaryClr),
                    )
                  ],
                ),
              ),
              SizedBox(height: 12,),
              TextFormField(
                  style: TextStyle(color: AppColors.grey3),
                  textInputAction: TextInputAction.next,
                  controller: fulladdressController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: AppColors.grey2.withOpacity(0.2),
                    hintText: "Full Address",
                    hintStyle: TextStyle(color: AppColors.grey3,fontSize: Dimensions.fontSizeFourteen),
                  )),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                child: MaterialButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SelectAddressPage()));
                },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),color: AppColors.primaryClr,child: Text("Save",style: jostMedium.copyWith(color: AppColors.white,fontSize: Dimensions.fontSizeSixteen),),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
