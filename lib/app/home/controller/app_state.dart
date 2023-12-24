import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {

  int currentPage =0;
  PageController pageController = PageController();
  


  changePage(int page){
    currentPage = page;
    notifyListeners();
    pageController.jumpToPage(currentPage);
  }
  
}