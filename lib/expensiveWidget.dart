import 'package:details_of_provider/expensiveObjectClass.dart';
import 'package:details_of_provider/objectProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExpensiveWidget extends StatelessWidget {
  const ExpensiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //select için ilk referans girdi, ikinci referans ise çıktı (return)
    // yani bu durumda bir provider girdi ve expensiveObject return edildi.

    final expensiveObject = context.select<ObjectProvider, ExpensiveObject>(
      (provider) => provider.expensiveObject,
    );
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
      child: Container(
        height: 150,
        width: 150,
        color: Colors.amberAccent.shade200,
        child: Column(
          children: [
            const Text(
              "Expensive Widget",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            const Text("Last Updated: "),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(expensiveObject.lastUpdated),
            ),
          ],
        ),
      ),
    );
  }
}
