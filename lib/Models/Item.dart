class Item {
  int id;
  String name;
  String description;
  String description2;
  String description3;
  String description4;
  String description5;
  String description6;
  String description7;
  String image;
  double rating;
  int ratingCount;
  double price;
  int color;
  int color2;
  List<String> vitamins;
  List<String> ingrediants;

  Item({
    this.id,
    this.name,
    this.description,
    this.image,
    this.rating,
    this.ratingCount,
    this.price,
    this.color,
    this.color2,
    this.vitamins,
    this.ingrediants,
    this.description2,
    this.description3,
    this.description4,
    this.description5,
    this.description6,
    this.description7,
  });
}

List<Item> demoItems = [
  Item(
    id: 1,
    name: 'ปาล์มน้ำมัน',
    description:
        "ปาล์มน้ำมัน มีชื่อสามัญว่า : oilpalm ชื่อทางวิทยาศาสตร์ว่า : Elaeis guineensis มีถิ่นกำเนิดในทวีปแอฟริกามีความสูง 15-18 เมตร สีใบจะมีสีเขียว ผลที่สุกจะมีลักษณะสีแดงอมม่วง รูปร่างผลกลม-รูปไข่ อัตราผลผลิต 64-800 กิโลกรัม/ไร่ อายุเก็บเกี่ยวตลอดการปลูก 20-30 ปี ",
    description2:
        "ได้นำเข้ามาปลูกในประเทศไทยโดยผ่านทางอินโดนีเซียและมาเลเซีย มื่อประมาณ พ.ศ. 2470 ที่สถานีทดลองยางคอหงษ์จังหวัดสงขลา และสถานีกสิกรรมพลิ้วจังหวัดจันทบุรี ส่วนการปลูกเพื่อเป็นการค้าเริ่มต้นภายหลังสงครามโลกครั้งที่ 2 ที่จังหวัดสงขลาแต่ก็ได้ล้มเลิกกิจการไปจนกระทั่งในปี พ.ศ. 2511 ได้มีการส่งเสริมอีกครั้งหนึ่งและพื้นที่เพาะปลูกขยายตัวออกอย่างรวดเร็วในปี พ.ศ. 2530 มีเนื้อที่การปลูกน้ำมัน 600,000 ไร่ โดยแยกออกเป็นสวนปาล์มของบริษัทร้อยละ 57 สวนของเอกชนร้อยละ 28 และในสหกรณ์นิคมร้อยละ 15 พื้นที่เพาะปลูกปาล์มยังขยายตัวออกไปอีกทุกปี ปาล์มน้ำมันเจริญเติบโตและให้ผลิตผลดีในสภาพอากาศที่ร้อนและชื้นมีปริมาณน้ำฝนตั้งแต่ 2,000 มิลลิเมตรต่อปีขึ้นไปจึงปลูกกันมากในภาคใต้และชายฝั่งทะเลด้านตะวันออกของอ่าวไทย",
    description3: " ",
    description4: " ",
    description5: " ",
    description6: " ",
    description7: " ",
    image: 'assets/images/21.png',
    color: 0xFFAFEEEE,
    color2: 0xFFFFFFFF,
  ),
  Item(
    id: 2,
    name: 'ผลปาล์มน้ำมัน',
    description:
        "ผลปาล์มน้ำมันมีลักษณะเป็นรูปเรียวรีหรือรูปไข่ มีขนาดกว้าง 3 เซนติเมตร และยาว 5 เซนติเมตร มีน้ำหนักผลละ 10-15 กรัม เปลือกผิวนอกของผลปาล์มเป็นสีเขียวหรือดำเมื่อผลอ่อน และเปลี่ยนเป็นสีส้มแดงเมื่อผลแก่และสุก ภายใต้เปลือกเป็นเมล็ด ประกอบด้วยกะลาและเนื้อในซึ่งมีต้นอ่อนฝังอยู่ น้ำมันปาล์ม (palm oil) จะได้จากผลปาล์ม 2 ส่วนคือ จากส่วนที่เป็นเปลือก หุ้มภายนอก (mesocarp) และจากเนื้อในของเมล็ด (kernel) เรียกว่า palm kernel oil",
    description2: " ",
    description3: " ",
    description4: " ",
    description5: " ",
    description6: " ",
    description7: " ",
    image: 'assets/images/12.png',
    color: 0xFFAFEEEE,
    color2: 0xFFFFFFFF,
  ),
  Item(
    id: 3,
    name: 'วิธีปลูกปาล์มน้ำมัน',
    description:
        "1.เตรียมพื้นที่ปลูกปาล์มน้ำมัน : เกษตรกรต้องเตรียมพื้นที่ปลูก และการบุกเบิกพื้นที่ ปรับสภาพพื้นที่ให้เหมาะสมสำหรับการปลูก เช่น หากในพื้นที่ปลูกมีต้นไม้ ตอไม้ วัชพืช หรือสิ่งกีดขวาง หรือสิ่งคลุมดินอื่นๆ เราต้องโค่นหรือถอนออก จากนั้นเคลื่อนย้ายมากองรวมกัน ทิ้งระยะไว้ให้กองซากเหล่านั้นแห้งประมาณ 1 เดือน แล้วจึงทำการเผา จากนั้นปรับและไถปรับสภาพพื้นที่ให้เรียบโล่ง(*ข้อแนะนำ : ระยะเวลาที่เหมาะสมในขั้นตอนนี้ คือ ฤดูแล้ง ระหว่างเดือน ธันวาคม – เมษายน)",
    description2:
        "2.การสร้างถนนและร่องระบายน้ำในแปลงปลูก: สร้างถนนในแปลงปลูกปาล์มน้ำมัน เพื่อใช้ขนส่งวัสดุการเกษตรและผลผลิต โดยรูปแบบขึ้นอยู่กับขนาดของสวนปาล์มน้ำมัน โดยทั่วไปรูปแบบของถนนมี 2 แบบ คือ  1) ถนนใหญ่ ถือเป็นเส้นทางการขนส่งผลผลิตควรมีกว้างประมาณ 6-8 เมตร ห่างกันประมาณ 1 กิโลเมตร  2) ถนนซอยหรือถนนย่อยหรือถนนเข้าแปลง ขนาดกว้างประมาณ 4 เมตร ระยะห่างของถนนย่อยควรห่างกันประมาณ 500 เมตร(*ข้อแนะนำ : ควรทำช่องระบายน้ำขนาด ด้านบนกว้าง 100 x ด้านล่างกว้าง 30 x ลึก 110 ซม. ควบคู่ไปกับทำถนนในแปลงปลูกปาล์มน้ำมัน)การทำร่องระบายน้ำควรทำควบคู่ไปพร้อมกับการทำถนนโดยมีลักษณะเป็นรูปตัววี",
    description3:
        "3.การปรับสภาพพื้นดิน : 1)การปรับพื้นที่ราบ ในกรณีของพื้นที่ราบเมื่อมีการกำจัดวัชพืชแล้วควรไถปรับสภาพพื้นที่โดยใช้ไถแบบ 3 จานและไถแบบ 7 จาน  2)การปรับพื้นที่ลาดชันในกรณีของพื้นที่ลาดชันหรือพื้นที่เชิงเขาควรมีการทำขั้นบันไดเพื่อลดการพังทลายของหน้าดินและสะดวกกับการจัดการ  3)การปรับพื้นที่ลุ่มและมีน้ำท่วมถึงในกรณีของพื้นที่ที่เป็นที่ลุ่มมีน้ำขังจำเป็นอย่างยิ่งที่ผู้ปลูกปาล์มน้ำมันจะต้องยกร่องและขุดคูระบายน้ำโดยให้เนินดินบนสันร่องที่จะปลูกปาล์มน้ำมันอยู่สูงกว่าระดับน้ำที่ท่วมขังพร้อมทั้งขุดร่องหรือคูระบายน้ำออกไปจากแปลงปลูก เพื่อไม่ให้น้ำท่วมขังบริเวณโคนต้นปาล์มน้ำมัน",
    description4:
        "4.การวางแนวในการปลูกปาล์มน้ำมัน : ระยะในการวางแนวปลูกคือ 9 x 9 x 9 เมตร ปลูกแบบสามเหลี่ยมด้านเท่า ให้แถวปลูกหลักอยู่ในทิศเหนือ-ใต้ ",
    description5:
        "5.ปลูกพืชคลุมดิน :  1)ช่วยป้องกันการที่วัชพืชแก่งแย่งอาหารจากต้นปาล์มน้ำมันขณะยังมีขนาดเล็ก ช่วยรักษาความชุ่มชื้นของดินให้คงอยู่ได้นาน  2)ช่วยป้องกันการพังทะลายของหน้าดินในกรณีที่พื้นที่เป็นที่ลาดชัน รวมไปถึงการเพิ่มความอุดมสมบูรณ์ให้แก่ดินโดยการเพิ่มอินทรียวัตถุและการตรึงไนโตรเจนจากอากาศ การปลูกพืชคลุมดินควรมีระยะห่างจากแถวปาล์มอย่างน้อย 1.5 เมตร โดยแนะนำให้ปลูกพืชคุลมดินตระกูลถั่ว",
    description6:
        "6.การเตรียมต้นกล้า : เตรียมต้นกล้าปาล์มน้ำมันพันธุ์ดีที่จะใช้ปลูก โดยให้ต้นกล้าปาล์มน้ำมันมีอายุประมาณ 10-12 เดือน ซึ่งปกติแล้วควรจัดเตรียมจำนวน 22-25 ต้น/ไร่",
    description7:
        "7.วางระยะปลูกปาล์มน้ำมัน : วัดระยะปลูกปาล์มน้ำมัน โดยใช้เชือกขึงตึงดึงเป็นทรง 3 เหลี่ยมด้านเท่าระยะปลูกที่เหมาะสมและเป็นที่นิยมกันมากคือระยะ 9 x 9 x 9 เมตร ซึ่งจะมีลักษณะเป็นรูปสามเหลี่ยมด้านเท่า ระยะปลูกนี้จะทำให้ใบปาล์มน้ำมันได้รับแสงทุกทิศทางและไม่เกิดการบังแสงเมื่อต้นปาล์มน้ำมันมีขนาดใหญ่ขึ้น",
    image: 'assets/images/31.png',
    rating: 4.5,
    color: 0xFFAFEEEE,
    color2: 0xFFFFFFFF,
  ),
  Item(
    id: 4,
    name: 'พันธุ์ปาล์มน้ำมัน',
    description: "พันธุ์ปาล์มน้ำมันจำแนกออกได้เป็น 3 พันธุ์ คือ",
    description2:
        "1. พันธุ์ดูรา (Dura) มีเปลือกหุ้มผลค่อนข้างบางและมีกะลาหนา มีปริมาณน้ำมันต่อทะลายต่ำเพียง 18-20% ",
    description3:
        "2.พันธุ์ฟิสิเฟอรา (Pisifera) มีเปลือกหุ้มผลค่อนข้างบาง แต่ให้ผลขนาดเล็กและมีดอกตัวเมียเป็นหมัน ผลิตผลต่อต้นต่ำ ",
    description4:
        "3. พันธุ์เทเนอรา (Tenera) เป็นพันธุ์ลูกผสม โดยรวมลักษณะดีจากทั้งสองพันธุ์ดังกล่าวเข้าด้วยกัน โดยใช้ดูราเป็นแม่และฟิสิเฟอราเป็นพ่อ ให้น้ำหนักผลปาล์มต่อทะลายสูง เนื่องจากมีเปลือกหุ้มผลหนา และมีปริมาณน้ำมันมาก ",
    description5: " ",
    description6: " ",
    description7: " ",
    image: 'assets/images/41.png',
    color: 0xFFAFEEEE,
    color2: 0xFFFFFFFF,
  ),
];
