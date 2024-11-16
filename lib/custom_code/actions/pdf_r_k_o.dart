// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/services.dart';
import 'dart:html' as html;
import 'package:flutter/foundation.dart';

// Custom action code
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';

Future<void> pdfRKO() async {
  // Contoh data yang bisa lebih dari satu item
  final List<Map<String, String>> items = [
    {
      'description': 'Ocean Freight',
      'price': 'Rp7.956.000',
      'qty': '1',
      'total': 'Rp7.956.000'
    },
    {
      'description': 'Handling Charge',
      'price': 'Rp500.000',
      'qty': '1',
      'total': 'Rp500.000'
    },
    // Tambahkan data item lainnya di sini
  ];

  // Create a PDF document
  final pdf = pw.Document();

  // Build the PDF content
  pdf.addPage(
    pw.Page(
      build: (context) => pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.SizedBox(height: 24),
          pw.Center(
            child: pw.Column(
              children: [
                pw.Text(
                  'REKAP KEGIATAN OPERASIONAL',
                  style: pw.TextStyle(
                      fontSize: 20, fontWeight: pw.FontWeight.bold),
                ),
                pw.SizedBox(height: 8),
                pw.Text(
                  'No. Job: 23002-A/LJSS/I/2023',
                  style: pw.TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
          pw.SizedBox(height: 24),
          pw.Container(
            padding: pw.EdgeInsets.all(8),
            decoration: pw.BoxDecoration(
              border: pw.Border.all(),
            ),
            child: pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Expanded(
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      _buildDetailRow('Tgl. Stuffing:',
                          '04 Januari 2023 s/d 04 Januari 2023'),
                      _buildDetailRow('Quantity:', '1 x 20" FCL'),
                      _buildDetailRow('Bongkar:', '1. KNP (MDP) / PATRIOTS'),
                    ],
                  ),
                ),
                pw.SizedBox(width: 16),
                pw.Expanded(
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      _buildDetailRow('Kepada:',
                          'CV. CEMPO SUMPUT JOYO MAKMUR\nJL. RAYA PLN NO. 11, KEL. SUMPUT, KEC. DRIYOREJO GRESIK, INDONESIA'),
                      _buildDetailRow('Shipper:', '-'),
                      _buildDetailRow('Keterangan:', ''),
                    ],
                  ),
                ),
              ],
            ),
          ),
          pw.SizedBox(height: 24),
          _buildTable(items),
        ],
      ),
    ),
  );

  // Generate PDF bytes
  final pdfBytes = await pdf.save();

  // Handle printing based on platform
  if (kIsWeb) {
    // For web, you can use the 'pdf' package to download the file
    final blob = html.Blob([pdfBytes], 'application/pdf');
    final url = html.Url.createObjectUrlFromBlob(blob);
    final anchor = html.AnchorElement(href: url)
      ..setAttribute("download", "rekap_kegiatan_operasional.pdf")
      ..click();
    html.Url.revokeObjectUrl(url);
  } else {
    // For mobile (Android & iOS), use the printing package
    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => pdf.save());
  }
}

pw.Widget _buildDetailRow(String label, String value) {
  return pw.Row(
    crossAxisAlignment: pw.CrossAxisAlignment.start,
    children: [
      pw.Text(
        '$label ',
        style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
      ),
      pw.Expanded(
        child: pw.Text(value),
      ),
    ],
  );
}

pw.Widget _buildTable(List<Map<String, String>> items) {
  return pw.Table(
    border: pw.TableBorder.all(),
    children: [
      pw.TableRow(children: [
        _buildTableHeader('NO'),
        _buildTableHeader('DESCRIPTION'),
        _buildTableHeader('PRICE/FCL'),
        _buildTableHeader('QTY'),
        _buildTableHeader('TOTAL'),
      ]),
      ...items.asMap().entries.map((entry) {
        int index = entry.key;
        Map<String, String> item = entry.value;
        return pw.TableRow(children: [
          _buildTableCell((index + 1).toString()),
          _buildTableCell(item['description']!),
          _buildTableCell(item['price']!),
          _buildTableCell(item['qty']!),
          _buildTableCell(item['total']!),
        ]);
      }).toList(),
      pw.TableRow(children: [
        _buildTableCell(''),
        _buildTableCell(''),
        _buildTableCell('TOTAL'),
        _buildTableCell(''),
        _buildTableCell(items
            .fold(
                0,
                (sum, item) =>
                    sum +
                    int.parse(item['total']!
                        .replaceAll('Rp', '')
                        .replaceAll('.', '')))
            .toString()),
      ]),
      pw.TableRow(children: [
        _buildTableCell(''),
        _buildTableCell(''),
        _buildTableCell('GRAND TOTAL'),
        _buildTableCell(''),
        _buildTableCell(items
            .fold(
                0,
                (sum, item) =>
                    sum +
                    int.parse(item['total']!
                        .replaceAll('Rp', '')
                        .replaceAll('.', '')))
            .toString()),
      ]),
    ],
  );
}

pw.Widget _buildTableHeader(String text) {
  return pw.Padding(
    padding: const pw.EdgeInsets.all(8.0),
    child: pw.Text(
      text,
      style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
    ),
  );
}

pw.Widget _buildTableCell(String text) {
  return pw.Padding(
    padding: const pw.EdgeInsets.all(8.0),
    child: pw.Text(text),
  );
}
