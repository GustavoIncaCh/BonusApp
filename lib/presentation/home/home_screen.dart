import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:bonus_app/presentation/home/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final _controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    _controller.firstcontroller.forward(from: 0.00);
    _controller.secondcontroller.forward(from: 0.00);
    _controller.thirdcontroller.forward(from: 0.00);

    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   onPressed: () {},
        // ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {
              _controller.goToNotifications();
            },
          ),
          // IconButton(
          //   icon: const Icon(Icons.share),
          //   onPressed: () {
          //     // _controller.goToNotifications();
          //   },
          // ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              // child: Text(
              //   'Bonus App',
              //   style: TextStyle(
              //     color: Colors.white,
              //   ),
              // ),
              child: Image.asset('assets/images/logo.png'),
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('Historial'),
              onTap: () {
                Get.back();
                _controller.goToHistory();
              },
            ),
            ListTile(
              leading: const Icon(Icons.payment),
              title: const Text('Tarjeta de puntos'),
              onTap: () {
                Get.back();
                _controller.goToPointCard();
              },
            ),
            ListTile(
              leading: const Icon(Icons.place),
              title: const Text('Puntos de canje'),
              onTap: () {
                Get.back();
                _controller.goToMap();
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Perfil de usuario'),
              onTap: () {
                Get.back();
                _controller.goToUser();
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Cerrar seción'),
              onTap: () {
                Get.back();
                _controller.logOut();
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // height: MediaQuery.of(context).size.height * 0.20,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                ),
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Column(
                children: [
                  SlideTransition(
                    position: _controller.thirdanimation,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2, bottom: 15),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: CircleAvatar(
                          radius: 38,
                          child: ClipOval(
                            child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              // imageUrl:
                              //     _controller.currentUserProfile.value!.photo!,
                              imageUrl:
                                  'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=1380&t=st=1701357025~exp=1701357625~hmac=17709dcb3f74768993fed7efd0507f596a2347c40eab0c689be261ac5f5dbdf9',
                              width: 80,
                              height: 80,
                              placeholder: (context, url) {
                                return Image.asset(
                                  'assets/images/loading.gif',
                                  fit: BoxFit.cover,
                                );
                              },
                              errorWidget: (context, url, error) {
                                return const Icon(Icons.error);
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'Bienvenido, '
                      'Percy Jackson!',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 26,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        _controller.share();
                      },
                      icon: const Icon(Icons.share, size: 13),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 0,
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.blue.shade200,
                        ),
                      ),
                      label: const Text(
                        'Mi código: 1245782187',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  // Center(
                  //   child: Container(
                  //     margin: EdgeInsets.only(
                  //       left: 50,
                  //       top: 5,
                  //       right: 50,
                  //       bottom: 30,
                  //     ),
                  //     padding: EdgeInsets.all(5),
                  //     decoration: BoxDecoration(
                  //       border: Border.all(
                  //         width: 1,
                  //         color: Color(0xffa2a2a2),
                  //       ),
                  //       borderRadius: BorderRadius.circular(10),
                  //     ),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         Text(
                  //           'Compartir mi código: 1245782187',
                  //           style: TextStyle(
                  //             fontSize: 12,
                  //             color: Color(0xffa2a2a2),
                  //             fontWeight: FontWeight.normal,
                  //           ),
                  //           textAlign: TextAlign.center,
                  //         ),
                  //         SizedBox(width: 10),
                  //         Icon(
                  //           Icons.share,
                  //           color: Color(0xffa2a2a2),
                  //           size: 14,
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
            const SizedBox(height: 5),
            SlideTransition(
              position: _controller.firstanimation,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 0,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/icon.png', height: 55),
                              const SizedBox(height: 5),
                              const Text(
                                'Centro de cerámicas',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 5),
                        const SizedBox(height: 85, child: VerticalDivider()),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 0,
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 55,
                                alignment: Alignment.center,
                                child: const Column(
                                  children: [
                                    Icon(
                                      Icons.confirmation_number,
                                      color: Colors.blue,
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      '150',
                                      style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Puntos',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 85, child: VerticalDivider()),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 0,
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 55,
                                alignment: Alignment.center,
                                child: const Column(
                                  children: [
                                    Icon(
                                      Icons.monetization_on,
                                      color: Colors.green,
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      '150.00',
                                      style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Lempiras',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // const Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
            //   child: Divider(),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 5, right: 8),
              child: SlideTransition(
                position: _controller.secondanimation,
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Card(
                          elevation: 0,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.yellow,
                                        Colors.orange,
                                      ],
                                    ),
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //     color: Colors.black.withOpacity(0.2),
                                    //     blurRadius: 3,
                                    //     spreadRadius: 1,
                                    //     offset: const Offset(0, 3),
                                    //   ),
                                    // ],
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.emoji_events,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  '¿Cómo ganar puntos?',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          _controller.goToInformationEarnPoints();
                        },
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        child: Card(
                          elevation: 0,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.purpleAccent,
                                        Colors.deepPurple,
                                      ],
                                    ),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.shopping_bag,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  '¿Dónde gastar puntos?',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          _controller.goToInformationSpendPoints();
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            // const Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
            //   child: Divider(),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 5),
              child: Text(
                'Vencen este año',
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SlideTransition(
                position: _controller.thirdanimation,
                child: Card(
                  elevation: 0,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Image.asset('assets/images/icon.png', height: 55),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Centro de cerámicas',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Row(
                                children: [
                                  Icon(
                                    Icons.confirmation_number,
                                    color: Colors.blue.shade300,
                                    size: 18,
                                  ),
                                  const SizedBox(width: 5),
                                  const Text(
                                    '50 Puntos',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.monetization_on,
                                    color: Colors.green.shade300,
                                    size: 18,
                                  ),
                                  const SizedBox(width: 5),
                                  const Text(
                                    '40.00 Lempiras',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 3),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  'Vence: 31/12/2023',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.red.shade800,
                                    fontWeight: FontWeight.w500,
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
              ),
            ),
          ],
        ),
      ),
      // MediaQuery.of(context).size.height * 0.80,
    );
  }
}
