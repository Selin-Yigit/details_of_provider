import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

@immutable
class BaseObject {
  final String uuid;
  final String lastUpdated;

  BaseObject()
      : uuid = const Uuid().v4(),
        lastUpdated = DateTime.now().toIso8601String();

  @override
  bool operator ==(covariant BaseObject other) => uuid == other.uuid;

  @override
  int get hashCode => uuid.hashCode;
}
