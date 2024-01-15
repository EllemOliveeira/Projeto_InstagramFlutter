
 import 'package:flutter/material.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.transparent,
        title: Text(
          "Reels ",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
       
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.photo_camera_outlined,
              color: Colors.blue,
            ),
          ),
        ],
      ),  
        body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/reelsvideo.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(.3),
                        Colors.transparent,
                      ],
                      begin: Alignment(0, -.75),
                      end: Alignment(0, .1),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(.3),
                        Colors.transparent,
                      ],
                      end: Alignment(0, -.75),
                      begin: Alignment(0, .1),
                    ),
                  ),
                ),
              
              ],
            ),
          ),
        ),
      ),


      bottomNavigationBar: Container(
       
        decoration:const BoxDecoration( // linha divisória
          border: Border(
            top: BorderSide(
              color: Colors.white,
              width: 0.3,
              ),
          ),
        ),
        child: BottomNavigationBar( // baara de navegação inferior os itens do rodapé
        selectedItemColor: Colors.white, // cor do elemento selecionado
        currentIndex: 0, //indice atual
        //fixedColor:  Colors.blue,
        type: BottomNavigationBarType.fixed, // tipo de navegador fixado
        backgroundColor: Colors.transparent,
        iconSize: 25,


        items: const[
          BottomNavigationBarItem(icon:Icon(Icons.home, color: Colors.white), label:''),
          BottomNavigationBarItem(icon:Icon(Icons.search, color: Colors.white), label:''),
          BottomNavigationBarItem(icon:Icon(Icons.add, color: Colors.white ), label:''),
          BottomNavigationBarItem(icon:Icon(Icons.ondemand_video, color: Colors.white), label:''),
          BottomNavigationBarItem(icon: CircleAvatar(
            backgroundImage: AssetImage('assets/images/perfil01.jpg' ),
            backgroundColor: Color.fromARGB(255, 195, 195, 196),
            radius: 15,
          ) , label:''),
         


        ],
      ),
    )
    );
  }
}


