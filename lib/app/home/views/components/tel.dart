import 'package:flutter/material.dart';

class Tel extends StatelessWidget {
  const Tel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 306, 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [  
Center(child: Image.asset('assets/images/fresh_logo.png' , 

width: 207,height: 172,
),)
, 

Row(
  mainAxisSize: MainAxisSize.min,
  children: [ 
Icon(Icons.call ,  color: Color(0xFF3A2818),), 

SizedBox(width: 10,) , 
Text('(08) 400 2000' ,   style: TextStyle(
   color: Color(0xFF3A2818), fontSize: 36 , fontWeight: FontWeight.w300
),) , 


  ],
)



, 
Row(
  mainAxisSize: MainAxisSize.min,
  children: [ 
Icon(Icons.mail_outline ,  color: Color(0xFF3A2818),), 

SizedBox(width: 10,) , 
Text('xyz@gmail.com' ,   style: TextStyle(
   color: Color(0xFF3A2818), fontSize: 36 , fontWeight: FontWeight.w300
),) , 


  ],
)



      ],),
    );
  }
}