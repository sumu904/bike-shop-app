import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:two_wheelers_bd/common/custom_lists/accessories_list.dart';
import 'package:two_wheelers_bd/common/custom_lists/brand_list.dart';
import 'package:two_wheelers_bd/common/custom_lists/motorbike_list.dart';
import 'package:two_wheelers_bd/common/widgets/custom_button.dart';
import 'package:two_wheelers_bd/features/nav_bar/nav_bar_page.dart';
import 'package:two_wheelers_bd/utils/colors.dart';
import 'package:two_wheelers_bd/utils/dimensions.dart';
import 'package:two_wheelers_bd/utils/styles.dart';

import '../../../../common/custom_lists/blog_list.dart';
import '../../../../common/custom_lists/category_list.dart';
import '../../../../common/custom_lists/hot_deal_list.dart';
import '../../../../common/custom_lists/shop_list.dart';
import '../../../../common/custom_lists/slider_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSearch=false;
  String ? dropdownValue;
  int _current = 0;
  CarouselSliderController _controller = CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){},icon: Icon(Icons.menu),),
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor:AppColors.grey1,
              hintText: "Search here...",
              hintStyle:jostRegular.copyWith(
                color: AppColors.grey3,
                fontSize: Dimensions.fontSizeSixteen),
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search,size: 25,color: AppColors.grey3,),
            ),
          ),
        ),
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 10),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none_rounded,size: 30,)),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                padding: EdgeInsets.symmetric(horizontal: 12,),
                decoration: BoxDecoration(
                  color: AppColors.primaryClr.withOpacity(0.05),
                  border: Border.all(width: 1,color: AppColors.primaryClr),
                    borderRadius: BorderRadius.circular(5)
                ),
                child:Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Select Motor parts by",style: jostSemiBold.copyWith(
                    color: AppColors.grey3,
                    fontSize: Dimensions.fontSizeSixteen),),
                        IconButton(onPressed: (){
                          setState(() {
                            isSearch=!isSearch;
                          });
                        }, icon: Icon(Icons.keyboard_arrow_down))
                      ],
                    ),
                    Visibility(
                      visible: isSearch,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 14),
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    color: AppColors.grey1,
                                    border: Border.all(width: 1,color: AppColors.grey3),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: dropdownValue,
                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                    hint: Text("Brand",style: jostRegular.copyWith(
                                        color: AppColors.grey3,
                                        fontSize: Dimensions.fontSizeSixteen),),

                                    icon:   Icon(Icons.keyboard_arrow_down),
                                    elevation: 16,
                                    style:   TextStyle(color: Colors.deepPurple),
                                    focusColor: Colors.red,

                                    onChanged: (String? value) {
                                      // This is called when the user selects an item.
                                      setState(() {
                                        dropdownValue = value!;
                                      });
                                    },
                                    items: list.map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                    color: AppColors.grey1,
                                    border: Border.all(width: 1,color: AppColors.grey3),
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: dropdownValue,

                                    padding: EdgeInsets.symmetric(horizontal: 14),
                                    hint: Text("Year",style: jostRegular.copyWith(
                                        color: AppColors.grey3,
                                        fontSize: Dimensions.fontSizeSixteen),),

                                    icon:   Icon(Icons.keyboard_arrow_down),
                                    elevation: 16,
                                    style:   TextStyle(color: Colors.deepPurple),
                                    focusColor: Colors.red,

                                    onChanged: (String? value) {
                                      // This is called when the user selects an item.
                                      setState(() {
                                        dropdownValue = value!;
                                      });
                                    },
                                    items: list.map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                    color: AppColors.grey1,
                                    border: Border.all(width: 1,color: AppColors.grey3),
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: dropdownValue,

                                    padding: EdgeInsets.symmetric(horizontal: 14),
                                    hint: Text("Model",style: jostRegular.copyWith(
                                        color: AppColors.grey3,
                                        fontSize: Dimensions.fontSizeSixteen),),

                                    icon:   Icon(Icons.keyboard_arrow_down),
                                    elevation: 16,
                                    style:   TextStyle(color: Colors.deepPurple),
                                    focusColor: Colors.red,

                                    onChanged: (String? value) {
                                      // This is called when the user selects an item.
                                      setState(() {
                                        dropdownValue = value!;
                                      });
                                    },
                                    items: list.map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),

                            ],
                          ),
                          MaterialButton(onPressed: (){},
                            child: Text("Search",style: jostRegular.copyWith(color: AppColors.white),),
                            color: AppColors.primaryClr.withOpacity(0.8),
                          ),
                          SizedBox(height: 8,)
                        ],
                      ),
                    ),
                  ],
                )
              ),
              Container(
                child: Stack(
                  children: [
                    CarouselSlider(
                        options: CarouselOptions(
                          height: 150,
                          aspectRatio: 16/9,
                          viewportFraction: 1,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration: Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.3,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          },
                        ),
                      items: sliderList
                          .map((item) => Container(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(item, fit: BoxFit.fill, width: 1000,height: 180,)),
                      ))
                          .toList(),
              ),
                    Positioned(
                      bottom: 12,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: sliderList.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => _controller.animateToPage(entry.key),
                            child: Container(
                              width: 10.0,
                              height: 10.0,
                              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (Theme.of(context).brightness == Brightness.dark
                                      ? AppColors.black
                                      : AppColors.primaryClr)
                                      .withOpacity(_current == entry.key ? 1 : 0.4)),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 230,
                decoration: BoxDecoration(
                  color: AppColors.offWhite,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Today's Deal",style: jostSemiBold.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                      subtitle: Text("Grab your deal now",style: jostRegular.copyWith(fontSize: Dimensions.fontSizeFourteen,color: AppColors.grey3),),
                      trailing: CustomButton(),
                    ),
                    SizedBox(
                      height: 145,
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: dealList.length,
                          itemBuilder: (context,index){
                            return Padding(
                              padding:   EdgeInsets.only(left:10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Stack(
                                  children: [
                                    Image.asset("${dealList[index].imageUrl}",width: size.width*.7,fit: BoxFit.fill, )
                                    ,
                                    Positioned(
                                      bottom: 6,
                                      left: 6,
                                      child: Text("${dealList[index].title}",style: jostMedium.copyWith(color: AppColors.white,
                                          fontSize: Dimensions.fontSizeFourteen
                                      )),),
                                    Positioned(child: ClipPath(
                                      clipper: BottomLeftClipper(clipSize: 30),
                                      child: Container(
                                        width: 50,
                                        height: 70,
                                        color: Colors.red,
                                        child: Column(
                                         // mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 5,),
                                            CircleAvatar(
                                              backgroundImage: AssetImage("${dealList[index].shopLogo}"
                                              ),
                                              maxRadius: 11,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(2),
                                              child: Text("${dealList[index].shopName}",maxLines:2,textAlign:TextAlign.center,style: jostRegular.copyWith(fontSize: Dimensions.fontSizeTen,color: AppColors.white),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                      top:0 ,
                                      right: 8,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 340,
                decoration: BoxDecoration(
                  color: AppColors.offWhite,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Our Categories",style: jostSemiBold.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                      subtitle: Text("Recommended for you",style:jostRegular.copyWith(fontSize: Dimensions.fontSizeFourteen,color: AppColors.grey3),),
                      trailing: CustomButton(),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 10,right: 10),
                      child: SizedBox(
                        height: 250,
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: dealList.length,
                            itemBuilder: (context,index){
                              return GridView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: categoryList.length,
                                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 0,
                                      mainAxisSpacing: 5,
                                      childAspectRatio: 1.3
                                  ) ,
                                  itemBuilder: (context,index){
                                    return Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: AppColors.white,
                                              shape: BoxShape.circle,
                                              border: Border.all(color:AppColors.grey2,width: 1)
                                          ),
                                          padding: EdgeInsets.all(16),
                                          height: 90,width: 90,
                                          child: Image.asset("${categoryList[index].photo}",fit: BoxFit.cover,),
                                        ),
                                        Text("${categoryList[index].name}",style: jostMedium.copyWith(color: AppColors.black,fontSize: Dimensions.fontSizeFourteen),)
                                      ],
                                    );
                                  });
                            }),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 290,
                decoration: BoxDecoration(
                  color: AppColors.offWhite,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Our Brands",style: jostSemiBold.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                      subtitle: Text("Recommended for you",style:jostRegular.copyWith(fontSize: Dimensions.fontSizeFourteen,color: AppColors.grey3),),
                      trailing: CustomButton(),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 10,right: 10),
                      child: SizedBox(
                        height: 190,
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: dealList.length,
                            itemBuilder: (context,index){
                              return GridView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: brandList.length,
                                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 8,
                                      mainAxisSpacing: 8,
                                      childAspectRatio: 0.8
                                  ) ,
                                  itemBuilder: (context,index){
                                    return Container(
                                      height: 50,width: 170,
                                      decoration: BoxDecoration(
                                          color: AppColors.white,
                                          border: Border.all(color:AppColors.grey2,width: 1),
                                        borderRadius: BorderRadius.circular(8)
                                      ),
                                      padding: EdgeInsets.all(14),
                                      child: Image.asset("${brandList[index].imageUrl}",fit: BoxFit.fill,),
                                    );
                                  });
                            }),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 305,
                decoration: BoxDecoration(
                  color: AppColors.offWhite,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Our Shops",style: jostSemiBold.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                      subtitle: Text("Recommended for you",style:jostRegular.copyWith(fontSize: Dimensions.fontSizeFourteen,color: AppColors.grey3),),
                      trailing: CustomButton()
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 10,right: 10),
                      child: SizedBox(
                          height: 222,
                          child:ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: shopList.length,
                              shrinkWrap: true,
                              itemBuilder: (context,index){
                                return  Container(
                                  margin: EdgeInsets.only(right: 12),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(color: AppColors.grey2)
                                  ),
                                  width: size.width*0.36,
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight:Radius.circular(8)),
                                          child: Image.asset("${shopList[index].image}",height: 130,width:double.infinity,fit: BoxFit.cover,)),
                                      SizedBox(height: 5,),
                                      Text("${shopList[index].title}",maxLines: 2,textAlign: TextAlign.center,style:jostSemiBold.copyWith(fontSize: Dimensions.fontSizeFourteen,color: AppColors.grey3),),
                                      Spacer(),
                                      PannableRatingBar(
                                        rate: shopList[index].rating!.toDouble(),
                                        items: List.generate(5, (index) =>
                                        const RatingWidget(
                                          selectedColor: Colors.yellow,
                                          unSelectedColor: Colors.grey,
                                          child: Icon(
                                            Icons.star,
                                            size: 18,
                                          ),
                                        )),
                                        onChanged: (value) { // the rating value is updated on tap or drag.
                                          setState(() {
                                            shopList[index].rating = value.toInt();
                                          });
                                        },
                                      ),
                                      Text("${shopList[index].address}",style:jostMedium.copyWith(fontSize: Dimensions.fontSizeFourteen,color: AppColors.grey3),),
                                      SizedBox(height: 8,)
                                    ],
                                  ),
                                );
                              })
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 430,
                decoration: BoxDecoration(
                  color: AppColors.offWhite,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    ListTile(
                        title: Text("Our Blogs",style: jostSemiBold.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                        subtitle: Text("Recommended for you",style:jostRegular.copyWith(fontSize: Dimensions.fontSizeFourteen,color: AppColors.grey3),),
                        trailing: CustomButton()
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 10,right: 10),
                      child: SizedBox(
                          height: 340,
                          child:ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: blogList.length,
                              shrinkWrap: true,
                              itemBuilder: (context,index){
                                return  Container(
                                  margin: EdgeInsets.only(right: 12),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(color: AppColors.grey2)
                                  ),
                                  width: size.width*0.52,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight:Radius.circular(8)),
                                          child: Image.asset("${blogList[index].image}",height: 125,width:double.infinity,fit: BoxFit.cover,)),
                                      SizedBox(height: 5,),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Icon(Icons.person_2_outlined,size: 22,color: AppColors.primaryClr,),
                                            SizedBox(width: 5,),
                                            Text("By: ${blogList[index].name}",style:jostMedium.copyWith(fontSize: Dimensions.fontSizeSixteen,color: AppColors.grey3),),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 8,right: 8,top: 2),
                                        child: Text("${blogList[index].title}",maxLines: 2,style:jostSemiBold.copyWith(fontWeight: FontWeight.w700,fontSize: Dimensions.fontSizeSixteen,color: AppColors.grey3),),
                                      ),
                                      SizedBox(height: 15,),
                                      Divider(indent: 8,endIndent: 8,color: AppColors.grey2,),
                                      Padding(
                                        padding: EdgeInsets.only(left: 8,right: 8,top: 8),
                                        child: Row(
                                          children: [
                                            Icon(Icons.calendar_today_outlined,size: 22,color: AppColors.primaryClr,),
                                            SizedBox(width: 8,),
                                            Text("${blogList[index].date}",style:jostMedium.copyWith(fontSize: Dimensions.fontSizeEighteen,color: AppColors.grey3),),
                                          ],
                                        ),
                                      ),
                                      TextButton(onPressed: (){}, child: Text("Read More",style:jostMedium.copyWith(fontSize: Dimensions.fontSizeEighteen,color: AppColors.primaryClr),))
                                    ],
                                  ),
                                );
                              })
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 300,
                decoration: BoxDecoration(
                  color: AppColors.offWhite,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    ListTile(
                        title: Text("Motorbike",style: jostSemiBold.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                        subtitle: Text("Products You May Like",style:jostRegular.copyWith(fontSize: Dimensions.fontSizeFourteen,color: AppColors.grey3),),
                        trailing: CustomButton()
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 10,right: 10),
                      child: SizedBox(
                          height: 210,
                          child:ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: motorbikeList.length,
                              shrinkWrap: true,
                              itemBuilder: (context,index){
                                return  Container(
                                  margin: EdgeInsets.only(right: 12),
                                  padding: EdgeInsets.only(left: 8,top: 15,right: 8),
                                  decoration: BoxDecoration(
                                    color: AppColors.grey1,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(color: AppColors.grey2)
                                  ),
                                  width: size.width*0.4,
                                  child: Column(
                                    children: [
                                      Image.asset("${motorbikeList[index].image}",height: 95,width: 95,),
                                      SizedBox(height: 5,),
                                      Text("${motorbikeList[index].name}",maxLines: 2,textAlign: TextAlign.center,style:jostSemiBold.copyWith(fontWeight: FontWeight.w700,fontSize: Dimensions.fontSizeEighteen,color: AppColors.grey3),),
                                      SizedBox(height: 10,),
                                      Text("${motorbikeList[index].description}",style:jostMedium.copyWith(fontSize: Dimensions.fontSizeSixteen,color: AppColors.grey3),),
                                    ],
                                  ),
                                );
                              })
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 310,
                decoration: BoxDecoration(
                  color: AppColors.offWhite,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    ListTile(
                        title: Text("Accessories",style: jostSemiBold.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                        subtitle: Text("Products You May Like",style:jostRegular.copyWith(fontSize: Dimensions.fontSizeFourteen,color: AppColors.grey3),),
                        trailing: CustomButton()
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 10,right: 10),
                      child: SizedBox(
                          height: 235,
                          child:ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: accessoriesList.length,
                              shrinkWrap: true,
                              itemBuilder: (context,index){
                                return  Container(
                                  margin: EdgeInsets.only(right: 12),
                                  padding: EdgeInsets.only(top: 15,left: 10,right: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(color: AppColors.grey2)
                                  ),
                                  width: size.width*0.36,
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight:Radius.circular(8)),
                                          child: Image.asset("${accessoriesList[index].image}",height: 100,width:100,)),
                                      SizedBox(height: 5,),
                                      Expanded(child: Text("${accessoriesList[index].title}",maxLines:2,overflow: TextOverflow.ellipsis,textAlign: TextAlign.center,style:jostSemiBold.copyWith(fontSize: Dimensions.fontSizeFourteen,color: AppColors.grey3),)),
                                      SizedBox(height: 5,),
                                      PannableRatingBar(
                                        rate: accessoriesList[index].rating!.toDouble(),
                                        items: List.generate(5, (index) =>
                                        const RatingWidget(
                                          selectedColor: Colors.yellow,
                                          unSelectedColor: Colors.grey,
                                          child: Icon(
                                            Icons.star,
                                            size: 18,
                                          ),
                                        )),
                                        onChanged: (value) { // the rating value is updated on tap or drag.
                                          setState(() {
                                            accessoriesList[index].rating = value.toInt();
                                          });
                                        },
                                      ),
                                      SizedBox(height: 5,),
                                      Text("${accessoriesList[index].price}",style:jostSemiBold.copyWith(fontWeight: FontWeight.w700,fontSize: Dimensions.fontSizeSixteen,color: AppColors.grey3),),
                                      SizedBox(height: 10,)
                                    ],
                                  ),
                                );
                              })
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Column(
                children: [
                  ListTile(
                      title: Text("All Products",style: jostSemiBold.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                      subtitle: Text("Based on your activity",style:jostRegular.copyWith(fontSize: Dimensions.fontSizeFourteen,color: AppColors.grey3),),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 10,right: 10),
                    child: SizedBox(
                        height: 820,
                        child:GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 1.5,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10
                          ),
                            scrollDirection: Axis.horizontal,
                            itemCount: accessoriesList.length,
                            shrinkWrap: true,
                            itemBuilder: (context,index){
                              return  Container(
                                padding: EdgeInsets.only(top: 20,left: 10,right: 10),
                                  decoration: BoxDecoration(
                                    color: AppColors.offWhite,
                                      border: Border.all(width: 1,color: AppColors.grey2),
                                      borderRadius: BorderRadius.circular(8)),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight:Radius.circular(8)),
                                        child: Image.asset("${accessoriesList[index].image}",height: 100,width:100,)),
                                    SizedBox(height: 20,),
                                    Expanded(child: Text("${accessoriesList[index].title}",maxLines: 2,overflow:TextOverflow.ellipsis,textAlign: TextAlign.center,style:jostSemiBold.copyWith(fontSize: Dimensions.fontSizeFourteen,color: AppColors.grey3),)),
                                    SizedBox(height: 5,),
                                    PannableRatingBar(
                                      rate: accessoriesList[index].rating!.toDouble(),
                                      items: List.generate(5, (index) =>
                                      const RatingWidget(
                                        selectedColor: Colors.yellow,
                                        unSelectedColor: Colors.grey,
                                        child: Icon(
                                          Icons.star,
                                          size: 18,
                                        ),
                                      )),
                                      onChanged: (value) { // the rating value is updated on tap or drag.
                                        setState(() {
                                          accessoriesList[index].rating = value.toInt();
                                        });
                                      },
                                    ),
                                    SizedBox(height: 10,),
                                    Text("${accessoriesList[index].price}",style:jostSemiBold.copyWith(fontWeight: FontWeight.w700,fontSize: Dimensions.fontSizeSixteen,color: AppColors.grey3),),
                                    SizedBox(height: 10,)
                                  ],
                                ),
                              );
                            })
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class BottomLeftClipper extends CustomClipper<Path> {
  final double clipSize;

  BottomLeftClipper({required this.clipSize});

  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0,size.height -15);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width , 0);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return clipSize != (oldClipper as BottomLeftClipper).clipSize;
  }
}
const List<String> list = <String>['Brand', 'Year', 'Model',];
