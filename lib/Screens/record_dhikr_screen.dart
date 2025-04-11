import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:counter_tasibh/Screens/dhikr_provider.dart';
import 'package:counter_tasibh/Screens/dhikr.dart';

class RecordDhikrScreen extends StatelessWidget {
  final int? index;
  final Dhikr? existingDhikr;

  const RecordDhikrScreen({Key? key, this.index, this.existingDhikr}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController dhikrNameController = TextEditingController();
    TextEditingController countController = TextEditingController();

    if (existingDhikr != null) {
      dhikrNameController.text = existingDhikr!.nameofdhikr;
      countController.text = existingDhikr!.count;
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2c3e50), Color(0xFF34495e)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Tasbih Counter",
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(height: 40),
                // Dhikr Name Field
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF8B5E3C),
                        Color(0xFFC28840),
                        Color(0xFFE0A96D),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    controller: dhikrNameController,
                    style: TextStyle(color: Colors.white54, fontSize: 18),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                      hintText: "Enter Dhikr Name",
                      hintStyle: TextStyle(color: Colors.white54, fontSize: 16),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Count Field
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF8B5E3C),
                        Color(0xFFC28840),
                        Color(0xFFE0A96D),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    controller: countController,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.white54, fontSize: 18),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                      hintText: "Enter Count",
                      hintStyle: TextStyle(color: Colors.white54, fontSize: 16),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                // Save Button
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF8B5E3C), Color(0xFFC28840)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextButton(
                    onPressed: () {
                      String dhikrName = dhikrNameController.text;
                      String count = countController.text;

                      if (existingDhikr != null) {
                        context.read<DhikrProvider>().update(
                          index!,
                          Dhikr(
                            nameofdhikr: dhikrName,
                            count: count,
                          ),
                        );
                      } else {

                        context.read<DhikrProvider>().addDhikr(
                          Dhikr(
                            nameofdhikr: dhikrName,
                            count: count,
                          ),
                        );
                      }
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: Text(
                        "Save Dhikr",
                        style: TextStyle(color: Colors.white54, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
