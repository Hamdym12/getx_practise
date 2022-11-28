import 'package:flutter/material.dart';

class Admin extends StatelessWidget {
  const Admin({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("admin"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){

                  },
                  child: const Text(
                      "admin"
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
