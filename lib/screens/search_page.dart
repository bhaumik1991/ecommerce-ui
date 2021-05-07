import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Center(
        child: Text("Page 2"),
      ),
    );
  }

  Widget buildAppBar() {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.location_on),
          Text(
            "Madiwala, Bangalore-000000",
            style: TextStyle(
                fontSize: 15
            ),
          ),
        ],
      ),
      backgroundColor: Colors.green,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(
            Icons.person,
            size: 30,
          ),
        ),
      ],
    );
  }
}
