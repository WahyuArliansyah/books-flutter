import 'package:flutter/material.dart';

class NavigationDialog extends StatefulWidget {
  const NavigationDialog({super.key});

  @override
  State<NavigationDialog> createState() => _NavigationDialogState();
}

class _NavigationDialogState extends State<NavigationDialog> {
  Color color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(title: const Text('Navigator Dialog Screen Wahyu')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showColorDialog(context);
          },
          child: const Text('Change Color'),
        ),
      ),
    );
  }

  Future<void> _showColorDialog(BuildContext context) async {
    final selectedColor = await showDialog<Color>(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text('Very Important Dialog'),
          content: Text('Please choose the color'),
          actions: <Widget>[
            TextButton(
              child: Text('Cyan Accent'),
              onPressed: () {
                Navigator.pop(context, Colors.cyanAccent);
              },
            ),
            TextButton(
              child: Text('Yellow'),
              onPressed: () {
                Navigator.pop(context, Colors.yellow);
              },
            ),
            TextButton(
              child: Text('Blue Grey'),
              onPressed: () {
                Navigator.pop(context, Colors.blueGrey);
              },
            ),
          ],
        );
      },
    );

    if (selectedColor != null) {
      setState(() {
        color = selectedColor;
      });
    }
  }
}
