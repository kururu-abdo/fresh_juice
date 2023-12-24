import 'package:flutter/material.dart';

class Foooter extends StatelessWidget {
  const Foooter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width/1.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: [  

          Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [ 

Container(
  height: 58,width: 85,
  decoration: const BoxDecoration(
    shape: BoxShape.circle,
    color: Color(0xFFFF9900)
  ),
  child: Center(child: Image.asset('assets/images/ic_facebook.png'),),
), 
Container(
  height: 58,width: 85,
  decoration: const BoxDecoration(
    shape: BoxShape.circle,
    color:Colors.white,
  ),
  child: Center(child: Image.asset('assets/images/ic_insta.png' , 
  
  color: Colors.black,
  ),),
), 
Container(
  height: 58,width: 85,
  decoration: const BoxDecoration(
    shape: BoxShape.circle,
    color:Colors.white,
  ),
  child: Center(child: Image.asset('assets/images/ic_twitter.png' , 
  
  color: Colors.black,
  ),),
), 
Container(
  height: 58,width: 85,
  decoration: const BoxDecoration(
    shape: BoxShape.circle,
    color:Colors.white,
  ),
  child: Center(child: Image.asset('assets/images/ic_youtube.png' , 
  
  color: Colors.black,
  ),),
), 






            ],
          ) , 

          const Text("Copyright \u00a9 2023 Dscode | All rights reserved" ,  
          
          
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}