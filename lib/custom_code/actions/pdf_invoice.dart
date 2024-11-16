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

Future<void> pdfInvoice() async {
  // Contoh data yang bisa lebih dari satu item
  final List<Map<String, String>> items = [
    {
      'description': 'Ocean Freight',
      'price': '7.956.000',
      'qty': '1',
      'total': '7.956.000'
    },
    {
      'description': 'Handling Charge',
      'price': '500.000',
      'qty': '1',
      'total': '500.000'
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
          pw.SizedBox(height: 16),
          pw.Row(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Container(
                width: 50,
                height: 50,
                decoration: pw.BoxDecoration(
                  border: pw.Border.all(color: PdfColors.black),
                ),
                child: pw.Center(
                  child: pw.Text(
                    'Logo',
                    style: pw.TextStyle(fontSize: 12),
                  ),
                ),
              ),
              pw.SizedBox(width: 8),
              pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text(
                    'PT. LANCAR JAYA SELARAS SEJAHTERA',
                    style: pw.TextStyle(
                      fontSize: 14,
                      fontWeight: pw.FontWeight.bold,
                      color: PdfColors.blue,
                    ),
                  ),
                  pw.Text(
                    'EMKL - TRUCKING - FORWARDING',
                    style: pw.TextStyle(
                      fontSize: 12,
                      color: PdfColors.red,
                    ),
                  ),
                  pw.Text(
                    'Jl. Darmo Indah Selatan Blok KK no.71, Surabaya - Indonesia',
                    style: pw.TextStyle(fontSize: 10),
                  ),
                  pw.Text(
                    'Telp: 031 - 99143926, Email: Ljssejahtera@gmail.com',
                    style: pw.TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ],
          ),
          pw.SizedBox(height: 16),
          pw.Center(
            child: pw.Text(
              'INVOICE',
              style: pw.TextStyle(
                fontSize: 14,
                fontWeight: pw.FontWeight.bold,
                color: PdfColors.black,
              ),
            ),
          ),
          pw.SizedBox(height: 16),
          pw.Text(
            'No. Job: 23002-A/LJSS/I/2023',
            style: pw.TextStyle(
              fontSize: 12,
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.black,
            ),
          ),
          pw.SizedBox(height: 16),
          pw.Container(
            padding: pw.EdgeInsets.all(8),
            child: pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Expanded(
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      _buildDetailRow('Kepada:',
                          'CV. CEMPO SUMPUT JOYO MAKMUR\nJL. RAYA PLN NO. 11, KEL. SUMPUT, KEC. DRIYOREJO GRESIK, INDONESIA'),
                      _buildDetailRow('Shipper:', '-'),
                      _buildDetailRow('SI/INV/BL/PO:', 'GOSUSUB8081913'),
                      _buildDetailRow('Vessel:', 'COSCO HAIFA 101N'),
                      _buildDetailRow('Destination:', 'SHANGHAI'),
                    ],
                  ),
                ),
                pw.SizedBox(width: 16),
                pw.Expanded(
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      _buildDetailRow('Stuffing Place:', 'DESA SUMPUT GRESIK'),
                      _buildDetailRow('Stuffing Date:',
                          '04 Januari 2023 s/d 04 Januari 2023'),
                      _buildDetailRow('Quantity:', '1 x 20" FCL'),
                      _buildDetailRow(
                          'No. Container:', '1. IPXU3758798 / A4210771991'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          pw.SizedBox(height: 16),
          pw.Table(
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
                _buildTableCell('SUBTOTAL'),
                _buildTableCell(''),
                _buildTableCell(items
                    .fold(
                        0,
                        (sum, item) =>
                            sum + int.parse(item['total']!.replaceAll('.', '')))
                    .toString()),
              ]),
              pw.TableRow(children: [
                _buildTableCell(''),
                _buildTableCell(''),
                _buildTableCell('PPH 23 0%'),
                _buildTableCell(''),
                _buildTableCell('0'),
              ]),
              pw.TableRow(children: [
                _buildTableCell(''),
                _buildTableCell(''),
                _buildTableCell('PPN 0%'),
                _buildTableCell(''),
                _buildTableCell('0'),
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
                            sum + int.parse(item['total']!.replaceAll('.', '')))
                    .toString()),
              ]),
            ],
          ),
          pw.SizedBox(height: 16),
          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            children: [
              pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text(
                    'Payment Via Transfer:',
                    style: pw.TextStyle(
                        fontSize: 10, fontWeight: pw.FontWeight.bold),
                  ),
                  pw.Text(
                    'Account IDR:',
                    style: pw.TextStyle(fontSize: 10),
                  ),
                  pw.Text(
                    'BCA\nA/N PT. LANCAR JAYA SELARAS SEJAHTERA\nA/C. 087-022-6888',
                    style: pw.TextStyle(fontSize: 10),
                  ),
                ],
              ),
              pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.end,
                children: [
                  pw.Text('Surabaya, 15 Mei 2024',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 32),
                  pw.Text('Authorized Signature,',
                      style: pw.TextStyle(fontSize: 10)),
                ],
              ),
            ],
          ),
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
      ..setAttribute("download", "invoice.pdf")
      ..click();
    html.Url.revokeObjectUrl(url);
  } else {
    // For mobile (Android & iOS), use the printing package
    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => pdf.save());
  }
}

pw.Widget _buildDetailRow(String label, String value) {
  return pw.Padding(
    padding: const pw.EdgeInsets.symmetric(vertical: 4),
    child: pw.Row(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          '$label ',
          style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 10),
        ),
        pw.Expanded(
          child: pw.Text(value, style: pw.TextStyle(fontSize: 10)),
        ),
      ],
    ),
  );
}

pw.Widget _buildTableHeader(String text) {
  return pw.Padding(
    padding: const pw.EdgeInsets.all(8.0),
    child: pw.Text(
      text,
      style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 10),
    ),
  );
}

pw.Widget _buildTableCell(String text) {
  return pw.Padding(
    padding: const pw.EdgeInsets.all(8.0),
    child: pw.Text(text, style: pw.TextStyle(fontSize: 10)),
  );
}
