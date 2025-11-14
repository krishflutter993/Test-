import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../db/database_helper.dart';

class AddMobileScreen extends StatefulWidget {
  final Map<String, dynamic>? editData;

  const AddMobileScreen({super.key, this.editData});

  @override
  State<AddMobileScreen> createState() => _AddMobileScreenState();
}

class _AddMobileScreenState extends State<AddMobileScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController companyController = TextEditingController();
  final TextEditingController modelController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController discountController = TextEditingController();
  final TextEditingController finalPriceController = TextEditingController();

  final ImagePicker _picker = ImagePicker();
  File? imageFile;

  @override
  void initState() {
    super.initState();
    if (widget.editData != null) {
      companyController.text = widget.editData!['company'];
      modelController.text = widget.editData!['model'];
      priceController.text = widget.editData!['price'].toString();
      discountController.text = widget.editData!['discount'].toString();
      finalPriceController.text = widget.editData!['finalPrice'].toString();

      if (widget.editData!['image'] != null &&
          widget.editData!['image'].toString().isNotEmpty) {
        final bytes = base64Decode(widget.editData!['image']);
        final tempDir = Directory.systemTemp;
        final tempFile = File('${tempDir.path}/tempImage.png');
        tempFile.writeAsBytesSync(bytes);
        imageFile = tempFile;
      }
    }
  }

  Future<void> _pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  Future<void> _saveMobile() async {
    if (!_formKey.currentState!.validate()) return;

    String? base64image;
    if (imageFile != null) {
      base64image = base64Encode(imageFile!.readAsBytesSync());
    } else {
      base64image = widget.editData != null ? widget.editData!['image'] : null;
    }

    Map<String, dynamic> data = {
      'company': companyController.text,
      'model': modelController.text,
      'price': double.parse(priceController.text),
      'discount': double.parse(discountController.text),
      'finalPrice': double.parse(finalPriceController.text),
      'image': base64image,
    };

    if (widget.editData == null) {
      await DatabaseHelper().insertMobile(data);
    } else {
      await DatabaseHelper().updateMobile(widget.editData!['id'], data);
    }

    Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.editData == null ? "Add Mobile" : "Edit Mobile"),
        // backgroundColor: MyColors.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              InkWell(
                onTap: _pickImage,
                child: imageFile == null
                    ? CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.blue,
                        child: const Icon(
                          Icons.image,
                          color: Colors.white,
                          size: 40,
                        ),
                      )
                    : CircleAvatar(
                        radius: 60,
                        backgroundImage: FileImage(imageFile!),
                      ),
              ),
              const SizedBox(height: 20),
              _buildTextField(companyController, "Company Name"),

              const SizedBox(height: 15),
              _buildTextField(modelController, "Model Name"),
              const SizedBox(height: 15),
              _buildTextField(priceController, "Price", isNumber: true),
              const SizedBox(height: 15),
              _buildTextField(
                discountController,
                "Discount (%)",
                isNumber: true,
              ),
              const SizedBox(height: 15),
              _buildTextField(
                finalPriceController,
                "Final Price",
                isNumber: true,
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: _saveMobile,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  minimumSize: const Size(double.infinity, 45),
                ),
                child: Text(
                  widget.editData == null ? "Save" : "Update",
                  style: const TextStyle(
                    color: Color.fromARGB(255, 15, 15, 15),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
    TextEditingController controller,
    String hint, {
    bool isNumber = false,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: isNumber ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) return "Enter $hint";
        return null;
      },
    );
  }
}
