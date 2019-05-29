import 'package:flutter/material.dart';
import 'dart:async';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StearmDemo'),
        elevation: 0.0,
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  StreamSubscription _streamDemoSubscription;
  StreamController<String> _streamDemo;

  @override
  void dispose() {
    _streamDemo.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    print('Create a stream.');
    // Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    _streamDemo = StreamController<String>();

    print('Start listening a stream.');
    // _streamDemoSubscription =
    //     _streamDemo.listen(onData, onError: onError, onDone: onDone);
    _streamDemoSubscription =
        _streamDemo.stream.listen(onData, onError: onError, onDone: onDone);

    print('Initialize complated.');
  }

  void onDone() {
    print('Done!');
  }

  void onError(error) {
    print('Error: $error');
  }

  void onData(String data) {
    print('$data');
  }

  void _pauseStream() {
    print('Pause subscription.');
    _streamDemoSubscription.pause();
  }

  void _resumeStream() {
    print('Resume subscription.');
    _streamDemoSubscription.resume();
  }

  void _cancelStream() {
    print('Cancel subscription.');
    _streamDemoSubscription.cancel();
  }

  void _addDataToStream() async {
    print('Add data to stream.');

    String data = await fetchData();
    _streamDemo.add(data);
  }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 5));
    // throw 'Something happened';
    return 'hello ~';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('Add'),
              onPressed: _addDataToStream,
            ),
            FlatButton(
              child: Text('Pause'),
              onPressed: _pauseStream,
            ),
            FlatButton(
              child: Text('Resume'),
              onPressed: _resumeStream,
            ),
            FlatButton(
              child: Text('Cancel'),
              onPressed: _cancelStream,
            ),
          ],
        ),
      ),
    );
  }
}
