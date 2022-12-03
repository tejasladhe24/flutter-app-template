import 'package:flutter/material.dart';
import 'package:flutter_template/logic/bottom_nav/bloc.dart';
import 'package:flutter_template/logic/bottom_nav/state.dart';
import 'package:flutter_template/ui/components/bottom_nav/bottom_nav.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/ui/screens/export.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ClientApp(),
    );
  }
}

class ClientApp extends StatefulWidget {
  const ClientApp({
    super.key,
  });

  @override
  _ClientAppState createState() => _ClientAppState();
}

class _ClientAppState extends State<ClientApp> {
  late BottomNavBloc navBloc;
  List<Widget> screens = [
    Screen1(),
    Screen2(),
    Screen3(),
    Screen4(),
    Screen5(),
  ];

  @override
  void initState() {
    super.initState();
    navBloc = BottomNavBloc(BottomNavState(pageIdx: 0));
  }

  @override
  void dispose() {
    navBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: navBloc,
      builder: (BuildContext context, BottomNavState state) {
        return buildScreen(state.pageIdx, screens[state.pageIdx]);
      },
    );
  }

  Scaffold buildScreen(int idx, Widget screen) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: screen,
      ),
      bottomNavigationBar:
          BottomNavBar(currentIdx: idx, bottomNavBloc: navBloc),
    );
  }
}
