import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/barra.dart';
import 'components/barralateral.dart';
import 'components/botaoadd.dart';
import 'destaques.dart';
import 'login.dart';
import 'components/abainicial.dart';
import 'components/botaocarrinho.dart';
import 'components/fim.dart';

class Meucarrinho extends StatefulWidget {
  const Meucarrinho({super.key});

  @override
  State<Meucarrinho> createState() => _TesteState();
}

class _TesteState extends State<Meucarrinho> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 176, 39, 69),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          login(),
          SizedBox(width: 18),
          cadastro(),
          SizedBox(width: 10),
        ],
      ),
      drawer: Barralateral(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Abainicial(),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Color.fromARGB(31, 114, 113, 113),
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text('Imagem'),
                              VerticalDivider(color: Colors.black, thickness: 1),
                              Text('Produto')
                            ],
                          ),
                        ),
                        Divider(color: Colors.black12),
                        _buildProductItem('Sabão Liquido 3L', 'R\$ 18,99', 'R\$ 37,98', 'assets/images/sabao.png'),
                        _buildProductItem('Biscoito Vitarella Cream Cracker 350g', 'R\$ 4,89', 'R\$ 14,67', 'assets/images/biscoito.png'),
                        _buildProductItem('Batata Palha Scrusch 80g', 'R\$ 4,29', 'R\$ 8,58', 'assets/images/palha.png'),
                        _buildProductItem('Macarrão Espaguete Fino', 'R\$ 2,69', 'R\$ 10,76', 'assets/images/macarrao.png'),
                        _buildProductItem('Detergente Invicto limão', 'R\$ 1,99', 'R\$ 1,99', 'assets/images/limao.png'),
                        _buildProductItem('Detergente Invicto neutro', 'R\$ 1,99', 'R\$ 3,98', 'assets/images/neutro.png'),
                        _buildProductItem('Detergente Invicto maçã', 'R\$ 1,99', 'R\$ 1,99', 'assets/images/marca.png'),
                        _buildProductItem('Banana Maçã 1Kg', 'R\$ 1,99', 'R\$ 1,99', 'assets/images/banana.png'),
                        _buildProductItem('Maçã Fuji 500g', 'R\$ 8,85', 'R\$ 17,70', 'assets/images/maca.png'),
                        _buildProductItem('Cebola Branca 500g', 'R\$ 4,80', 'R\$ 14,40', 'assets/images/cebola.png'),
                      ],
                    ),
                  ),
                  _buildPopularProductsSection(),
                  _buildCheckoutSection(context),
                ],
              ),
            ),
            Fim(),
          ],
        ),
      ),
    );
  }

  Widget _buildProductItem(String name, String price, String total, String imagePath) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(imagePath, height: 90, width: 53),
              VerticalDivider(color: Colors.black, thickness: 1),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Text('Preço: ', style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(price),
                      ],
                    ),
                    SizedBox(height: 4),
                    QuantitySelector3(),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Text('Total: ', style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(total),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(color: Colors.black12),
      ],
    );
  }

  Widget _buildPopularProductsSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.lightbulb_outlined, color: Color.fromARGB(255, 110, 66, 146)),
              SizedBox(width: 5),
              Text('Produtos mais comprados nessa loja', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                _buildPopularProduct('Leite Cemil Integral 1L', 'R\$ 5,99', 'assets/images/leite.png'),
                _buildPopularProduct('Coco Seco Unidade', 'R\$ 2,99', 'assets/images/coco.png'),
                _buildPopularProduct('Beterraba 500g', 'R\$ 7,99', 'assets/images/beterraba.png'),
                _buildPopularProduct('Coentro Unidade', 'R\$ 2,40', 'assets/images/coentro.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPopularProduct(String name, String price, String imagePath, {bool showDivider = true}) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13),
              child: Image.asset(imagePath, width: 50),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  Text(price, style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Botaoadd(),
          ],
        ),
        if (showDivider) Divider(color: Colors.grey),
      ],
    );
  }


  Widget _buildCheckoutSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Subtotal', style: TextStyle(fontSize: 17)),
                Text('R\$ 112,05', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width - 200,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 176, 39, 69),
                padding: EdgeInsets.symmetric(vertical: 14.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onPressed: () {
                // Ação do botão
              },
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              label: Text(
                'Ir para o pagamento',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
