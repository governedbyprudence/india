import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:india/core/routes/home.dart';
class OnboardingPage extends StatefulWidget {
  static const routeName = "/onboarding";
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      scrollDirection: Axis.horizontal,
      children: [
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    opacity: 0.3,
                    image: AssetImage("assets/bengalfamine.jpeg"),
                    fit: BoxFit.fitHeight
                  ),
                ),
              ),
              Positioned.fill(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 60),
                    padding: const EdgeInsets.all(20),
                    child: RichText(
                      text: const TextSpan(
                        text: "For 200 years\n\n",
                        style: TextStyle(fontSize: 35,color: Colors.orange,fontWeight: FontWeight.bold,letterSpacing: 2,height: 1.2),
                        children: [
                          TextSpan(
                            style: TextStyle(color: Colors.white,fontSize: 20),
                            text: "The British colonial administration systematically exploited",
                            children: [
                              TextSpan(
                                  style: TextStyle(color: Colors.green,fontSize: 20),
                                  text: " India's ",
                                children: [
                                  TextSpan(
                                      style: TextStyle(color: Colors.white,fontSize: 20),
                                      text: "resources, economy and labor,\n\n\ndraining its wealth through heavy taxation, trade imbalances, \n\n\nand policies that favored British interests, leaving a lasting impact on the country's socio-economic landscape."
                                  )
                                ]
                              )
                            ]
                          )
                        ]
                      ),
                    )
                  ))
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blue[900],
            child: const Icon(Icons.arrow_forward_ios,color: Colors.white,),
            onPressed: () {
            _controller.animateToPage(1, duration: const Duration(seconds: 1), curve: Curves.ease);
          },

          ),
        ),Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    opacity: 0.3,
                    image: AssetImage("assets/iia.jpeg"),
                    fit: BoxFit.fitHeight
                  ),
                ),
              ),
              Positioned.fill(
                  child: Container(
                    alignment: Alignment.topCenter,
                    margin: const EdgeInsets.symmetric(vertical: 140),
                    padding: const EdgeInsets.all(20),
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.green,letterSpacing: 1,height: 1.3),
                        text: "On July 18, 1947\n\n\n",
                        children:
                          [
                            TextSpan(
                              style: TextStyle(color: Colors.orange,fontSize: 20),
                              text: "Indian ",
                              children: [
                                TextSpan(
                                  style: TextStyle(color: Colors.white),
                                  text: "Independence ",
                                  children: [
                                    TextSpan(
                                      style: TextStyle(color: Colors.green),
                                      text: "Act ",
                                      children: [
                                        TextSpan(
                                          style: TextStyle(color: Colors.white),
                                        text: "was put into motion, ending British control in India.\n\nThis act divided the land into India and Pakistan, paving the way for these nations to govern themselves.",
                                        children: [

                                        ]
                                      )]
                                    )
                                  ]
                                )
                              ]
                            )
                          ]
                      ),
                    )
                  ))
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.arrow_forward_ios,color: Colors.white,),
            onPressed: () {
            _controller.animateToPage(2, duration: const Duration(seconds: 1), curve: Curves.ease);
          },

          ),
        ),Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    opacity: 0.3,
                    image: AssetImage("assets/independence.jpeg"),
                    fit: BoxFit.fitHeight
                  ),
                ),
              ),
              Positioned.fill(
                  child: Container(
                    alignment: Alignment.topCenter,
                    margin: const EdgeInsets.symmetric(vertical: 140),
                    padding: const EdgeInsets.all(20),
                    child: RichText(
                      text: const TextSpan(
                        text: "After 77 years of Independence",
                        style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 1,color: Colors.white),
                        children: [
                          TextSpan(
                            style: TextStyle(fontSize: 20,color: Colors.orange),
                            text: "\n\n\nIndia",
                            children: [
                              TextSpan(
                                  style: TextStyle(fontSize: 20,color: Colors.white,height: 1.5),
                                  text: " is one of the fastest growing economies of the world",
                                  children: [
                                    TextSpan(
                                        text: "\n\n\npropelled by a ",
                                        children: [TextSpan(
                                            style: TextStyle(fontSize: 20,color: Colors.orange),
                                            text: "vibrant entrepreneurial spirit",
                                          children: [
                                            TextSpan(

                                                style: TextStyle(fontSize: 20,color: Colors.white),
                                              text: "\nburgeoning tech landscape",
                                              children: [
                                                TextSpan(

                                                    style: TextStyle(fontSize: 20,color: Colors.green),
                                                  text: "\nand a young demographic dividend",
                                                    children: [
                                                      TextSpan(
                                                          style: TextStyle(fontSize: 20,color: Colors.white),
                                                        text: "\nthat holds the key to its future prosperity."
                                                      )
                                                    ])
                                              ]
                                            )
                                          ]
                                        )]
                                    )]
                              )
                            ]
                          )
                        ]
                      ),
                    )
                  ))
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.green,
            child: const Icon(Icons.arrow_forward_ios,color: Colors.white,),
            onPressed: () {
          Navigator.pushReplacementNamed(context, HomePage.routeName);
          },

          ),
        ),
      ],
    );
  }
}
