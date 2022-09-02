import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:nutrition_app/Screens/details/advice.dart';
import 'package:tflite/tflite.dart';
import 'package:nutrition_app/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nutrition_app/components/app_bar.dart';

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  File _image;
  bool _imageLoaded = false;
  List _output;
  final _imagePicker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _imageLoaded = true;

    _LoadMyModel().then((value) {
      setState(() {
        _imageLoaded = false;
      });
    });
  }

  _LoadMyModel() async {
    await Tflite.loadModel(
      model: "assets/model_unquant.tflite",
      labels: "assets/labels.txt",
    );
  }

  _classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 2,
      threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    setState(() {
      _imageLoaded = false;
      _output = output;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(
          context,
          leading: IconButton(
              icon: SvgPicture.asset('assets/icons/b.svg'),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: 'จำแนกอาการขาดธาตุอาหาร',
        ),
        //backgroundColor: k1wColor,
        body: new Center(
            child: _image == null
                ? new Container(
                    child: new Column(
                    children: <Widget>[
                      new SizedBox(
                        height: 50,
                      ),
                      new CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 130.0,
                      ),
                      Container(
                        child: new Column(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.add_a_photo,
                                    color: Color.fromRGBO(0, 0, 0, 1)),
                                onPressed: () => showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                            title: Text('เลือกรูปภาพ'),
                                            content: new Container(
                                              width: 250,
                                              height: 100,
                                              child: new Column(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(10, 0, 0, 20),
                                                    child:
                                                        SingleChildScrollView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      child: new SizedBox(
                                                        width: 200,
                                                        height: 40,
                                                        child: RaisedButton(
                                                          onPressed: () {
                                                            _getFromGallery();
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child: Text(
                                                              'เลือกภาพจากคลังรูปภาพ'),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(10, 0, 0, 0),
                                                    child:
                                                        SingleChildScrollView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      child: new SizedBox(
                                                        width: 200,
                                                        height: 40,
                                                        child: RaisedButton(
                                                          onPressed: () {
                                                            _getFromCamera();
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child:
                                                              Text('ถ่ายรูป'),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )))),
                            new SizedBox(
                              height: 30,
                            ),
                            Container(
                              width: 310,
                              height: 70,
                              color: Colors.cyan[100],
                              child: Align(
                                //alignment: Alignment.topLeft,
                                child: Text(
                                  ' คำแนะนำ: ถ่ายภาพในระยะ 30-40 เซนติเมตร',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15.0),
                                ),
                              ),
                            ),
                            new SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 310,
                              height: 70,
                              color: Colors.cyan[100],
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '    ผลการจำแนก : ',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ))
                : new Container(
                    child: new Column(children: <Widget>[
                    new SizedBox(
                      height: 50,
                    ),
                    new CircleAvatar(
                      backgroundImage: new FileImage(_image),
                      radius: 130,
                    ),
                    Container(
                      child: new Column(
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.add_a_photo,
                                  color: Color.fromRGBO(0, 0, 0, 1)),
                              onPressed: () => showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                          title: Text('เลือกรูปภาพ'),
                                          content: new Container(
                                            width: 250,
                                            height: 100,
                                            child: new Column(
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          10, 0, 0, 20),
                                                  child: SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    child: new SizedBox(
                                                      width: 200,
                                                      height: 40,
                                                      child: RaisedButton(
                                                        onPressed: () {
                                                          _getFromGallery();
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Text(
                                                            'เลือกภาพจากคลังรูปภาพ'),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          10, 0, 0, 0),
                                                  child: SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    child: new SizedBox(
                                                      width: 200,
                                                      height: 40,
                                                      child: RaisedButton(
                                                        onPressed: () {
                                                          _getFromCamera();
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Text('ถ่ายรูป'),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )))),
                          new SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: 310,
                            height: 70,
                            color: Colors.cyan[100],
                            child: Align(
                              //alignment: Alignment.topLeft,
                              child: Text(
                                ' คำแนะนำ: ถ่ายภาพในระยะ 30-40 เซนติเมตร',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15.0),
                              ),
                            ),
                          ),
                          new SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 310,
                            height: 70,
                            color: Colors.cyan[100],
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "    ผลการจำแนก : ${_output[0]["label"]}"
                                    .replaceAll(RegExp(r'[0-9]'), ''),
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15.0),
                              ),
                            ),
                          ),
                          new SizedBox(
                            height: 15,
                          ),
                          OutlineButton(
                            onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AdviceList()))
                            },
                            textColor: Colors.blue,
                            borderSide: BorderSide(
                                color: Colors.cyan[200],
                                width: 3.0,
                                style: BorderStyle.solid),
                            child: Text(
                              'ดูคำแนะนำ',
                              style: TextStyle(
                                  color: Colors.cyan[400], fontSize: 18.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]))));
  }

  /// Get from gallery
  _getFromGallery() async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
    _classifyImage(_image);
  }

  /// Get from Camera
  _getFromCamera() async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
    _classifyImage(_image);
  }

  /*check() async {
    if () {
      
    } else {
    }
  }*/
}
