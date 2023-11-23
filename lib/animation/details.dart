import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../screen/island_details.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Hero(
          tag: 'Iturup',
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: ClipOval(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/it1.jpg'),
                radius: 55,
              ),
            ),
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.of(context).push(PageTransition(
                  duration: const Duration(seconds: 1),
                  reverseDuration: const Duration(seconds: 1),
                  type: PageTransitionType.bottomToTop,
                  child: const IslandDetails()));
            },
            child: const Text(
              'Show details',
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                  color: Colors.blueGrey),
            )),
      ],
    );
  }
}
