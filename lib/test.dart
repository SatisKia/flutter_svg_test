import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyContainer extends Container {
  MyContainer( {Key? key, required double width, required double height, alignment, child}) : super(
      key: key,
      width: width,
      height: height,
      alignment: alignment,
      decoration: BoxDecoration(
          border: Border.all( color: const Color( 0xff0000ff) )
      ),
      child: child
  );
}

class Test1 extends SingleChildScrollView {
  Test1( {Key? key} ) : super(key: key,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset( 'assets/icon1.svg', height: 32, color: const Color( 0xffff00ff ) ),
            SvgPicture.asset( 'assets/icon2.svg', height: 48, color: const Color( 0xff800000 ) ),
            SvgPicture.asset( 'assets/icon3.svg', height: 64, color: const Color( 0xffff8000 ) ),
            SvgPicture.asset( 'assets/icon4.svg', height: 96, color: const Color( 0xff008000 ) ),
            SvgPicture.asset( 'assets/icon5.svg', height: 128, color: const Color( 0xff0000ff ) ),
            SvgPicture.asset( 'assets/icon6.svg', height: 192, color: const Color( 0xff808000 ) ),
            SvgPicture.asset( 'assets/icon7.svg', height: 256, color: const Color( 0xff008080 ) ),
          ]
      )
  );
}

class Test2 extends SingleChildScrollView {
  Test2( {Key? key} ) : super(key: key,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyContainer( width: 32, height: 32,
                    child: SvgPicture.asset( 'assets/icon1.svg', color: const Color( 0xffff00ff ) ),
                  ),
                  MyContainer( width: 64, height: 32,
                    child: SvgPicture.asset( 'assets/icon1.svg', color: const Color( 0xffff00ff ) ),
                  ),
                  MyContainer( width: 32, height: 64,
                    child: SvgPicture.asset( 'assets/icon1.svg', color: const Color( 0xffff00ff ) ),
                  ),
                  MyContainer( width: 64, height: 64,
                    child: SvgPicture.asset( 'assets/icon1.svg', height: 32, color: const Color( 0xffff00ff ) ),
                  ),
                ]
            ),
            MyContainer( width: 48, height: 48,
              child: SvgPicture.asset( 'assets/icon2.svg', color: const Color( 0xff800000 ) ),
            ),
            MyContainer( width: 64, height: 64,
              child: SvgPicture.asset( 'assets/icon3.svg', color: const Color( 0xffff8000 ) ),
            ),
            MyContainer( width: 96, height: 96,
              child: SvgPicture.asset( 'assets/icon4.svg', color: const Color( 0xff008000 ) ),
            ),
            MyContainer( width: 128, height: 128,
              child: SvgPicture.asset( 'assets/icon5.svg', color: const Color( 0xff0000ff ) ),
            ),
            MyContainer( width: 192, height: 192,
              child: SvgPicture.asset( 'assets/icon6.svg', color: const Color( 0xff808000 ) ),
            ),
            MyContainer( width: 256, height: 256,
              child: SvgPicture.asset( 'assets/icon7.svg', color: const Color( 0xff008080 ) ),
            ),
          ]
      )
  );
}
