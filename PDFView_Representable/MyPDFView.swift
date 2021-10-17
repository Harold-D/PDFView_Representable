//
//  MyPDFView.swift
//  PDFView_Representable
//

import PDFKit
import SwiftUI

struct MyPDFView: UIViewRepresentable {
    typealias UIViewType = PDFView
    var pdf: Data
    
    func makeUIView(context: UIViewRepresentableContext<MyPDFView>) -> UIViewType {
        return PDFView()
    }

    func updateUIView(_ view: UIViewType, context _: UIViewRepresentableContext<MyPDFView>) {
        view.document = PDFDocument(data: pdf)
    }
}
