import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_bloc.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("* Page1.build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Page1"),
        elevation: 0,
      ),
      body: Center(
        child: Text("Page1", style: TextStyle(color: Colors.orange, fontSize: 20),)
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: ()=>_goPage2(context),
      ),
    );
  }

  void _goPage2(BuildContext context) =>
      BlocProvider.of<AuthBloc>(context).add(GotoScreenEvent(EnumAuthScreens.Page2));
}
