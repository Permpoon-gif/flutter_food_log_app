// คลาสนี้จะใช้สำหรับการเชื่อมโค้ดคำสั่งทำงานต่างๆ กับ supabase
import 'package:supabase_flutter/supabase_flutter.dart';
class SupabaseService {
  //สร้าง object/instance/ตัวแทน ที่จะใช้ทำงานต่างๆ กับ supabase
  final SupabaseClient = Supabase.instance.client;
  //ส่วนของเมธอดต่างๆ ที่จะใช้ทำงานกับ supabase 
  // เช่น การเพิ่มข้อมูล การลบข้อมูล การแก้ไขข้อมูล การดึงข้อมูล เป็นต้น
}