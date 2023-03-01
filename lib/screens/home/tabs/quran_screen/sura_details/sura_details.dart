import 'package:assignmentt_2/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../suraname_item.dart';

class SuraDetails extends StatefulWidget {
  static const String id = 'suradetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String>verses = [];

  void loadFile(int index) async {
    String content =
    await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String>lines = content.split('\n');
    verses = lines;
    setState(() {});
    print(lines);
  }

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute
        .of(context)
        ?.settings
        .arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    //  loadFile(args.index);


    return Stack(children: [
      Image.asset(
        'assets/images/background.png',
        width: double.infinity,
        fit: BoxFit.fitWidth,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            args.name,
            style: TextStyle(color: Color(0xff0F1424)),
          ),
          centerTitle: true,
          backgroundColor: Colors.white70,
          elevation: 0.0,
        ),
        body: verses.isEmpty ? Center(child: CircularProgressIndicator()) :
        Center(
          child: ListView.separated(separatorBuilder: (C, index) {
            return Divider(color: MyTheme.blackColor);
          },
            itemBuilder: (c, index) =>
                (Text(verses[index], style: Theme
                    .of(context)
                    .textTheme
                    .displaySmall,)),
            itemCount: verses.length,),
        ),
      ),
    ]);
  }
}
