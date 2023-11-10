import 'package:flutter/material.dart';
import 'package:spartan_academy/widgets/admin_dashboard_widgets.dart';
import 'package:get/get.dart';
import '../controllers/admin_dashboard_controller.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AdminDashboardController adc = Get.put(AdminDashboardController());

    return Scaffold(
      backgroundColor: Color(0xFF1B1B1A),
      body: Row(
        children: [
          // Left Menu
          Container(
            margin: EdgeInsets.symmetric(vertical: 50),
            padding: EdgeInsets.all(20),
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Menu',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Obx(
                      () => Column(
                          children: List.generate(adc.menuList.length, (index) {
                        if (index == adc.currentMenuSelectionIndex.value) {
                          return GestureDetector(
                              onTap: () {
                                adc.changeCurrentMenuSelectionIndex(index);
                                adc.changeCurrentContentSelectionIndex(index);
                              },
                              child: menuItemWidget(adc.menuList[index], true));
                        } else {
                          return GestureDetector(
                              onTap: () {
                                adc.changeCurrentMenuSelectionIndex(index);
                                adc.changeCurrentContentSelectionIndex(index);
                              },
                              child: menuItemWidget(adc.menuList[index]));
                        }
                      })),
                    )
                  ],
                ),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 30)),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Logout',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.logout_rounded)
                    ],
                  ),
                )
              ],
            ),
          ),
          // Right Area
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            // Right container
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.person_2_rounded,
                        size: 45,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Admin !',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Tuesday, Nov 7, 2023')
                        ],
                      ),
                    ],
                  ),
                  Expanded(
                      child: Obx(() => adc
                          .contentList[adc.currentContentSelectionIndex.value]))
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
