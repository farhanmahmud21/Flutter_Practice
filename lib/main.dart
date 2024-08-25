import 'package:flutter/material.dart';

void main() {
  runApp(HomeScreen());
}

const img =
    'https://images.pexels.com/photos/848573/pexels-photo-848573.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Photo Gallery!'),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: const Text('Welcome to My Photo Gallery!'),
                ), //Container for Welcome
                Container(
                  margin: EdgeInsets.all(10),
                  child: const TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ), //Container for Search
                Builder(builder: (BuildContext context) {
                  return Wrap(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Show SnackBar using the context inside Builder
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Clicked Picture 1!')),
                          );
                        },
                        child: Image.network(
                          img,
                          height: 100,
                          width: 100,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Clicked Picture 2!')),
                          );
                        },
                        child: Image.network(
                          img,
                          height: 100,
                          width: 100,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Clicked Picture 3!')),
                          );
                        },
                        child: Image.network(
                          img,
                          height: 100,
                          width: 100,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Clicked Picture 4!')),
                          );
                        },
                        child: Image.network(
                          img,
                          height: 100,
                          width: 100,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Clicked Picture 5!')),
                          );
                        },
                        child: Image.network(
                          img,
                          height: 100,
                          width: 100,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Clicked Picture 6  !')),
                          );
                        },
                        child: Image.network(
                          img,
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ],
                  );
                }),

                ListTile(
                  leading: Image.network(
                    img,
                    height: 40,
                    width: 40,
                    fit: BoxFit.fill,
                  ),
                  title: Text('Picture 1'),
                  subtitle: Text('Category 1'),
                ),
                ListTile(
                  leading: Image.network(
                    img,
                    height: 40,
                    width: 40,
                    fit: BoxFit.fill,
                  ),
                  title: Text('Picture 2'),
                  subtitle: Text('Category 2'),
                ),
                ListTile(
                  leading: Image.network(
                    img,
                    height: 40,
                    width: 40,
                    fit: BoxFit.fill,
                  ),
                  title: Text('Picture 3'),
                  subtitle: Text('Category 3'),
                ),
                ListTile(
                  leading: Image.network(
                    img,
                    height: 40,
                    width: 40,
                    fit: BoxFit.fill,
                  ),
                  title: Text('Picture 4'),
                  subtitle: Text('Category 4'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
