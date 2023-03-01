import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Language',
            style:
                Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 35),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            width: double.infinity,
            height: 40,

            child: Center(child: Text('English')),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.red ),
          )
        ],
      ),
    );
  }
}
