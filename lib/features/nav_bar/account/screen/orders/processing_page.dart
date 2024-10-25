import 'package:flutter/material.dart';

import '../../../../../utils/colors.dart';
import '../../../../../utils/dimensions.dart';
import '../../../../../utils/styles.dart';
import 'order_details_page.dart';
import 'tracking_page.dart';

class ProcessingPage extends StatefulWidget {
  const ProcessingPage({super.key});

  @override
  State<ProcessingPage> createState() => _ProcessingPageState();
}

class _ProcessingPageState extends State<ProcessingPage> {
  TextEditingController noteController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: AppColors.grey3.withOpacity(0.2)),
                  color: AppColors.grey2.withOpacity(0.3)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'ORDER ID:',
                          style: jostMedium.copyWith(
                              fontSize: Dimensions.fontSizeSixteen,
                              color: AppColors.grey3.withOpacity(0.6)),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' #VXD69569',
                              style: jostSemiBold.copyWith(
                                  fontSize: Dimensions.fontSizeSixteen,
                                  color: AppColors.black),
                            )
                          ],
                        ),
                      ),
                      Text("29 March, 2023",style: jostMedium.copyWith(
                          fontSize: Dimensions.fontSizeSixteen,
                          color: AppColors.grey3.withOpacity(0.6)))
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      Text("ORDER STATUS:",style: jostMedium.copyWith(
                          fontSize: Dimensions.fontSizeSixteen,
                          color: AppColors.grey3.withOpacity(0.6))),
                      TextButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OrderDetailsPage()));
                      }, child: Text("PROCESSING",style: jostSemiBold.copyWith(
                          fontSize: Dimensions.fontSizeSixteen,
                          color: AppColors.orange)))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(5)),
                                    title: Text(
                                      "Cancel order",
                                      textAlign: TextAlign.center,
                                      style: jostSemiBold.copyWith(
                                          color: AppColors.black,
                                          fontSize: Dimensions
                                              .fontSizeTwenty),
                                    ),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Are you sure you want to cancel the order?",
                                          style: jostMedium.copyWith(
                                              color: AppColors.grey3.withOpacity(0.6),
                                              fontSize: Dimensions
                                                  .fontSizeSixteen),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            text: 'Cancellation Reason',
                                            style: jostMedium.copyWith(
                                                fontSize: Dimensions.fontSizeEighteen,
                                                color: AppColors.black),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: ' *',
                                                style: jostSemiBold.copyWith(
                                                    fontSize: Dimensions.fontSizeEighteen,
                                                    color: AppColors.primaryClr),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        TextFormField(
                                            style: TextStyle(
                                                color:
                                                AppColors.grey3),
                                            textInputAction:
                                            TextInputAction.next,
                                            controller:
                                            noteController,
                                            decoration:
                                            InputDecoration(
                                              border:
                                              InputBorder.none,
                                              filled: true,
                                              fillColor: AppColors
                                                  .grey2
                                                  .withOpacity(0.2),
                                              hintText:
                                              "Write here...",
                                              hintStyle: TextStyle(
                                                  color:
                                                  AppColors.grey3,
                                                  fontSize: Dimensions
                                                      .fontSizeFourteen),
                                            )),
                                      ],
                                    ),
                                    actions: [
                                      Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.end,
                                          children: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context)
                                                    .pop();
                                              },
                                              child: Text(
                                                "Cancel",
                                                style: jostMedium.copyWith(
                                                    fontSize: Dimensions
                                                        .fontSizeSixteen),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            MaterialButton(
                                              color: AppColors
                                                  .primaryClr,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius
                                                      .circular(
                                                      10)),
                                              onPressed: () {},
                                              child: Text(
                                                "Cancel order",
                                                style: jostMedium.copyWith(
                                                    color:
                                                    Colors.white,
                                                    fontSize: Dimensions
                                                        .fontSizeSixteen),
                                              ),
                                            ),
                                          ])
                                    ]));
                          },
                          child: Text(
                            "Cancel Order",
                            style: jostMedium.copyWith(
                                fontSize:
                                Dimensions.fontSizeSixteen),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        MaterialButton(
                          color: AppColors.primaryClr,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(10)),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TrackingPage()));
                          },
                          child: Text(
                            "Track Order",
                            style: jostMedium.copyWith(
                                color: Colors.white,
                                fontSize:
                                Dimensions.fontSizeSixteen),
                          ),
                        ),
                      ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
