import 'package:flutter/material.dart';
import '../models/task.dart';

class RoomScreen extends StatefulWidget {
  final String room;
  const RoomScreen(this.room, {super.key});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  late List<Task> tasks;

  @override
  void initState() {
    super.initState();
    tasks = _defaultTasks(widget.room);
  }

  List<Task> _defaultTasks(String room) {
    switch (room) {
      case "Keuken":
        return [
          Task("Vaatwasser inruimen", room),
          Task("Vaatwasser uitruimen", room),
          Task("Aanrecht afwassen", room),
          Task("Vuilnis buiten zetten", room),
        ];
      case "Woonkamer":
        return [
          Task("Stofzuigen", room),
          Task("Afstoffen", room),
          Task("Speelgoed opruimen", room),
        ];
      case "Badkamer":
        return [
          Task("Douche poetsen", room),
          Task("Wastafel schoonmaken", room),
          Task("Spiegel reinigen", room),
        ];
      case "Slaapkamer":
        return [
          Task("Bed opmaken", room),
          Task("Kleding opruimen", room),
        ];
      case "Wasruimte":
        return [
          Task("Was insteken", room),
          Task("Was ophangen", room),
          Task("Was plooien", room),
        ];
      default:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.room)),
      body: ListView(
        children: tasks.map((task) {
          return CheckboxListTile(
            title: Text(task.title),
            value: task.done,
            onChanged: (val) {
              setState(() => task.done = val!);
              if (val) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("🎉 Goed gedaan!")),
                );
              }
            },
          );
        }).toList(),
      ),
    );
  }
}

Add room screen