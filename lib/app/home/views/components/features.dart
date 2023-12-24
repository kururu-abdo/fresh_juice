import 'package:flutter/material.dart';
import 'package:fresh_corner/app/home/views/components/feature_content.dart';

import '../../../../common/utils/sizes.dart';

class Features extends StatelessWidget {
  const Features({super.key});

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
  height: 470,
  child: const Row(
    children: [ 
Column(
  children: [  
SizedBox( 

  width: 500,
child: Text(
  'Why we are better than others' , 
  maxLines: 3, 
  style: TextStyle(
    color: Color(0xFF473525)  , 
    fontSize: 70 , 
    fontWeight: FontWeight.bold
  ),
),

),  

SizedBox( 

  width: 500,
child: Text(
  'Our commitment to excellence in the realm of juices sets us apart from the competition.' , 
  maxLines: 3, 
  style: TextStyle(
    color: Color(0xFF473525)  , 
    fontSize: 30 , 
    fontWeight: FontWeight.w300
  ),
),

)


  ],
)



,  

Expanded(child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [   


FeatureContent(
  marginTop: 0,
image: 'assets/images/juice1.png',
)
 , 



 FeatureContent(
  marginTop: 382/3,
image: 'assets/images/juice2.png',
)

, 

FeatureContent(
  marginTop: 0,
image: 'assets/images/juice3.png',
)

],))


    ],
  ),
);
    }
  }

   );
  }


  }