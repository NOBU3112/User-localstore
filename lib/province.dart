// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:CounterPage(),  
    );
  }
}
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CounterPageState();
  }
}
class Province {
    String? id;
    String? name;
    String? level; 
  Province({
    this.id,
    this.name,
    this.level,
  });

  Province copyWith({
    String? id,
    String? name,
    String? level,
  }) {
    return Province(
      id: id ?? this.id,
      name: name ?? this.name,
      level: level ?? this.level,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'level': level,
    };
  }

  factory Province.fromMap(Map<String, dynamic> map) {
    return Province(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      level: map['level'] != null ? map['level'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Province.fromJson(String source) => Province.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Province(id: $id, name: $name, level: $level)';

  @override
  bool operator ==(covariant Province other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.level == level;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ level.hashCode;
}




class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    debugPrint('Ca  ll build function');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text('Counter Page'),
      ),


    );
  }
}
      