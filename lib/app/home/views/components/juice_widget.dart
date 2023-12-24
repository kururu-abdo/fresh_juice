import 'package:flutter/material.dart';

class JuiceWidget extends StatelessWidget {
  final String? name;
  final String? image;
  final double?  price;
  final String? desc;
  const JuiceWidget({super.key, this.name, this.image, this.price, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 454,
      height: MediaQuery.of(context).size.height*.70 - 200 ,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      // height: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40), 

boxShadow:  [
  BoxShadow(
    offset: const Offset(0, 5) , 
    color: const Color(0xFF594631).withOpacity(.45), 
    spreadRadius: 1 , 
    blurRadius: 3
  )
],

        gradient: const LinearGradient(colors: 
        
        [ 

         
          Color(0xFFFDFDFD) , 
           Color(0xFFFF9B25) , 
        ]
        ,  


        begin: Alignment.topCenter , 
        end: Alignment.bottomCenter
        )
      ),

      child: Stack(children: [

PositionedDirectional(
  top: 5, 
  end: 5,
  child: Container( 
    width: 90,height: 75,
decoration: const BoxDecoration( 

  color: Color(0xFFFF9900), 

  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(37), 
    topRight: Radius.circular(37), 
  )
),
child: Center(child: Image.asset('assets/images/fav.png'),),

  )),

Positioned(
  top:10 ,
  
  child: Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 15 ,horizontal: 20
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [
    
    Center(
    child: Image.asset(image! ,width: 400 , height: 200,),
    )
    
    , 
    Text(name!, style: const TextStyle(
      fontSize: 30 ,fontWeight: FontWeight.bold
    ),  ), 
     Text(name!, style: const TextStyle(
      fontSize: 15 ,fontWeight: FontWeight.w300
    ),  ), 
    // const Spacer() , 
    
    Row(
      mainAxisSize: MainAxisSize.min,
      children: [  
    
        const Text("\$" ,style: TextStyle(
          color: Colors.red ,fontSize: 22, fontWeight: FontWeight.bold
        ),), 
    
        Text(price.toString() ,style: const TextStyle(
          fontSize: 25, fontWeight: FontWeight.bold
        ),), 
    
    
      ],
    )
    ],),
  ))





      ],),
    );
  }
}