import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Fim extends StatelessWidget {
  const Fim({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       width: MediaQuery.of(context).size.width,
              height: 820,
              color: Color.fromARGB(255, 33, 3, 58),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                
              
      Row(
        children: [
          Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Text(
                  'ONDE ESTAMOS',
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Row(
                  children: [
                    Icon(Icons.location_on,
                    color: Colors.white,
                    size: 18,
                    ),
                Text(
                  'Av. João Vieira Carneiro, 306 - João Pessoa/PB',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                ]
                           ),
              ),
              SizedBox(height: 9),
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Row(
                  children: [
                    Icon(Icons.local_post_office,
                    color: Colors.white,
                    size: 18,
                    ),
                Text(
                  ' contato@chegouafeira.com.br',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                ]
                           ),
              ),
              SizedBox(height: 9),
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Row(
                  children: [
                    Icon(Icons.business,
                    color: Colors.white,
                    size: 18,
                    ),
                Text(
                  ' 52.969.955/0001-55',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                ]
                           ),
              ),
              SizedBox(height: 9),
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.white, 
                      size: 18,
                    ),
                Text(
                  ' (83) 3021-4132 | 98840-4132',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                ]
                           ),
              ),
             SizedBox(height: 5,),
             Padding(
                padding: const EdgeInsets.only(left: 13),
               child: Text(
                  'INSTITUCIONAL',
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                  ),
                ),
             ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Row(
                  children: [
                    Text('O Chegou a Feira',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                    ),),],),
              ),
                  SizedBox(height: 5,),
                  Padding(
                padding: const EdgeInsets.only(left: 13),
                    child: Row(
                      children: [
                    Text('Como Comprar',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                    ),),],),
                  ),
                  SizedBox(height: 5,),
                   Padding(
                padding: const EdgeInsets.only(left: 13),
                     child: Row(
                      children: [
                                     Text('Termos e Condições',
                                     style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                                     ),),],),
                   ),
                  SizedBox(height: 5,),
                   Padding(
                padding: const EdgeInsets.only(left: 13),
                     child: Row(
                      children: [
                                     Text('Entre em Contato',
                                     style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                                     ),),]),
                   ),
                  SizedBox(height: 5,),
                  Padding(
                padding: const EdgeInsets.only(left: 13),
                    child: Text(
                                  'AVISOS',
                                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                                  ),
                                ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                padding: const EdgeInsets.only(left: 13),
                    child: Text(
                                  '* imagens meramente ilustrativas',
                                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                                  ),
                                ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                padding: const EdgeInsets.only(left: 13),
                    child: Text(
                                  'Venda sujeita à disponibilidade de estoque no dia ',
                                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                                  ),
                                ),
                  ),
                  Padding(
                padding: const EdgeInsets.only(left: 13),
                    child: Text(
                                  'da entrega. No caso de faltar algum produto, ',
                                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                                  ),
                                ),
                  ),
                  Padding(
                padding: const EdgeInsets.only(left: 13),
                    child: Text(
                                  'este não será entregue e o valor correspondente',
                                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                                  ),
                                ),
                  ),
                  Padding(
                padding: const EdgeInsets.only(left: 13),
                    child: Text(
                                  'não será cobrado.',
                                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                                  ),
                                ),
                  ),
              SizedBox(height: 10,),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                             width: 370,
                            height: 25,
                            decoration: BoxDecoration(
                            color: Color.fromARGB(255, 33, 3, 58),
                              ),
                            child: Divider(color: Colors.white,),
                
                    ),
              ),
      
              SizedBox(height: 10,),
      
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Image.asset(
                          'assets/images/logo.png',
                          width: 130,
                          height: 70,
                        ),
              ),
                Padding(
                padding: const EdgeInsets.only(left: 13),
                  child: Text('Todos os direitos reservados',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                  ),),
                ),
                Padding(
                padding: const EdgeInsets.only(left: 13),
                  child: Text('Chegou a Feira © 2024',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                  ),),
                ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Image.asset(
                          'assets/images/formas.png',
                          width: 370,
                          height: 40,
                        ),
             ),
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Row(
                    children: [
                      Container(
                        width: 200,
                        height: 40, // Altura da imagem
                        child: Align(
                          alignment: Alignment.centerLeft, // Alinha a imagem à esquerda
                          child: Image.asset(
                            'assets/images/pagseguro.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
              ),
                            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                             width: 370,
                            height: 25,
                            decoration: BoxDecoration(
                            color: Color.fromARGB(255, 33, 3, 58),
                              ),
                            child: Divider(color: Colors.grey,),
                
                    ),
              ),
      
                SizedBox(height: 10,),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   
                     IconButton(
                      
                      onPressed: (){}, 
                      icon: Icon(Icons.facebook,
                      size: 30,
                      color: Colors.white,
                      ),
                     ),
                     IconButton(
                      
                      onPressed: (){}, 
                      icon: Icon(Icons.camera_alt_outlined,
                      size: 30,
                      color: Colors.white,
                      ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 150),
                       child: GestureDetector(
                        onTap: () {
                        },
                       
                       child: Image.asset(
                         'assets/images/pbsoft.png',
                         width: 100 ,
                        height: 50 ,
                              ),
                            ),
                          ),
                        ], 
                      ),
                    ],
                  ),
                ],
              ),
        ]    
      ),
    );
  }
}