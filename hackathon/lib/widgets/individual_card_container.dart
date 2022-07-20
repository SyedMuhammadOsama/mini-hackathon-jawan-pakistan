import 'package:flutter/material.dart';

class IndividualCardContainer extends StatelessWidget {
  VoidCallback onTap;
  IndividualCardContainer({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(),
                title: Text('Name'),
                subtitle: Text('occupation'),
                trailing: SizedBox(
                  width: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                      Text(
                        '2.3K',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'ksahdkasdla asdioasjldja dasdlasnd asdkjasdkasndl askldnioahd dasndklandlashdlasn ashndl aso dui as jas xibask jka xi asi xkas xbiaxk anx i kas  asui ka asua k ask as ck askcuiasciasoc   k',
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/Bitmap.png'),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset('assets/1.png'),
                            Image.asset('assets/2.png'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset('assets/3.png'),
                            Image.asset('assets/Bitmap (2).png'),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    child: Text('#Summer'),
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                    child: Text('#Purple'),
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red)),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.double_arrow,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    '2.3K',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
