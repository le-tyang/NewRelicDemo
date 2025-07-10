//
//  ContentView.swift
//  NewRelicDemo
//
//  Created by Tyler Yang on 10/7/2025.
//

import SwiftUI

struct ContentView: View {
    @State var items: [Int] = Array(0..<1000)
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(items, id: \.self) { index in
                    itemView(index)
                        .id(index)
                }
            }
        }
    }
    
    private func itemView(_ index: Int) -> some View {
        VStack(alignment: .leading) {
            imageView(index)
                
            Text("Item \(index)")
        }
        .padding()
    }
    
    private func imageView(_ index: Int) -> some View {
        Color.clear
            .aspectRatio(1, contentMode: .fit) // Force aspect ratio
            .frame(minHeight: 100)
            .overlay {
                OverlayView()
            }
    }
}

private struct OverlayView: UIViewControllerRepresentable {
    typealias UIViewControllerType = EmptyViewController

    func makeUIViewController(context: Context) -> UIViewControllerType {
        .init()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}

private class EmptyViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}


#Preview {
    ContentView()
}
