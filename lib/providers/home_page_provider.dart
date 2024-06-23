
import 'package:flutter/material.dart';

class HomePageProvider extends ChangeNotifier{

  bool? isEligible;
  String isEligibilityMessage = "";

  void checkEligibility(int age)
  {
    if(age >= 18)
    {
      isEligible = true;
      isEligibilityMessage = 'You are eligible!';
      notifyListeners();
    }
    else
    {
      isEligible = false;
      isEligibilityMessage = 'You are not eligible!';
      notifyListeners();
    }
  }

}