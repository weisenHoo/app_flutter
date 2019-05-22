import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black,
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFieldDemo(),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // textEditingController.text = 'hi';
    textEditingController.addListener(
      () {
        debugPrint('input: $textEditingController.text');
      }
    )
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      // onSubmitted: (value) {
      //   debugPrint('submit: $value');
      // },
      onChanged: (value) {
        debugPrint('input: $value');
      },
      decoration: InputDecoration(
          icon: Icon(Icons.subject),
          labelText: 'title',
          hintText: 'Enter the post title',
          // border: InputBorder.none,
          // border: OutlineInputBorder(),
          filled: true),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}
