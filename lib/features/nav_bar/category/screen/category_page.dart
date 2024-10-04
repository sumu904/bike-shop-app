
import 'package:flutter/material.dart';
import 'package:two_wheelers_bd/utils/colors.dart';
import 'package:two_wheelers_bd/utils/dimensions.dart';
import 'package:two_wheelers_bd/utils/styles.dart';
import '../../../../common/custom_lists/category_list.dart';


class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {

    var size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back),),
        title: Text("Our Categories",style: jostSemiBold.copyWith(fontWeight: FontWeight.w700,fontSize: Dimensions.fontSizeEighteen)),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        child:Row(
          children: [
            Container(
              width: size.width *0.3,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: categoryList.length,
                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        setState(() {
                          selectedIndex=index;
                        });
                      },
                      child: Container(
                        height: 128,
                        color:selectedIndex==index? AppColors.white : AppColors.grey1,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: selectedIndex==index? AppColors.primaryClr :AppColors.grey3,width: 1)
                              ),
                              padding: EdgeInsets.all(16),
                              margin: EdgeInsets.all(7),
                              height: 85,width: 85,
                              child: Image.asset("${categoryList[index].photo}"),
                            ),
                            SizedBox(height: 2,),
                            Text("${categoryList[index].name}",style: jostMedium.copyWith(color: selectedIndex==index? AppColors.primaryClr :AppColors.grey3,fontSize: Dimensions.fontSizeFifteen)
                            )],
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              width: size.width *0.67,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: categoryList[selectedIndex].subCategories!.length,
                  itemBuilder: (context,index){
                    return  Container(
                      padding: EdgeInsets.only(left: 10,right: 10),
                      height: size.height*0.07,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.asset("${categoryList[selectedIndex].subCategories![index].photo}",
                                  height: 20,width: 20,
                                ),
                                SizedBox(width: 10,),
                                Text("${categoryList[selectedIndex].subCategories![index].name}",style: jostMedium.copyWith(fontSize: Dimensions.fontSizeSixteen),)
                              ],
                            ),
                          ),
                          Divider()
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ) ,
      ),
    );
  }
}

