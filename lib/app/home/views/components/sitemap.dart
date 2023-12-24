import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SiteMap extends StatelessWidget {
  const SiteMap({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 432, 
      child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [ 
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisSize: MainAxisSize.min,children: [ 
 Text("Sitemap" , style: GoogleFonts.poppins( 
  fontSize: 70 , fontWeight: FontWeight.bold , 
  color: const Color(0xFF473525)
),)
, 
Text("All our pages" , style: GoogleFonts.poppins( 
  fontSize: 36 , fontWeight: FontWeight.w300 , 
  color: const Color(0xFF000000).withOpacity(.65)
),)



  ],)

, 
 Column(
  crossAxisAlignment: CrossAxisAlignment.start,

  mainAxisSize: MainAxisSize.min,children: [ 

Text("- Home" , style: GoogleFonts.poppins(
  fontSize: 36 , fontWeight: FontWeight.w300 , color: const Color(0xFF3A2818)

),), 


Text("- About Us" , style: GoogleFonts.poppins(
  fontSize: 36 , fontWeight: FontWeight.w300 , color: const Color(0xFF3A2818)

),), 


Text("- Services" , style: GoogleFonts.poppins(
  fontSize: 36 , fontWeight: FontWeight.w300 , color: const Color(0xFF3A2818)

),), 

Text("- Blog" , style: GoogleFonts.poppins(
  fontSize: 36 , fontWeight: FontWeight.w300 , color: const Color(0xFF3A2818)

),), 
Text("- Contact Us" , style: GoogleFonts.poppins(
  fontSize: 36 , fontWeight: FontWeight.w300 , color: const Color(0xFF3A2818)

),), 
  ])


        ])
,
    );
  }
}