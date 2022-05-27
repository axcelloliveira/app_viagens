import 'package:get/get.dart';
import 'package:viagens_app/features/custom_bottom_appbar/presentation/state_manager/custom_bottom_appbar_controller.dart';
import 'package:viagens_app/features/menu/presentation/state_manager/menu_controller.dart';

import '../state_manager/status_controller.dart';

class MenuBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MenuController());
    Get.lazyPut(() => CustomBottomAppBarController());
    Get.lazyPut(() => StatusController());
  }
}
