import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/DoneModuleProvider.dart';

class DoneModuleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final doneModuleList = Provider.of<DoneModuleProvider>(context, listen: false).doneModuleList;
    return Scaffold(
      appBar: AppBar(
        title: Text('Done Module List'),
      ),
      body: ListView.builder(
          itemCount: doneModuleList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(doneModuleList[index]),
            );
          }),
    );
  }
}
