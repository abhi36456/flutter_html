import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class DemoFile extends StatefulWidget {
  const DemoFile({Key? key}) : super(key: key);

  @override
  _DemoFileState createState() => _DemoFileState();
}

class _DemoFileState extends State<DemoFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.red,
              child: Html(
                shrinkWrap: true,
                nospace: true,
                data: "rohannnnnn",
              ),
            ),
            Container(
              color: Colors.orange,
              child: Html(
                shrinkWrap: true,
                data: "<p style='margin : 0; padding : 0 '>rohannnnnn111</p>",
                style: {"p": Style(color: Colors.white)},
              ),
            ),
            SizedBox(height: 20,),
            Container(
              color: Colors.red,
              child: Text(
                "rohannnnnn",
              ),
            ),
            Container(
              color: Colors.orange,
              child: Text(
                "rohannnnnn111",
              ),
            ),

          ],
        ),
      ),
    );
  }
}
