import 'package:flutter/cupertino.dart';

class CurrenryCupertinaPage extends StatefulWidget {
   CurrenryCupertinaPage({super.key});

  @override
  State<CurrenryCupertinaPage> createState() => _CurrenryCupertinaPageState();
}

class _CurrenryCupertinaPageState extends State<CurrenryCupertinaPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Add code after super
  }

  @override
  Widget build(BuildContext context) {

    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.activeGreen,
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Demo Converter'),
        ),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              result.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(color: CupertinoColors.black),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(60),
                  color: CupertinoColors.white,
                ),
                placeholder: 'Please enter the amount in USD',
                prefix: const Icon(CupertinoIcons.money_dollar_circle),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: CupertinoButton(
                onPressed: () {
                  setState(() {
                    result = int.parse(textEditingController.text) * 81;
                  });
                },
                color: CupertinoColors.white,
                child: const Text(
                  'Convert',
                  style: TextStyle(color: CupertinoColors.darkBackgroundGray),
                ),
              ),
            ),
          ]),
        ));
  }
}
