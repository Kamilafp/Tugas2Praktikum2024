import '/ui/tampil_data.dart';
import 'package:flutter/material.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  FormDataState createState() => FormDataState();
}

class FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();

  final _namaFocusNode = FocusNode();
  final _nimFocusNode = FocusNode();
  final _tahunFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _namaFocusNode.addListener(() {
      setState(() {});
    });
    _nimFocusNode.addListener(() {
      setState(() {});
    });
    _tahunFocusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // dispose FocusNode setelah tidak digunakan
    _namaFocusNode.dispose();
    _nimFocusNode.dispose();
    _tahunFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data Diri Mahasiswa"),
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _textboxNama(),
            const SizedBox(height: 10),
            _textboxNIM(),
            const SizedBox(height: 10),
            _textboxTahun(),
            const SizedBox(height: 10),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  Widget _textboxNama() {
    return TextField(
      focusNode: _namaFocusNode,
      decoration: InputDecoration(
        labelText: "Nama",
        fillColor: _namaFocusNode.hasFocus ? Colors.lightBlue.shade50 : Colors.transparent,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Colors.lightBlue, width: 2.0),
        ),
        prefixIcon: const Icon(Icons.person),
      ),
      controller: _namaController,
    );
  }

  Widget _textboxNIM() {
    return TextField(
      focusNode: _nimFocusNode,
      decoration: InputDecoration(
        labelText: "NIM",
        fillColor: _nimFocusNode.hasFocus ? Colors.lightBlue.shade50 : Colors.transparent,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Colors.lightBlue, width: 2.0),
        ),
        prefixIcon: const Icon(Icons.badge),
      ),
      controller: _nimController,
    );
  }

  Widget _textboxTahun() {
    return TextField(
      focusNode: _tahunFocusNode,
      decoration: InputDecoration(
        labelText: "Tahun Lahir",
        fillColor: _tahunFocusNode.hasFocus ? Colors.lightBlue.shade50 : Colors.transparent,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Colors.lightBlue, width: 2.0),
        ),
        prefixIcon: const Icon(Icons.calendar_today),
      ),
      controller: _tahunController,
      keyboardType: TextInputType.number,
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        String nama = _namaController.text;
        String nim = _nimController.text;
        int tahun = int.parse(_tahunController.text);
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TampilData(nama: nama, nim: nim, tahun: tahun),
        ));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        textStyle: const TextStyle(fontSize: 16),
      ),
      child: const Text('Simpan'),
    );
  }
}
