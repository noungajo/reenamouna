
import '../../../../constants/app_constants.dart';
import '../../lecture/lecture_modele.dart';

/*
0 -> "Fè'éfè'é"
1 -> "Douala"
2 -> "Bangangté"
3 -> "Yambassa"
4 ->  "Étón"
*/
int indexNufi = 0,indexDouala = 1, indexBangante = 2, indexYambassa = 3, indexEton = 4;
var listeLecturePremierMot = [
   LectureModele(text: "1", imageUrl: "${imageUrlBasePremierMot}1-maman.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBasePremierMot}1-maman_nufi.ogg",languePrisEnCharge[indexDouala]:"${audioUrlBasePremierMot}1-maman_dla.ogg",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "2", imageUrl: "${imageUrlBasePremierMot}1-maman.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBasePremierMot}2-ma_mere_nufi.ogg",languePrisEnCharge[indexDouala]:"${audioUrlBasePremierMot}2-ma_mere_dla.ogg",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "3", imageUrl: "${imageUrlBasePremierMot}3-oui.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBasePremierMot}3-oui_nufi.ogg",languePrisEnCharge[indexDouala]:"${audioUrlBasePremierMot}3-oui_dla.ogg",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "4", imageUrl: "${imageUrlBasePremierMot}no.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBasePremierMot}4-non_nufi.ogg",languePrisEnCharge[indexDouala]:"${audioUrlBasePremierMot}4-non_dla.ogg",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "5", imageUrl: "${imageUrlBasePremierMot}5-pourquoi.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBasePremierMot}5-pourquoi_nufi.ogg",languePrisEnCharge[indexDouala]:"${audioUrlBasePremierMot}5-pourquoi_dla.ogg",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "6", imageUrl: "",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBasePremierMot}6-parce_que_nufi.ogg",languePrisEnCharge[indexDouala]:"${audioUrlBasePremierMot}6-parce_que_dla.ogg",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "7", imageUrl: "${imageUrlBasePremierMot}7-le_sein.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBasePremierMot}7-le_sein_nufi.ogg",languePrisEnCharge[indexDouala]:"${audioUrlBasePremierMot}7-le_sein_dla.ogg",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "8", imageUrl: "${imageUrlBasePremierMot}8-les_seins.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBasePremierMot}8-les_seins_nufi.ogg",languePrisEnCharge[indexDouala]:"${audioUrlBasePremierMot}8-les_seins_dla.ogg",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "9", imageUrl: "${imageUrlBasePremierMot}lait.jpeg",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBasePremierMot}9-le_lait_nufi.ogg",languePrisEnCharge[indexDouala]:"${audioUrlBasePremierMot}9-le_lait_dla.ogg",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "10", imageUrl: "${imageUrlBasePremierMot}11-la_tete.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBasePremierMot}11-la_tete_nufi.ogg",languePrisEnCharge[indexDouala]:"${audioUrlBasePremierMot}11-la_tete_dla.ogg",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "11", imageUrl: "${imageUrlBasePremierMot}12-l_oreille.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBasePremierMot}12-les_oreilles_nufi.ogg",languePrisEnCharge[indexDouala]:"${audioUrlBasePremierMot}12-les_oreilles_dla.ogg",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),

   LectureModele(text: "12", imageUrl: "${imageUrlBasePremierMot}14-les_yeux.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBasePremierMot}14-les_yeux_nufi.ogg",languePrisEnCharge[indexDouala]:"${audioUrlBasePremierMot}14-les_yeux_dla.ogg",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "13", imageUrl: "${imageUrlBasePremierMot}15-la_main.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBasePremierMot}15-la_main_nufi.ogg",languePrisEnCharge[indexDouala]:"${audioUrlBasePremierMot}15-la_main_dla.ogg",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "14", imageUrl: "${imageUrlBasePremierMot}17-la_bouche.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBasePremierMot}17-la_bouche_nufi.ogg",languePrisEnCharge[indexDouala]:"${audioUrlBasePremierMot}17-la_bouche_dla.ogg",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "15", imageUrl: "${imageUrlBasePremierMot}dents.jpeg",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBasePremierMot}18-les_dents_nufi.ogg",languePrisEnCharge[indexDouala]:"${audioUrlBasePremierMot}18-les_dents_dla.ogg",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "16", imageUrl: "${imageUrlBasePremierMot}19-la_langue.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBasePremierMot}19-la_langue_nufi.ogg",languePrisEnCharge[indexDouala]:"${audioUrlBasePremierMot}19-la_langue_dla.ogg",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "17", imageUrl: "${imageUrlBasePremierMot}20-le_pied.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBasePremierMot}20-le_pied_nufi.ogg",languePrisEnCharge[indexDouala]:"${audioUrlBasePremierMot}20-le_pied_dla.ogg",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "18", imageUrl: "${imageUrlBasePremierMot}ventre.jpeg",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBasePremierMot}22-le_ventre_nufi.ogg",languePrisEnCharge[indexDouala]:"${audioUrlBasePremierMot}22-le_ventre_dla.ogg",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "19", imageUrl: "",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBasePremierMot}24-c_est_qui_nufi.ogg",languePrisEnCharge[indexDouala]:"${audioUrlBasePremierMot}24-c_est_qui_dla.ogg",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "20", imageUrl: "",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBasePremierMot}25-c_est_moi_nufi.ogg",languePrisEnCharge[indexDouala]:"${audioUrlBasePremierMot}25-c_est_moi_dla.ogg",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
 ];
