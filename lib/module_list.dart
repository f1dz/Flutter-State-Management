import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/DoneModuleProvider.dart';

class ModuleList extends StatelessWidget {
  final List<String> _moduleList = [
    'Modul 1 - Pengenalan Dart',
    'Modul 2 - Memulai Pemrograman dengan Dart',
    'Modul 3 - Dart Fundamental',
    'Modul 4 - Control Flow',
    'Modul 5 - Collections',
    'Modul 6 - Object Oriented Programming',
    'Modul 7 - Functional Styles',
    'Modul 8 - Dart Type System',
    'Modul 9 - Dart Futures',
    'Modul 10 - Effective Dart',
  ];

  final List<String> doneModuleList = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _moduleList.length,
        itemBuilder: (context, index) {
          return Consumer(builder: (context, DoneModuleProvider data, widget) {
            return ModuleTile(
              moduleName: _moduleList[index],
              isDone: data.doneModuleList.contains(_moduleList[index]),
              onClick: () {
                data.complete(_moduleList[index]);
              },
            );
          });
        });
  }
}

class ModuleTile extends StatelessWidget {
  final String moduleName;
  final bool isDone;
  final Function onClick;

  ModuleTile({@required this.moduleName, @required this.isDone, @required this.onClick});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(moduleName),
      trailing: isDone
          ? Icon(Icons.done)
          : ElevatedButton(
              child: Text('Done'),
              onPressed: onClick,
            ),
    );
  }
}
