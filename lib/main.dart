import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_examples/models/task_data.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return TaskData();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
    );
  }
}
