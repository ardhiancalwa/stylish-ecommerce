import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../modules/shop_page/controllers/shop_page_controller.dart';

class ProductSize extends StatelessWidget {
  String size;
  ProductSize({
    required this.size,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var isPressed = false.obs;

    void togglePressed() {
      isPressed.value = !isPressed.value;
    }

    return Obx(() => GestureDetector(
          onTap: togglePressed,
          child: Container(
            height: 32,
            width: 56,
            decoration: BoxDecoration(
              color: isPressed.value ? Color(0xffFA7189) : Colors.transparent,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: Color(0xffFA7189),
                width: 2,
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              '$size UK',
              style: TextStyle(
                color: isPressed.value ? Colors.white : Color(0xffFA7189),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ));
  }
}
