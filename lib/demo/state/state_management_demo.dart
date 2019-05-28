import 'package:flutter/material.dart';

class StateManagementDemo extends StatefulWidget {
  @override
  _StateManagementDemoState createState() => _StateManagementDemoState();
}

class _StateManagementDemoState extends State<StateManagementDemo> {
  int _count = 0;

  void _increaseCount() {
    setState(() {
      _count += 1;
    });
    print(_count);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateManagementDemo'),
        elevation: 0.0,
      ),
      body: CounterWrapper(
        count: _count,
        increaseCount: _increaseCount,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _increaseCount,
      ),
    );
  }
}

class CounterWrapper extends StatelessWidget {
  final int count;
  final VoidCallback increaseCount;

  CounterWrapper({
    this.count,
    this.increaseCount,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Counter(
        count: count,
        increaseCount: increaseCount,
      ),
    );
  }
}

class Counter extends StatelessWidget {
  final int count;
  final VoidCallback increaseCount;

  Counter({
    this.count,
    this.increaseCount,
  });

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      label: Text('$count'),
      onPressed: increaseCount,
    );
  }
}
