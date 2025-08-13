import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartproj/Controller/widgets/appColor/appColor.dart';
import 'package:smartproj/Controller/widgets/containerWidget/containerWidget.dart';
import 'package:smartproj/Controller/widgets/textWidget/textWidget.dart';
import 'package:smartproj/View/HomeView/smartHomeController.dart';

class SmartHome extends StatelessWidget {
  const SmartHome({super.key});

  @override
  Widget build(BuildContext context) {
    SmartHomeController obj=Get.put(SmartHomeController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Expanded(child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  mainAxisSpacing: 3,
                  crossAxisSpacing: 3,
                  childAspectRatio: 90/90,
                ),
                itemCount: 4,
                itemBuilder: (context,index){
                  return Column(
                    children: [
                      Expanded(
                        child: Container(
                          height: 100,width: 80,
                          decoration: BoxDecoration(color: AppColor.whiteColor,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(),),child: Icon(Icons.lightbulb),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextWidget(text: "Echo & Alexa", size: 16, color: AppColor.blackColor,
                          fontWeight: FontWeight.w400),
                    ],
                  );
                })
            ),
            Row(
              children: [
                TextWidget(text: "Favorites", size: 22, color: AppColor.blackColor, fontWeight: FontWeight.w600),
                Spacer(),
                TextButton(onPressed: (){}, child: TextWidget(text: "Edit", size: 18,
                    color: AppColor.blackColor, fontWeight: FontWeight.w400))
              ],
            ),
            SizedBox(height: 15,),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 160 / 180),
                  itemCount: obj.SmartHomeModelList.length,
                  itemBuilder: (context, index) {
                    return ContainerWidget(
                        text: obj.SmartHomeModelList[index].text.toString(), size: 14, color:
                    AppColor.blackColor, fontWeight: FontWeight.w600,
                        text2: "On", size2: 18, color2: AppColor.blackColor, fontWeight2: FontWeight.w600,
                        icon: obj.SmartHomeModelList[index].icon);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
