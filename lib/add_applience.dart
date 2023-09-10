import 'package:flutter/material.dart';

class AddApplience extends StatefulWidget {
  const AddApplience({super.key});

  @override
  State<AddApplience> createState() => _AddApplienceState();
}

final _formKey = GlobalKey<FormState>();

class _AddApplienceState extends State<AddApplience> {
  final TextEditingController _dateControllerStart = TextEditingController();
  final TextEditingController _dateControllerEnd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(74, 97, 255, 100),
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          title: const Text(
            "Add Applience",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(height: 30),
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Nama Peminjam',
                          labelStyle: TextStyle(fontSize: 13)),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter something';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Nama Barang',
                          labelStyle: TextStyle(fontSize: 13)),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter something';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      controller: _dateControllerStart,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.date_range),
                          filled: true,
                          labelText: 'Tanggal Pengambilan',
                          labelStyle: TextStyle(fontSize: 13)),
                      readOnly: true,
                      onTap: () {
                        _selectDateStart();
                      },
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      controller: _dateControllerEnd,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.date_range),
                          filled: true,
                          labelText: 'Tanggal Pengembalian',
                          labelStyle: TextStyle(fontSize: 13)),
                      readOnly: true,
                      onTap: () {
                        _selectDateEnd();
                      },
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'NIM',
                          labelStyle: TextStyle(fontSize: 13)),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter something';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Jurusan',
                          labelStyle: TextStyle(fontSize: 13)),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter something';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Kelas',
                          labelStyle: TextStyle(fontSize: 13)),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter something';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(fontSize: 13)),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter something';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Submit"),
                    )
                  ],
                ),
              ),
            )));
  }

  Future<void> _selectDateStart() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    if (_picked != null) {
      setState(() {
        _dateControllerStart.text = _picked.toString().split(" ")[0];
      });
    }
  }

  Future<void> _selectDateEnd() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    if (_picked != null) {
      setState(() {
        _dateControllerEnd.text = _picked.toString().split(" ")[0];
      });
    }
  }
}
