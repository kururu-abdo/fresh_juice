import 'package:flutter/material.dart';
import 'package:fresh_corner/app/home/views/pages/home_pages.dart';
import 'package:fresh_corner/common/utils/sizes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
  // executes after build

   Future.delayed(const Duration(seconds: 3) , () {
Navigator.of(context).push(
  MaterialPageRoute(builder: (_)=> const HomePage())
);
    });
});
   
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
       width: MediaQuery.of(context).size.width,
        height:  MediaQuery.of(context).size.height, 
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height:  MediaQuery.of(context).size.height, 
        decoration: const BoxDecoration(
             image: DecorationImage(image: AssetImage(
              'assets/images/bg.png', 
      
              
             ) ,  fit: BoxFit.fill
             
             )
          
        ),
          child: Center(
        child:
            Image.asset('assets/images/fresh_logo.png' ,  
            
            height:
            isTablet(context)?
             200 :  120,width: isTablet(context)? 200: 120,
            
            )
          ),
        ),
      ),
    );
  }
}