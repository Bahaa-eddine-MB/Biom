import 'package:flutter/material.dart';
import '../../../utils/Decoration.dart';

class BottomSheetPlant extends StatefulWidget {
  final String title;
  final String image;

  const BottomSheetPlant({super.key, required this.title, required this.image});

  @override
  State<BottomSheetPlant> createState() => _BottomSheetPlantState();
}

class _BottomSheetPlantState extends State<BottomSheetPlant> {
  final TextEditingController _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.attach(context);
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      height: MediaQuery.of(context).size.height * 0.6,
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          Text(
            'Add to my plants',
            style: TextStyle(
                color: MyDecoration.green,
                fontFamily: 'Poppins',
                fontSize: 24,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width*0.35,
                child: Stack(
                  children: [
                    Image.asset("images/Ellipse.png"),
                    Image.asset(
                      widget.image,
                      height: 200,
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      color: MyDecoration.green,
                      fontFamily: 'Poppins',
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      decorationColor: MyDecoration.green,
                      decorationThickness: 2.0,
                      
                    ),
                    
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Give your plant a name!',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: TextFormField(
                        onSaved: (val) {},
                        decoration: InputDecoration(
                          hintText: "Plant name ...",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all<double>(0),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(color: MyDecoration.green, width: 2),
                        ),
                      ),
                    ),
                    child: Text('Randomize',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: MyDecoration.green,
                        )),
                  ),
                ],
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: MediaQuery.of(context).size.width * 0.2),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40))),
            child: const Text("Confirm",
                style: TextStyle(
                    color: Colors.white, fontFamily: "Poppins", fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
