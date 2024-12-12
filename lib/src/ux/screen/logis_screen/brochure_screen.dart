import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:portafolio_comercial_danich/src/ux/widgets/custom_scaffold.dart';
import 'package:portafolio_comercial_danich/src/ux/widgets/custom_single_child_scroll.dart';

class BrochureScreen extends StatefulWidget {
  const BrochureScreen({super.key});

  @override
  State<BrochureScreen> createState() => _BrochureScreenState();
}

class _BrochureScreenState extends State<BrochureScreen> {
  PDFDocument? document; // Cambiar a tipo nullable
  bool isLoading = true; // Agregar un estado de carga

  @override
  void initState() {
    super.initState();
    loadDocument(); // Cargar el documento al iniciar el estado
  }

  Future<void> loadDocument() async {
    try {
      document = await PDFDocument.fromAsset(
          'assets/images/sector-logis/pdf/brochure_2024.pdf');
      setState(() {
        isLoading = false; // Cambiar el estado de carga a falso
      });
    } catch (e) {
      debugPrint(e.toString());
      setState(() {
        isLoading =
            false; // Cambiar el estado de carga a falso en caso de error
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: CustomSingleChildScroll(
        child: Center(
          child: Container(
            width: double.infinity,
            height: (MediaQuery.of(context).size.height) - 130,
            child: isLoading // Verificar si está cargando
                ? Center(
                    child: Container(
                        width: 50,
                        height: 50,
                        child:
                            const CircularProgressIndicator())) // Mostrar un indicador de carga
                : document != null // Verificar si el documento está cargado
                    ? PDFViewer(
                        document: document!,
                        lazyLoad: false,
                        zoomSteps: 1,
                        showPicker: false,
                      )
                    : const Text(
                        "Error al cargar el documento"), // Mensaje de error
          ),
        ),
      ),
    );
  }
}
