import 'package:details_of_provider/objectProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ObjectProviderWidget extends StatelessWidget {
  const ObjectProviderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ObjectProvider>();
    return Container(
      height: 100,
      width: 100,
      color: Colors.green.shade200,
      child: Column(
        children: [
          const Center(
            child: Text(
              "Object Provider",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
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
    );
  }
}
