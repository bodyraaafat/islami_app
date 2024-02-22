import 'package:flutter/material.dart';
import 'package:islam_app_c10_sun_4pm/config/application_theme_manager.dart';

class TasbehView extends StatefulWidget {
  const TasbehView({super.key});

  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView> {
  int counter = 0;
  int index = 0;
  double angle = 0;
  List<String> tasgehList = [
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.075),
                child: Transform.rotate(
                    angle: angle,
                    child: Image.asset("assets/images/body_of_sebha.png")),
              ),
              Image.asset("assets/images/head _of_ seb7a .png")
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "عدد التسبيحات",
            style: TextStyle(
                fontSize: 25,
                fontFamily: "El Messiri",
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.all(25),
            child: Text(
              "$counter",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            decoration: BoxDecoration(
                color: ApplicationThemeManager.primaryColor,
                borderRadius: BorderRadius.circular(15)),
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              tasbeh();
            },
            child: Container(
              padding: EdgeInsets.all(15),
              child: Text(
                tasgehList[index],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              decoration: BoxDecoration(
                  color: ApplicationThemeManager.primaryColor,
                  borderRadius: BorderRadius.circular(25)),
            ),
          ),
        ],
      ),
    );
  }

  void tasbeh() {
    if (counter < 33) {
      angle += 0.7;
      counter++;
    } else {
      if (index < 2) {
        index++;
        counter = 0;
      } else {
        index = 0;
        counter = 0;
      }
    }
    setState(() {});
  }
}
