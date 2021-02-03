//
//  ContentView.swift
//  SepedaUI
//
//  Created by Apple on 03/02/21.
//

import SwiftUI

// Model data
struct ProductModel: Identifiable{
    let id: Int
    let namaProduk: String
    let fotoProduk: String
    let hargaProduk: Int
    let lokasi: String
    let ratingCount: Int
    let jumlahRating: Int
    
    init(id: Int, namaProduk: String, fotoProduk: String, hargaProduk: Int, lokasi: String, ratingCount: Int, jumlahRating: Int){
        
        self.id = id
        self.namaProduk = namaProduk
        self.fotoProduk = fotoProduk
        self.hargaProduk = hargaProduk
        self.lokasi = lokasi
        self.ratingCount = ratingCount
        self.jumlahRating = jumlahRating
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Product()
    }
}

struct Product: View{
    var body: some View{
        VStack(alignment: .leading){
            // foto
            ZStack(alignment:.topTrailing){
                Image("foto1")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(height: 250)
                    .clipped()
                
                Button(action: {print("Liked")}){
                    Image(systemName: "heart")
                        .padding()
                        .foregroundColor(.red)
                }
            }
            
            Text("Sepeda Polygon")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .padding(.leading)
                .padding(.trailing)
            
            Text("Rp. 2.000.000")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .foregroundColor(.red)
                .padding()
            
            HStack{
                Image(systemName: "mappin.circle")
                Text("Kab. Banyumas")
            }
            .padding(.leading)
            .padding(.trailing)
            
            HStack{
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.top, 5)
            
            Button(action: {print("ditambahkan")}){
                HStack{
                    Spacer()
                    HStack{
                        Image(systemName: "cart")
                        Text("Tambah Ke Keranjang")
                            .font(.callout)
                            .padding()
                    }
                    Spacer()
                }
            }
            .background(Color.green)
            .foregroundColor(Color.white)
            .cornerRadius(10)
            .padding()
        }
        .background(Color("warna"))
        .cornerRadius(15)
    }
}
