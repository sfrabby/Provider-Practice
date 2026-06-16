import 'package:flutter/cupertino.dart';

class homePageProvider with ChangeNotifier{
    bool? isEligible;
    String ? eligibleMessage;

    void checkEligiblity(int age){
      if(age >= 18){
        isEligible = true;
        eligibleMessage = "You are eligible";
        notifyListeners();
      }
      else{
        isEligible = false;
        eligibleMessage = "You are not eligible";
        notifyListeners();
      }
      notifyListeners();
    }
}