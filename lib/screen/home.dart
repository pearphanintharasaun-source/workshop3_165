import 'package:flutter/material.dart';
import '../models/frienddata.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<FriendData> friends = [
    FriendData(
      name: "กนก เนื่องนุสนธิ์",
      nickname: "เว่น",
      age: "21 ปี",
      hometown: "ประจวบคีรีขันธ์",
      food: "ส้มตำ, หมูทอด",
      activity: "ดูหนัง, เล่นเกม",
      image: "assets/images/frindes1.png",
    ),
    FriendData(
      name: "พรรณราย อินทรศวร",
      nickname: "บีน",
      age: "20 ปี",
      hometown: "ระนอง",
      food: "ถั่ว, โกโก้",
      activity: "ถ่ายรูป, ท่องเที่ยว",
      image: "assets/images/frindes2.png",
    ),
    FriendData(
      name: "สรนันท์ รอดทอง",
      nickname: "ฟลุ๊ค",
      age: "21 ปี",
      hometown: "ศรีเกษ",
      food: "ส้มตำ, ไก่ย่าง",
      activity: "ออกกำลังกาย, เล่นเกม",
      image: "assets/images/frindes3.png",
    ),
    FriendData(
      name: "อดิศร เมืองใหญ่",
      nickname: "นิ",
      age: "22 ปี",
      hometown: "กรุงเทพมหานคร",
      food: "หมูทอด, ผัดไทย",
      activity: "ช้อปปิ้ง, ดูหนัง",
      image: "assets/images/frindes4.png",
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
        padding: const EdgeInsets.all(12),
        itemCount: friends.length,
        itemBuilder: (context, index) {
          final item = friends[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: _getBgColor(index),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ชื่อ-นามสกุล: ${item.name}",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text("ชื่อเล่น: ${item.nickname}", style: const TextStyle(fontSize: 12)),
                      Text("อายุ: ${item.age}", style: const TextStyle(fontSize: 12)),
                      Text("ภูมิลำเนา: ${item.hometown}", style: const TextStyle(fontSize: 12)),
                      Text("อาหารที่ชอบ: ${item.food}", style: const TextStyle(fontSize: 12)),
                      Text("กิจกรรมที่ชอบ: ${item.activity}", style: const TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(item.image),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Color _getBgColor(int index) {
    switch (index) {
      case 0: return const Color(0xFFE3F2FD);
      case 1: return const Color(0xFFF3E5F5);
      case 2: return const Color(0xFFE8F5E9);
      case 3: return const Color(0xFFFFF3E0);
      default: return Colors.white;
    }
  }
}