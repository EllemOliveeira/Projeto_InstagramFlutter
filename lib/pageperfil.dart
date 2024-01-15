import 'package:flutter/material.dart';


class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  List<Map<String, String>> listPosts = [
    {
      'image': 'assets/images/myphoto.png',
    },
     {
      'image': 'assets/images/turma11.png',
    },
     {
      'image': 'assets/images/tresmeninas.jpg',
    },
     {
      'image': 'assets/images/turma01.jpg',
    },
    {
      'image': 'assets/images/turma02.jpg',
    },
    {
      'image': 'assets/images/turma03.jpg',
    },
    {
      'image': 'assets/images/turma04.jpg',
    },
    {
      'image': 'assets/images/turma05.jpg',
    },
    {
      'image': 'assets/images/turma06.jpg',
    },
    {
      'image': 'assets/images/turma07.jpg',
    },
    {
      'image': 'assets/images/turma09.png',
    },
    {
      'image': 'assets/images/turma10.png',
    },
     {
      'image': 'assets/images/turma11.png',
    },
     {
      'image': 'assets/images/turma12.jpg',
    },
     {
      'image': 'assets/images/turma13.jpg',
    },
     {
      'image': 'assets/images/turma14.jpg',
    },
     {
      'image': 'assets/images/turmalanche.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold( //andaime
      backgroundColor: Colors.black,
      body: SafeArea( // area segura
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // alinhamento do eixo cruzado esticar
          children: [
            // topbar
            SizedBox(
              height: 30,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const Text(
                      'ellem_oliveeira',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    const Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white),
                    Container(
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    const Spacer(),
                    Icon(Icons.add_box_outlined ,color: Colors.white),
                     Icon(Icons.menu , color: Colors.white),
                    
                  ],
                ),
              ),
            ),
            const Divider(height: 1),
            Expanded(
              child: SingleChildScrollView( // visualização de rolagem filho unico
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 14),
                    // prifule statistic
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              'assets/images/perfil01.jpg',
                              height: 90,
                              width: 90,
                              fit: BoxFit.cover, // ajuste da caixa. cobrir
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              children: const [
                                Text(
                                  '29',
                                  style: TextStyle(
                                    color:  Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  'Publicações',
                                  style: TextStyle(
                                    color:  Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: const [
                                Text(
                                  '1.5M',
                                  style: TextStyle(
                                    color:  Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  'Seguidores',
                                  style: TextStyle(
                                    color:  Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: const [
                                Text(
                                  '427',
                                  style: TextStyle(
                                    color:  Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  'Seguindo',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    // bio
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Ellem Oliveira 🤗🤭',
                        style: TextStyle(
                          color:  Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    // buttons
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Desenvolvimento de Software 💻',
                        style: TextStyle(
                          color:  Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'www.ellemoliveeira.com',
                        style: TextStyle(
                          color:  Colors.blue,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: const [
                          ProfileButton(text:'Adicionar'),
                          SizedBox(width: 8, height: 4,),
                          //ProfileButton(text: 'Adicionar'),
                          //SizedBox(width: 8),
                          // ProfileButton(text: 'Adicionar'),
                          //SizedBox(width: 1, height: 1),
                          
                        ],
                      ),
                    ),
                  
                    const SizedBox(height: 24),
                    // higlights
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 74,
                                width: 74,
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  border: Border.all( // em todas as bordas
                                    color:  Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(74),
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/images/perfil02.jpg',
                                    height: 60,
                                    width: 60,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Text('Momentos', style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          const SizedBox(width: 14),
                          Column(
                            children: [
                              Container(
                                height: 74,
                                width: 74,
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color:  Colors.orange,
                                  ),
                                  borderRadius: BorderRadius.circular(74),
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/images/perfil02.jpg',
                                    height: 74,
                                    width: 74,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Text('Family', 
                              style:  TextStyle(
                                color: Colors.white,
                              ),),
                            ],
                          ),
                          const SizedBox(width: 14),
                          Column(
                            children: [
                              Container(
                                height: 74,
                                width: 74,
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color:  Colors.purple,
                                  ),
                                  borderRadius: BorderRadius.circular(74),
                                ),
                                child: ClipOval(
                                  child:Image.asset(
                                    'assets/images/perfil02.jpg',
                                    height: 900,
                                    width: 100,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Text('Sofware', 
                              style: TextStyle(
                                color: Colors.white,
                               ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 14),
                          Column(
                            children: [
                              Container(
                                height: 74,
                                width: 74,
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color:  Color.fromARGB(255, 71, 231, 210),
                                  ),
                                  borderRadius: BorderRadius.circular(74),
                                ),
                                child: const Center(
                                  child: Icon(Icons.add, size: 40, color: Colors.blue),
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Text('Novo',
                              style: TextStyle(
                                color: Colors.white,
                              ) ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    // tab menu
                    SizedBox(
                      height: 40,
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                const Spacer(),
                                Icon(Icons.add_a_photo_outlined , color: Colors.pink),
                              
                                const Spacer(),
                                const Divider(
                                  height: 1,
                                  thickness: 1,
                                  color:  Colors.white,
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                const Spacer(),
                                Icon(Icons.view_comfy_alt_outlined , color: Colors.pink),

                                const Spacer(),
                                const Divider(
                                  height: 1,
                                  thickness: 1,
                                  color:  Colors.white,
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                const Spacer(),
                                 Icon(Icons.video_call_outlined , color: Colors.pink),
                             
                                const Spacer(),
                                const Divider(
                                  height: 1,
                                  thickness: 1,
                                  color:Colors.white,
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                const Spacer(),
                                 Icon(Icons.favorite, color: Colors.pink),
                               
                                const Spacer(),
                                const Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // grid post
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        childAspectRatio: 1 / 1,
                        crossAxisSpacing: 3,
                        mainAxisSpacing: 3,
                      ),
                      itemBuilder: (context, index) {
                        final post = listPosts[index];
              
                        return Container(
                          color: Colors.white,
                          child: Image.asset(
                            post['image']!,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                      itemCount: listPosts.length,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {},
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home, color: Colors.white), label:''),
          BottomNavigationBarItem(icon:Icon(Icons.search , color: Colors.white), label:''),
          BottomNavigationBarItem(icon:Icon(Icons.ondemand_video, color: Colors.white ), label:''),
          BottomNavigationBarItem(icon:Icon(Icons.shopping_bag_outlined, color: Colors.white), label:''),
          BottomNavigationBarItem(icon: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 138, 191, 235),
            radius: 15,
          ) , label:''
        ),
      ]
          

    )
              
    );
  }
}

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 30,
        decoration: BoxDecoration(color: const Color.fromARGB(255, 218, 211, 211)),
         child: Center(
          child: Text(
            'Editar Perfil',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color:Colors.black,
            ),
            
          ),
         ),
      ),
    );    
  }
}
































