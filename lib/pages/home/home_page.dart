import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home',
          ),
          elevation: 0,
        ),
        body: ListView.builder(
          shrinkWrap: true,
            itemCount: controller.ImagesList.length,
            itemBuilder: ((context, index) {
              return Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                decoration:
                    BoxDecoration(
                      image: DecorationImage(image: NetworkImage(controller.ImagesList[index].imageLink!),
                      fit: BoxFit.cover,
                      opacity: 0.2
                      ),
                      color: Colors.teal.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  leading: SizedBox(
                    width: 75,
                    child: Text(controller.ImagesList[index].habitat!,
                    ),
                  )                    ,
                  title: SizedBox(
                    width: 100,
                    child: Text(controller.ImagesList[index].name!)),
                  subtitle: SizedBox(
                    width: 100,
                    child: Text(controller.ImagesList[index].diet!,
                    ),
                  ),
                  trailing: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      controller.ImagesList[index].imageLink!,
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            })));
  }
}
