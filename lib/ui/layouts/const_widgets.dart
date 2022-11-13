import 'package:flutter/material.dart';



Widget ReusText({
  required TextStyle? style,
  required  TextStyle? styletext,
  required String data,
  required String text,
})
   => Row(
     children: [
       Text("${data}"+ " : ",
         style:  style,
       ),
       SizedBox(width: 10.0,),
       Expanded(
         child: Text(
           text,style: styletext,
       ),
       ),
     ],
   );

Widget dividerWidget({
  required double? endIndent,
}) =>
    Divider(
      height: 4,
      color: Colors.deepOrange,
      thickness: 3,
      endIndent: endIndent,
    );


Widget ReusRichText({
  required String? texttitle,
  required String? text,
   TextStyle? styletexttitle,
    TextStyle? styletext,


}) =>RichText(
  text: TextSpan(

      children: [
        TextSpan(text: texttitle,
            style: styletexttitle),
        TextSpan(text:text,
            style: styletext
        ),
      ]
  ),
);