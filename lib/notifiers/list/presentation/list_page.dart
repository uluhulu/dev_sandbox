import 'dart:math' as math;

import 'package:dev_sandbox/notifiers/list/presentation/list_notifier/list_notifier.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  ListPage({super.key});

  final ListNotifier _listNotifier = ListNotifier();
  final math.Random _random = math.Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListenableBuilder Example')),
      body: _ListPageBody(listNotifier: _listNotifier),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _listNotifier.add(_random.nextInt(1 << 31)),
      ),
    );
  }
}

class _ListPageBody extends StatelessWidget {
  const _ListPageBody({required this.listNotifier});
  final ListNotifier listNotifier;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          const Text('Current values:'),
          Expanded(
            child: ListenableBuilder(
              listenable: listNotifier,
              builder: (BuildContext context, Widget? child) {
                final List<int> values = listNotifier.list;
                return ListView.builder(
                  itemCount: values.length,
                  itemBuilder:
                      (BuildContext context, int index) =>
                          ListTile(title: Text('${values[index]}')),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
