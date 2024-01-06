import 'package:flutter/material.dart';
import 'package:led08_146/pages/secondpage.dart';

class thirdpage extends StatefulWidget {
  const thirdpage({super.key, required this.data});

  final String data;
  @override
  State<thirdpage> createState() => _thirdpage2State();
}

class _thirdpage2State extends State<thirdpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('led08_146'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is third Page "),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                MaterialPageRoute(builder: (context) => secondpage());
              },
              child: const Text("กลับไปหน้าที่ 2 "),
            ),
            Text(widget.data)
          ],
        ),
      ),
    );
  }
}
