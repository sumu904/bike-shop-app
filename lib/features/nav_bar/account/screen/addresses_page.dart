import 'package:flutter/material.dart';
import 'package:two_wheelers_bd/features/nav_bar/cart/screen/address_page/add_new_address_page.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/dimensions.dart';
import '../../../../utils/styles.dart';

class AddressesPage extends StatefulWidget {
  const AddressesPage({super.key});

  @override
  State<AddressesPage> createState() => _AddressesPageState();
}

class _AddressesPageState extends State<AddressesPage> {
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
        title: Text("Addresses",
            style: jostSemiBold.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: Dimensions.fontSizeEighteen)),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: MaterialButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddNewAddressPage()));
            },minWidth:6,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),side: BorderSide(width: 1,color: AppColors.primaryClr)),child: Text("Add",style: jostMedium.copyWith(color: AppColors.primaryClr,fontSize: Dimensions.fontSizeSixteen),),),
          ),
        ],
      ),
      body: Align(
        alignment: Alignment.center,
          child: Text("No address available at the moment.",style: jostMedium.copyWith(fontSize: Dimensions.fontSizeEighteen,color: AppColors.grey3),)),
    );
  }
}
