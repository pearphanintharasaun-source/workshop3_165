import 'package:flutter/material.dart';
import '../models/foodmenu.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  List<FoodMenu> emp = [
    FoodMenu(
      name: "สเต็กไก่",
      type: "ประเภท: อาหารจานเดียว",
      component: "ส่วนผสม: เนื้อไก่, ผัก, มันฝรั่ง",
      price: 299,
      foodpic: Foodpic.menu1,
      bgColor: const Color(0xFFFFFF4CC),
    ),
    FoodMenu(
      name: "สลัดผัก",
      type: "ประเภท: อาหารเพื่อสุขภาพ",
      component: "ส่วนผสม: ผักสด, มะเขือเทศ, น้ำสลัด",
      price: 159,
      foodpic: Foodpic.menu2,
      bgColor: const Color(0xFFE8F5E9),
    ),
    FoodMenu(
      name: "สุกี้ผักรวม",
      type: "ประเภท: อาหารจานเดียว",
      component: "ส่วนผสม: ผักรวม, เส้น, น้ำจิ้มสุกี้",
      price: 199,
      foodpic: Foodpic.menu3,
      bgColor: const Color(0xFFE3F2FD),
    ),
    FoodMenu(
      name: "แฮมเบอร์เกอร์",
      type: "ประเภท: อาหารจานด่วน",
      component: "ส่วนผสม: ขนมปัง, เนื้อวัว, ผัก, ชีส",
      price: 189,
      foodpic: Foodpic.menu4,
      bgColor: const Color(0xFFFFD9CC),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CET App ID:165"), // ✅ เปลี่ยนเป็น 165 แล้ว
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        itemCount: emp.length,
        itemBuilder: (context, index) {
          final item = emp[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            decoration: BoxDecoration(
              color: item.bgColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(item.type, style: const TextStyle(fontSize: 10)),
                      const SizedBox(height: 4),
                      Text(
                        item.component,
                        style: const TextStyle(fontSize: 9),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "ราคา: ${item.price} บาท",
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Image.asset(
                      item.foodpic.image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}