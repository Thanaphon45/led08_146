import 'package:flutter/material.dart';
import 'package:led08_146/pages/secondpage.dart';

class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
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
            const Text("This is First Page "),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => secondpage(),
                    ));
              },
              child: const Text("ไปยังหน้าที่ 2 "),
            ),
          ],
        ),
      ),
    );
  }
}
