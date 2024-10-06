import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/dimensions.dart';
import '../../../../utils/styles.dart';

class BikeInfoPage extends StatefulWidget {
  const BikeInfoPage({super.key});

  @override
  State<BikeInfoPage> createState() => _BikeInfoPageState();
}

class _BikeInfoPageState extends State<BikeInfoPage> {
  TextEditingController bikeNameController = TextEditingController();
  TextEditingController brandNameController = TextEditingController();
  TextEditingController modelNameController = TextEditingController();

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
          title: Text("Your Bike Info",
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
                      Text("Bike Name",
                          style: jostMedium.copyWith(
                              fontSize: Dimensions.fontSizeSixteen,
                              color: AppColors.black)),
                      SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                          style: TextStyle(
                              color: AppColors.grey3,
                              fontSize: Dimensions.fontSizeFifteen),
                          textInputAction: TextInputAction.next,
                          controller: bikeNameController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: AppColors.grey2.withOpacity(0.2),
                            hintText: "Bike Name",
                            hintStyle: TextStyle(
                                color: AppColors.grey3,
                                fontSize: Dimensions.fontSizeFifteen),
                          )),
                      SizedBox(
                        height: 25,
                      ),
                      Text("Brand Name",
                          style: jostMedium.copyWith(
                              fontSize: Dimensions.fontSizeSixteen,
                              color: AppColors.black)),
                      SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                          style: TextStyle(
                              color: AppColors.grey3,
                              fontSize: Dimensions.fontSizeFifteen),
                          textInputAction: TextInputAction.next,
                          controller: brandNameController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: AppColors.grey2.withOpacity(0.2),
                            hintText: "Brand Name",
                            hintStyle: TextStyle(
                                color: AppColors.grey3,
                                fontSize: Dimensions.fontSizeFifteen),
                          )),
                      SizedBox(
                        height: 25,
                      ),
                      Text("Model Number",
                          style: jostMedium.copyWith(
                              fontSize: Dimensions.fontSizeSixteen,
                              color: AppColors.black)),
                      SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                          style: TextStyle(
                              color: AppColors.grey3,
                              fontSize: Dimensions.fontSizeFifteen),
                          textInputAction: TextInputAction.next,
                          controller: modelNameController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: AppColors.grey2.withOpacity(0.2),
                            hintText: "Model Number",
                            hintStyle: TextStyle(
                                color: AppColors.grey3,
                                fontSize: Dimensions.fontSizeFifteen),
                          )),
                    ]))));
  }
}
