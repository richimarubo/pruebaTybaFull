import 'package:flutter/material.dart';
import 'package:liquid_swipe/Helpers/Helpers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:tengalo/src/widgets/liquid_pages.dart';
import 'package:tengalo/src/pages/login_page.dart';
import 'package:tengalo/src/share_prefs/preferencias_usuario.dart';

class IntroPage extends StatelessWidget {
  static final String routeName = 'intro';
  final prefs = new PreferenciasUsuario();
  
  @override
  Widget build(BuildContext context) {

    prefs.ultimaPagina = IntroPage.routeName;

    return Scaffold(
      body: LiquidSwipe(
        pages: liquidPages,
        fullTransitionValue: 300,
        enableLoop: true,
        enableSlideIcon: true,
        positionSlideIcon: 0.8,
        waveType: WaveType.liquidReveal,
        onPageChangeCallback: (page) => pageChageCallback(context, page),
        currentUpdateTypeCallback: (updateType) => updateTypeCallback(updateType),
      ),
    );
  }

  pageChageCallback(BuildContext context, int page) {
    if(page == 3){
      Navigator.pushReplacementNamed(context, LoginPage.routeName );
    }
  }
  updateTypeCallback(UpdateType updateType) {}

  
}