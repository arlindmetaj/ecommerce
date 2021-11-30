import 'dart:io' as i;
import 'package:e_commerce/Localization/localization_constants.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AccountDetails extends StatefulWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  _AccountDetailsState createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  i.File? imageFile;
  final picker = ImagePicker();

  _imgFromCamera() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      i.File image = i.File(pickedFile.path);
      setState(() {
        imageFile = image;
      });
    }
  }

  _imgFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      i.File image = i.File(pickedFile.path);
      setState(() {
        imageFile = image;
      });
    }
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Wrap(
              children: <Widget>[
                ListTile(
                    leading: const Icon(Icons.photo_library),
                    title: const Text('Gallery'),
                    onTap: () {
                      //_loadImage(ImageSource.gallery);
                      _imgFromGallery();
                      Navigator.of(context).pop();
                    }),
                ListTile(
                  leading: const Icon(Icons.photo_camera),
                  title: const Text('Camera'),
                  onTap: () {
                    //_loadImage(ImageSource.camera);
                    _imgFromCamera();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          );
        });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: (){
            _showPicker(context);
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: CircleAvatar(
              radius: 50,
              child: ClipRRect(
                  child: imageFile == null
                      ? Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(50)),
                          width: 100,
                          height: 100,
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.grey[800],
                          ),
                        )
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.file(
                            i.File(imageFile!.path),
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        )),
            ),
          ),
        ),
        const Text(
          "App Customer",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          "customer@example.com",
          style: TextStyle(
              color: Colors.grey, fontSize: 11, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 35,
          width: 110,
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.green,
          ),
          child: Center(
            child: Text(
              getTranslated(context, "check_balance").toString(),
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  const Text(
                    "00",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    getTranslated(context, "in_your_cart").toString(),
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    "08",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    getTranslated(context, "in_wishlist").toString(),
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    "89",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    getTranslated(context, "ordered").toString(),
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
