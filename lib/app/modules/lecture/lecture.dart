import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/app_constants.dart';
import '../../../constants/size.dart';
import '../../../constants/string.dart';
import '../../../constants/style.dart';
import '../../internationalisation/inter_controller.dart';
import '../../utils/app_bar.dart';
import '../../utils/snackbar.dart';
import '../home/widgets/drawer.dart';
import 'lecture_controller.dart';
import 'lecture_modele.dart';
import 'widgets/bouton.dart';
import 'package:audioplayers/audioplayers.dart';
import 'widgets/object_display.dart';

// ignore: must_be_immutable
class Lecture extends StatefulWidget {
  Lecture({super.key});
  
  
  @override
  State<Lecture> createState() => _LectureState();
}

class _LectureState extends State<Lecture> {
  var interController = Get.put(InterController());
  var lectureController = Get.find<LectureController>();
  final player = AudioPlayer();
  List<LectureModele> objectList = [];
  RxString currentTitle = "".obs;
  @override
  void initState() {
    objectList = lectureController.getCurrentListeLecture();
    currentTitle = lectureController.getCurrentTitle();
    
    super.initState();
  }

  // Initial Selected Value
  String selectedValue = languePrisEnCharge.first;

  // List of items in our dropdown menu
  var items = languePrisEnCharge;
  void playAudio(String? audioPath) {
    if (audioPath == null) {
      showSnackBar(context, "unable_to_load".tr, snackBartime);
    } else if (audioPath.isEmpty) {
      showSnackBar(context, "empty_translation".tr, snackBartime);
    } else {
      player.play(AssetSource(audioPath));
      player.stop();
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return WillPopScope(

      onWillPop: ()async { 
        if(lectureController.getPop()){
          Navigator.pop(context);
        }else{
Get.offNamed("/home");

        }
        return false;
       },
      child: Scaffold(
        appBar: appBar(currentTitle, context,Container()),
        drawer: SizedBox(width: drawerWidth, child: drawer(context)),
        body:SingleChildScrollView(
  child: Center(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.height * 0.03),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: itemSpacer),
          enteteLecture(),
          SizedBox(height: itemSpacer),
        InkWell(
          onTap: () {
            playAudio(objectList[lectureController. currentObjet.value].audioMap[selectedValue]);
          },
          child: SizedBox(
            height: lectureImageSizeHeight * 1.45,
            width: lectureImageSizeHeight,
            child: ObjectDisplay(objectList: objectList, ),
          ),
        ),
          // next/previous button
          SizedBox(
            width: lectureImageSize * 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {
                    if (lectureController.currentObjet.value > 0) {
                      lectureController.currentObjet.value = lectureController.currentObjet.value - 1;
                    } else {
                      showSnackBar(context, "min_atteint".tr, snackBartime);
                    }
                  }, 
                  iconSize: iconSize,
                  icon: SvgPicture.asset(previousArrow,width: iconSize)),
                  IconButton(onPressed: () {
                    if (lectureController.currentObjet.value < objectList.length - 1) {
                      lectureController.currentObjet.value = lectureController.currentObjet.value + 1;
                    } else {
                      showSnackBar(context, "max_atteint".tr, snackBartime);
                    }
                  },
                  iconSize: iconSize,
                  icon: SvgPicture.asset(nextArrow,width: iconSize)),
              /*  customIconButton(
                  icon: Icons.arrow_back,
                  iconSize: iconSize,
                  couleur: lightAppbarColor,
                  onPressed: () {
                    if (lectureController.currentObjet.value > 0) {
                      lectureController.currentObjet.value = lectureController.currentObjet.value - 1;
                    } else {
                      showSnackBar(context, "min_atteint".tr, snackBartime);
                    }
                  },
                ),
                customIconButton(
                  icon: Icons.arrow_forward,
                  iconSize: iconSize,
                  couleur: lightAppbarColor,
                  onPressed: () {
                    if (lectureController.currentObjet.value < objectList.length - 1) {
                      lectureController.currentObjet.value = lectureController.currentObjet.value + 1;
                    } else {
                      showSnackBar(context, "max_atteint".tr, snackBartime);
                    }
                  },
                ),*/
              ],
            ),
          )
        ],
      ),
    ),
  ),
),
),
    );
  }

  Row enteteLecture() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        changeLanguageButton(),
SvgPicture.asset(languageArrow,width: iconSize,fit: BoxFit.fill),
     /*   Icon(
          Icons.arrow_forward_sharp,
          size: 10.w,
          color: Colors.black,
        ),*/
        buildDropdownButton(),
      ],
    );
  }

  Widget changeLanguageButton() {
    final param = "langue".tr.toLowerCase().substring(0, 2);
    final language = (param == "en") ? "fr" : "en";

    return bouton("langue".tr, () {
      interController.changeLanguage(language, language);
    });
  }

  Widget buildDropdownButton() {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        iconStyleData:IconStyleData(icon: Icon(Icons.arrow_drop_down_rounded),iconSize: iconSize*0.9) ,
        isExpanded: true,
        items: items
            .map((String item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: bodySmallStyle,
                  ),
                ))
            .toList(),
        value: selectedValue,
        onChanged: (String? value) {
          setState(() {
            selectedValue = value!;
          });
        },
        buttonStyleData: ButtonStyleData(
          height: dropdownHeight,
          width: dropdownWight,
        ),
        menuItemStyleData: MenuItemStyleData(
          height: 5.h,
        ),
      ),
    );
  }
}
