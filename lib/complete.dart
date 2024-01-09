import 'package:flutter/material.dart';
import 'package:flutter_application_1/Add.dart';

class complete extends StatefulWidget {
  const complete({super.key});

  @override
  State<complete> createState() => _completeState();
}

class _completeState extends State<complete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 62, 102, 212),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const add()));
            },
            icon: const Icon(Icons.cancel_outlined)),
        title: const Text('Complete',
            style: TextStyle(
                fontSize: 30, color: Color.fromARGB(255, 255, 255, 255))),
      ),
      body: Expanded(
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 100,
                          width: 150,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://www.kagomeindia.com/wp-content/uploads/Blog4.jpg'))),
                        ),
                        const Column(
                          children: [
                            Text(
                              'Paneer Masala',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 19),
                            ),
                            Text(
                              'food for 23.0 persons',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              'Cooking time 2:50 PM',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 100,
                        width: 150,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://t4.ftcdn.net/jpg/02/95/09/39/360_F_295093993_O8Bab6DsZiQvs4PRLUtxtMK28EZ2u4M8.jpg'))),
                      ),
                      const Column(
                        children: [
                          Text(
                            'Chole Kulche',
                            style: TextStyle(color: Colors.black, fontSize: 19),
                          ),
                          Text(
                            'food for 35.0 persons',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'Cooking time 2:50 PM',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 100,
                        width: 150,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://www.littleindiaofdenver.com/wp-content/uploads/2017/08/Six-Most-Popular-Types-of-Indian-Curry.jpg'))),
                      ),
                      const Column(
                        children: [
                          Text(
                            'Butter Paneer ',
                            style: TextStyle(color: Colors.black, fontSize: 19),
                          ),
                          Text(
                            'food for 32.0 persons',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'Cooking time 3:00 PM',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 100,
                        width: 150,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://www.thespruceeats.com/thmb/hqqNrNhIpqPqV2u0T0K-IUzUsEo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/SES-cuisine-of-north-india-1957883-d32a933f506d43f59ac38a8eb956884a.jpg'))),
                      ),
                      const Column(
                        children: [
                          Text(
                            'Paneer Lababdar',
                            style: TextStyle(color: Colors.black, fontSize: 19),
                          ),
                          Text(
                            'food for 23.0 persons',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'Cooking time 2:50 PM',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 100,
                        width: 150,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://img.traveltriangle.com/blog/wp-content/uploads/2022/01/Famous-Food-Of-South-India.jpg'))),
                      ),
                      const Column(
                        children: [
                          Text(
                            'Masala Dosa',
                            style: TextStyle(color: Colors.black, fontSize: 19),
                          ),
                          Text(
                            'food for 23.0 persons',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'Cooking time 2:50 PM',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 100,
                        width: 150,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://t4.ftcdn.net/jpg/00/49/38/95/360_F_49389597_6VboA8kRehV5naoKBLlvdeyf3Y8vclSZ.jpg'))),
                      ),
                      const Column(
                        children: [
                          Text(
                            'indian thali',
                            style: TextStyle(color: Colors.black, fontSize: 19),
                          ),
                          Text(
                            'food for 23.0 persons',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'Cooking time 2:50 PM',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 100,
                        width: 150,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://crushmag-online.com/wp-content/uploads/2022/06/sa_pork_vindaloo_curry_july2021_1x560.jpeg'))),
                      ),
                      const Column(
                        children: [
                          Text(
                            'sahi paneer',
                            style: TextStyle(color: Colors.black, fontSize: 19),
                          ),
                          Text(
                            'food for 23.0 persons',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'Cooking time 2:50 PM',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
