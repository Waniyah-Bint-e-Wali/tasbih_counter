import 'package:counter_tasibh/Screens/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.only(top: 120),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    'الله أكبر',
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Container(
                  width: 180,
                  height: 180,
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
                    borderRadius: BorderRadius.circular(90),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 15,
                        offset: Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      '${Provider.of <CounterProvider>(context,listen:true).get_counter()}',
                      style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFFE600),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Container(
                  width: 300,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.transparent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF8B5E3C),
                              Color(0xFFE0A96D),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 8,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: Icon(Icons.remove),
                          iconSize: 40,
                          color: Colors.white54,
                          onPressed: () {
                            Provider.of<CounterProvider>(context,listen:false).decrement();
                          },
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF8B5E3C),
                              Color(0xFFE0A96D),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 8,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: Icon(Icons.add),
                          iconSize: 40,
                          color: Colors.white54,
                          onPressed: () {
                            Provider.of<CounterProvider>(context,listen:false).increment();
                          },
                        ),
                      ),
                      // Reset Button
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF8B5E3C),
                              Color(0xFFE0A96D),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 8,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: Icon(Icons.restart_alt),
                          iconSize: 40,
                          color: Colors.white54,
                          onPressed: () {
                            Provider.of<CounterProvider>(context,listen:false).reset();
                          },
                        ),
                      ),
                    ],
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
