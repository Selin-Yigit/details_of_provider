import 'dart:async';

import 'package:details_of_provider/cheapObjectClass.dart';
import 'package:details_of_provider/expensiveObjectClass.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class ObjectProvider extends ChangeNotifier {
  late String id;

  //private alanlar oldukları için getter oluşturduk.
  late CheapObject _cheapObject;
  late StreamSubscription _cheapObjectStreamSub;
  late ExpensiveObject _expensiveObject;
  late StreamSubscription _expensiveObjectStreamSub;

  CheapObject get cheapObject => _cheapObject;
  ExpensiveObject get expensiveObject => _expensiveObject;

  // başlangıçta tanımlama:
  ObjectProvider()
      : id = const Uuid().v4(),
        _cheapObject = CheapObject(),
        _expensiveObject = ExpensiveObject();

  @override
  void notifyListeners() {
    // buradaki amaç her notify liteners çağrıldığında (start fonksiyonu) provider'ın id'sini yenilemek.
    id = const Uuid().v4();
    super.notifyListeners();
  }

  // listen kısmında her saniye için yeni bir instance oluşturuluyor. her saniye cheapObjet yerin yeni bir tane chepObjet oluşuyor.
  // Kayıtlar provider içinde tutuluyor. Aynısı expensiveObject içinde geçerli.
  void Start() {
    _cheapObjectStreamSub = Stream.periodic(
      const Duration(seconds: 1),
    ).listen((event) {
      _cheapObject = CheapObject();
      notifyListeners();
    });

    _expensiveObjectStreamSub = Stream.periodic(
      const Duration(seconds: 15),
    ).listen((event) {
      _expensiveObject = ExpensiveObject();
      notifyListeners();
    });
  }

  void Stop() {
    _cheapObjectStreamSub.cancel();
    _expensiveObjectStreamSub.cancel();
  }
}
