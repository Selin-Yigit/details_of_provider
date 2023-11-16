import 'package:details_of_provider/cheapWidget.dart';
import 'package:details_of_provider/expensiveWidget.dart';
import 'package:details_of_provider/objectProvider.dart';
import 'package:details_of_provider/objectProviderWidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent.shade200,
        title: const Text(
          "Homepage",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Row(
            children: [
              Expanded(child: CheapWidget()),
              Expanded(child: ExpensiveWidget()),
            ],
          ),
          const Row(
            children: [
              Expanded(child: ObjectProviderWidget()),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    context.read<ObjectProvider>().Start();
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Colors.deepOrangeAccent.shade200)),
                  child: const Text(
                    "Start",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(width: 12),
                TextButton(
                  onPressed: () {
                    context.read<ObjectProvider>().Stop();
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Colors.deepOrangeAccent.shade200)),
                  child: const Text(
                    "Stop",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
