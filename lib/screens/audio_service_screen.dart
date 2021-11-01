import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:torch_controller/torch_controller.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audio Service Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                TorchController().toggle();
              },
              child: Text('Torch'),
            ),
            ElevatedButton(
              onPressed: () {
                MapsLauncher.launchQuery('Hospital');
              },
              child: Text('Maps'),
            ),
          ],
        ),
      ),
    );
  }
}
