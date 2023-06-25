import 'package:flutter/material.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pariwisata Indonesia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
      routes: {
        '/daftar_destinasi': (context) => const PortfolioPage(),
        '/tentang_saya': (context) => const AboutPage(),
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selamat Datang'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Masuk ke Situs'),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/daftar_destinasi');
          },
        ),
      ),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pariwisata Indonesia'),
      ),
      body: Column(
        children: [
          const NavigationBar(),
          Expanded(
            child: ListView(
              children: const [
                PortfolioItem(
                  image: 'assets/padang.jpg',
                  description:
                      'Padang adalah sebuah destinasi pariwisata yang menawarkan keindahan alam yang memukau dan kekayaan budaya yang unik. Dengan pemandangan alam yang menakjubkan, seperti perbukitan yang hijau, pantai-pantai indah, dan sawah yang luas, Padang merupakan surga bagi para pecinta alam dan fotografi. Selain itu, kota ini juga mempesona dengan warisan budaya yang kuat, terutama dalam tradisi Minangkabau. Wisatawan dapat mengunjungi rumah tradisional gadang, menikmati tarian dan musik tradisional, serta menjelajahi pasar tradisional yang ramai. Makanan Padang yang lezat dan khas juga menjadi daya tarik utama, dengan hidangan-hidangan seperti rendang, gulai, dan sate Padang yang menggoda selera. Dengan kombinasi keindahan alam yang menakjubkan dan warisan budaya yang kaya, Padang adalah tujuan yang tak terlupakan bagi wisatawan yang mencari pengalaman yang autentik di Indonesia.',
                ),
                PortfolioItem(
                  image: 'assets/candi-borobudur.jpg',
                  description:
                      'Candi Borobudur adalah salah satu situs budaya yang paling terkenal dan penting di Indonesia. Terletak di Jawa Tengah, Candi Borobudur adalah candi Buddha terbesar di dunia dan telah diakui sebagai Situs Warisan Dunia oleh UNESCO. Candi ini dibangun pada abad ke-8 Masehi oleh dinasti Syailendra. Dengan desain yang mengesankan, terdiri dari tujuh tingkat yang membentuk piramida, Candi Borobudur memiliki lebih dari 2.500 relief dan 500 stupa. Relief-relief itu menggambarkan ajaran dan kisah Buddha, sementara stupa-stupa berisi patung-patung Buddha. Candi Borobudur menjadi tujuan ziarah bagi umat Buddha, serta menjadi daya tarik bagi para wisatawan yang tertarik pada sejarah, arsitektur, dan keindahan budaya Indonesia. Selain itu, Candi Borobudur juga menjadi pusat perayaan Waisak, festival penting dalam agama Buddha yang menarik ribuan pengunjung setiap tahun. Dengan keindahan arsitektur yang spektakuler dan nilai sejarah dan spiritual yang tinggi, Candi Borobudur adalah tempat yang menakjubkan bagi para pengunjung dari seluruh dunia.',
                ),
                PortfolioItem(
                  image: 'assets/nusa-penida.jpg',
                  description:
                      'Nusa Penida adalah sebuah pulau yang terletak di sebelah tenggara Bali, Indonesia. Pulau ini merupakan bagian dari gugusan tiga pulau Nusa, bersama dengan Nusa Lembongan dan Nusa Ceningan. Nusa Penida telah menjadi destinasi wisata yang populer karena keindahan alamnya yang menakjubkan. Pulau ini dikenal dengan pemandangan pantai yang memukau, terutama tebing-tebing karang yang tinggi dan pantai-pantai berpasir putih yang indah. Salah satu atraksi terkenal di Nusa Penida adalah Pantai Kelingking, yang terkenal dengan tebingnya yang menyerupai bentuk rahang hiu. Selain itu, wisatawan juga dapat menikmati keindahan Pantai Crystal Bay, Pantai Atuh, dan Pantai Broken Beach. Selain pantai-pantai yang menakjubkan, Nusa Penida juga menawarkan tempat menyelam dan snorkeling yang spektakuler, dengan kehidupan bawah laut yang kaya dan terumbu karang yang indah. Pulau ini juga memiliki beberapa air terjun yang menakjubkan, seperti Air Terjun Peguyangan dan Air Terjun Tembeling. Selain keindahan alamnya, Nusa Penida juga memiliki budaya dan masyarakat lokal yang unik, dengan tradisi dan kehidupan sehari-hari yang masih sangat terjaga. Dengan kombinasi keindahan alam yang luar biasa dan pesona budaya yang autentik, Nusa Penida telah menjadi tujuan wisata yang populer bagi para wisatawan yang mencari pengalaman yang tak terlupakan di Indonesia.',
                ),
                PortfolioItem(
                  image: 'assets/raja-ampat.jpg',
                  description:
                      'Raja Ampat adalah sebuah kepulauan yang terletak di Provinsi Papua Barat, Indonesia. Terkenal sebagai salah satu surga bawah laut dunia, Raja Ampat menawarkan keindahan alam laut yang luar biasa. Kepulauan ini terdiri dari lebih dari 1.500 pulau kecil yang tersebar di sekitar Laut Seram dan Laut Halmahera. Raja Ampat dikenal karena keanekaragaman hayati yang luar biasa, dengan terumbu karang yang masih sangat utuh dan beragam spesies laut, termasuk ikan karang, hiu, penyu, dan banyak lagi. Aktivitas seperti snorkeling dan menyelam di Raja Ampat akan memperkenalkan pengunjung pada pemandangan bawah laut yang spektakuler dan warna-warni. Selain kehidupan laut yang menakjubkan, Raja Ampat juga memiliki pantai-pantai yang indah, laguna biru yang menawan, dan tebing-tebing karang yang megah. Keindahan alam daratan juga bisa dijelajahi dengan trekking melalui hutan dan bukit, serta mengunjungi desa-desa tradisional yang masih mempertahankan kebudayaan Papua. Raja Ampat memiliki pesona alam yang memukau dan menjadi tujuan impian bagi para pecinta alam, fotografer, penyelam, dan pencinta keindahan alam yang ingin menjelajahi keajaiban bawah laut Indonesia yang luar biasa.',
                ),
                PortfolioItem(
                  image: 'assets/gunung-bromo.jpg',
                  description:
                      'Gunung Bromo adalah sebuah gunung berapi aktif yang terletak di Jawa Timur, Indonesia. Gunung ini merupakan bagian dari Taman Nasional Bromo Tengger Semeru, yang menjadi salah satu tujuan wisata terkenal di Indonesia. Gunung Bromo terkenal karena keindahan alamnya yang spektakuler, terutama saat matahari terbit di kawasan tersebut. Pemandangan ikonik Gunung Bromo terdiri dari kawah yang dikelilingi oleh padang pasir luas, dengan langit yang cerah dan kabut ringan di sekitarnya. Untuk mencapai kawah Bromo, pengunjung dapat melakukan perjalanan melalui jip atau berjalan kaki melalui tangga yang curam. Dari puncak, pengunjung dapat menyaksikan panorama yang memukau, termasuk pemandangan Gunung Semeru yang merupakan gunung tertinggi di Pulau Jawa. Selain itu, Taman Nasional Bromo Tengger Semeru juga menawarkan banyak tempat menarik lainnya, seperti Padang Savana, Bukit Teletubbies, dan Air Terjun Madakaripura. Keindahan alam yang luar biasa dan pengalaman mendaki Gunung Bromo menjadikan destinasi ini populer bagi para pecinta alam, fotografer, dan penggemar petualangan.',
                ),
                PortfolioItem(
                  image: 'assets/toraja.jpg',
                  description:
                      'Toraja, juga dikenal sebagai Tanah Toraja, adalah sebuah wilayah di Sulawesi Selatan, Indonesia, yang terkenal dengan budaya dan tradisinya yang unik. Suku Toraja, yang merupakan penduduk asli wilayah ini, memiliki tradisi yang kaya dan kompleks yang masih dipertahankan hingga saat ini. Salah satu aspek yang paling menonjol dari budaya Toraja adalah tradisi pemakaman yang spektakuler. Pemakaman Toraja melibatkan prosesi yang rumit dan berlangsung selama beberapa hari dengan upacara adat, musik tradisional, tarian, dan persembahan kepada arwah leluhur. Rambu Solo, ritual pemakaman paling penting, sering kali melibatkan pembangunan rumah adat yang megah sebagai tempat peristirahatan abadi bagi jenazah yang dihormati. Selain tradisi pemakaman, Toraja juga terkenal dengan arsitektur rumah tradisionalnya yang khas, yang disebut tongkonan. Tongkonan memiliki bentuk atap yang khas dengan ukiran dan simbol-simbol tradisional Toraja. Selain itu, wisatawan juga dapat menikmati keindahan alam Toraja yang menakjubkan, seperti lembah hijau yang subur, sawah terasering yang indah, dan air terjun yang mempesona. Pemandangan alam yang menawan ini juga menjadi latar belakang bagi berbagai kegiatan trekking dan hiking. Toraja merupakan tempat yang menarik bagi wisatawan yang tertarik pada budaya unik, tradisi adat yang kaya, dan keindahan alam yang menakjubkan.',
                ),
                PortfolioItem(
                  image: 'assets/lombok.jpg',
                  description:
                      'Lombok adalah sebuah pulau yang terletak di sebelah timur Bali, Indonesia. Pulau ini dikenal sebagai destinasi wisata yang menawarkan keindahan alam yang spektakuler. Salah satu atraksi paling terkenal di Lombok adalah Gunung Rinjani, gunung tertinggi kedua di Indonesia, yang menarik pendaki dari seluruh dunia untuk menaklukkan puncaknya yang megah. Selain itu, Lombok memiliki pantai-pantai yang memukau, seperti Pantai Kuta Lombok yang terkenal dengan pasir putihnya yang halus, Pantai Tanjung Aan dengan pasir berwarna putih dan merica, serta Gili Trawangan, Gili Meno, dan Gili Air yang merupakan pulau-pulau kecil yang indah dengan terumbu karang yang kaya. Gili-gili ini juga populer untuk snorkeling dan menyelam. Lombok juga terkenal dengan kerajinan tenun ikat tradisionalnya, yang dapat ditemukan di desa-desa seperti Sukarara dan Sade. Masyarakat Sasak, suku asli Lombok, juga memiliki budaya dan adat istiadat yang khas, yang dapat dilihat dalam upacara adat dan pertunjukan seni tradisional. Keindahan alam, pantai-pantai yang memukau, dan keramahan penduduk setempat membuat Lombok menjadi tujuan yang menarik bagi para wisatawan yang mencari pengalaman yang autentik dan liburan yang santai di Indonesia.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Saya'),
      ),
      body: const Column(
        children: [
          NavigationBar(),
          Expanded(
            child: Center(
              child: AboutCard(
                image: 'assets/authro.jpg',
                description:
                    'Nama saya Alvaro Ariel, saya seorang mahasiswa di Institut Teknologi Telkom Surabaya. Ini adalah project Flutter saya, yaitu web portofolio situs pariwisata',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NavigationBarItem(
            title: 'Portfolio',
            onTap: () {
              Navigator.pushReplacementNamed(context, '/daftar_destinasi');
            },
          ),
          const SizedBox(width: 16),
          NavigationBarItem(
            title: 'Tentang Saya',
            onTap: () {
              Navigator.pushReplacementNamed(context, '/tentang_saya');
            },
          ),
        ],
      ),
    );
  }
}

class NavigationBarItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const NavigationBarItem(
      {super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}

class PortfolioItem extends StatelessWidget {
  final String image;
  final String description;

  const PortfolioItem(
      {super.key, required this.image, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(image),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(description),
          ),
        ],
      ),
    );
  }
}

class AboutCard extends StatelessWidget {
  final String image;
  final String description;

  const AboutCard({super.key, required this.image, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(image),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(description),
          ),
        ],
      ),
    );
  }
}
