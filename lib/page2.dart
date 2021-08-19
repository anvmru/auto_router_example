import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_bloc.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("* Page2.build");
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => _goPrev(context),
        ),
        title: Text("Page2"),
        elevation: 0,
        actions: [],
      ),
      body: Center(
          child: Text(
        "Page2",
        style: TextStyle(color: Colors.orange, fontSize: 20),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.login),
        onPressed: () => _goLogin(context),
      ),
    );
  }

  void _goLogin(BuildContext context) =>
      BlocProvider.of<AuthBloc>(context).add(LoginEvent());

  void _goPrev(BuildContext context) =>
      BlocProvider.of<AuthBloc>(context).add(GotoBackEvent());
}
