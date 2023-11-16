import 'package:details_of_provider/objectProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ObjectProviderWidget extends StatelessWidget {
  const ObjectProviderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ObjectProvider>();
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
      child: Container(
        height: 100,
        width: 200,
        color: Colors.green.shade200,
        child: Column(
          children: [
            const Text(
              "Object Provider",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            const Text("ID: "),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(provider.id),
            ),
          ],
        ),
      ),
    );
  }
}
