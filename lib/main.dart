import 'package:flutter/material.dart';
import 'package:flutter_unit_teste/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userProvider = ChangeNotifierProvider<User>((ref){
  return User(24, "User user");
});

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tests',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testing app'),
      ),
      body: Center(
        child: Consumer(
          builder: (context, watch, child) {
            final user = watch(userProvider);

            return Text(
              '${user.name} age ${user.age}',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.read(userProvider).birthday();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
