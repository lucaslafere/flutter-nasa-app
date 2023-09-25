import 'package:flutter/material.dart';
import 'package:flutter_nasa_app/services/nasa_api_service.dart';
import 'package:flutter_nasa_app/models/apod_data.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ApodService apodService = ApodService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('NASA APOD')),
      body: FutureBuilder<ApodData>(
        future: apodService.fetchApodData(apiKey: "YOUR_API_KEY"),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return Center(
              child: Column(
                children: <Widget>[
                  Image.network(snapshot.data!.url),
                  Text(snapshot.data!.title),
                  Text(snapshot.data!.date),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(snapshot.data!.explanation),
                  )
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
