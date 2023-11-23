import 'package:flutter/material.dart';

class IslandDetails extends StatefulWidget {
  const IslandDetails({Key? key}) : super(key: key);

  @override
  State<IslandDetails> createState() => _IslandDetailsState();
}

class _IslandDetailsState extends State<IslandDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Iturup',
          style: TextStyle(color: Colors.blueGrey),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.blueGrey,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(children: [
            Hero(
              tag: 'Iturup',
              child: Card(
                child: Image.asset('assets/it1.jpg'),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            const Text(
                'Iturup, also historically known by other names, is an island in the Kuril Archipelago separating the Sea of Okhotsk from the North Pacific Ocean'),
          ]),
        ),
      ),
    );
  }
}
