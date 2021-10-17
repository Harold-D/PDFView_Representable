//
//  ContentView.swift
//  PDFView_Representable
//

import SwiftUI

struct ContentView: View {
    @State var togglePDF = true
    
    var body: some View {
        VStack {
            Button {
                togglePDF.toggle()
            } label: {
                Text("Change PDF")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(15)
            }
            MyPDFView(pdf: loadPDFAsData())
        }
    }
    
    private func loadPDFAsData() -> Data{
        let fileName = (togglePDF ? "1" : "2")
        
        guard let pdfURL = Bundle.main.url(forResource: fileName, withExtension: "pdf") else {
            fatalError("Could not find PDF")
        }
        
        do {
            return try Data(contentsOf: pdfURL)
        } catch {
            fatalError("Could not load PDF")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
