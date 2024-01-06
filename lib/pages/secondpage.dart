import 'package:flutter/material.dart';
import 'package:led08_146/pages/thirdpage.dart';

class secondpage extends StatefulWidget {
  const secondpage({super.key});

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  final TextEditingController _controller = TextEditingController();
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
            const Text("This is Second Page "),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("กลับไปหน้าที่ 1 "),
            ),
            TextFormField(
              controller: _controller,
              decoration: const InputDecoration(labelText: "ชื่อ-นามสกุล"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => thirdpage(
                              data: _controller.text,
                            )));
              },
              child: const Text("ไปยังหน้าที่ 3 "),
            )
          ],
        ),
      ),
    );
  }
}
