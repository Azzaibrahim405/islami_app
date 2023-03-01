import 'package:assignmentt_2/my_theme.dart';
import 'package:assignmentt_2/screens/home/tabs/quran_screen/suraname_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Ahadeeth extends StatefulWidget {
  static const id = 'ahadeeth';

  @override
  State<Ahadeeth> createState() => _AhadeethState();
}

class _AhadeethState extends State<Ahadeeth> {
  List<Hadeth> ahadeth = [];

  void loadHadethFile() async {
    String content = await rootBundle.loadString('assets/files/ahadeth .txt');
    List<String> allAhadeth = content.split('#');
    for (int i = 0; i < allAhadeth.length; i++) {
      String hadeth = allAhadeth[i];
      List<String> hadeth1Lines = hadeth.split('\n');
      String title = hadeth1Lines[0];
      print(title);
      print(title);
      hadeth1Lines.removeAt(0);
      Hadeth hadethData = Hadeth(title, hadeth1Lines);
      ahadeth.add(hadethData);
      setState(() {

      });
      if(ahadeth.isEmpty){

      }
      print(hadeth);
    }

  }

  @override
  Widget build(BuildContext context) {
    loadHadethFile();
    return Column(
      children: [
        Image.asset('assets/images/ahadeth_image.png'),
        Divider(
          color: MyTheme.goldColor,
          thickness: 2,
        ),
        Text(
          AppLocalizations.of(context)!.alhadeth,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        Divider(
          color: MyTheme.goldColor,
          thickness: 2,
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (c, index) {
                return Column(
                  children: [
                    Text(ahadeth[index].title),

                  ],
                );
              },
              separatorBuilder: (c, index) {
                return Divider(
                    color: MyTheme.blackColor, endIndent: 30, indent: 30);
              },
              itemCount: ahadeth.length),
        )
      ],
    );
  }
}

class Hadeth {
  Hadeth(this.title, this.hadethContent);

  String title;
  List<String> hadethContent;
}
