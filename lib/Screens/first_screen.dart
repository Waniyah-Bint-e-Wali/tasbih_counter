import 'package:counter_tasibh/Screens/counter_screen.dart';
import 'package:counter_tasibh/Screens/dhikr_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Text(
                "Tasbih Counter",
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    'بِسْمِ ٱللّٰهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white54,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DhikrScreen()),
                    );
                  },
                  child: Card(
                    elevation: 3,
                    child: Container(
                      width: 350,
                      height: 250,
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
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              child: Image.asset("assets/images/tasbih.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Text(
                                "Record My Dhikr",
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.white54,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CounterScreen()),
                    );
                  },
                  child: Card(
                    elevation: 3,
                    child: Container(
                      width: 350,
                      height: 250,
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
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              child: Image.asset("assets/images/timer.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Text(
                                "Start Tasbih",
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.white54,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Replace this with the actual screen you want to navigate to
class RecordDhikrScreen extends StatelessWidget {
  const RecordDhikrScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Record Dhikr")),
      body: Center(child: Text("This is the Record Dhikr Screen")),
    );
  }
}

// Replace this with the actual screen you want to navigate to
class StartTasbihScreen extends StatelessWidget {
  const StartTasbihScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Start Tasbih")),
      body: Center(child: Text("This is the Start Tasbih Screen")),
    );
  }
}
