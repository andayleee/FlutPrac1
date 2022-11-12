import 'package:flutter/material.dart';
import 'package:prac2/app_router.dart';
import 'package:prac2/core/db/data_base_helper.dart';

void main() async {
  await DataBaseHelper.instance.init();
  //DataBaseHelper.instance.test();
  runApp(App());
  
}

class App extends StatelessWidget {
   App({super.key});
final AppRouter router =AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRouter,
      initialRoute: screen1NamePage,
    );
  }
}

// class Screen1 extends StatelessWidget {
//   const Screen1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           const Text('1'),
//           ElevatedButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, screen2NamePage);
//               }, child: const Text('Переход на экран 2'))
//         ],
//       ),
//     );
//   }
// }

// class Screen2 extends StatelessWidget {
//   const Screen2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           const Text('2'),
//           ElevatedButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, screen3NamePage);
//               }, child: const Text('Переход на экран 3')),
//           ElevatedButton(onPressed: () {
//             Navigator.pop(context);
//           }, child: const Text('Назад')),
//         ],
//       ),
//     );
//   }
// }

// class Screen3 extends StatelessWidget {
//   const Screen3({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           const Text('3'),
//           ElevatedButton(
//               onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => Screen1()));
//               }, child: const Text('Переход на экран 1')),
//           ElevatedButton(onPressed: () {
//             Navigator.pushNamedAndRemoveUntil(context, screen2NamePage, (route) => false);
//           }, child: const Text('Назад')),
//         ],
//       ),
//     );
//   }
//}
