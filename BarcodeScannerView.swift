//
//  ContentView.swift
//  Barcode Scanner
//
//  Created by Efe Mesudiyeli on 11.04.2024.
//

import SwiftUI

struct BarcodeScannerView: View {
    @State private var scannedCode: String = ""
    
    var body: some View {
        NavigationStack {
            
            VStack{
                ScannerView(scannedCode: $scannedCode)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode)
                    .bold()
                    .font(.largeTitle)
                    .foregroundStyle(scannedCode.isEmpty ? Color.red : Color.green)
                    .padding()
                
              
            }
            .navigationTitle("Barcode Scanner")
        }
       
    }
}

#Preview {
    BarcodeScannerView()
}
