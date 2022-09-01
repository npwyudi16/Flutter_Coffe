import 'package:flutter/material.dart';
import 'package:flutter_coffe/model/allmenu_model.dart';
import 'package:flutter_coffe/model/recomended_page.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const namedRoute = '/homescreen';

  @override
  Widget build(BuildContext context) {
    late double sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// header e ning kene mas yud
            Container(
              height: sizeHeight * 0.2,
              width: double.infinity,
              color: Colors.red,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 0, 10),
              child: SizedBox(
                height: 30,
                child: Text(
                  'Recomended',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: 250,
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final Recomended rekomen = recomendation[index];
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      height: double.infinity,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(1, 4),
                              color: Colors.black54,
                              blurRadius: 3),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 130,
                            width: double.infinity,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    rekomen.images,
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                    width: double.infinity,
                                  ),
                                ),
                                Positioned(
                                  right: 10,
                                  top: 10,
                                  child: Container(
                                    height: 30,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: Colors.brown,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          child: rekomen.icon,
                                        ),
                                        Text(
                                          '${rekomen.ranting}',
                                          style: const TextStyle(
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 90,
                            child: Stack(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      rekomen.name,
                                      style: const TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      rekomen.topping,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      NumberFormat.currency(
                                              locale: 'id',
                                              symbol: 'IDR ',
                                              decimalDigits: 0)
                                          .format(rekomen.price),
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                Positioned(
                                  right: 0,
                                  bottom: 0,
                                  child: InkWell(
                                    onTap: () {
                                      ///passing data ning kene mas ben iso di pencet
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: const BoxDecoration(
                                        color: Colors.brown,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black54,
                                            offset: Offset(1, 4),
                                            blurRadius: 3,
                                          ),
                                        ],
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                itemCount: recomendation.length,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 0, 10),
              child: SizedBox(
                height: 30,
                child: Row(
                  children: const [
                    Text(
                      'Special Offer',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.local_fire_department_rounded,
                      color: Colors.amber,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    height: 136,
                    width: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),

                      /// image special offer
                      child: Image.asset(
                        'assets/landingimage.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 136,
                    width: 180,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 8,
                          child: Container(
                            height: 30,
                            width: 66,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.brown),
                            child: const Center(
                              child: Text(
                                'LIMITED',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 180,
                          child: Center(
                            child: Text(
                              'Buy 1 Get 1 free if you pay with ShopeePay',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
              child: SizedBox(
                height: 30,
                child: Text(
                  'All Menu',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final AllMenu menu = allCoffeMenu[index];
                return InkWell(
                  onTap: () {
                    ///navigasi detaile ning kene mas yud
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          height: 136,
                          width: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              menu.images,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: SizedBox(
                            height: 136,
                            width: 180,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  menu.name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(menu.topping),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  NumberFormat.currency(
                                          locale: 'id',
                                          symbol: 'IDR ',
                                          decimalDigits: 0)
                                      .format(menu.price),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  child: Divider(
                                    color: Colors.black,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      child: menu.icon,
                                    ),
                                    Text('${menu.ranting}')
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: allCoffeMenu.length,
            ),
          ],
        ),
      ),
    );
  }
}
