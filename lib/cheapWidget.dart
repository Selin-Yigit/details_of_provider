import 'package:details_of_provider/cheapObjectClass.dart';
import 'package:details_of_provider/objectProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheapWidget extends StatelessWidget {
  const CheapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cheapObject = context.select<ObjectProvider, CheapObject>(
      (provider) => provider.cheapObject,
    );
    return Padding(
      padding: const EdgeInsets.only(top:8.0, left: 8.0),
      child: Container(
        height: 150,
        width: 150,
        color: Colors.blueAccent.shade200,
        child: Column(
          children: [
            const Text(
              "Cheap Widget",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            const Text("Last Updated: "),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(cheapObject.lastUpdated),
            ),
          ],
        ),
      ),
    );
  }
}
