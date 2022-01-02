import 'package:flutter/material.dart';
import 'package:flutter_tutorial/components/event_card.dart';
import 'package:flutter_tutorial/models/event.dart';

class HomeScreen extends StatelessWidget {

  final List<Event> events = [
    Event(name: "Event 1", location: "Location 1", startDateTime: DateTime.now()),
    Event(name: "Event 2", location: "Location 1", startDateTime: DateTime.now()),
    Event(name: "Event 3", location: "Location 1", startDateTime: DateTime.now()),
    Event(name: "Event 4", location: "Location 2", startDateTime: DateTime.now()),
    Event(name: "Event 5", location: "Location 2", startDateTime: DateTime.now()),
    Event(name: "Event 6", location: "Location 2", startDateTime: DateTime.now()),
    Event(name: "Event 7", location: "Location 3", startDateTime: DateTime.now()),
    Event(name: "Event 8", location: "Location 3", startDateTime: DateTime.now()),
    Event(name: "Event 9", location: "Location 3", startDateTime: DateTime.now()),

  ];

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter tutorial"),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(40),
        itemCount: events.length,
        itemBuilder: (_, index) => EventCard(event: events[index]),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text("Add"),
        backgroundColor: Colors.grey[900],
        onPressed: () {  },
      ),
      backgroundColor: Colors.grey[100],
    );
  }
}
