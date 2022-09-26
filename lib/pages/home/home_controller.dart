import 'package:get/get.dart';
import 'package:tasks/models/images.dart';
import 'package:tasks/services/imagesService.dart';

class HomeController extends GetxController {
  var ImagesList = List<ImagesModel>.empty(growable: true).obs;

  @override
  void onInit() {
    fetchImages();
    super.onInit();
  }

  void fetchImages() async {
    var Images = await ImageService.fetchData();
    print(Images);
    if (Images != null) {
      ImagesList.value = Images;
    }
  }
}