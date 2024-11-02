class Event{
  String name;
  String day;
  String time;
  String location;
  String imageAsset;
  String description;
  String eventOwner;
  String ownerImage;
  bool isAvailable;

  Event({
    required this.name,
    required this.day,
    required this.time,
    required this.location,
    required this.imageAsset,
    required this.description,
    required this.eventOwner,
    required this.ownerImage,
    required this.isAvailable
  });
}

var universityEvent = [
  Event(
    name: "Self Development with HIMATI",
    day: "27 October 2024",
    time: "09:00 - 11:30",
    location: "Auditorium kampus B STT Terpadu Nurul Fikri",
    imageAsset: "images/event/hima_1.jpg",
    description: "Workshop Self Development with HIMATI bertema “Mental Health for Students and Aspiring IT Professionals” adalah acara yang berfokus pada pentingnya menjaga kesehatan mental bagi mahasiswa di bidang IT serta calon profesional di dunia teknologi.",
    eventOwner: "HIMATI STT NF",
    ownerImage: "images/logo/hima_logo.png",
    isAvailable: true,
  ),
  Event(
    name: "BIG TECH VOL. 03",
    day: "07 September 2024",
    time: "09:00 - 11:59",
    location: "Auditorium kampus B STT Terpadu Nurul Fikri",
    imageAsset: "images/event/hima_2.png",
    description: "Kami dengan senang hati mengumumkan seminar 𝗔𝘂𝘁𝗼𝗺𝗮𝘁𝗶𝗼𝗻 𝗧𝗲𝘀𝘁𝗶𝗻𝗴 𝗕𝗿𝗶𝗻𝗴𝘀 𝗘𝗳𝗳𝗶𝗰𝗶𝗲𝗻𝗰𝘆 𝗶𝗻 𝗦𝗼𝗳𝘁𝘄𝗮𝗿𝗲 𝗗𝗲𝘃𝗲𝗹𝗼𝗽𝗺𝗲𝗻𝘁 yang akan segera diadakan. Seminar ini dirancang untuk memberikan wawasan kepada mahasiswa mengenai pentingnya pengujian otomatis dalam pengembangan perangkat lunak, serta teknik dan strategi yang dapat meningkatkan efisiensi dan keandalan proses pengujian.",
    eventOwner: "HIMATI STT NF",
    ownerImage: "images/logo/hima_logo.png",
    isAvailable: false
  ),
  Event(
    name: "Persegi 2024",
    day: "13 July 2024",
    time: "08:00 - 13:00",
    location: "Auditorium kampus B STT Terpadu Nurul Fikri",
    imageAsset: "images/event/persegi.png",
    description: "Perkenalan dan Sharing Kegiatan Teknik Informatika dalam acara PERSEGI yang bertujuan untuk mensosialisasikan peminatan dan mengenal lebih dalam apa saja yang ada di jurusan Teknik Informatika STT NF. Jangan lewatkan kesempatan berharga ini dan catat perwakilan kelasmu!",
    eventOwner: "HIMATI STT NF",
    ownerImage: "images/logo/hima_logo.png",
    isAvailable: false
  ),
  Event(
    name: "Senada Islamic Camp 2024",
    day: "26 - 27 Oktober 2024",
    time: "08:00 - Selesai",
    location: "Kampus B STT NF, Taman Tanah Serval Composite",
    imageAsset: "images/event/senada_1.jpg",
    description: "Kegiatan program berkemah islami selama 2 hari 1 malam yang diisi dengan pembekalan materi, Building team, pengadaan LDK, dan ngaji bareng",
    eventOwner: "SENADA STT NF",
    ownerImage: "",
    isAvailable: false
  ),
  Event(
    name: "KAJIAN BAPERAN 2024",
    day: "Sabtu, 02 November 2024",
    time: "08.00 - Selesai",
    location: "Aula Gedung Rabbani, Depok",
    imageAsset: "images/event/senada_2.jpg",
    description: "Dalam acara ini, kita akan mengupas berbagai isu perempuan muda, mulai dari tekanan zaman modern, membangun rasa percaya diri, hingga bagaimana menemukan tujuan hidup yang sejati sesuai dengan syariat islami.",
    eventOwner: "SENADA STT NF",
    ownerImage: "",
    isAvailable: true
  ),
  Event(
    name: "𝗜𝗦𝗟𝗔𝗠𝗜𝗖 𝗬𝗢𝗨𝗧𝗛 𝗙𝗘𝗦𝗧𝗜𝗩𝗔𝗟 𝗜𝗜𝗜 𝗣𝗥𝗘𝗦𝗘𝗡𝗧",
    day: "Ahad, 24 November 2024",
    time: "08:00 - Selesai",
    location: "Online",
    imageAsset: "images/event/senada_3.jpg",
    description: "Islamic Youth Festival atau IYF adalah ajang istimewa bagi pemuda/i muslim yang berisikan 𝗸𝗼𝗺𝗽𝗲𝘁𝗶𝘀𝗶 𝗽𝗲𝗿𝗹𝗼𝗺𝗯𝗮𝗮𝗻 𝗶𝘀𝗹𝗮𝗺𝗶, hingga 𝘁𝗮𝗹𝗸𝘀𝗵𝗼𝘄 inspiratif. IYF III kali ini mengusung tema \"𝗕𝗲𝗿𝘀𝗮𝗺𝗮 𝗠𝗲𝗻𝗴𝘂𝗸𝗶𝗿 𝗣𝗿𝗲𝘀𝘁𝗮𝘀𝗶, 𝗠𝗲𝗻𝘂𝗷𝘂 𝗚𝗲𝗻𝗲𝗿𝗮𝘀𝗶 𝗘𝗺𝗮𝘀 𝗜𝘀𝗹𝗮𝗺𝗶\"",
    eventOwner: "SENADA STT NF",
    ownerImage: "",
    isAvailable: true
  ),
  Event(
    name: "KANADA",
    day: "15 Juni 2024",
    time: "13:00 - selesai",
    location: "Auditorium kampus B STT Terpadu Nurul Fikri",
    imageAsset: "images/event/senada_4.jpg",
    description: "KANADA merupakan Kajian Senada yang dilaksanakan oleh LDK Senada dengan tujuan dapat mengingatkan kita akan nilai-nilai Islam serta meningkatkan kembali keimanan demi terwujudnya mahasiswa yang berkarakter dan berakhlakul karimah.",
    eventOwner: "SENADA STT NF",
    ownerImage: "",
    isAvailable: false
  ),
  Event(
    name: "GEMAR",
    day: "Sabtu, 7 September 2024",
    time: "13:00 - Selesai",
    location: "Auditorium kampus B STT Terpadu Nurul Fikri",
    imageAsset: "images/event/senada_5.jpg",
    description: "Dalam rangka meperingati IHSD ( Internasional Hijab Solidarity Day ) kami dari Bidang Kemuslimahan LDK Senada STT Nurul Fikri mengajak kalian untuk gabung di acara GEMAR (Gerakan Menutup Aurat) yang siap menginspirasi kamu, dengan tema \"Hijab is not an Obstacle. Kemana Kan Kau Bawa Cantikmu?",
    eventOwner: "SENADA STT NF",
    ownerImage: "",
    isAvailable: false
  )
];