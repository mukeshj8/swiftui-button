//
//  ContentView.swift
//  swiftui-button
//
//  Created by Mukesh Jain on 12/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            //Button type 1, rounded button with custom color
            Button(action: {
                print("Hello world")
            }){
                Text("Hello World")
                    .padding()
                    .background(Color.purple).foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                    .padding(10)
            }
            //Button type 2, rounded button with custom color and border
            Button(action: {
                print("Hello world")
            }){
                Text("Hello World")
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.purple).foregroundColor(.white)
                    .cornerRadius(40)
                    .font(.title)
                    .padding(10)
                    .overlay {
                        RoundedRectangle (cornerRadius: 40).stroke(Color.purple, lineWidth: 5)
                    }
            }
            .padding()
            
            //Button type 3, Button with image
            Button(action: {
                print("delete button tapped!")
            }){
                Image(systemName: "trash")
                        .font(.largeTitle)
                        .foregroundColor(.red)
            }
            
            //Button type 5, Button with image and shap
            Button(action: {
                print("delete button tapped!")
            }){
                Image(systemName: "trash")
                    .padding()
                    .background(Color.red)
                    .clipShape(Circle())
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            
            //Button type 6, Button with image, shap and layout
            Button(action: {
                print("delete button tapped!")
            }){
                HStack {
                    Image(systemName: "trash")
                        .font(.largeTitle)
                    Text("Delete")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(40)
            }
            
            //Button type 6, Button with image, shap, layout and color gradient
            Button(action: {
                print("delete button tapped!")
            }){
                HStack {
                    Image(systemName: "trash")
                        .font(.largeTitle)
                    Text("Delete")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .background(LinearGradient(gradient: Gradient(colors:[Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                .foregroundColor(.white)
                .cornerRadius(40)
            }
            
            //Button type 6, Button with image, shap, layout, color gradient and size
            Button(action: {
                print("delete button tapped!")
            }){
                HStack {
                    Image(systemName: "trash")
                        .font(.largeTitle)
                    Text("Delete")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .frame(minWidth: 0,maxWidth: .infinity )
                .padding()
                .background(LinearGradient(gradient: Gradient(colors:[Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                .foregroundColor(.white)
                .cornerRadius(40)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
