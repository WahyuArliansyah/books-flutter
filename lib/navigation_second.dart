import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(title: const Text('Navigator Second Screen Wahyu')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                color = Colors.cyanAccent;
                Navigator.pop(context, color);
              },
              child: Text('Cyan Accent'),
            ),
            ElevatedButton(
              onPressed: () {
                color = Colors.yellow;
                Navigator.pop(context, color);
              },
              child: Text('Yellow'),
            ),
            ElevatedButton(
              onPressed: () {
                color = Colors.blueGrey;
                Navigator.pop(context, color);
              },
              child: Text('Blue Grey'),
            ),
          ],
        ),
      ),
    );
  }
}
