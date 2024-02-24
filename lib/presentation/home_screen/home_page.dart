import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Header(),
          // text field buat search
        ],
      ),
    );
  }
}

// this is for separating each section
class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.50,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.50 - 25,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color(0xFF86E779),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20))),
            child: Center(
              child: Column(
                children: [
                  Text("Iya"),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      onEditingComplete: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      controller: null,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 2),
                              borderRadius: BorderRadius.circular(16)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.black12, width: 1),
                              borderRadius: BorderRadius.circular(16)),
                          hintText: 'Cari Barang atau Perabotan',
                          prefixIcon: IconButton(
                            icon: const Icon(Icons.search),
                            color: Colors.black,
                            onPressed: () {
                              // search disini
                            },
                          ),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  ),
                  Text("lol")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
