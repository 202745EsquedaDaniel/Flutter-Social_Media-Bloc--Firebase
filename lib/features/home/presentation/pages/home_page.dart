import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/features/auth/presentation/cubits/auth_cubit.dart';
import 'package:myapp/features/home/presentation/components/my_drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //  BUILD UI
  @override
  Widget build(BuildContext context) {
    //  SCAFFOLD
    return Scaffold(
      //  APP BAR
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          //  logout button
          IconButton(
            onPressed: () {
              context.read<AuthCubit>().logout();
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),

      //  DRAWER
      drawer: MyDrawer(),
    );
  }
}
