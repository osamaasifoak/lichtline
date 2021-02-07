import 'package:flutter/material.dart';
import 'package:lichtline/components/text_component.dart';
import 'package:lichtline/constants/colors/colors_constants.dart';
import 'package:lichtline/constants/strings/string_constants.dart';
import 'package:lichtline/constants/styles/font_styles_constants.dart';
import 'package:lichtline/ui_utils/size_config.dart';

class MenuSelectionScreen extends StatefulWidget {
  @override
  _MenuSelectionScreenState createState() => _MenuSelectionScreenState();
}

class _MenuSelectionScreenState extends State<MenuSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Expanded(
                child: GridView.builder(
                    itemCount: btnList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio:
                            SizeConfig.screenHeight / SizeConfig.screenWidth,
                        crossAxisCount: 2,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorConstant.black),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextComponent(
                              text: btnList[index]["title"],
                              textStyle: FontStyles.inter(
                                  color: ColorConstant.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

var btnList = [
  {"title": StringConstant.umweltrechner, "route": ""},
  {"title": StringConstant.wirtschaftlichkeitsrechner, "route": ""},
  {"title": StringConstant.zertifikat, "route": ""},
  {"title": StringConstant.schlusselfaktoren, "route": ""},
];