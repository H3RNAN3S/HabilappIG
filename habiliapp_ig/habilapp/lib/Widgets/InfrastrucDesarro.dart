import 'package:flutter/material.dart';
import 'package:pruebas/Classes/Tecnoligia.dart';

class ExpandableList extends StatelessWidget {
  int prueba;
  ExpandableList(this.prueba);

  static algo(int prueba) {
    List<Entry> datos = <Entry>[];
    if (prueba == 1) {
      return (datos = data);
    } else if (prueba == 2) {
      return (datos = data2);
    } else {
      return (datos = data3);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return new ListView.builder(
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) =>
          EntryItem(algo(prueba)[index]),
      itemCount: algo(prueba).length,
    );
  }
}

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);
  final Entry entry;


  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty)
      return ListTile(
          dense: true,
          enabled: true,
          isThreeLine: false,
          onLongPress: () => print('long press'),
          onTap: () => print('tap'),
          selected: true,
          title: Text(root.title));

    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
