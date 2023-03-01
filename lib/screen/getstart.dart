import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';

class HomeStarted extends StatefulWidget {
  @override
  State<HomeStarted> createState() => _HomeStartedState();
}

class _HomeStartedState extends State<HomeStarted> {
  @override
  Widget build(BuildContext context) {
    // ini untuk warna transparant di atasnya

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    // untuk key introduction
    final keyintro = GlobalKey<IntroductionScreenState>();

    // widget untuk image

    @override
    Widget Images(BuildContext context) {
      return Image(image: AssetImage("lib/image/gambar1.png"));
    }

    // untuk pagedecoration
    const pageDecoration = PageDecoration(
        pageColor: Colors.yellow,
        titleTextStyle: TextStyle(
          fontSize: 28,
        ),
        imagePadding: EdgeInsets.zero,
        bodyTextStyle: TextStyle(
          fontSize: 20,
        ));

    // untuk mengarah kemana
    void _NextTo(context) {
      Navigator.of(context).pushNamed("mainScreen");
    }

    return IntroductionScreen(
      key: keyintro,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: true,
      autoScrollDuration: 3000,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 16, right: 16),
          ),
        ),
      ),
      // onpressed nya harus void
      globalFooter: SizedBox(
        width: double.infinity,
        height: 60,
        child: SizedBox(
            child: Container(
          color: Colors.yellow,
        )),
      ),
      pages: [
        PageViewModel(
            titleWidget: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "SPA-TU",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            bodyWidget: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "SPA-TU Merupakan jasa Cuci Sepatu Online yang sudah berjasa puluhan tahun lamanya",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            decoration: pageDecoration,
            image: Image(
              image: AssetImage("lib/image/shoesVector.png"),
            )),
        PageViewModel(
            titleWidget: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Menghemat Waktu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            bodyWidget: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Tidak perlu menunggu di tempat, karena kami menyidakan aplikasi ketika sepatu anda sudah bersih",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            decoration: pageDecoration,
            image: Image(
              image: AssetImage("lib/image/timeShoes.png"),
            )),
        PageViewModel(
            titleWidget: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Delivery",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            bodyWidget: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Tidak perlu datang lagi karena kami menyediakan jasa Delivery",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            decoration: pageDecoration,
            image: Image(
              image: AssetImage("lib/image/delivery.png"),
            ))
      ],
      // ketika udah selesai
      onDone: () => Navigator.of(context).pushNamed("mainScreen"),

      // ini untuk menampilkan button
      showSkipButton: false,
      showBackButton: true,
      showDoneButton: true,
      showNextButton: true,

      // ini untuk icon button
      back: Icon(Icons.arrow_back),
      next: Icon(Icons.arrow_forward),
      skip: Text(
        "skip",
        style: TextStyle(fontSize: 20),
      ),
      done: Text(
        "Selesai",
        style: TextStyle(fontSize: 20),
      ),

      // ini untuk dots yang di bawah tengah
      dotsDecorator: DotsDecorator(
          size: Size(10, 10),
          color: Colors.grey,
          activeSize: Size(22, 10),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
    );
  }
}
