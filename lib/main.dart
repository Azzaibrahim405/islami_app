import 'package:assignmentt_2/my_theme.dart';
import 'package:assignmentt_2/screens/home/home_screen.dart';
import 'package:assignmentt_2/screens/home/tabs/ahadeeth_screen/ahadeeth_screen.dart';
import 'package:assignmentt_2/screens/home/tabs/quran_screen/sura_details/sura_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {


   return  MaterialApp(
     locale: Locale('en'),
     localizationsDelegates: [
       AppLocalizations.delegate,
       GlobalMaterialLocalizations.delegate,
       GlobalWidgetsLocalizations.delegate,
       GlobalCupertinoLocalizations.delegate,
     ],
     supportedLocales: [
       Locale('en'),
       Locale('ar'),
     ],
     debugShowCheckedModeBanner: false,
theme: MyTheme.lightTheme,
     darkTheme: MyTheme.darkTheme,
     themeMode: ThemeMode.light,
     routes: {
      HomeScreen.id :(context)=>HomeScreen(),
       SuraDetails.id:(context)=>SuraDetails(),
       Ahadeeth.id:(context)=>Ahadeeth(),

     },
   initialRoute: HomeScreen.id ,



      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
