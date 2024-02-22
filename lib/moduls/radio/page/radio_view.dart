import 'package:flutter/material.dart';
import 'package:islam_app_c10_sun_4pm/config/application_theme_manager.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/radioimg.png",
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "إذاعة القرآن الكريم",
          style: TextStyle(
            fontSize: 25,
            fontFamily: "El Messiri",
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.skip_previous,
              size: 30,
              color: ApplicationThemeManager.primaryColor,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.play_arrow,
              size: 30,
              color: ApplicationThemeManager.primaryColor,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.skip_next,
              size: 30,
              color: ApplicationThemeManager.primaryColor,
            )
          ],
        )
      ],
    );
  }
}
