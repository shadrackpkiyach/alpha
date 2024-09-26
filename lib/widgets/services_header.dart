import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown in App Bar'),
        actions: const [
          _DropDownButton(),
        ],
      ),
      body: const Center(
        child: Text(
          'Selected Value: Option 1',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class _DropDownButton extends StatefulWidget {
  const _DropDownButton({Key? key}) : super(key: key);

  @override
  _DropDownButtonState createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<_DropDownButton> {
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (String value) {
        setState(() {
          selectedValue = value;
        });
      },
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<String>>[
          const PopupMenuItem<String>(
            value: 'Option 1',
            child: Text('Option 1'),
          ),
          const PopupMenuItem<String>(
            value: 'Option 2',
            child: Text('Option 2'),
          ),
          const PopupMenuItem<String>(
            value: 'Option 3',
            child: Text('Option 3'),
          ),
          const PopupMenuItem<String>(
            value: 'Option 4',
            child: Text('Option 4'),
          ),
        ];
      },
    );
  }
}
