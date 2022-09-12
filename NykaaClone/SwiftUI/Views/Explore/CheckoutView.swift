//
//  CheckoutView.swift
//  SwiftUI_Assignment
//
//  Created by Purplle on 20/07/22.
//

import SwiftUI
import AVKit



struct CheckoutView: View {
    
    @EnvironmentObject var order: Order
    @State private var paymentType = "Cash"
    @State private var disAmount = 15
    @State private var showingPaymentAlert = false
    
    let paymentTypes = ["Cash", "Credit Card", "Debit card"]
    let disAmounts = [10, 15, 20, 25, 0]
    
    var totalPrice: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency

        let total = Double(order.total)
        let dis = total / 100 * Double(disAmount)

        return formatter.string(from: NSNumber(value: total - dis)) ?? "$0"
    }
    
    //remember that SwiftUI will re-invoke our body property whenever any of our @State properties change.
    var body: some View {
        List {
            Section {
                Picker("How do you want to pay?", selection: $paymentType) {
                    ForEach(paymentTypes, id: \.self) {
                        Text($0)
                    }
                }
            }

            Section(header: Text("Discount price")) {
                Picker("Percentage:", selection: $disAmount) {
                    ForEach(disAmounts, id: \.self) {
                        Text("\($0)%")
                    }
                }
                .pickerStyle(.segmented)
            }
            
            Section(header:Text("TOTAL: \(totalPrice)")) { Button("Confirm order") {
                showingPaymentAlert.toggle()
            }}
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
        .alert(isPresented: $showingPaymentAlert) {
            Alert(title: Text("Order confirmed"), message: Text("Your total was \(totalPrice) – thank you!"), dismissButton: .default(Text("OK")))
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView().environmentObject(Order())
    }
}
