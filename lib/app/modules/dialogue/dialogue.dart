import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../constants/size.dart';
import '../../../constants/string.dart';
import '../../../constants/style.dart';
import '../../utils/app_bar.dart';
import '../../utils/changeLanguageText.dart';
import '../home/widgets/drawer.dart';
import '../home/widgets/liste_lecture_objects_presentation.dart';
import '../home/widgets/liste_lecture_objects_salutation.dart';
import '../lecture/lecture.dart';
import '../lecture/lecture_controller.dart';

// ignore: must_be_immutable
class Dialogue extends StatelessWidget {
   Dialogue({super.key});
  var lectureController = Get.find<LectureController>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
         onWillPop: () async{
        // Lorsque vous souhaitez quitter l'application, par exemple dans un bouton de votre interface utilisateur, vous pouvez appeler :
        Get.offAllNamed("/home");
        return false;
      },
      child: Scaffold(
        appBar: appBar("dialogue".obs,context,changeLanguageButton()),
        drawer: SizedBox(
            width: drawerWidth,
            child: drawer(context)),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.05),
            child: Column(
              children: [
           Padding(
             padding:  EdgeInsets.only(bottom:itemSpacer,top: itemSpacer),
             child: ListTile(
                leading: Image.asset(dialogPresentationIcon,),
                title:  Text('presentation_dialog'.tr,style: bodyLargeStyle,),
                onTap: () {
                        lectureController.setCurrentListeLecture(listeLecturePresentation);
                  lectureController.setCurrentTitle('presentation_dialog');
                        lectureController.setPop(true);
               Get.to(() =>  Lecture());
                },
              ),
           ),
          
              Padding(
                padding: EdgeInsets.only(bottom:itemSpacer,top: itemSpacer),
                child: ListTile(
                leading: SvgPicture.asset(dialogSalutationIcon,),
                title:  Text('salutation_dialog'.tr,style: bodyLargeStyle,),
                onTap: () {
                     lectureController.setCurrentListeLecture(listeLectureSalutation);
                  lectureController.setCurrentTitle('salutation_dialog');
                        lectureController.setPop(true);
               Get.to(() =>  Lecture());
                },
                        ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
