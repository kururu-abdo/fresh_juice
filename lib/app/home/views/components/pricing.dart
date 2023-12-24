import 'package:flutter/material.dart';
import 'package:fresh_corner/app/home/views/components/juice_widget.dart';

class Pricing extends StatelessWidget {
   Pricing({super.key});



var products =  

[
  {
    "name":"Mango Bliss Burst"  , 
    "image":"assets/images/juice4.png" , 
    "price":10.0,
    "desc":"Description of the item" 
  }, 
{
    "name":"Pure Kiwi Joy"  , 
    "image":"assets/images/juice5.png" , 
    "price":12.0,
    "desc":"Description of the item" 
  }, 
  {
    "name":"Berry Burst Bliss"  , 
    "image":"assets/images/juice6.png" , 
    "price":9.0,
    "desc":"Description of the item" 
  }, 

];
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
child:  SingleChildScrollView(
  scrollDirection: Axis.vertical,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [  
  
      const SizedBox(
        width: 603.01,
        child: Text( 
          "Explore best menu selections" , 
    maxLines: 2, 
            style: TextStyle(
      color: Color(0xFF473525)  , 
      fontSize: 70 , 
      fontWeight: FontWeight.bold
    ),
        ),
      )
    
    
, 
Row(



children: products.map((e) => JuiceWidget(
name: e['name'].toString(),
image: e['image'].toString(),
desc: e['desc'].toString(),
price: e['price'] as double,

)).toList(),


)
    ,  

    const Align(

      alignment: AlignmentDirectional.centerEnd,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [  
Text('View All',  
style: TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w300,
  color: Color(0xFF473525)
),
), 
SizedBox(width: 5,) , 
Icon(Icons.arrow_forward , color: Color(0xFF473525)  )
        ],
      ),
    )
    
    
    
    ],
  ),
),
);

    }
  }
   );
  }
}