import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viagens_app/features/menu/presentation/state_manager/status_controller.dart';

class StatusView extends StatelessWidget {
  StatusView({Key? key}) : super(key: key);
  final StatusController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GetBuilder<StatusController>(
                    builder: (value) => Text(
                      controller.userStatus == 'OFFLINE'
                          ? 'Indisponivel para viagens'
                          : 'Disponivel para viagens',
                      style: const TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    ' Mude seu status ao lado',
                    style: TextStyle(color: Colors.white70, fontSize: 11.8),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => controller.setUserStatus(),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.amberAccent[400],
                      borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.all(12),
                  child: GetBuilder<StatusController>(
                    builder: (value) => controller.userStatus == 'OFFLINE'
                        ? const Icon(
                            Icons.notifications_off_outlined,
                            color: Colors.white,
                          )
                        : const Icon(
                            Icons.notifications_active,
                            color: Colors.white,
                          ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
