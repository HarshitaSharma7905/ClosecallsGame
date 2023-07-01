import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';


class HomeTest extends StatelessWidget {
  const HomeTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.black,), onPressed: () {
          Navigator.of(context).pop();
        },
        ) ,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: const _Home() ,
    );
  }
}
class _Home extends StatefulWidget {
  const _Home({Key? key}) : super(key: key);

  @override
  State<_Home> createState() => _HomeState();


}

class _HomeState extends State<_Home> {
  var  _value=null;
  late FocusNode _focusNode;
  late TextEditingController _textEditingController;
  late FocusNode _focusNode1;
  late TextEditingController _textEditingController1;
  late FocusNode _focusNode2;
  late TextEditingController _textEditingController2;
  late TextEditingController _controller;

  //dropdown city
  String selectedCountry='Select Your City';
  String selectedCity='Select Nearest Railway Station,Area';

  List<String> countries = ['Mumbai', 'Pune', 'Delhi','Hyderabad','Jaipur','Lucknow','Bangalore','Chennai'];
  Map<String, List<String>> cities = {
    'Mumbai': ['Thane', 'Airoli', 'Turbhe','Vashi','Panvel'],
    'Pune': ['Hinjewadi', 'Pimpri', 'MIDC','Baner','Kothrod'],
    'Delhi': ['Qutub Minar', 'Gurudwara Bangla Sahib', 'India Gate','New Delhi'],
    'Hyderabad': ['Charminar', 'Chowmahalla Palace', 'Salar Jung Museum','Taj Falaknuma Palace'],
    'Jaipur': ['City', 'Fort', 'Pink City'],
    'Lucknow': ['Kapoorthala', 'Aliganj', '','Charbagh','Gomtinagar'],
    'Bangalore': ['Electronic City', 'UB City', 'Mahatma Gandhi (MG) Road.','Lalbagh Botanical Garden'],
    'Chennai': ["Elliot's Beach", 'Ashtalakshmi Temple', 'Mylapore','Sri Parthasarathy Temple'],

  };
  bool showDropdowns = false;


  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _textEditingController = TextEditingController();
    _focusNode1 = FocusNode();
    _textEditingController1 = TextEditingController();
    _focusNode2 = FocusNode();
    _textEditingController2 = TextEditingController();

    _controller = TextEditingController();


  }

  @override
  void dispose() {
    _focusNode.dispose();
    _textEditingController.dispose();
    _focusNode1.dispose();
    _textEditingController1.dispose();
    _focusNode2.dispose();
    _textEditingController2.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // _Image(),_InputBox(),_Button()
          children: [_Heading(),_Image(),
            Container(
                width: 400,
                height: 50,
                padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                child: TextField(
                  keyboardType: TextInputType.text,
                  focusNode: _focusNode,
                  controller: _textEditingController,
                  decoration: InputDecoration(border: const OutlineInputBorder(),labelText:_focusNode.hasFocus ? '' : 'Full Name',
                      hintText:_focusNode.hasFocus ? 'Full Name' : '',
                      suffixIcon: Icon(Icons.person)),
                )),
            Container(
                width: 400,
                height: 50,
                padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                child: TextField(
                  keyboardType: TextInputType.datetime,
                  focusNode: _focusNode1,
                  controller: _textEditingController1,
                  decoration: InputDecoration(border: OutlineInputBorder(),labelText:_focusNode1.hasFocus ? '' : 'Date of Birth',
                      hintText:_focusNode1.hasFocus ? 'Date of Birth' : '',
                      suffixIcon: Icon(Icons.date_range)),
                )),

            Container(
              width: 400,
              height: 50,
              padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
              child: DropdownButtonFormField(
                hint: Center(child: Text('Select Gender',)),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 11.0),
                    border: OutlineInputBorder()
                ),

                value: _value,
                items: [
                  DropdownMenuItem(child: Text('Male'),value: "-1",),
                  DropdownMenuItem(child: Text('Female'),value: "0",),
                  DropdownMenuItem(child: Text('Prefer Not to Say'),value: "1",),
                ],
                onChanged: (v) {

                },

              ),
            ),
            Container(

              width: 400,
              height: 50,
              padding:EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
              child: DropdownSearch<String>(
                popupTitle: Center(child: Container(
                    padding: EdgeInsets.all(15),
                    child: Column(children: [
                      Text('Select Your City',
                        style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),
                      ),
                      Container(
                        width: 400,
                        height: 60,
                        padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                        child: Center(
                          child: TextField(
                            keyboardType: TextInputType.text,
                            controller: _textEditingController1,
                            onChanged: (value) {

                            },
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 11.0),
                                border: OutlineInputBorder(),
                                hintText:'Search',
                                prefixIcon: Icon(Icons.search)),
                          ),

                        ),
                      )

                    ],)
                )),
                mode: Mode.BOTTOM_SHEET,
                showSelectedItems: true,
                selectedItem: selectedCountry,
                items: countries,
                onChanged: (value) {
                  setState(() {
                    selectedCountry = value!;
                    _controller=TextEditingController(text:value );
                    selectedCity = 'Select Your Location';
                    if(selectedCountry!='Select Your City'){
                      showDropdowns=true;
                    }
                  });
                },
              ),
            ),

            Visibility(
                visible: showDropdowns,
                child: Container(
                  width: 400,
                  height: 50,
                  padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                  child:  DropdownSearch<String>(
                    mode: Mode.BOTTOM_SHEET,
                    popupTitle: Container(
                      padding: EdgeInsets.all(15),
                      child: Center(
                        child: Column(
                          children: [
                            Text('Select Your Location',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18)),

                            Container(
                              width: 400,
                              height: 60,
                              padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                              child: TextField(
                                readOnly:true,
                                controller:  _controller,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 11.0),
                                  border: OutlineInputBorder(),
                                  labelText: 'City',
                                ),
                              ),
                            ),
                            Container(
                              width: 400,
                              height: 60,
                              padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                              child: Center(
                                child: TextField(
                                  keyboardType: TextInputType.text,
                                  controller: _textEditingController1,
                                  onChanged: (value) {

                                  },
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 11.0),
                                      border: OutlineInputBorder(),
                                      hintText:'Search',
                                      prefixIcon: Icon(Icons.search)),
                                ),

                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    showSelectedItems: true,
                    selectedItem: selectedCity,
                    items: selectedCountry != null ? cities[selectedCountry] : [],
                    onChanged: (value) {
                      setState(() {
                        selectedCity = value!;
                      });
                    },
                  ),
                )
            ),
            Container(
              width: 400,
              height: 50,
              padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
              child: ElevatedButton(style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.only(right: 30,left: 30,bottom: 10,top: 10)),shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))))),onPressed: (){}, child:Text('Next',style: TextStyle(fontSize: 16),)),
            )



          ],
        ),
      ),
    );
  }
}

//Heading
class _Heading extends StatefulWidget {
  const _Heading({Key? key}) : super(key: key);

  @override
  State<_Heading> createState() => _HeadingState();
}

class _HeadingState extends State<_Heading> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 230,
      child: Text("Let's create your profile",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400), ),
    );
  }
}

//Image
class _Image extends StatefulWidget {
  const _Image({Key? key}) : super(key: key);

  @override
  State<_Image> createState() => _ImageState();
}

class _ImageState extends State<_Image> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Image.asset('assets/images/portfolio.png'),
    );
  }
}
//Full Name





