import 'package:flutter/material.dart';
import 'room.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  final List<Map<String, dynamic>> rooms = const [
    {"name": "Keuken", "emoji": "🍽️", "color": Colors.orange},
    {"name": "Woonkamer", "emoji": "🛋️", "color": Colors.green},
    {"name": "Badkamer", "emoji": "🚿", "color": Colors.blue},
    {"name": "Slaapkamer", "emoji": "🛏️", "color": Colors.purple},
    {"name": "Wasruimte", "emoji": "🧺", "color": Colors.amber},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("🏡 Scherre'ke 13")),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(12),
        children: rooms.map((room) {
          return Card(
            color: room["color"],
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => RoomScreen(room["name"]),
                  ),
                );
              },
              child: Center(
                child: Text(
                  "${room["emoji"]}\n${room["name"]}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

Add dashboard screen
