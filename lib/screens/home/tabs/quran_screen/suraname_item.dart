import 'package:assignmentt_2/screens/home/tabs/quran_screen/sura_details/sura_details.dart';

import 'package:flutter/material.dart';

class SuraNameItem extends StatelessWidget {
  String name;
  int index;
  SuraNameItem(this.name, this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetails.id,
            arguments: SuraDetailsArgs(index: index, name: name));
      },
      child: Center(
        child: Text(
          name,
          style:TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}

class SuraDetailsArgs {
  String name;
  int index;

  SuraDetailsArgs({required this.index, required this.name});
}
