import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_lern/newgraph.dart';
import 'package:flutter_app_lern/calendar.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:flutter_app_lern/energy.dart';

class enePage extends StatefulWidget {
  @override
  _enePageState createState() => _enePageState();
}

class _enePageState extends State<enePage> {
  final fb = FirebaseDatabase.instance.reference();
  static var retrievedName = "";
  static var retrievedName2 = "";
  static var retrievedName3 = "";
  double units;
  String name = "";
  String Times = "";
  String k = "";
  String Datte = "";
  String Datte2 ="";
  String Datte3 ="";
  int Time; //its poornesh created time
  String y = "";
  String p = "";
  String seconds = "";
  var ref;
  String costs = "";
  String costs2 = "";
  String costs3 = "";
  double unit = 180;
  String textHolder = 'unit';
  String textHolder2 = 'rs';
  int bal;
  int rem;
  double readingUnit = 0;
  double priceElectricity = 0;
  double monthlypriceElectricity = 0;
  double monthlypriceElectricity2 = 0;
  double monthlypriceElectricity3 = 0;
  int retrieve;
  int values;
  int key = 2021011707;
  int currentunit;
  int previousunit;
  int today;
  int month;
  String d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,
  d15,d16,d17,d18,d19,d20,d21,d22,d23,d24,d25,d26,d27,d28;
  String p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,
  p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28;
  static var val1,val2,val3,val4,val5,val6,val7,val8,val9,val10,val11,val12,val13,val14,
  val15,val16,val17,val18,val19,val20,val21,val22,val23,val24,val25,val26,val27,val28;
  static var un1,un2,un3,un4,un5,un6,un7,un8,un9,un10,un11,un12,un13,un14,
  un15,un16,un17,un18,un19,un20,un21,un22,un23,un24,un25,un26,un27,un28;
 double day;
 double k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,
 k15,k16,k17,k18,k19,k20,k21,k22,k23,k24,k25,k26,k27,k28;
 double l1,l2,l3,l4,l5,l6,l7,l8,l9,l10,l11,l12,l13,l14,
 l15,l16,l17,l18,l19,l20,l21,l22,l23,l24,l25,l26,l27,l28;

