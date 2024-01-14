import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travelagentapp/clientScreen/screens/interestScreen.dart';

import '../../res/icons/onboardingSVG.dart';

class OnboadScreenComponent extends StatelessWidget {
  String svgString, title, tagline;

  OnboadScreenComponent({
    required this.svgString,
    required this.title,
    required this.tagline,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.45,
            child: SvgPicture.string(
              svgString,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Text(
              tagline,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardScreen extends StatefulWidget {
  static String route = 'OnboardScreen';

  const OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final PageController pageControl = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    pageControl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10,top: 20),
            child: Align(
              alignment: Alignment.topRight,
              child: TextButton(onPressed: () {

              }, child: Text(
                'Skip',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                  height: 0.09,
                ),
              )),
            ),
          ),
          Expanded(
            child: PageView(
              controller: pageControl,
              onPageChanged: (index) {
                setState(() {
                  isLastPage = index == 2; // Assuming you have 3 pages (0, 1, 2)
                });
              },
              children: [
                OnboadScreenComponent(
                  svgString: OnboardingSvgs.fristOnboardSVG,
                  title: 'Welcome to 46concierge',
                  tagline:
                  'We provide impeccable services and deliver exceptional experiences that are effortlessly accessible to our esteemed clients. Our own expertise lies in two core pillars: Lifestyle and Events.',
                ),
                OnboadScreenComponent(
                  svgString: OnboardingSvgs.seconSvg,
                  title: 'Your Own Lifestyle Manager',
                  tagline:
                  'Your lifestyle manager is your go-to guide, ready to assist in bookings, recommendations, and ensuring your experience is tailored just for you',
                ),
                OnboadScreenComponent(
                  svgString: OnboardingSvgs.thirdSvg,
                  title: 'Tailored Just for You',
                  tagline:
                  'Customize your Experience preferences for a personalized experience (e.g., favorite cuisines, travel preferences, event interests, and meet & greet)',
                ),
              ],
            ),
          ),
          
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SmoothPageIndicator(
              controller: pageControl,
              count: 3,
              effect: const ExpandingDotsEffect(
                spacing: 5,
                dotWidth: 5,
                dotHeight: 5,
                dotColor: Colors.white,
                activeDotColor: Colors.white,
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(InterestScreen.route);
              },
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(Icons.arrow_forward),
              ),
            )
          ],
        ),
      ),
    );
  }
}
