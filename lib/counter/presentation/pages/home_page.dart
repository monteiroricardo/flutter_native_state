import 'package:flutter/material.dart';
import 'package:native_states/counter/presentation/router/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.aspectRatio,
        children: [
          InkWell(
            child: const Center(
              child: Text('SET STATE'),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(
                AppRoutes.setStatePage,
              );
            },
          ),
          InkWell(
            child: const Center(
              child: Text('VALUE NOTIFIER'),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(
                AppRoutes.setStatePage,
              );
            },
          ),
          InkWell(
            child: const Center(
              child: Text('CHANGE NOTIFIER'),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(
                AppRoutes.setStatePage,
              );
            },
          ),
        ],
      ),
    );
  }
}
