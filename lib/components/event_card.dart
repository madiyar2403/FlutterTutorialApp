import 'package:flutter/material.dart';
import 'package:flutter_tutorial/models/event.dart';

class EventCard extends StatefulWidget {
  const EventCard({
    Key? key,
    required this.event,
  }) : super(key: key);

  final Event event;

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  bool _isEnabled = true;

  @override
  void initState(){
    super.initState();
    print("initState");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Card(
      color: Colors.red[300],
      elevation: 10,
      shadowColor: Colors.yellow[300],
      margin: const EdgeInsets.symmetric(vertical: 7),
      child: ListTile(
        enabled: _isEnabled,
        title: Text(
          widget.event.name, style: const TextStyle(fontSize: 30,),
        ),
        subtitle: Text(
          "${widget.event.location}, ${widget.event.startDateTime}",
        ),
        leading: const Icon(
          Icons.local_activity,
          size: 40,
          color: Colors.black87,
        ),
        trailing: IconButton(
          icon: _isEnabled ? const Icon(Icons.lock_outline) : const Icon(Icons.lock_open),
          onPressed: () => setState(() => _isEnabled = !_isEnabled) ,
        ),
        onTap: () => print("${widget.event.name} - tap"),
        onLongPress: () => print("${widget.event.name} - longTap"),
        selected: true,
      ),
    );
  }
}
