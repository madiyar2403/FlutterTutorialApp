class Event {
  late String name;
  late String location;
  late DateTime startDateTime;

  Event({required this.name, required this.location, required this.startDateTime});
}

var e = Event(name: "Event 1", location: "Location 1", startDateTime: DateTime.now());
