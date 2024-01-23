import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 22, 51, 179),
          title: const Text(
            'Feed-n-joy',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          actions: const [
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.location_on,
                size: 25,
                color: Colors.red,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 13),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 450,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://media.istockphoto.com/id/1223169355/vector/food-and-meal-donation-app.jpg?s=612x612&w=0&k=20&c=1DdKtsllayxGm_-OM-WHvOGeZMkyT4YaIOTYQuoAI0Y='),
                    ),
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 7),
                  child: Row(
                    children: [
                      Text(
                        'Donate',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(7.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                          child: Container(
                            width: 80,
                            height: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      'https://previews.123rf.com/images/tomozina/tomozina1802/tomozina180200142/96252233-foodsharing-logo-icon-sign-food-donation-symbol-food-sharing-lettering-vector-illustration.jpg')),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(5, 4),
                                )
                              ],
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(7.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: Container(
                            width: 80,
                            height: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://www.creativefabrica.com/wp-content/uploads/2018/11/Education-logo-by-DEEMKA-STUDIO-1-580x406.jpg')),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(5, 6),
                                )
                              ],
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(7.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: Container(
                            width: 80,
                            height: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://cdn-icons-png.flaticon.com/512/247/247546.png')),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(5, 6),
                                )
                              ],
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(7.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: Container(
                            width: 80,
                            height: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://cdn-icons-png.flaticon.com/128/892/892458.png')),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(5, 6),
                                )
                              ],
                            ),
                          ),
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 3),
                    child: Row(
                      children: [
                        Text(
                          'Latest updates',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 400,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://newsonair.gov.in/writereaddata/News_Pictures/NAT/2022/Sep/NPIC-202291872913.jpg'),
                          ),
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 200,
                        width: 400,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://static.toiimg.com/thumb/imgsize-23456,msid-75084457,width-600,resizemode-4/75084457.jpg'),
                          ),
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
    );
  }
}
