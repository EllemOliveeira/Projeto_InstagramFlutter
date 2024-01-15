import 'package:flutter/material.dart';


class FeedPage extends StatelessWidget {
  const FeedPage({super.key});


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // responsavel para oferer informações de tamanho- tamanho da tela em altura e largura.
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: [
          Container(
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.black,
              border: Border(
                bottom: BorderSide(
                  width: 0.2,
                  color: Colors.white,
                )
              )
            ),


    ////////////////// Parte do Story///////////////////////////////////
 
            child: ListView.separated(  
              itemCount: 20,
              scrollDirection: Axis.horizontal,
             
              separatorBuilder: ( _,index) {
              return const SizedBox(
                width: 10,
              );
            },
              itemBuilder: ( _,index) {
                return Column(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      padding:const EdgeInsets.all(2),
                      margin: const EdgeInsets.only(top: 7), // inserir somente na parte do top
                      decoration:  BoxDecoration( //decoração da caixa
                        color: index == 0 ? Colors.grey : null,
                        gradient:
                            index != 0 ? const LinearGradient(
                        colors: [
                            Color.fromRGBO(250,126,30,1 ),
                            Color.fromRGBO(214, 41, 118, 1),
                           
                          ],
                         ) : null,
                         shape: BoxShape.circle, // formato da caixa em circulo
                      ),
                     
                       child: Container(
                        decoration:  BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        
                         child: const Padding( //preenchimento
                          padding: EdgeInsets.all(4),
                            child: CircleAvatar( // circulo avatar
                            //backgroundColor: Colors.blue,
                            backgroundImage: AssetImage('assets/images/perfil02.jpg'),
                         ),
                        ),
                       ),
                  ),
                  const SizedBox(height: 5),
                  Text(index == 0 ? 'Seu story' : 'Amigos',
                  style: TextStyle(
                    fontSize: 12,
                    color: index == 0 ? Colors.grey : Colors.white,
                  ),
                  )
                ],
              );
            },
           
            ),
          ),


/////////////////////////////////////////Parte do Post no Feed//////////////////////////////////////////////////


        Expanded( //ocupa todo espaço em branco disponivel
          child: ListView.separated( // visualização de lista separada
             itemCount: 20, // contagem do itens
             itemBuilder: ( _,index){ // construtor do intens
               return const SizedBox(
                height: 8,
            );
          },
          separatorBuilder: (_, index){
            return ConstrainedBox(  // definir tamanho - caixa do contêiner
              constraints: BoxConstraints(
                maxHeight: size.height * .6, //altura maxima  //o tamanho maximo que pode ocupar na tela é de 60%,
              ),


            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // alilhamento do eixo cruzado. começar- espichar, ocupar todo espaço dispinivel
              children: [
                buildTopWidgets(), // Metodo do Padding


                Expanded(
                 child: Image.asset('assets/images/tresmeninas.jpg',
                 width: 1400,
                 //height: 100,
                 fit: BoxFit.fill , // para a imagem preencher todo espaço da caixa
                 ),
                ),


                const SizedBox(height: 5), // separar um pouco da imagem


                const Padding( // para a parte dos icones em baixo da imagem
                  padding: EdgeInsets.all(5),
                  child: Column(
                    //eixo cruzado é o horizontal e eixo principal é o vertical na coluna
                    crossAxisAlignment: CrossAxisAlignment.start, // espichar, ocupar todo espaço dispinivel
                    children: [
                      //eixo cruzado é o vertical e eixo principal é o horizontal
                      Row(
                        children:[
                          Icon(
                            Icons.favorite_border,
                            color:Colors.white,
                            size: 20,
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.mode_comment_outlined,
                            color:Colors.white,
                            size: 20,
                          ),
                          SizedBox(width: 10),
                        Icon(
                            Icons.send_outlined,
                            color:Colors.white,
                            size: 20,
                          ),
                          Spacer(), // espaço para ir para o canto  direito.
                          Icon(
                            Icons.bookmark_border,
                            color:Colors.white,
                            size: 20,
                          ),


                        ]  
                      ),
                SizedBox(height: 10),


              Text('1,1M likes',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 4),
              Text.rich( // texto rico aceita tipos diferentes de texto
                  TextSpan( // extensão de texto
                    children:[
                      TextSpan(
                        text: 'Amigos',
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        ),
                      ),
                     
                      TextSpan(
                        text:  ' As programadoras do SENAI',
                        style: TextStyle(
                          color: Colors.white,
                        )
                      )
                     
                    ]
                  )
              ), // junta em unico texto, texto quem tem estilos diferentes
             
              SizedBox(height: 5),


/////////////////////// Post/////////////////////////
              Row(
                children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/turma14.jpg' ),
                  backgroundColor: Colors.amber,
                  radius: 10,
                  ),
                  SizedBox(height: 10),
                  Text('Adicionar um Comentário',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                   ),
                  ),
                  Spacer(), //espaciador
                  Text('😉 😊',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.yellow,
                  ),
                  ),
                ]
              )
                 
                    ],
                  )
               )
              ],
            ),
          );
         },
        ),
       ),
      ],
    ),
   
///////////////Parte do Rodapé/////////////////////////////


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
        iconSize: 20,


        items: const[
          BottomNavigationBarItem(icon:Icon(Icons.home, color: Colors.white), label:''),
          BottomNavigationBarItem(icon:Icon(Icons.search, color: Colors.white), label:''),
          BottomNavigationBarItem(icon:Icon(Icons.ondemand_video, color: Colors.white ), label:''),
          BottomNavigationBarItem(icon:Icon(Icons.shopping_bag_outlined, color: Colors.white), label:''),
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
//////////////////////Metódo para Padding////////////////////
           
    Padding buildTopWidgets(){ // Metodo para o Padding do perfil do feed
      return const Padding(
        padding: EdgeInsets.all(10),
        
        child: Row(
          children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/turma01.jpg' ),
             //backgroundColor: Colors.amber,
               radius: 15,
          ),


          SizedBox(width: 5,),


          Text('Amigos',
            style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 12,
            ) ,
          ),
          Spacer(), // ocupa todo espaço em branco
             Icon(
              color: Colors.white,
              Icons.more_vert_outlined,
              size:30,
            ) // ocupa todo espaço em branco e dar um espaço
          ],
        ),
      );
    }
   
///////////////////////////Parte do Cabeçario do nome Instagram////////////////////////////////////////////////////////


      AppBar buildAppBar(){
        return AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Instagram',
          style: TextStyle(
              fontFamily: 'Arial' ,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
         
          ),
        actions: [
          GestureDetector(
            child:Icon(Icons.favorite_border_outlined,
            size: 20,
            ),
            //onTap: {} {},
          ),
           const SizedBox(
           width: 20,
          ),
          GestureDetector(
            child:Icon(Icons.add_box_outlined,
            size: 20,
            ),
            //onTap: {} {}, // ao tocar
          )
        ],


        );
      }
}

















