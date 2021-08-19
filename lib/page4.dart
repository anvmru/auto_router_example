import 'package:auto_router_example/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("* Page4.build");
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => _goPrev(context),
        ),
        title: Text("Page4"),
        elevation: 0,
        actions: [],
      ),
      body: Center(
          child: Text(
            "Page4",
            style: TextStyle(color: Colors.orange, fontSize: 20),
          )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.logout),
        onPressed: () => _goLogout(context),
      ),
    );
  }

  void _goLogout(BuildContext context) =>
      BlocProvider.of<HomeBloc>(context).add(LogoutEvent());

  void _goPrev(BuildContext context) =>
      BlocProvider.of<HomeBloc>(context).add(GotoBackEvent());
}
