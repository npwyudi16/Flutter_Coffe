import 'package:flutter/material.dart';
import 'package:flutter_coffe/screen/home_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  static const namedRoute = '/landingscreen';

  //Navigator.of(context).pushNamed(LandingScreen.namedRoute),

  @override
  Widget build(BuildContext context) {
    late double sizeHeight = MediaQuery.of(context).size.height;
    late double sizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: sizeHeight * 1,
          child: Stack(
            children: [
              Container(
                height: sizeHeight * 1,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstOver),
                  image: const AssetImage('assets/landingimage.png'),
                )),
              ),
              Container(
                height: sizeHeight * 1,
                color: Colors.black54,
              ),
              Positioned(
                bottom: 30,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    const Text(
                      'Good Coffe',
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                    const Text(
                      'Good Friends',
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                    const Text(
                      'Let it Blends',
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'The best grain, the finest roast',
                      style: TextStyle(color: Colors.white),
                    ),
                    const Text(
                      'The most powerfull flavor.',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      onTap: () => Navigator.of(context).pushNamed(HomeScreen.namedRoute),
                      child: Container(
                        height: 64,
                        width: sizeWidth * 0.8,
                        decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.circular(40)),
                        child: const Center(
                          child: Text(
                            'Get Started',
                            style: TextStyle(fontSize: 20, color: Colors.white),
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
      ),
    );
  }
}
