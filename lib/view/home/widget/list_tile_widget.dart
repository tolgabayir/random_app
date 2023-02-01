import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final Widget? listTitle;
  final Widget? listSubtitle;
  final bool listCompleted;
  Function(bool?)? onChanged;
  ListTileWidget({
    key,
    required this.listTitle,
    required this.listCompleted,
    required this.listSubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(toString()),
      child: ListTile(
        title: listTitle,
        subtitle: listSubtitle,
        trailing: const Icon(Icons.list_alt),
      ),
    );
  }
}
