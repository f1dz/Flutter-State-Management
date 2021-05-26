import 'package:flutter/material.dart';

import 'done_module_list.dart';
import 'module_list.dart';

class ModulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Management'),
        actions: [
          IconButton(
              icon: Icon(Icons.done),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DoneModuleList()));
              }),
        ],
      ),
      body: ModuleList(),
    );
  }
}
