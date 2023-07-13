//
//  CheckArray.swift
//  learningCoreDtata
//
//  Created by Максим Кузнецов on 10.07.2023.
//

import SwiftUI

struct CheckArray: View {
    
    @State private var num = 0
    @State private var arr = [Int]()
    
    var body: some View {
        VStack(spacing: 16) {
            Text("num = \(num)")
            HStack {
                Button {
                    num += 1
                } label: {
                    Text("+1")
                }
                Spacer()
                Button {
                    arr.insert(num, at: num)
                } label: {
                    Text("Add to array")
                }
            }
            Spacer()
            ForEach($arr, id: \.self) { index in
                Text("index")
            }
        }
    }
}

struct CheckArray_Previews: PreviewProvider {
    static var previews: some View {
        CheckArray()
    }
}
