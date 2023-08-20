import 'package:flutter/material.dart';
import 'package:rel/config/services.dart';
import 'package:rel/modules/products/services/info.service.dart';

/// Products Page.
class Products extends StatelessWidget {
  final infoService = container.get<InfoService>();

  @override
  Widget build(BuildContext context) {
    infoService.showInfo();
    return Scaffold(
      appBar: AppBar(title: Text("Main Page")),
      body: Container(
        child: Text('Test'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.supervised_user_circle),
        onPressed: () {
          Navigator.of(context).pushNamed('/cart');
        },
      ),
    );
  }
}
