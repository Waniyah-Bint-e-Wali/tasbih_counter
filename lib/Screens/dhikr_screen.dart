import 'package:flutter/material.dart';
import 'package:counter_tasibh/Screens/record_dhikr_screen.dart';
import 'package:counter_tasibh/Screens/dhikr_provider.dart';
import 'package:provider/provider.dart';

class DhikrScreen extends StatelessWidget {
  const DhikrScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<DhikrProvider>(
        builder: (context, dhikrProvider, child) {
          final dhikrs = dhikrProvider.getDhikr();
          if(dhikrs.isEmpty){
            return Container(
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
                    const Text(
                    "Tasbih Counter",
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                      Padding(
                        padding: const EdgeInsets.only(top:300),
                        child: Text("Add new Dhikr",style:TextStyle(fontSize:18,color:Colors.white54)),
                      )
                    ]
                  )
              )
            );
          }
          else{return Container(
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
                  const Text(
                    "Tasbih Counter",
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: ListView.builder(
                      itemCount: dhikrs.length,
                      itemBuilder: (context, index) {
                        final dhikr = dhikrs[index];
                        return Container(
                          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                dhikr.nameofdhikr,
                                style: const TextStyle(
                                  color: Colors.white54,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Count: ${dhikr.count}',
                                style: const TextStyle(
                                  color: Colors.white54,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      // Navigate to the RecordDhikrScreen and pass the data (dhikr and index)
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => RecordDhikrScreen(
                                            index: index,
                                            existingDhikr: dhikr,
                                          ),
                                        ),
                                      );
                                    },
                                    icon: const Icon(
                                      Icons.edit,
                                      color: Colors.white54,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      context.read<DhikrProvider>().delete(index);
                                    },
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.white54,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const RecordDhikrScreen()),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: const Color(0xFF8B5E3C),
      ),
    );
  }
}
