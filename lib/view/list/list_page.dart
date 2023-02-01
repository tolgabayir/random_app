import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 64,
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "Başlık Yaz", border: InputBorder.none),
              ),
            ),
            Container(
              height: 196,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.orangeAccent),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "Eleman Gir", border: InputBorder.none),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orangeAccent,
        elevation: 0,
        onPressed: () {},
        child: const Icon(Icons.check),
      ),
    );
  }
}
