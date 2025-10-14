import 'package:get/get.dart';

class DetailsController extends GetxController
{

   int count = 0 ;
   String selectedColor ="grey";
   final Map<int,String> colorCh=
   {0 : "grey",
     1 : "black",
     2 : "white"};
  void greyColor(val)
   {
     selectedColor =val;
     count = colorCh.keys.firstWhere(
             (k) => colorCh[k] == selectedColor);
     update();
    }
    void blackColor(val)
    {
      selectedColor =val;
      count = colorCh.keys.firstWhere(
            (k) => colorCh[k] == selectedColor,
      );
      update();
    }
    void whiteColor(val)
    {
      selectedColor =val;
      count = colorCh.keys.firstWhere(
            (k) => colorCh[k] == selectedColor,
      );
      update();
    }


}