import 'package:flutter/material.dart';

class CurrencyConverterMaterialPageFulState extends StatefulWidget {
  CurrencyConverterMaterialPageFulState({super.key});

  @override
  State<CurrencyConverterMaterialPageFulState> createState() =>
      _CurrencyConverterMaterialPageFulStateState();
}

class _CurrencyConverterMaterialPageFulStateState
    extends State<CurrencyConverterMaterialPageFulState> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final OutlineInputBorder outlineBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(60),
      borderSide: const BorderSide(
        color: Colors.red,
        width: 2,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
    );

    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: const Text('Demo Converter'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              result.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  hintStyle: const TextStyle(color: Colors.deepPurple),
                  prefixIcon: const Icon(Icons.attach_money),
                  prefixIconColor: Colors.red,
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: outlineBorder,
                  focusedBorder: outlineBorder,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = int.parse(textEditingController.text) * 81;
                  });
                },

                /// # TextButton.styleFrom(), можно использовать и не передовать *MaterialStatePropertyAll
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white60),
                  fixedSize: MaterialStatePropertyAll(Size(200, 50)),
                  elevation: MaterialStatePropertyAll(8),
                ),
                child: const Text(
                  'Convert',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ]),
        ));
  }
}

// class CurrencyConverterMaterialPage extends StatelessWidget {
//    CurrencyConverterMaterialPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     double result = 0;
//     final TextEditingController textEditingController = TextEditingController();
//
//     final OutlineInputBorder outlineBorder = OutlineInputBorder(
//       borderRadius: BorderRadius.circular(60),
//       borderSide: const BorderSide(
//         color: Colors.red,
//         width: 2,
//         strokeAlign: BorderSide.strokeAlignOutside,
//       ),
//     );
//
//     return Scaffold(
//         backgroundColor: Colors.green,
//         appBar: AppBar(
//           title: const Text('Demo Converter'),
//         ),
//         body: Center(
//           child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//              Text(
//               result.toString(),
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 16.0, right: 16.0),
//               child: TextField(
//                 controller: textEditingController,
//                 style: const TextStyle(color: Colors.black),
//                 decoration: InputDecoration(
//                   hintText: 'Please enter the amount in USD',
//                   hintStyle: const TextStyle(color: Colors.deepPurple),
//                   prefixIcon: const Icon(Icons.attach_money),
//                   prefixIconColor: Colors.red,
//                   filled: true,
//                   fillColor: Colors.white,
//                   enabledBorder: outlineBorder,
//                   focusedBorder: outlineBorder,
//                 ),
//                 keyboardType: TextInputType.number,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 20.0),
//               child: ElevatedButton(
//                 onPressed: () {
//                   result = int.parse(textEditingController.text) * 81;
//                 },
//
//                 /// # TextButton.styleFrom(), можно использовать и не передовать *MaterialStatePropertyAll
//                 style: const ButtonStyle(
//                   backgroundColor: MaterialStatePropertyAll(Colors.white60),
//                   fixedSize: MaterialStatePropertyAll(Size(200, 50)),
//                   elevation: MaterialStatePropertyAll(8),
//                 ),
//                 child: const Text(
//                   'Convert',
//                   style: TextStyle(color: Colors.black),
//                 ),
//               ),
//             ),
//           ]),
//         ));
//   }
// }
