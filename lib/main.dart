import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url =
    Uri.parse('https://thingspeak.com/channels/2140152/private_show');

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Health Measurement Indicating App"),
          ),
          backgroundColor: Color.fromARGB(255, 208, 34, 231),
          body: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/abc.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: SizedBox(
                  width: 200.0,
                  height: 100.0,
                  child: ElevatedButton(
                    onPressed: _launchUrl,
                    child: Text('Show Health States'),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 38, 35, 201),
                      elevation: 100,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
