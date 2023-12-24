import 'package:flutter/material.dart';
import 'package:fresh_corner/app/home/controller/app_state.dart';
import 'package:fresh_corner/app/home/views/components/contact.dart';
import 'package:fresh_corner/app/home/views/components/features.dart';
import 'package:fresh_corner/app/home/views/components/main_content.dart';
import 'package:fresh_corner/app/home/views/components/pricing.dart';
import 'package:fresh_corner/common/utils/sizes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppState>(context);
    return 
     Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height:  MediaQuery.of(context).size.height, 
        decoration: const BoxDecoration(
             image: DecorationImage(image: AssetImage(
              'assets/images/bg.png', 
      
              
             ) ,  fit: BoxFit.fill
             
             )
          
        )
        ,  
child:  Padding(padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10) , 

child:Column(children: [   

//top widget

LayoutBuilder(
  builder: (_, c) {
    final width = c.maxWidth;
   if
   (width >= 960   ||  
   
   (width > 480 && width <= 960) 
   ) {
     
    return 

Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
Image.asset('assets/images/fresh_logo.png',  

width:isTablet(context)? 192: 120, height:isTablet(context)?  172:  100,
),

 Row(
  children: [
TextButton(

  
  onPressed: (){
provider.changePage(0);
}, child: Text('Home', style: GoogleFonts.quicksand(
  fontSize:   getFontSize(context,
   provider.currentPage==0?24:
  
   22),  

  color:
  provider.currentPage==0? const Color(0xFF473525):
  
   Colors.black ,fontWeight: FontWeight.bold , 

),)),  
TextButton(

  
  onPressed: (){
provider.changePage(1);
}, child: Text('Features', style: GoogleFonts.quicksand(
 fontSize:   getFontSize(context,
   provider.currentPage==1?24:
  
   22),  

  color:
  provider.currentPage==1? const Color(0xFF473525): Colors.black ,fontWeight: FontWeight.bold
),)),

TextButton(

  
  onPressed: (){
provider.changePage(2);
}, child: Text('Menu', style: GoogleFonts.quicksand(
fontSize:   getFontSize(context,
   provider.currentPage==2?24:
  
   22),  

  color:
  provider.currentPage==2? const Color(0xFF473525): Colors.black ,fontWeight: FontWeight.bold
),)),


TextButton(

  
  onPressed: (){
provider.changePage(3);
}, child: Text('Pricing', style: GoogleFonts.quicksand(
  fontSize:   getFontSize(context,
   provider.currentPage==3?24:
  
   22),  

  color:
  provider.currentPage==3? const Color(0xFF473525): Colors.black ,fontWeight: FontWeight.bold
),)),

TextButton(

  
  onPressed: (){
provider.changePage(4);
}, child: Text('Contact', style: GoogleFonts.quicksand(
fontSize:   getFontSize(context,
   provider.currentPage==4?24:
  
   22),  

  color:
  provider.currentPage==4? const Color(0xFF473525):Colors.black ,fontWeight: FontWeight.bold
),)),



  ],
), 



Container(
  height: 50, 
  width: isTablet(context)?   127:100,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
border: Border.all(width: 1)
  ),
  child:   Center(
    child: FittedBox(
        fit: BoxFit.scaleDown,
      child: Text('Sign up' ,  style: TextStyle(
        fontSize:
        getFontSize(context, 22)
        
        // isTablet(context)? 22: 15
        ,  fontWeight:
        
        
         FontWeight.w600
      ),),
    ),
  ),
)



  ],
);



    }
else {

  return 
    
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
Image.asset('assets/images/fresh_logo.png',  

width:isTablet(context)? 192: 120, height:isTablet(context)?  172:  100,
),



Container(
  height: 80, 
  width: 80,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
border: Border.all(width: 1)
  ),
  child:   const SizedBox.expand(
    child: Icon(Icons.menu)
    ),
  ),




  ],
);


}

  }), 

  

Expanded(
  child: PageView(
    controller: provider.pageController,
    pageSnapping: true,
       scrollDirection: Axis.vertical,
    onPageChanged: (index){
      provider.changePage(index);
    },
    children: [ 
  const MainContent() , 
  const Features() , 
  Pricing() , 
  Pricing() , 
  const Contact()
  
    ],
  ),
)


],) ,

),

        
        
        )


        );
  }
}