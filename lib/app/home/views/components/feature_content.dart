import 'package:flutter/material.dart';

class FeatureContent extends StatelessWidget {
  final double? marginTop;
  final String? image;
  const FeatureContent({super.key, this.marginTop, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
height: 382.54,
width: 283.65,
margin: EdgeInsets.only(
  top: marginTop!
),
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(48),
gradient: const LinearGradient(colors: [ 
Color(0xFFFFE2C8) , 
Color(0xFFFEBA44) , 
] ,  

begin: Alignment.topCenter , 
end: Alignment.bottomCenter
),  

boxShadow:  [
  BoxShadow(
    offset: const Offset(0, 5) , 
    color: const Color(0xFF594631).withOpacity(.45), 
    spreadRadius: 2 , 
    blurRadius: 10
  )
]

),
child: Center(

  child: Image.asset(image! ,  width: 372 ,height: 304,  
  
  fit: BoxFit.fill,
  
  ),
),
    );
  }
}