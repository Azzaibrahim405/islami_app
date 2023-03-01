
import 'package:assignmentt_2/screens/home/tabs/ahadeeth_screen/ahadeeth_screen.dart';
import 'package:assignmentt_2/screens/home/tabs/quran_screen/quran_screen.dart';
import 'package:assignmentt_2/screens/home/tabs/radio_screen/radio_screen.dart';
import 'package:assignmentt_2/screens/home/tabs/sebha_screen/sebha.dart';
import 'package:assignmentt_2/screens/home/tabs/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HomeScreen extends StatefulWidget {
  static const String id = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
List<Widget>screens=[
  Raddio(),
  Sebha(),
  Ahadeeth(),
  QuranScreen(),
  SettingsScreen(),

];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/background.png',
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.islami,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            centerTitle: true,
            backgroundColor: Colors.white70,
            elevation: 0.0,
          ),
          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
              onTap: (int index) {

                setState(() {
                  currentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/radio.png',
                    ),
                    label: 'الراديو'),
                BottomNavigationBarItem(
                    icon: Image.asset('assets/images/sebha.png'),
                    label: 'السبحه'),
                BottomNavigationBarItem(
                    icon: Image.asset('assets/images/ahadeeth.png'),
                    label: 'الاحاديث'),
                BottomNavigationBarItem(
                    icon: Image.asset('assets/images/quran.png'),
                    label: 'القرأن'),
                BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings')
              ]),
          body: screens[currentIndex],
        )
      ],
    );
  }
}
