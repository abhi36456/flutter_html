import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/flutter_html_more.dart';

class DemoFile extends StatefulWidget {
  const DemoFile({Key? key}) : super(key: key);

  @override
  _DemoFileState createState() => _DemoFileState();
}

class _DemoFileState extends State<DemoFile> {

  int type = 0;
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
                onMoreClick: (){
                  if(type == 0){
                    setState(() {
                      type = 1;
                    });
                  }else{
                    setState(() {
                      type = 0;
                    });
                  }
                },
                data: "<p style='margin : 0; padding : 0 '>rohannnnnn111</p>",
                style: {"p": Style(color: Colors.white)},
              ),
            ),


          ],
        ),
      ),
    );
  }
}
