import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MedicalPage extends StatefulWidget {
  @override
  _MedicalApprovalPageState createState() => _MedicalApprovalPageState();
}

class _MedicalApprovalPageState extends State<MedicalApprovalPage> {
  final ImagePicker _picker = ImagePicker();
  PickedFile? _pickedFile;

  Future<void> _getImageFromGallery() async {
    final pickedFile = await _picker.getImage(source: ImageSource.gallery);
    setState(() {
      _pickedFile = pickedFile;
    });
  }

  Future<void> _getImageFromCamera() async {
    final pickedFile = await _picker.getImage(source: ImageSource.camera);
    setState(() {
      _pickedFile = pickedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medical Approval Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _pickedFile != null
                ? Image.file(
                    File(_pickedFile!.path),
                    height: 200,
                    width: 200,
                  )
                : Icon(
                    Icons.camera_alt,
                    size: 100,
                    color: Colors.blue,
                  ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _getImageFromGallery,
              child: Text('Select Image from Gallery'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _getImageFromCamera,
              child: Text('Take Picture'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement file submission logic here
                if (_pickedFile != null) {
                  // Upload or submit the selected file
                  // You can use the _pickedFile.path to access the file path
                  // Handle the submission to your server or storage service
                  print('File path: ${_pickedFile!.path}');
                } else {
                  // No file selected
                  print('No file selected.');
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
