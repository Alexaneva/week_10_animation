import 'package:flutter/material.dart';

import '../animation/drop_down_list.dart';
import '../animation/island_rotate.dart';
import '../animation/details.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Padding(padding: EdgeInsets.only(top: 30)),
        Island(),
        Padding(padding: EdgeInsets.only(top: 90)),
        DropDownList(),
        Padding(padding: EdgeInsets.only(top: 50)),
        Details(),
      ],
    );
  }
}
