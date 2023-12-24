import 'package:flutter/material.dart';

import '../../../../common/utils/sizes.dart';

class MainContent extends StatelessWidget {
  const MainContent({super.key});

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
      return 
         SizedBox(width: size.width, 
height: 600,
child: SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [ 
  
  
            SizedBox(
              width: width*.70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [  
                       Text("Revitalize Your Routine, Fresh, Fruity, Fantastic!" ,  
                      
                      maxLines: 2, 
                      style: TextStyle(
              fontSize: 80 , 
              fontWeight: FontWeight.bold , 

              color: const Color(0xFF473525).withOpacity(.90)
                      ),
                      ) , 
                      const SizedBox(height: 10,), 
                      const Text("Savor the Symphony of Flavors, with Nature's Sweetness & deliciousness. Get the best variety of juices here!" ,  
                      
                      maxLines: 2, 
                      style: TextStyle(
              fontSize: 27 , 
              fontWeight: FontWeight.w300
                      ),
                      ) , 
               const SizedBox(height: 10,), 
                      Row(
                      
                      mainAxisSize: MainAxisSize.min,
                      children: [ 
                      
                      
                      Container(
                      height: 70, 
                      width: 150,
                      decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                      // border: Border.all(width: 1)  ,  
                      
                      color: const Color(0xFF473525)
                      ),
                      child:   Center(
              child: FittedBox(
                  fit: BoxFit.scaleDown,
                child: Text('View Menu' ,  style: TextStyle(
                  fontSize:
                  getFontSize(context, 22)
                  
                  // isTablet(context)? 22: 15
                  ,  fontWeight:
                  
                  
                   FontWeight.w600  , 
                   color: Colors.white
                ),),
              ),
                      ),
                      )
                      ,
                      
                      const SizedBox(width: 8,),
                      Container(
                      height: 70, 
                      width: 150,
                      decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1)  ,  
                      
                      // color: Color(0xFF473525)
                      ),
                      child:   Center(
              child: FittedBox(
                  fit: BoxFit.scaleDown,
                child: Text('Discount' ,  style: TextStyle(
                  fontSize:
                  getFontSize(context, 22)
                  
                  // isTablet(context)? 22: 15
                  ,  fontWeight:
                  
                  
                   FontWeight.w600  , 
                   color: const Color(0xFF473525)
                ),),
              ),
                      ),
                      )
                      ,
                      
                      ],)
                      
                      
                      
              ],
                      ),
            ),
       const SizedBox(width: 0,),  
  
  Image.asset('assets/images/land_image.png',width: width*.30 , height:600 ,)
  
    ],
  ),
),

         );
      
      SizedBox(width: size.width, 
height: size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
        
        child:  Center(
          child:  SizedBox(
            height: 633, 
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
        child: Stack(
          children: [ 
        SizedBox(
        width: MediaQuery.of(context).size.width*.70,
        child:
        
          Column(
            mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [  
        const Text("Revitalize Your Routine, Fresh, Fruity, Fantastic!" ,  
        
        maxLines: 2, 
        style: TextStyle(
          fontSize: 80 , 
          fontWeight: FontWeight.bold
        ),
        ) , 
        const SizedBox(height: 10,), 
        const Text("Savor the Symphony of Flavors, with Nature's Sweetness & deliciousness. Get the best variety of juices here!" ,  
        
        maxLines: 2, 
        style: TextStyle(
          fontSize: 27 , 
          fontWeight: FontWeight.w300
        ),
        ) , 
           const SizedBox(height: 10,), 
        Row(
        
        mainAxisSize: MainAxisSize.min,
        children: [ 
        
        
        Container(
        height: 70, 
        width: 150,
        decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(10),
        // border: Border.all(width: 1)  ,  
        
        color: const Color(0xFF473525)
        ),
        child:   Center(
          child: FittedBox(
              fit: BoxFit.scaleDown,
            child: Text('View Menu' ,  style: TextStyle(
              fontSize:
              getFontSize(context, 22)
              
              // isTablet(context)? 22: 15
              ,  fontWeight:
              
              
               FontWeight.w600  , 
               color: Colors.white
            ),),
          ),
        ),
        )
        ,
        
        const SizedBox(width: 8,),
        Container(
        height: 70, 
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1)  ,  
        
        // color: Color(0xFF473525)
        ),
        child:   Center(
          child: FittedBox(
              fit: BoxFit.scaleDown,
            child: Text('Discount' ,  style: TextStyle(
              fontSize:
              getFontSize(context, 22)
              
              // isTablet(context)? 22: 15
              ,  fontWeight:
              
              
               FontWeight.w600  , 
               color: const Color(0xFF473525)
            ),),
          ),
        ),
        )
        ,
        
        ],)
        
        
        
          ],
        ),
       
       
        )
        ,  
        
        PositionedDirectional(
          end: 0,
          
          child: Image.asset('assets/images/land_image.png' , height:633 ,))   
        
        
          ],
        ),
            ),
          ),
        ),
        
        
        
            ),
      );

    }


  }
);
  }
}