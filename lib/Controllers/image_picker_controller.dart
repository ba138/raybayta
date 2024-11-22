import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  ImagePicker imagePicker = ImagePicker();
  Future<XFile?> pickImage() async {
    final path = await imagePicker.pickImage(source: ImageSource.gallery);
    return path;
  }
}
