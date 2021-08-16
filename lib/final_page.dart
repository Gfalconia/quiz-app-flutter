import 'package:flutter/material.dart';
import 'package:quiz_app/results.dart';
import '../main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FinalPage extends StatefulWidget {
  @override
  _FinalPageState createState() => _FinalPageState();
  static const routeName = '/finalPage';
}

class _FinalPageState extends State<FinalPage> {
  final officeName = 'baku';
  late GoogleMapController mapController;
  final Map<String, Marker> _markers = {};
  final marker = Marker(
    markerId: MarkerId('Bakı ş'),
    position: LatLng(40.390058, 49.855926),
    infoWindow: InfoWindow(
      title: 'VTB',
      snippet: 'Bank VTB',
    ),
  );
  final LatLng _center = const LatLng(40.390058, 49.855926);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      _markers[officeName] = marker;
    });
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Results;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
        Container(
          //width: 150,
          height: 300,
          child: GoogleMap(
            onMapCreated: _onMapCreated,
            markers: _markers.values.toSet(),
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 15.0,
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 50)),
        Text(
          args.time,
          style: TextStyle(color: Colors.white),
        ),
        Text(args.questions, style: TextStyle(color: Colors.white)),
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
            child: Text('Играть'),
          ),
        )
      ])),
    );
  }
}
