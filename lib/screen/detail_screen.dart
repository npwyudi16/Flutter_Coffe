import 'package:flutter/material.dart';
import 'package:flutter_coffe/model/allmenu_model.dart';

class DetailScreen extends StatelessWidget {
  final AllMenu menu;

  const DetailScreen({Key? key, required this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              child: SafeArea(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Icon(Icons.chevron_left),
                        ),
                        const Text(
                          'Coffe',
                          style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Bookmark(),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: SizedBox(
                            child: Image.asset(
                              menu.images,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Description',
                                style: TextStyle(
                                  fontFamily: 'Ubuntu',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Indonesia merupakan salah satu negara yang menghasilkan kopi terbesar di dunia. Nggak heran memang, karena hampir setiap daerah di Indonesia memiliki kebun kopi berikut cara yang khas dalam pengolahannya. Cita rasa dan karakteristik yang dihasilkan pun sangat beragam dan lantas menjadikan produk kopi nusantara kian populer. Sebab rasanya yang unik, kopi produksi daerah-daerah di Indonesia kini tidak hanya dikonsumsi oleh masyarakat penghasilnya saja, tetapi juga wisatawan sampai masyarakat daerah lain dan mancanegara.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: 'Ubuntu',
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Bookmark extends StatefulWidget {
  const Bookmark({Key? key}) : super(key: key);

  @override
  State<Bookmark> createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  bool isBookmark = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (() {
        setState(() {
          isBookmark = !isBookmark;
        });
      }),
      icon: Icon(
        isBookmark ? Icons.bookmark : Icons.bookmark_border,
        color: Colors.brown,
      ),
    );
  }
}
