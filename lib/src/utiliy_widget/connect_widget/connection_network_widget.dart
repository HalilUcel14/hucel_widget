import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectionNetworkWidget extends StatelessWidget {
  final AsyncSnapshot<ConnectivityResult?> snapshot;
  final Widget connectedWidget;
  final Widget notConnectedWidget;
  const ConnectionNetworkWidget({
    Key? key,
    required this.snapshot,
    required this.connectedWidget,
    required this.notConnectedWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (snapshot.connectionState) {
      case ConnectionState.active:
        final state = snapshot.data!;
        switch (state) {
          case ConnectivityResult.none:
            return notConnectedWidget;
          default:
            return connectedWidget;
        }

      default:
        return Center(
          child: Container(
            color: Colors.red,
            child: const Text("Connectivity"),
          ),
        );
    }
  }
}


/// learn how to use
/// 
/// 
// import 'package:flutter/material.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:simple_firebase_app/connection_network.dart';

// class HomePage extends HookWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final connectivity = useMemoized(
//       () => Connectivity(),
//       [key],
//     );

//     return Scaffold(
//       appBar: _homeAppBar(),
//       body: _homeBody(context, connectivity),
//     );
//   }

//   AppBar _homeAppBar() {
//     return AppBar(
//       systemOverlayStyle: SystemUiOverlayStyle.light,
//       title: const Text("A Simple Firebase Project"),
//       centerTitle: true,
//     );
//   }

//   Widget _homeBody(BuildContext context, Connectivity connectivity) {
//     return StreamBuilder(
//       stream: connectivity.onConnectivityChanged,
//       builder: (_, AsyncSnapshot<ConnectivityResult?> snapshot) =>
//           ConnectionNetwork(
//         snapshot: snapshot,
//         connectedWidget: const Center(child: Text("isConnected")),
//         notConnectedWidget: const Center(child: Text("isNotConnected")),
//       ),
//     );
//   }
// }