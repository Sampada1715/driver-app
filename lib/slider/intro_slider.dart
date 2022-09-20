import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';

class IntroSliderPage extends StatefulWidget {
  const IntroSliderPage({Key? key}) : super(key: key);

  @override
  State<IntroSliderPage> createState() => _IntroSliderPageState();
}

class _IntroSliderPageState extends State<IntroSliderPage> {

  List<Slide> slides = [];

  @override
  void initState(){
    //TODO: implement initState
    super.initState();
    slides.add(new Slide(
      title: "Travel",
      description: "Travel anywhere",
      pathImage: "images/slider1.jpeg",
    ));
    slides.add(new Slide(
      title: "Travel",
      description: "Travel anywhere",
      pathImage: "images/slider2.jpeg",
    ));
    slides.add(new Slide(
      title: "Travel",
      description: "Travel anywhere",
      pathImage: "images/slider3.jpeg",
    ));
    slides.add(new Slide(
      title: "Travel",
      description: "Travel anywhere",
      pathImage: "images/slider4.jpeg",
    ));
  }

  List<Widget> renderListCustomTabs(){
    List<Widget> tabs = [];
    for(int i = 0; i < slides.length; i++){
      Slide currentSlide = slides[i];
      tabs.add(Container(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          margin: EdgeInsets.only(bottom: 160, top: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Image.asset(
                  currentSlide.pathImage,
                  height: 60,
                  matchTextDirection: true,),
              ),
              Container(
                child: Text(
                  currentSlide.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  currentSlide.description,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ));
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      backgroundColorAllSlides: Colors.green,
      renderSkipBtn: Text('Skip'),
      renderNextBtn: Text('Next',style: TextStyle(color: Colors.green),),
      renderDoneBtn: Text('Done',style: TextStyle(color: Colors.green),),
      colorActiveDot: Colors.black,
      sizeDot: 8.0,
      listCustomTabs: this.renderListCustomTabs(),
      scrollPhysics: BouncingScrollPhysics(),

    );
  }
}
