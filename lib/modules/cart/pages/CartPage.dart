import 'package:flutter/material.dart';
import 'package:rel/config/services.dart';
import 'package:rel/modules/cart/models/user.model.dart';
import 'package:rel/modules/cart/repositories/users.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final usersRepository = container.get<UsersRepository>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: Container(
        child: FutureBuilder(
          future: usersRepository.getUsers(),
          builder: (context, AsyncSnapshot<List<User>> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(snapshot.data![index].name),
                  onTap: () => {},
                ),
              );
            }

            return Text('Loading');
          },
        ),
      ),
    );
  }
}
