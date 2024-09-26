import 'package:alphaweb/screens/services.dart';
import 'package:alphaweb/utils/responsive.dart';
import 'package:alphaweb/widgets/footer.dart';
import 'package:alphaweb/widgets/navbar.dart';
import 'package:flutter/material.dart';

class MainServices extends StatelessWidget {
  const MainServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //colores for background
      decoration: const BoxDecoration(
          //image: DecorationImage(
          //image: AssetImage("assets/images/laptop.jpg"),
          //  `fit: BoxFit.cover,

          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 201, 203, 203),
        Color(0xFFFCFDFD),
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              NavBar(),
              const Body(),
              const ServicePage(),
              const FooterStack()
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: LargeChild(),
      mediumScreen: LargeChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  const LargeChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //serviceSendingBox(),
          _buildStack(),
          const SizedBox(height: 300),
          // featuresMain(),
          // const SizedBox(height: 100),
          //ServicePage()
        ],
      ),
    );
  }

  Widget _buildStack() {
    return Column(
      children: [
        SizedBox(
          height: 630,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: SizedBox(
                    height: 550,
                    width: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: RichText(
                            // textAlign: TextAlign.center,
                            text: const TextSpan(
                              text:
                                  'Scale your software development efforts.\n\n',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                color: Colors
                                    .black, // You can set the color as needed
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      'The new standard in Software Development Services',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors
                                        .black, // You can set the color as needed
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 40), // Adjust as needed
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 233, 244, 229),
                                Color.fromARGB(255, 101, 242, 247),
                              ],
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft,
                            ),
                          ),
                          height: 50,
                          width: 300,
                          child: const Center(
                            child: Text(
                              'CONSULT',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors
                                    .white, // Set the text color as needed
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 246, 247, 247),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            'Request Development Services',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18, // Adjust the font size as needed
                            ),
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              labelText: 'Name',
                            ),
                          ),
                          const SizedBox(height: 20),
                          const TextField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                            ),
                          ),
                          const SizedBox(height: 20),
                          const TextField(
                            decoration: InputDecoration(
                              labelText: 'Phone Number',
                            ),
                          ),
                          const SizedBox(height: 20),
                          const TextField(
                            decoration: InputDecoration(
                              labelText: 'Message',
                              suffixIcon: Icon(Icons.file_copy_outlined),
                            ),
                            maxLines: 5,
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              // Handle send button functionality here
                            },
                            child: const Text('Send Details'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 500,
          color: const Color.fromARGB(255, 167, 174, 173),
          child: const SizedBox(),
        )
      ],
    );
  }
}
