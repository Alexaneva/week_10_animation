import 'package:animate_icons/animate_icons.dart' show AnimateIconController, AnimateIcons;
import 'package:flutter/material.dart';

class DropDownList extends StatefulWidget {
  const DropDownList({Key? key}) : super(key: key);

  @override
  State<DropDownList> createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList>
    with TickerProviderStateMixin {
  late AnimateIconController iconController;
  late AnimationController dropController;
  late Animation<double> cardController;

  bool show = false;

  @override
  void initState() {
    iconController = AnimateIconController();
    dropController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    cardController = Tween(begin: 0.0, end: 1.0).animate(dropController);
    super.initState();
  }

  @override
  void dispose() {
    dropController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: ListTile(
              title: const Text('Iturup Island'),
              trailing: AnimateIcons(
                duration: const Duration(milliseconds: 500),
                controller: iconController,
                endIcon: Icons.arrow_upward,
                startIcon: Icons.arrow_downward,
                onStartIconPress: () {
                  show == true;
                  dropController.forward();
                  return true;
                },
                onEndIconPress: () {
                  show == false;
                  dropController.reverse();
                  return true;
                },
              )),
        ),
        SizeTransition(
          sizeFactor: cardController,
          axis: Axis.vertical,
          axisAlignment: 1.0,
          child: const Card(
            child: ListTile(
              title: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Country: Russia'),
                    Text('Region: Sakhalin'),
                    Text('Type: Island'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
