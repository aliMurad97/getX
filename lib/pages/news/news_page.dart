import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../themes/app_theme.dart';
import 'news_controller.dart';

class NewsPage extends GetView<ThemesController> {
  @override
  Widget build(BuildContext context) {
    Get.put(ThemesController());
    ThemesController themeController = Get.find<ThemesController>();
    print(themeController.theme.value);
    print('aboe');
    return Scaffold(
        body: Column(
      children: [
        Obx(() => SwitchListTile(
              title: const Text('Dark mode'),
              value: themeController.theme.value == 'dark' ? true : false,
              onChanged: (val) {
                val
                    ? themeController.changeTheme(whichTheme: 'dark')
                    : themeController.changeTheme(whichTheme: 'light');
              },
            )),
      ],
    ));
  }
}
