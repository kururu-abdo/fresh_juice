import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(

      height: 500, 
      child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [ 
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisSize: MainAxisSize.min,children: [ 
 Text("Contact Us" , style: GoogleFonts.poppins( 
  fontSize: 70 , fontWeight: FontWeight.bold , 
  color: const Color(0xFF473525)
),)
, 
Text("Send us a message" , style: GoogleFonts.poppins( 
  fontSize: 36 , fontWeight: FontWeight.w300 , 
  color: const Color(0xFF000000).withOpacity(.65)
),)



  ],)

, 

Container(
  width: 325, 
  margin: const EdgeInsets.only(
    bottom: 5
  ),
  child: TextFormField(

    decoration: InputDecoration(
      filled: true, 
      fillColor: Colors.white,
      hintText: 'Full name',
      hintStyle: TextStyle(
        fontSize: 24,  fontWeight: FontWeight.w300 , 
        color: const Color(0xFF000000).withOpacity(.50)
      ),
      border: OutlineInputBorder(
borderRadius: BorderRadius.circular(20) , 
borderSide: BorderSide.none
      ), 

enabledBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(20) , 
borderSide: BorderSide.none
      ), 
      focusedBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(20) , 
borderSide: BorderSide.none
      )


    ),
  ), 
)

,

Container(
  width: 325, 
  margin: const EdgeInsets.only(
    bottom: 5
  ),
  child: TextFormField(

    decoration: InputDecoration(
      filled: true, 
      fillColor: Colors.white,
      hintText: 'Your email',
      hintStyle: TextStyle(
        fontSize: 24,  fontWeight: FontWeight.w300 , 
        color: const Color(0xFF000000).withOpacity(.50)
      ),
      border: OutlineInputBorder(
borderRadius: BorderRadius.circular(20) , 
borderSide: BorderSide.none
      ), 

enabledBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(20) , 
borderSide: BorderSide.none
      ), 
      focusedBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(20) , 
borderSide: BorderSide.none
      )


    ),
  ), 
)


, 
Container(
  width: 440, 
  margin: const EdgeInsets.only(
    bottom: 15
  ),
  child: TextFormField(
maxLines: 3,
    decoration: InputDecoration(
      filled: true, 
      fillColor: Colors.white,
      hintText: 'Your Message...',
    
      hintStyle: TextStyle(
        fontSize: 24,  fontWeight: FontWeight.w300 , 
        color: const Color(0xFF000000).withOpacity(.50)
      ),
      // contentPadding: const EdgeInsets.symmetric(
      //   h: 35
      // ),
      border: OutlineInputBorder(
borderRadius: BorderRadius.circular(20) , 
borderSide: BorderSide.none
      ), 

enabledBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(20) , 
borderSide: BorderSide.none
      ), 
      focusedBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(20) , 
borderSide: BorderSide.none
      )


    ),
  ), 
)
, 
Container(
  width: 213,
  height: 60, 
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(13)  , 
    color: const Color(0xFFFFA500)
  ), 
  child: const Center(child: Text("Submit" , 
  
  style: TextStyle(
    fontSize: 24 ,fontWeight: FontWeight.w300
  ),
  ),),
  


)




      ],),
    );
  }
}