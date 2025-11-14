import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mobail_app/Screen/add_mobile_screen.dart';
import 'package:mobail_app/Screen/loging.dart';

import 'package:mobail_app/db/database_helper.dart';
import 'package:mobail_app/utils/shared_prefs.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final db = DatabaseHelper();
  List<Map<String, dynamic>> mobiles = [];
  String searchText = "";

  @override
  void initState() {
    super.initState();
    _loadMobiles();
  }

  Future<void> _loadMobiles() async {
    final data = await db.getAllMobiles();
    setState(() => mobiles = data);
  }

  Future<void> _deleteMobile(int id) async {
    await db.deleteMobile(id);
    _loadMobiles();
  }

  @override
  Widget build(BuildContext context) {
    final filteredMobiles = mobiles.where((mobile) {
      final name = mobile['model'].toString().toLowerCase();
      return name.contains(searchText.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await SharedPrefs.logout();

              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => const Loging()),
                (route) => false,
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Model...',
                border: OutlineInputBorder(),
              ),
              onChanged: (v) => setState(() => searchText = v),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredMobiles.length,
              itemBuilder: (context, index) {
                final mob = filteredMobiles[index];
                return Card(
                  child: ListTile(
                    leading: mob['image'] != null && mob['image'].isNotEmpty
                        ? Image.memory(
                            base64Decode(mob['image']),
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          )
                        : const Icon(Icons.phone_android, size: 40),

                    title: Text('${mob['company']} - ${mob['model']}'),
                    subtitle: Text(
                      '₹${mob['finalPrice']} (Disc: ${mob['discount']}%)',
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit, color: Colors.blue),
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => AddMobileScreen(editData: mob),
                              ),
                            );
                            _loadMobiles();
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => _deleteMobile(mob['id']),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AddMobileScreen()),
          );
          _loadMobiles();
        },
        icon: const Icon(Icons.add),
        label: const Text("Add"),
      ),
    );
  }
}
