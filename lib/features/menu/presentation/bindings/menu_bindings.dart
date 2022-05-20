import 'package:get/get.dart';
import 'package:viagens_app/features/menu/presentation/state_manager/menu_controller.dart';

class MenuBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MenuController());
  }
}
