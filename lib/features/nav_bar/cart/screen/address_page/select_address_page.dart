import 'package:flutter/material.dart';
import 'package:two_wheelers_bd/features/nav_bar/cart/screen/checkout_page/checkout_page.dart';
import 'package:two_wheelers_bd/features/nav_bar/cart/screen/checkout_page/checkout_with_address_page.dart';
import 'package:two_wheelers_bd/features/nav_bar/cart/screen/address_page/edit_address_page.dart';

import '../../../../../utils/colors.dart';
import '../../../../../utils/dimensions.dart';
import '../../../../../utils/styles.dart';

class SelectAddressPage extends StatefulWidget {
  const SelectAddressPage({super.key});

  @override
  State<SelectAddressPage> createState() => _SelectAddressPageState();
}

class _SelectAddressPageState extends State<SelectAddressPage> {
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
        title: Text("Select Address",
            style: jostSemiBold.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: Dimensions.fontSizeEighteen)),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: MaterialButton(onPressed: (){
              //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SelectAddressPage()));
            },minWidth:6,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),side: BorderSide(width: 1,color: AppColors.primaryClr)),child: Text("Add",style: jostMedium.copyWith(color: AppColors.primaryClr,fontSize: Dimensions.fontSizeSixteen),),),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: GestureDetector(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CheckoutWithAddressPage()));},
          child: Container(
            padding: EdgeInsets.all(18),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1.5,color: AppColors.primaryClr)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MaterialButton(onPressed: (){
                            //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SelectAddressPage()));
                          },minWidth:6,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),side: BorderSide(width: 1,color: AppColors.primaryClr)),child: Text("Home",style: jostMedium.copyWith(color: AppColors.primaryClr,fontSize: Dimensions.fontSizeSixteen),),),
                          TextButton(onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EditAddressPage()));
                          }, child: Text("Edit",style: jostMedium.copyWith(color: AppColors.grey3,fontSize: Dimensions.fontSizeSixteen),))
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("Anika Tabasum",style: jostSemiBold.copyWith(fontSize: Dimensions.fontSizeTwenty),),
                      SizedBox(height: 10,),
                      Text("Phone Number: 0123456789",style: jostRegular.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                      SizedBox(height: 8,),
                      Text("E-mail: xyz@gmail.com",style: jostRegular.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                      SizedBox(height: 8,),
                      Text("Area/District: Middle Badda",style: jostRegular.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                      SizedBox(height: 8,),
                      Text("Address: Mohaimid medical center, Madani Ave, Dhaka 1212",style: jostRegular.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1,color: AppColors.grey2)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MaterialButton(onPressed: (){
                            //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SelectAddressPage()));
                          },minWidth:6,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),side: BorderSide(width: 1,color: AppColors.primaryClr)),child: Text("Work",style: jostMedium.copyWith(color: AppColors.primaryClr,fontSize: Dimensions.fontSizeSixteen),),),
                          TextButton(onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EditAddressPage()));
                          }, child: Text("Edit",style: jostMedium.copyWith(color: AppColors.grey3,fontSize: Dimensions.fontSizeSixteen),))
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("Anika Tabasum",style: jostSemiBold.copyWith(fontSize: Dimensions.fontSizeTwenty),),
                      SizedBox(height: 10,),
                      Text("Phone Number: 0123456789",style: jostRegular.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                      SizedBox(height: 8,),
                      Text("E-mail: xyz@gmail.com",style: jostRegular.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                      SizedBox(height: 8,),
                      Text("Area/District: Middle Badda",style: jostRegular.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                      SizedBox(height: 8,),
                      Text("Address: Mohaimid medical center, Madani Ave, Dhaka 1212",style: jostRegular.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
