import 'package:auto_router_example/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("* Page3.build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Page3"),
        elevation: 0,
      ),
      body: Center(
          child: Text("Page3", style: TextStyle(color: Colors.orange, fontSize: 20),)
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: ()=>_goPage2(context),
      ),
    );
  }

  void _goPage2(BuildContext context) =>
      BlocProvider.of<HomeBloc>(context).add(GotoScreenEvent(EnumHomeScreens.Page4));
}
