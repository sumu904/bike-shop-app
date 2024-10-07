import 'package:flutter/material.dart';

import '../../../../../utils/colors.dart';
import '../../../../../utils/dimensions.dart';
import '../../../../../utils/styles.dart';

class OrderDetailsPage extends StatefulWidget {
  const OrderDetailsPage({super.key});

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  TextEditingController noteController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: ()
          {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("Orders Details",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("ORDER DATE: 29 March, 2023",style: jostRegular.copyWith(fontSize: Dimensions.fontSizeSixteen,color: AppColors.grey3.withOpacity(0.6)),),
                  MaterialButton(
                    color: AppColors.primaryClr,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(10)),
                    onPressed: () {},
                    child: Text(
                      "Track Order",
                      style: jostMedium.copyWith(
                          color: Colors.white,
                          fontSize:
                          Dimensions.fontSizeSixteen),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'ORDER FROM:',
                      style: jostMedium.copyWith(
                          fontSize: Dimensions.fontSizeSixteen,
                          color: AppColors.grey3.withOpacity(0.6)),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Bike Parts Center',
                          style: jostSemiBold.copyWith(
                              fontSize: Dimensions.fontSizeSixteen,
                              color: AppColors.black),
                        )
                      ],
                    ),
                  ),
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
                      "Cancel order",
                      style: jostMedium.copyWith(
                          fontSize: Dimensions
                              .fontSizeSixteen),
                    ),
                  ),
                ],
              ),
              RichText(
                text: TextSpan(
                  text: 'ORDER ID:',
                  style: jostMedium.copyWith(
                      fontSize: Dimensions.fontSizeSixteen,
                      color: AppColors.grey3.withOpacity(0.6)),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' #VXD695697863420',
                      style: jostSemiBold.copyWith(
                          fontSize: Dimensions.fontSizeSixteen,
                          color: AppColors.black),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Text("ORDER STATUS:",style: jostMedium.copyWith(
                      fontSize: Dimensions.fontSizeSixteen,
                      color: AppColors.grey3.withOpacity(0.6))),
                  TextButton(onPressed: (){
                    //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OrderDetailsPage()));
                  }, child: Text("PROCESSING",style: jostSemiBold.copyWith(
                      fontSize: Dimensions.fontSizeSixteen,
                      color: AppColors.orange)))
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.grey2.withOpacity(0.5))
                ),
                child: Column(
                  children: [
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 10,
                            child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.grey2.withOpacity(0.3),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(8)),
                                  border: Border.all(color: AppColors.grey2.withOpacity(0.5))
                                ),
                                padding: EdgeInsets.only(left: 20,bottom: 10,top: 10),
                                child: Text("Product",style: jostMedium.copyWith(color: AppColors.grey3,fontSize: Dimensions.fontSizeEighteen))),
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.grey2.withOpacity(0.3),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(8)),
                                    border: Border.all(color: AppColors.grey2.withOpacity(0.5))
                                ),
                                padding: EdgeInsets.only(left: 20,bottom: 10,top: 10),
                                child: Text("Price",style: jostMedium.copyWith(color: AppColors.grey3,fontSize: Dimensions.fontSizeEighteen))),
                          ),
                        ],
                      ),
                    ),
                    //drawer done
                    //again
                   IntrinsicHeight(
                     child: Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Expanded(
                           flex: 10,
                           child: Container(
                             padding: EdgeInsets.all(12),
                             child:  Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Row(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Container(
                                         padding: EdgeInsets.all(10),
                                         decoration: BoxDecoration(
                                             color: AppColors.grey2.withOpacity(0.5),
                                             borderRadius: BorderRadius.circular(5)
                                         ),
                                         child: Image.asset("assets/images/image 23.png",height: 55,width: 40,)),
                                     SizedBox(width: 10,),
                                     Expanded(child: Text("Paket Aksesoris Resmi New Honda CB 150R StreetFire – Red",maxLines: 5,style:jostSemiBold.copyWith(fontSize: Dimensions.fontSizeFifteen),)),
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                 Text("Brand: Honda, Color: Red, Size: 20M",style:jostRegular.copyWith(fontSize: Dimensions.fontSizeFourteen,color: AppColors.grey3),),
                                 SizedBox(height: 12,),
                                 RichText(
                                   text: TextSpan(
                                     text: 'Quantity:',
                                     style: jostRegular.copyWith(
                                         fontSize: Dimensions.fontSizeSixteen,
                                         color: AppColors.black),
                                     children: <TextSpan>[
                                       TextSpan(
                                         text: ' 1x',
                                         style: jostSemiBold.copyWith(
                                             fontSize: Dimensions.fontSizeSixteen,
                                             color: AppColors.black),
                                       )
                                     ],
                                   ),
                                 ),
                               ],
                             ),),
                         ),
                         Container(width: 1,color: AppColors.grey2.withOpacity(0.5)),
                         Expanded(
                           flex: 5,
                           child: Container(
                               padding: EdgeInsets.all(12),
                               child: Text("BDT 2,175",style: jostMedium.copyWith(color: AppColors.grey3,fontSize: Dimensions.fontSizeSixteen))),
                         ),
                       ],
                     ),
                   ),
                    Container(height: 1,color: AppColors.grey2.withOpacity(0.5)),
                    IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 10,
                            child: Container(
                                padding: EdgeInsets.all(12),
                                child:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                color: AppColors.grey2.withOpacity(0.5),
                                                borderRadius: BorderRadius.circular(5)
                                            ),
                                            child: Image.asset("assets/images/image 24.png",height: 55,width: 40,)),
                                        SizedBox(width: 10,),
                                        Expanded(child: Text("Rubber Step Floor New Vario 125 K60R & 150 eSP K59J",maxLines: 5,style:jostSemiBold.copyWith(fontSize: Dimensions.fontSizeFifteen),)),
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Text("Brand: Honda, Color: Red, Size: 20M",style:jostRegular.copyWith(fontSize: Dimensions.fontSizeFourteen,color: AppColors.grey3),),
                                    SizedBox(height: 12,),
                                    RichText(
                                      text: TextSpan(
                                        text: 'Quantity:',
                                        style: jostRegular.copyWith(
                                            fontSize: Dimensions.fontSizeSixteen,
                                            color: AppColors.black),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: ' 1x',
                                            style: jostSemiBold.copyWith(
                                                fontSize: Dimensions.fontSizeSixteen,
                                                color: AppColors.black),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),),
                          ),
                          Container(width: 1,color: AppColors.grey2.withOpacity(0.5)),
                          Expanded(
                            flex: 5,
                            child: Container(
                                padding: EdgeInsets.all(12),
                                child: Text("BDT 5,990",style: jostMedium.copyWith(color: AppColors.grey3,fontSize: Dimensions.fontSizeSixteen))),
                          ),
                        ],
                      ),
                    ),
                    Container(height: 1,color:AppColors.grey2.withOpacity(0.5)),
                    IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 10,
                            child: Container(
                              padding: EdgeInsets.all(12),
                              child:  Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            //border: Border.all(width: 1,color: AppColors.grey2),
                                              color: AppColors.grey2.withOpacity(0.5),
                                              borderRadius: BorderRadius.circular(5)
                                          ),
                                          child: Image.asset("assets/images/image 21.png",height: 55,width: 40,)),
                                      SizedBox(width: 10,),
                                      Expanded(child: Text("Visor New Vario 125 & 150 eSP K59J",maxLines: 5,style:jostSemiBold.copyWith(fontSize: Dimensions.fontSizeFifteen),)),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Text("Brand: Honda, Color: Red, Size: 20M",style:jostRegular.copyWith(fontSize: Dimensions.fontSizeFourteen,color: AppColors.grey3),),
                                  SizedBox(height: 12,),
                                  RichText(
                                    text: TextSpan(
                                      text: 'Quantity:',
                                      style: jostRegular.copyWith(
                                          fontSize: Dimensions.fontSizeSixteen,
                                          color: AppColors.black),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: ' 1x',
                                          style: jostSemiBold.copyWith(
                                              fontSize: Dimensions.fontSizeSixteen,
                                              color: AppColors.black),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),),
                          ),
                          Container(width: 1,color: AppColors.grey2.withOpacity(0.5)),
                          Expanded(
                            flex: 5,
                            child: Container(
                                padding: EdgeInsets.all(12),
                                child: Text("BDT 5,990",style: jostMedium.copyWith(color: AppColors.grey3,fontSize: Dimensions.fontSizeSixteen))),
                          ),
                        ],
                      ),
                    ),
                    Container(height: 1,color: AppColors.grey2.withOpacity(0.5)),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 10,
                            child: Container(
                                padding: EdgeInsets.all(12),
                                child: Text("Total Cost",style: jostMedium.copyWith(color: AppColors.grey3,fontSize: Dimensions.fontSizeSixteen))),
                          ),
                          Container(width: 1,color: AppColors.grey2.withOpacity(0.5)),
                          Expanded(
                            flex: 5,
                            child: Container(
                                padding: EdgeInsets.all(12),
                                child: Text("BDT 10,340",style: jostMedium.copyWith(color: AppColors.grey3,fontSize: Dimensions.fontSizeSixteen))),
                          ),
                        ],
                      ),
                    ),
                    Container(height: 1,color: AppColors.grey2.withOpacity(0.5)),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 10,
                            child: Container(
                                padding: EdgeInsets.all(12),
                                child: Text("Delivery Fee",style: jostMedium.copyWith(color: AppColors.grey3,fontSize: Dimensions.fontSizeSixteen))),
                          ),
                          Container(width: 1,color: AppColors.grey2.withOpacity(0.5)),
                          Expanded(
                            flex: 5,
                            child: Container(
                                padding: EdgeInsets.all(12),
                                child: Text("BDT 70",style: jostMedium.copyWith(color: AppColors.grey3,fontSize: Dimensions.fontSizeSixteen))),
                          ),
                        ],
                      ),
                    ),
                    Container(height: 1,color: AppColors.grey2.withOpacity(0.5)),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 10,
                            child: Container(
                                padding: EdgeInsets.all(12),
                                child: Text("Grand Total",style: jostSemiBold.copyWith(color: AppColors.grey3,fontSize: Dimensions.fontSizeSixteen))),
                          ),
                          Container(width: 1,color: AppColors.grey2.withOpacity(0.5)),
                          Expanded(
                            flex: 5,
                            child: Container(
                                padding: EdgeInsets.all(12),
                                child: Text("BDT 10,410",style: jostSemiBold.copyWith(color: AppColors.grey3,fontSize: Dimensions.fontSizeSixteen))),
                          ),
                        ],
                      ),
                    ),
                    Container(height: 1,color: AppColors.grey2.withOpacity(0.5)),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 10,
                            child: Container(
                                padding: EdgeInsets.all(12),
                                child: Text("Payment Method",style: jostSemiBold.copyWith(color: AppColors.grey3,fontSize: Dimensions.fontSizeSixteen))),
                          ),
                          Container(width: 1,color: AppColors.grey2.withOpacity(0.5)),
                          Expanded(
                            flex: 5,
                            child: Container(
                                padding: EdgeInsets.all(12),
                                child: Text("Cash On Delivery",style: jostSemiBold.copyWith(color: AppColors.grey3,fontSize: Dimensions.fontSizeSixteen))),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: AppColors.grey2.withOpacity(0.5))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Delivery Address",style: jostSemiBold.copyWith(fontSize: Dimensions.fontSizeTwenty),),
                    SizedBox(height: 15,),
                    RichText(
                      text: TextSpan(
                        text: 'Name:',
                        style: jostMedium.copyWith(
                            fontSize: Dimensions.fontSizeSixteen,
                            color: AppColors.grey3.withOpacity(0.6)),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' User Name',
                            style: jostMedium.copyWith(
                                fontSize: Dimensions.fontSizeSixteen,
                                color: AppColors.grey3.withOpacity(0.6)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    RichText(
                      text: TextSpan(
                        text: 'Phone:',
                        style: jostMedium.copyWith(
                            fontSize: Dimensions.fontSizeSixteen,
                            color: AppColors.grey3.withOpacity(0.6)),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' 0123456789',
                            style: jostMedium.copyWith(
                                fontSize: Dimensions.fontSizeSixteen,
                                color: AppColors.grey3.withOpacity(0.6)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 8,),
                    RichText(
                      text: TextSpan(
                        text: 'E-mail:',
                        style: jostMedium.copyWith(
                            fontSize: Dimensions.fontSizeSixteen,
                            color: AppColors.grey3.withOpacity(0.6)),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' xyz@gmail.com',
                            style: jostMedium.copyWith(
                                fontSize: Dimensions.fontSizeSixteen,
                                color: AppColors.grey3.withOpacity(0.6)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 8,),
                    RichText(
                      text: TextSpan(
                        text: 'Address:',
                        style: jostMedium.copyWith(
                            fontSize: Dimensions.fontSizeSixteen,
                            color: AppColors.grey3.withOpacity(0.6)),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Mohaimid medical center, Madani Ave, Dhaka 1212',
                            style: jostMedium.copyWith(
                                fontSize: Dimensions.fontSizeSixteen,
                                color: AppColors.grey3.withOpacity(0.6)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 12,right: 12,top: 12,bottom: 50),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: AppColors.grey2.withOpacity(0.5))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Order notes",style: jostSemiBold.copyWith(fontSize: Dimensions.fontSizeTwenty),),
                    SizedBox(height: 15,),
                    Text("No notes were written",style: jostMedium.copyWith(fontSize: Dimensions.fontSizeSixteen,color: AppColors.grey3.withOpacity(0.6)),),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
