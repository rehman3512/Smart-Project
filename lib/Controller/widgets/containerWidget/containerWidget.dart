import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartproj/Controller/widgets/appColor/appColor.dart';
import 'package:smartproj/Controller/widgets/textWidget/textWidget.dart';

class ContainerWidget extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final IconData icon;
  final FontWeight? fontWeight;
  final String text2;
  final double size2;
  final Color color2;
  final FontWeight? fontWeight2;
  const ContainerWidget({super.key,required this.text,required this.size,
    required this.color,required this.fontWeight,required this.text2,required this.size2,
    required this.color2,required this.fontWeight2,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 160,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        border: Border.all(),
        borderRadius: BorderRadius.circular(12),
      ),child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        SizedBox(height: 3,),
        Text(text,style: GoogleFonts.glory(fontSize: size,
            color: color,fontWeight: fontWeight),),
        SizedBox(height: 5,),
        InkWell( onTap: (){},
          child: Text(text2,style: GoogleFonts.glory(fontSize: size2,
              color: color2,fontWeight: fontWeight2), ),
        ),
        SizedBox(height: 10,),
        Row(children: [
          Icon(icon,color: color,size: size,),
          Spacer(),
          Icon(Icons.more_vert,color: AppColor.blackColor,)
        ],)

            ],),
      ),
    );
  }
}
