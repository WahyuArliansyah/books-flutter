import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Geolocation extends StatefulWidget {
  const Geolocation({super.key});

  @override
  State<Geolocation> createState() => _GeolocationState();
}

class _GeolocationState extends State<Geolocation> {
  Future<Position>? position;
  String myPosition = '';
  @override
  void initState() {
    super.initState();
    position = getPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Current Location Wahyu',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: FutureBuilder(
          future: position,
          builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.connectionState == ConnectionState.done) {
              return Text(snapshot.data.toString());
            } else {
              return Text('');
            }
          },
        ),
      ),
    );
  }
}

Future<Position> getPosition() async {
  await Geolocator.requestPermission();
  await Geolocator.isLocationServiceEnabled();
  await Future.delayed(const Duration(seconds: 3));
  Position? position = await Geolocator.getCurrentPosition();
  return position;
}