  changeText(String j) {
    setState(() {
      textHolder = j;
    });
  }
  changeText2(String i){
    setState(() {
      textHolder2 = i;
    });
  }
  average(){
    DateTime now = DateTime.now();
    today = now.day;
    month = now.month;
    bal = 55;
    if(month >= 10){
      d1 = "${now.year}${now.month}${1}$bal";d2 = "${now.year}${now.month}${2}$bal";
      d3 = "${now.year}${now.month}${3}$bal";d4 = "${now.year}${now.month}${4}$bal";
      d5 = "${now.year}${now.month}${5}$bal";d6 = "${now.year}${now.month}${6}$bal";
      d7 = "${now.year}${now.month}${7}$bal";d8 = "${now.year}${now.month}${8}$bal";
      d9 = "${now.year}${now.month}${9}$bal";d10= "${now.year}${now.month}${10}$bal";
      d11= "${now.year}${now.month}${11}$bal";d12= "${now.year}${now.month}${12}$bal";
      d13= "${now.year}${now.month}${13}$bal";d14= "${now.year}${now.month}${14}$bal";
      d15= "${now.year}${now.month}${15}$bal";d16= "${now.year}${now.month}${16}$bal";
      d17= "${now.year}${now.month}${17}$bal";d18= "${now.year}${now.month}${18}$bal";
      d19= "${now.year}${now.month}${19}$bal";d20= "${now.year}${now.month}${20}$bal";
      d22= "${now.year}${now.month}${22}$bal";d23= "${now.year}${now.month}${23}$bal";
      d24= "${now.year}${now.month}${24}$bal";d25= "${now.year}${now.month}${25}$bal";
      d26= "${now.year}${now.month}${26}$bal";d27= "${now.year}${now.month}${27}$bal";
      d28= "${now.year}${now.month}${28}$bal";

      p1 = "${now.year}${now.month-1}${1}$bal";p2 = "${now.year}${now.month-1}${2}$bal";
      p3 = "${now.year}${now.month-1}${3}$bal";p4 = "${now.year}${now.month-1}${4}$bal";
      p5 = "${now.year}${now.month-1}${5}$bal";p6 = "${now.year}${now.month-1}${6}$bal";
      p7 = "${now.year}${now.month-1}${7}$bal";p8 = "${now.year}${now.month-1}${8}$bal";
      p9 = "${now.year}${now.month-1}${9}$bal";p10= "${now.year}${now.month-1}${10}$bal";
      p11= "${now.year}${now.month-1}${11}$bal";p12= "${now.year}${now.month-1}${12}$bal";
      p13= "${now.year}${now.month-1}${13}$bal";p14= "${now.year}${now.month-1}${14}$bal";
      p15= "${now.year}${now.month-1}${15}$bal";p16= "${now.year}${now.month-1}${16}$bal";
      p17= "${now.year}${now.month-1}${17}$bal";p18= "${now.year}${now.month-1}${18}$bal";
      p19= "${now.year}${now.month-1}${19}$bal";p20= "${now.year}${now.month-1}${20}$bal";
      p22= "${now.year}${now.month-1}${22}$bal";p23= "${now.year}${now.month-1}${23}$bal";
      p24= "${now.year}${now.month-1}${24}$bal";p25= "${now.year}${now.month-1}${25}$bal";
      p26= "${now.year}${now.month-1}${26}$bal";p27= "${now.year}${now.month-1}${27}$bal";
      p28= "${now.year}${now.month-1}${28}$bal";

      ref.child(d1).once().then((DataSnapshot data){setState((){val1=data.value;});});
      ref.child(d2).once().then((DataSnapshot data){setState((){val2=data.value;});});
      ref.child(d3).once().then((DataSnapshot data){setState((){val3=data.value;});});
      ref.child(d4).once().then((DataSnapshot data){setState((){val4=data.value;});});
      ref.child(d5).once().then((DataSnapshot data){setState((){val5=data.value;});});
      ref.child(d6).once().then((DataSnapshot data){setState((){val6=data.value;});});
      ref.child(d7).once().then((DataSnapshot data){setState((){val7=data.value;});});
      ref.child(d8).once().then((DataSnapshot data){setState((){val8=data.value;});});
      ref.child(d9).once().then((DataSnapshot data){setState((){val9=data.value;});});
      ref.child(d10).once().then((DataSnapshot data){setState((){val10=data.value;});});
      ref.child(d11).once().then((DataSnapshot data){setState((){val11=data.value;});});
      ref.child(d12).once().then((DataSnapshot data){setState((){val12=data.value;});});
      ref.child(d13).once().then((DataSnapshot data){setState((){val13=data.value;});});
      ref.child(d14).once().then((DataSnapshot data){setState((){val14=data.value;});});
      ref.child(d15).once().then((DataSnapshot data){setState((){val15=data.value;});});
      ref.child(d16).once().then((DataSnapshot data){setState((){val16=data.value;});});
      ref.child(d17).once().then((DataSnapshot data){setState((){val17=data.value;});});
      ref.child(d18).once().then((DataSnapshot data){setState((){val18=data.value;});});
      ref.child(d19).once().then((DataSnapshot data){setState((){val19=data.value;});});
      ref.child(d20).once().then((DataSnapshot data){setState((){val20=data.value;});});
      ref.child(d21).once().then((DataSnapshot data){setState((){val21=data.value;});});
      ref.child(d22).once().then((DataSnapshot data){setState((){val22=data.value;});});
      ref.child(d23).once().then((DataSnapshot data){setState((){val23=data.value;});});
      ref.child(d24).once().then((DataSnapshot data){setState((){val24=data.value;});});
      ref.child(d25).once().then((DataSnapshot data){setState((){val25=data.value;});});
      ref.child(d26).once().then((DataSnapshot data){setState((){val26=data.value;});});
      ref.child(d27).once().then((DataSnapshot data){setState((){val27=data.value;});});
      ref.child(d28).once().then((DataSnapshot data){setState((){val28=data.value;});});

      ref.child(p1).once().then((DataSnapshot data){setState((){un1=data.value;});});
      ref.child(p2).once().then((DataSnapshot data){setState((){un2=data.value;});});
      ref.child(p3).once().then((DataSnapshot data){setState((){un3=data.value;});});
      ref.child(p4).once().then((DataSnapshot data){setState((){un4=data.value;});});
      ref.child(p5).once().then((DataSnapshot data){setState((){un5=data.value;});});
      ref.child(p6).once().then((DataSnapshot data){setState((){un6=data.value;});});
      ref.child(p7).once().then((DataSnapshot data){setState((){un7=data.value;});});
      ref.child(p8).once().then((DataSnapshot data){setState((){un8=data.value;});});
      ref.child(p9).once().then((DataSnapshot data){setState((){un9=data.value;});});
      ref.child(p10).once().then((DataSnapshot data){setState((){un10=data.value;});});
      ref.child(p11).once().then((DataSnapshot data){setState((){un11=data.value;});});
      ref.child(p12).once().then((DataSnapshot data){setState((){un12=data.value;});});
      ref.child(p13).once().then((DataSnapshot data){setState((){un13=data.value;});});
      ref.child(p14).once().then((DataSnapshot data){setState((){un14=data.value;});});
      ref.child(p15).once().then((DataSnapshot data){setState((){un15=data.value;});});
      ref.child(p16).once().then((DataSnapshot data){setState((){un16=data.value;});});
      ref.child(p17).once().then((DataSnapshot data){setState((){un17=data.value;});});
      ref.child(p18).once().then((DataSnapshot data){setState((){un18=data.value;});});
      ref.child(p19).once().then((DataSnapshot data){setState((){un19=data.value;});});
      ref.child(p20).once().then((DataSnapshot data){setState((){un20=data.value;});});
      ref.child(p21).once().then((DataSnapshot data){setState((){un21=data.value;});});
      ref.child(p22).once().then((DataSnapshot data){setState((){un22=data.value;});});
      ref.child(p23).once().then((DataSnapshot data){setState((){un23=data.value;});});
      ref.child(p24).once().then((DataSnapshot data){setState((){un24=data.value;});});
      ref.child(p25).once().then((DataSnapshot data){setState((){un25=data.value;});});
      ref.child(p26).once().then((DataSnapshot data){setState((){un26=data.value;});});
      ref.child(p27).once().then((DataSnapshot data){setState((){un27=data.value;});});
      ref.child(p28).once().then((DataSnapshot data){setState((){un28=data.value;});});

    }
    else{

      d1 = "${now.year}0${now.month}${1}$bal";d2 = "${now.year}0${now.month}${2}$bal";
      d3 = "${now.year}0${now.month}${3}$bal";d4 = "${now.year}0${now.month}${4}$bal";
      d5 = "${now.year}0${now.month}${5}$bal";d6 = "${now.year}0${now.month}${6}$bal";
      d7 = "${now.year}0${now.month}${7}$bal";d8 = "${now.year}0${now.month}${8}$bal";
      d9 = "${now.year}0${now.month}${9}$bal";d10= "${now.year}0${now.month}${10}$bal";
      d11= "${now.year}0${now.month}${11}$bal";d12= "${now.year}0${now.month}${12}$bal";
      d13= "${now.year}0${now.month}${13}$bal";d14= "${now.year}0${now.month}${14}$bal";
      d15= "${now.year}0${now.month}${15}$bal";d16= "${now.year}0${now.month}${16}$bal";
      d17= "${now.year}0${now.month}${17}$bal";d18= "${now.year}0${now.month}${18}$bal";
      d19= "${now.year}0${now.month}${19}$bal";d20= "${now.year}0${now.month}${20}$bal";
      d22= "${now.year}0${now.month}${22}$bal";d23= "${now.year}0${now.month}${23}$bal";
      d24= "${now.year}0${now.month}${24}$bal";d25= "${now.year}0${now.month}${25}$bal";
      d26= "${now.year}0${now.month}${26}$bal";d27= "${now.year}0${now.month}${27}$bal";
      d28= "${now.year}0${now.month}${28}$bal";

      p1 = "${now.year}0${now.month-1}${1}$bal";p2 = "${now.year}0${now.month-1}${2}$bal";
      p3 = "${now.year}0${now.month-1}${3}$bal";p4 = "${now.year}0${now.month-1}${4}$bal";
      p5 = "${now.year}0${now.month-1}${5}$bal";p6 = "${now.year}0${now.month-1}${6}$bal";
      p7 = "${now.year}0${now.month-1}${7}$bal";p8 = "${now.year}0${now.month-1}${8}$bal";
      p9 = "${now.year}0${now.month-1}${9}$bal";p10= "${now.year}0${now.month-1}${10}$bal";
      p11= "${now.year}0${now.month-1}${11}$bal";p12= "${now.year}0${now.month-1}${12}$bal";
      p13= "${now.year}0${now.month-1}${13}$bal";p14= "${now.year}0${now.month-1}${14}$bal";
      p15= "${now.year}0${now.month-1}${15}$bal";p16= "${now.year}0${now.month-1}${16}$bal";
      p17= "${now.year}0${now.month-1}${17}$bal";p18= "${now.year}0${now.month-1}${18}$bal";
      p19= "${now.year}0${now.month-1}${19}$bal";p20= "${now.year}0${now.month-1}${20}$bal";
      p22= "${now.year}0${now.month-1}${22}$bal";p23= "${now.year}0${now.month-1}${23}$bal";
      p24= "${now.year}0${now.month-1}${24}$bal";p25= "${now.year}0${now.month-1}${25}$bal";
      p26= "${now.year}0${now.month-1}${26}$bal";p27= "${now.year}0${now.month-1}${27}$bal";
      p28= "${now.year}0${now.month-1}${28}$bal";


      ref.child(d1).once().then((DataSnapshot data){setState((){val1=data.value;});});
      ref.child(d2).once().then((DataSnapshot data){setState((){val2=data.value;});});
      ref.child(d3).once().then((DataSnapshot data){setState((){val3=data.value;});});
      ref.child(d4).once().then((DataSnapshot data){setState((){val4=data.value;});});
      ref.child(d5).once().then((DataSnapshot data){setState((){val5=data.value;});});
      ref.child(d6).once().then((DataSnapshot data){setState((){val6=data.value;});});
      ref.child(d7).once().then((DataSnapshot data){setState((){val7=data.value;});});
      ref.child(d8).once().then((DataSnapshot data){setState((){val8=data.value;});});
      ref.child(d9).once().then((DataSnapshot data){setState((){val9=data.value;});});
      ref.child(d10).once().then((DataSnapshot data){setState((){val10=data.value;});});
      ref.child(d11).once().then((DataSnapshot data){setState((){val11=data.value;});});
      ref.child(d12).once().then((DataSnapshot data){setState((){val12=data.value;});});
      ref.child(d13).once().then((DataSnapshot data){setState((){val13=data.value;});});
      ref.child(d14).once().then((DataSnapshot data){setState((){val14=data.value;});});
      ref.child(d15).once().then((DataSnapshot data){setState((){val15=data.value;});});
      ref.child(d16).once().then((DataSnapshot data){setState((){val16=data.value;});});
      ref.child(d17).once().then((DataSnapshot data){setState((){val17=data.value;});});
      ref.child(d18).once().then((DataSnapshot data){setState((){val18=data.value;});});
      ref.child(d19).once().then((DataSnapshot data){setState((){val19=data.value;});});
      ref.child(d20).once().then((DataSnapshot data){setState((){val20=data.value;});});
      ref.child(d21).once().then((DataSnapshot data){setState((){val21=data.value;});});
      ref.child(d22).once().then((DataSnapshot data){setState((){val22=data.value;});});
      ref.child(d23).once().then((DataSnapshot data){setState((){val23=data.value;});});
      ref.child(d24).once().then((DataSnapshot data){setState((){val24=data.value;});});
      ref.child(d25).once().then((DataSnapshot data){setState((){val25=data.value;});});
      ref.child(d26).once().then((DataSnapshot data){setState((){val26=data.value;});});
      ref.child(d27).once().then((DataSnapshot data){setState((){val27=data.value;});});
      ref.child(d28).once().then((DataSnapshot data){setState((){val28=data.value;});});

      ref.child(p1).once().then((DataSnapshot data){setState((){un1=data.value;});});
      ref.child(p2).once().then((DataSnapshot data){setState((){un2=data.value;});});
      ref.child(p3).once().then((DataSnapshot data){setState((){un3=data.value;});});
      ref.child(p4).once().then((DataSnapshot data){setState((){un4=data.value;});});
      ref.child(p5).once().then((DataSnapshot data){setState((){un5=data.value;});});
      ref.child(p6).once().then((DataSnapshot data){setState((){un6=data.value;});});
      ref.child(p7).once().then((DataSnapshot data){setState((){un7=data.value;});});
      ref.child(p8).once().then((DataSnapshot data){setState((){un8=data.value;});});
      ref.child(p9).once().then((DataSnapshot data){setState((){un9=data.value;});});
      ref.child(p10).once().then((DataSnapshot data){setState((){un10=data.value;});});
      ref.child(p11).once().then((DataSnapshot data){setState((){un11=data.value;});});
      ref.child(p12).once().then((DataSnapshot data){setState((){un12=data.value;});});
      ref.child(p13).once().then((DataSnapshot data){setState((){un13=data.value;});});
      ref.child(p14).once().then((DataSnapshot data){setState((){un14=data.value;});});
      ref.child(p15).once().then((DataSnapshot data){setState((){un15=data.value;});});
      ref.child(p16).once().then((DataSnapshot data){setState((){un16=data.value;});});
      ref.child(p17).once().then((DataSnapshot data){setState((){un17=data.value;});});
      ref.child(p18).once().then((DataSnapshot data){setState((){un18=data.value;});});
      ref.child(p19).once().then((DataSnapshot data){setState((){un19=data.value;});});
      ref.child(p20).once().then((DataSnapshot data){setState((){un20=data.value;});});
      ref.child(p21).once().then((DataSnapshot data){setState((){un21=data.value;});});
      ref.child(p22).once().then((DataSnapshot data){setState((){un22=data.value;});});
      ref.child(p23).once().then((DataSnapshot data){setState((){un23=data.value;});});
      ref.child(p24).once().then((DataSnapshot data){setState((){un24=data.value;});});
      ref.child(p25).once().then((DataSnapshot data){setState((){un25=data.value;});});
      ref.child(p26).once().then((DataSnapshot data){setState((){un26=data.value;});});
      ref.child(p27).once().then((DataSnapshot data){setState((){un27=data.value;});});
      ref.child(p28).once().then((DataSnapshot data){setState((){un28=data.value;});});

    }
    k1=un2-un1;k2=un3-un2;
    k3=un4-un3;k4=un5-un4;
    k5=un6-un5;k6=un7-un6;
    k7=un8-un7;k8=un9-un8;
    k9=un10-un9;k10=un11-un10;
    k11=un12-un11;k12=un13-un12;
    k13=un14-un13;k14=un15-un14;
    k15=un16-un15;k16=un17-un16;
    k17=un18-un17;k18=un19-un18;
    k19=un20-un19;k20=un21-un20;
    k21=un22-un21;k22=un23-un22;
    k23=un24-un23;k24=un25-un24;
    k25=un26-un25;k26=un27-un26;
    k27=un28-un27;


    l27=val28-val27;l26=val27-val26;
    l25=val26-val25;l24=val25-val24;
    l23=val24-val23;l22=val23-val22;
    l21=val22-val21;l20=val21-val20;
    l19=val20-val19;l18=val19-val18;
    l17=val18-val17;l16=val17-val16;
    l15=val16-val15;l14=val15-val14;
    l13=val14-val13;l12=val13-val12;
    l11=val12-val11;l10=val11-val10;
    l9=val10-val9;l8=val9-val8;
    l7=val8-val7;l6=val7-val6;
    l5=val6-val5;l4=val5-val4;
    l3=val4-val3;l2=val3-val2;
    l1=val2-val1;

  switch (today){
    case 1:day= (k1+k2+k3+k4+k5+k6+k7+k8+k9+k10+k11+k12+k13+k14+k15+k16+k17+k18+k19+k20+k21+k22+k23+k24+k25+k26+k27)/27;break;

    case 2:day= (k1+k2+k3+k4+k5+k6+k7+k8+k9+k10+k11+k12+k13+k14+k15+k16+k17+k18+k19+k20+k21+k22+k23+k24+k25+k26+k27)/27;break;

    case 3:day= (k2+k3+k4+k5+k6+k7+k8+k9+k10+k11+k12+k13+k14+k15+k16+k17+k18+k19+k20+k21+k22+k23+k24+k25+k26+k27+l1)/27;break;

    case 4:day= (k3+k4+k5+k6+k7+k8+k9+k10+k11+k12+k13+k14+k15+k16+k17+k18+k19+k20+k21+k22+k23+k24+k25+k26+k27+l1+l2)/27;break;

    case 5:day= (k4+k5+k6+k7+k8+k9+k10+k11+k12+k13+k14+k15+k16+k17+k18+k19+k20+k21+k22+k23+k24+k25+k26+k27+l1+l2+l3)/27;break;

    case 6:day= (k5+k6+k7+k8+k9+k10+k11+k12+k13+k14+k15+k16+k17+k18+k19+k20+k21+k22+k23+k24+k25+k26+k27+l1+l2+l3+l4)/27;break;

    case 7:day= (k6+k7+k8+k9+k10+k11+k12+k13+k14+k15+k16+k17+k18+k19+k20+k21+k22+k23+k24+k25+k26+k27+l1+l2+l3+l4+l5)/27;break;

    case 8:day= (k7+k8+k9+k10+k11+k12+k13+k14+k15+k16+k17+k18+k19+k20+k21+k22+k23+k24+k25+k26+k27+l1+l2+l3+l4+l5+l6)/27;break;

    case 9:day= (k8+k9+k10+k11+k12+k13+k14+k15+k16+k17+k18+k19+k20+k21+k22+k23+k24+k25+k26+k27+l1+l2+l3+l4+l5+l6+l7)/27;break;

    case 10:day= (k9+k10+k11+k12+k13+k14+k15+k16+k17+k18+k19+k20+k21+k22+k23+k24+k25+k26+k27+l1+l2+l3+l4+l5+l6+l7+l8)/27;break;

    case 11:day= (k10+k11+k12+k13+k14+k15+k16+k17+k18+k19+k20+k21+k22+k23+k24+k25+k26+k27+l1+l2+l3+l4+l5+l6+l7+l8+l9)/27;break;

    case 12:day= (k11+k12+k13+k14+k15+k16+k17+k18+k19+k20+k21+k22+k23+k24+k25+k26+k27+l1+l2+l3+l4+l5+l6+l7+l8+l9+l10)/27;break;

    case 13:day= (k12+k13+k14+k15+k16+k17+k18+k19+k20+k21+k22+k23+k24+k25+k26+k27+l1+l2+l3+l4+l5+l6+l7+l8+l9+l10+l11)/27;break;

    case 14:day= (k13+k14+k15+k16+k17+k18+k19+k20+k21+k22+k23+k24+k25+k26+k27+l1+l2+l3+l4+l5+l6+l7+l8+l9+l10+l11+l12)/27;break;

    case 15:day= (k14+k15+k16+k17+k18+k19+k20+k21+k22+k23+k24+k25+k26+k27+l1+l2+l3+l4+l5+l6+l7+l8+l9+l10+l11+l12+l13)/27;break;

    case 16:day= (k15+k16+k17+k18+k19+k20+k21+k22+k23+k24+k25+k26+k27+l1+l2+l3+l4+l5+l6+l7+l8+l9+l10+l11+l12+l13+l14)/27;break;

    case 17:day= (k16+k17+k18+k19+k20+k21+k22+k23+k24+k25+k26+k27+l1+l2+l3+l4+l5+l6+l7+l8+l9+l10+l11+l12+l13+l14+l15)/27;break;

    case 18:day= (k17+k18+k19+k20+k21+k22+k23+k24+k25+k26+k27+l1+l2+l3+l4+l5+l6+l7+l8+l9+l10+l11+l12+l13+l14+l15+l16)/27;break;

    case 19:day= (k18+k19+k20+k21+k22+k23+k24+k25+k26+k27+l1+l2+l3+l4+l5+l6+l7+l8+l9+l10+l11+l12+l13+l14+l15+l16+l17)/27;break;

    case 20:day= (k19+k20+k21+k22+k23+k24+k25+k26+k27+l1+l2+l3+l4+l5+l6+l7+l8+l9+l10+l11+l12+l13+l14+l15+l16+l17+l18)/27;break;

    case 21:day= (k20+k21+k22+k23+k24+k25+k26+k27+l1+l2+l3+l4+l5+l6+l7+l8+l9+l10+l11+l12+l13+l14+l15+l16+l17+l18+l19)/27;break;

    case 22:day= (k21+k22+k23+k24+k25+k26+k27+l1+l2+l3+l4+l5+l6+l7+l8+l9+l10+l11+l12+l13+l14+l15+l16+l17+l18+l19+l20)/27;break;

    case 23:day= (k22+k23+k24+k25+k26+k27+l1+l2+l3+l4+l5+l6+l7+l8+l9+l10+l11+l12+l13+l14+l15+l16+l17+l18+l19+l20+l21)/27;break;

    case 24:day= (k23+k24+k25+k26+k27+l1+l2+l3+l4+l5+l6+l7+l8+l9+l10+l11+l12+l13+l14+l15+l16+l17+l18+l19+l20+l21+l22)/27;break;

    case 25:day= (k24+k25+k26+k27+l1+l2+l3+l4+l5+l6+l7+l8+l9+l10+l11+l12+l13+l14+l15+l16+l17+l18+l19+l20+l21+l22+l23)/27;break;

    case 26:day= (k25+k26+k27+l1+l2+l3+l4+l5+l6+l7+l8+l9+l10+l11+l12+l13+l14+l15+l16+l17+l18+l19+l20+l21+l22+l23+l24)/27;break;

    case 27:day= (k26+k27+l1+l2+l3+l4+l5+l6+l7+l8+l9+l10+l11+l12+l13+l14+l15+l16+l17+l18+l19+l20+l21+l22+l23+l24+l25)/27;break;

    case 28:day= (k27+l1+l2+l3+l4+l5+l6+l7+l8+l9+l10+l11+l12+l13+l14+l15+l16+l17+l18+l19+l20+l21+l22+l23+l24+l25+l26)/27;break;

    case 29:day= (l1+l2+l3+l4+l5+l6+l7+l8+l9+l10+l11+l12+l13+l14+l15+l16+l17+l18+l19+l20+l21+l22+l23+l24+l25+l26+l27)/27;break;

    case 30:day= (l1+l2+l3+l4+l5+l6+l7+l8+l9+l10+l11+l12+l13+l14+l15+l16+l17+l18+l19+l20+l21+l22+l23+l24+l25+l26+l27)/27;break;

    case 31:day= (l1+l2+l3+l4+l5+l6+l7+l8+l9+l10+l11+l12+l13+l14+l15+l16+l17+l18+l19+l20+l21+l22+l23+l24+l25+l26+l27)/27;break;

  }
  }
  currentprice() {
    if (currentunit >= 0 && currentunit <= 50) {
      monthlypriceElectricity = currentunit * 2.90;
    }
    else if (currentunit >= 51 && currentunit <= 100) {
      monthlypriceElectricity = (50 * 2.90) + (currentunit - 50) * 3.70;
    } else if (currentunit >= 101 && currentunit <= 150) {
      monthlypriceElectricity =
          (50 * 2.90) + (100 * 3.70) + (currentunit - 100) * 4.80;
    } else if (currentunit >= 151 && currentunit <= 200) {
      monthlypriceElectricity =
          (50 * 2.90) + (100 * 3.70) + (150 * 4.80) + (currentunit - 150) * 6.40;
    } else if (currentunit >= 201) {
      monthlypriceElectricity =
          (50 * 2.90) + (100 * 3.70) + (150 * 4.80) + (250 * 6.40) +
              (currentunit - 250) * 7.50;
    }
    else
      print("unit doesnot calculated");
    setState(() {
      costs = "$monthlypriceElectricity";

    });
  }
  previousprice(){
    if (previousunit >= 0 && previousunit <= 50) {
      monthlypriceElectricity2 = previousunit * 2.90;
    }
    else if (previousunit >= 51 && previousunit <= 100) {
      monthlypriceElectricity2 = (50 * 2.90) + (previousunit - 50) * 3.70;
    } else if (previousunit >= 101 && previousunit <= 150) {
      monthlypriceElectricity2 =
          (50 * 2.90) + (100 * 3.70) + (previousunit - 100) * 4.80;
    } else if (previousunit >= 151 && previousunit <= 200) {
      monthlypriceElectricity2 =
          (50 * 2.90) + (100 * 3.70) + (150 * 4.80) + (previousunit - 150) * 6.40;
    } else if (previousunit >= 201) {
      monthlypriceElectricity2 =
          (50 * 2.90) + (100 * 3.70) + (150 * 4.80) + (250 * 6.40) +
              (previousunit - 250) * 7.50;
    }
    else
      print("unit doesnot calculated");
    setState(() {
      costs2 = "$monthlypriceElectricity2";

    });


  }
  estimatedprice(){
    if (day >= 0 && day <= 50) {
      monthlypriceElectricity3 = day * 2.90;
    }
    else if (day >= 51 && day <= 100) {
      monthlypriceElectricity3 = (50 * 2.90) + (day - 50) * 3.70;
    } else if (day >= 101 && day <= 150) {
      monthlypriceElectricity3 =
          (50 * 2.90) + (100 * 3.70) + (day - 100) * 4.80;
    } else if (day >= 151 && day <= 200) {
      monthlypriceElectricity3 =
          (50 * 2.90) + (100 * 3.70) + (150 * 4.80) + (day - 150) * 6.40;
    } else if (day >= 201) {
      monthlypriceElectricity3 =
          (50 * 2.90) + (100 * 3.70) + (150 * 4.80) + (250 * 6.40) +
              (day - 250) * 7.50;
    }
    else
      print("unit doesnot calculated");
    setState(() {
      costs3 = "$monthlypriceElectricity3";

    });




  }
  currentfunction() {
    final ref = fb.reference().child("");
    DateTime now = DateTime.now();
    print("${now.second}:${now.microsecond}");
    seconds = "${now.second}";
    Time = int.parse(seconds);
    rem = Time % 5;
    bal =55;
    //Time - rem;
    if (now.month >= 10) {
      Datte = "${now.year}${now.month}${now.day}$bal";
      Datte2 = "${now.year}${now.month-1}${31}$bal";
      print(Datte);
      ref.child(Datte).once().then((DataSnapshot data) {
        setState(() {
          retrievedName = data.value;
        });
        // cost(retrievedName);
      });
      ref.child(Datte2).once().then((DataSnapshot data) {
        setState(() {
          retrievedName2 = data.value;
        });
        // cost(retrievedName);
      });
      currentunit=int.parse(retrievedName) -int.parse(retrievedName2);
    } else {
      Datte = "${now.year}0${now.month}${now.day}$bal";
      Datte2 = "${now.year}0${now.month-1}${31}$bal";
      print(Datte);
      ref.child(Datte).once().then((DataSnapshot data) {
        setState(() {
          retrievedName = data.value;
        });
        // cost(retrievedName);
      });
      ref.child(Datte2).once().then((DataSnapshot data) {
        setState(() {
          retrievedName2 = data.value;
        });
        // cost(retrievedName);
      });
      currentunit=int.parse(retrievedName) -int.parse(retrievedName2);
    }
  }
  previousfuntion(){
    final ref = fb.reference().child("");
    DateTime now = DateTime.now();
    print("${now.second}:${now.microsecond}");
    seconds = "${now.second}";
    Time = int.parse(seconds);
    rem = Time % 5;
    bal =55;
    //Time - rem;
    if (now.month >= 10) {
      Datte2 = "${now.year}${now.month-1}${31}$bal";
      Datte3 = "${now.year}${now.month-2}${31}$bal";
      ref.child(Datte2).once().then((DataSnapshot data) {
        setState(() {
          retrievedName2 = data.value;
        });
        // cost(retrievedName);
      });
      ref.child(Datte3).once().then((DataSnapshot data) {
        setState(() {
          retrievedName3 = data.value;
        });
        // cost(retrievedName);
      });
      previousunit=int.parse(retrievedName2) -int.parse(retrievedName3);
    } else {
      Datte2 = "${now.year}0${now.month-1}${31}$bal";
      Datte3 = "${now.year}0${now.month-2}${31}$bal";
      ref.child(Datte2).once().then((DataSnapshot data) {
        setState(() {
          retrievedName2 = data.value;
        });
        // cost(retrievedName);
      });
      ref.child(Datte3).once().then((DataSnapshot data) {
        setState(() {
          retrievedName3 = data.value;
        });
        // cost(retrievedName);
      });
      previousunit=int.parse(retrievedName2) -int.parse(retrievedName3);
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text('home'),
        ),
        body: ListView(
          children: [
            Container(
              color: Colors.black,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Card(
                                color: Colors.white24,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)),
                                elevation: 16,
                                child: Container(
                                  width: 150,
                                  height: 225,
                                  //color: Colors.transparent,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      // SvgPicture.network(
                                      //   'https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FScalable_Vector_Graphics&psig=AOvVaw3q_Yu9415TAW-S6PBFhdvG&ust=1602328406520000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMipt9Kwp-wCFQAAAAAdAAAAABAJ',
                                      //   height: 128,
                                      // ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 15, bottom: 45),
                                        child: Text(
                                          'Consumption',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.normal,
                                              color: Colors.white70,
                                              fontSize: 22,
                                              fontFamily: "Broadway"),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.fromLTRB(10, 5, 10, 2),
                                        child: Center(
                                          child: Text('$textHolder',
                                              //54
                                              style: TextStyle(
                                                fontSize: 30,
                                                fontStyle: FontStyle.normal,
                                                color: Colors.white,
                                                fontFamily: "Broadway",
                                                fontWeight: FontWeight.bold,
                                              )),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.fromLTRB(65, 1, 2, 5),
                                        child: Text(
                                          "unit",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.normal,
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontFamily: "Broadway"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Card(
                                color: Colors.white24,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                elevation: 4,
                                child: Container(
                                  width: 150,
                                  height: 225,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      // SvgPicture.network(
                                      //   'https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FScalable_Vector_Graphics&psig=AOvVaw3q_Yu9415TAW-S6PBFhdvG&ust=1602328406520000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMipt9Kwp-wCFQAAAAAdAAAAABAJ',
                                      //   height: 128,
                                      // ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 15, bottom: 45),
                                        child: Text(
                                          'Price',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.normal,
                                              color: Colors.white70,
                                              fontSize: 22,
                                              fontFamily: "Broadway"),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.fromLTRB(10, 5, 10, 2),
                                        child: Center(
                                          child: Text('$textHolder2'
                                              //'857.0'
                                              , style: TextStyle(
                                                fontSize: 30,
                                                fontStyle: FontStyle.normal,
                                                color: Colors.white,
                                                fontFamily: "Broadway",
                                                fontWeight: FontWeight.bold,
                                              )),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.fromLTRB(65, 1, 2, 5),
                                        child: Text(
                                          "rupees",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.normal,
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontFamily: "Broadway"),
                                        ),
                                      ),
                                      //  SizedBox(height: 110,),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                            color: Colors.white10,
                            child: Container(
                              height: 130,

                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(),
                                    // top: 10, left: 30.0, right: 30.0, bottom: 10),
                                    child: GestureDetector(
                                         onTap: () =>{
                                           previousfuntion(),
                                           previousprice(),
                                           changeText('$previousunit'),
                                           changeText2(costs2)

                                         },
                                      //   SwitchOne(),
                                      //  ushafan();

                                      child: ClipOval(
                                        child: Padding(
                                          child: Container(
                                            //color: _colors[_currentIndex],
                                            height:
                                            90.0, // height of the button
                                            width: 90.0, // width of the button
                                            child: Center(
                                              child: Text(
                                                'Previous',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle: FontStyle.normal,
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontFamily: "Broadway"),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.blue,
                                                width: 2,
                                              ),
                                              shape: BoxShape.circle,
                                              color: Colors.lightBlue,
                                            ),
                                          ),
                                          padding: EdgeInsets.only(
                                              left: 8, right: 10),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(),
                                    // top: 10, left: 30.0, right: 30.0, bottom: 10),
                                    child: GestureDetector(
                                       onTap: () =>
                                       {
                                         currentfunction(),
                                         currentprice(),
                                         changeText('$currentunit'),
                                         changeText2(costs)
                                    },
                                      //   SwitchOne(),
                                      //  ushafan();

                                      child: ClipOval(
                                        child: Padding(
                                          child: Container(
                                            //color: _colors[_currentIndex],
                                            height:
                                            90.0, // height of the button
                                            width: 90.0, // width of the button
                                            child: Center(
                                              child: Text(
                                                'Current',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle: FontStyle.normal,
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontFamily: "Broadway"),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.blue,
                                                width: 2,
                                              ),
                                              shape: BoxShape.circle,
                                              color: Colors.lightBlue,
                                            ),
                                          ),
                                          padding: EdgeInsets.only(
                                              left: 2, right: 10),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(),
                                    // top: 10, left: 30.0, right: 30.0, bottom: 10),
                                    child: GestureDetector(
                        onTap: () =>
                       {
                         estimatedprice(),
                       average(),
                       changeText("$day"),
                         changeText(costs3)
                               },
                                      //   SwitchOne(),
                                      //  ushafan();

                                      child: ClipOval(
                                        child: Padding(
                                          child: Container(
                                            //color: _colors[_currentIndex],
                                            height:
                                            90.0, // height of the button
                                            width: 90.0, // width of the button
                                            child: Center(
                                              child: Text(
                                                'Estimated',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle: FontStyle.normal,
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontFamily: "Broadway"),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.blue,
                                                width: 2,
                                              ),
                                              shape: BoxShape.circle,
                                              color: Colors.lightBlue,
                                            ),
                                          ),
                                          padding: EdgeInsets.only(
                                              left: 2, right: 10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                              color: Colors.white24,
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width*0.4,
                                child:InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MyHome()
                                      ),
                                    );

                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(builder: (context) =>Switches(),),
                                    // );
                                  },
                                  child: Column(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8.0),
                                          topRight: Radius.circular(8.0),
                                        ),
                                        child: Padding(
                                          child:Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children:[ Text('Graph View',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FontStyle.normal,
                                                  color: Colors.lightGreen[100],
                                                  fontSize: 20,
                                                  letterSpacing: 3,
                                                  fontFamily: "Broadway",
                                                ),),]
                                          ),
                                          padding: EdgeInsets.only(top:14),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                              color: Colors.white24,
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width*0.4,
                                child:InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Calendar()),
                                    );
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(builder: (context) =>Switches(),),
                                    // );
                                  },
                                  child: Column(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8.0),
                                          topRight: Radius.circular(8.0),
                                        ),
                                        child: Padding(
                                          child: Center(
                                            child: Text('Calender',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FontStyle.normal,
                                                  color: Colors.lightGreen[100],
                                                  fontSize: 20,
                                                  letterSpacing: 3,
                                                  fontFamily: "Broadway",
                                                )),
                                          ),
                                          padding: EdgeInsets.only(top:14),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(15.0))),
                        color: Colors.white24,
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width*0.4,
                          child:InkWell(
                            onTap: () {
                                  launch(
                                      "https://wss.kseb.in/selfservices/quickpay");
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) =>Switches(),),
                              // );
                            },
                            child: Column(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0),
                                  ),
                                  child: Padding(
                                    child: Center(
                                      child: Text('Online Pay',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal,
                                            color: Colors.lightGreen[100],
                                            fontSize: 20,
                                            letterSpacing: 3,
                                            fontFamily: "Broadway",
                                          )),
                                    ),
                                    padding: EdgeInsets.only(top:14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40,)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}