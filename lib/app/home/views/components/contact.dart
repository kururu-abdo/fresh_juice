import 'package:flutter/material.dart';
import 'package:fresh_corner/app/home/views/components/contact_us.dart';
import 'package:fresh_corner/app/home/views/components/footer.dart';
import 'package:fresh_corner/app/home/views/components/sitemap.dart';
import 'package:fresh_corner/app/home/views/components/tel.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
   var size =MediaQuery.of(context).size;
   
   return LayoutBuilder(
  builder: (_, c) {
    final width = c.maxWidth;

    if (width <= 480) {
     return const SizedBox();
    } else if (width > 480 && width <= 960) {
      return const SizedBox();
    } else {
return SizedBox(
  width: size.width,
height: size.height*.70,

child: const SingleChildScrollView(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [ 
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.start,
    children: [ 
  
  
  ContactUs(), 

  SiteMap() , 
  Tel()
  
    ],
  )
  ,
  SizedBox(height: 50,),
  Foooter()
  ],),
),

 );
  }

  }
   );

  }
}