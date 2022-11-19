import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/components/my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfoText(
                    title: 'Residance:',
                    text: 'Bangladesh',
                  ),
                  AreaInfoText(
                    title: 'City:',
                    text: 'Cox\'s Bazar',
                  ),
                  AreaInfoText(
                    title: 'Age:',
                    text: '21',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    Key? key,
    this.title,
    this.text,
  }) : super(key: key);
  final String? title, text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            text!,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
