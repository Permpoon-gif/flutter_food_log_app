//คลาสนี้จะใช้สำหรับทำงานร่วมกับตารางอาหารในฐานข้อมูลที่จะทำงานด้วย

class Food {
  //สร้างตัวแปรที่ล้อกกับคอลัมน์ในตารางที่จะทำงานด้วย
  String? id;
  DateTime? create_at;
  DateTime? foodDate;
  String? foodMeal;
  String? foodName;
  double? foodPrice;
  int? foodPerson;

  //กำหนดคอนสตรัคเตอร์สเพื่อใช้สำหรับการกำหนดค่าข้อมูล
  Food({
    this.id,
    this.create_at,
    this.foodDate,
    this.foodMeal,
    this.foodName,
    this.foodPrice,
    this.foodPerson,
  });

  //แปลงข้อมูลจากแอป เพื่อส่งไปยัง supabase
    Map<String, dynamic> toMap() => {
        'foodDate': foodDate,
        'foodMeal': foodMeal,
        'foodName': foodName,
        'foodPrice': foodPrice,
        'foodPerson': foodPerson,
      };
    

  //แปลงข้อมูลที่รับมาจาก supabase เพื่อแอป
    factory Food.fromMap(Map<String, dynamic> map) => Food(
        id: map['id'] as String,
        create_at: DateTime.parse(map['create_at'] as String),
        foodDate: DateTime.parse(map['foodDate'] as String),
        foodMeal: map['foodMeal'] as String,
        foodName: map['foodName'] as String,
        foodPrice: double.parse(map['foodPrice'] as String),
        foodPerson: int.parse(map['foodPerson'] as String),
      );
}