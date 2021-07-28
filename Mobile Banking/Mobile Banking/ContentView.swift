//
//  ContentView.swift
//  Mobile Banking
//
//  Created by Thongchai Subsaidee on 28/7/2564 BE.
//

import SwiftUI

struct Card: View {
    
    let title: String
    let lastFour: String
    let amount: String
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                VStack(alignment: .leading) {
                    Text(title)
                        .foregroundColor(.white)
                    Text("**** \(lastFour)")
                        .foregroundColor(.white)
                }
                .padding()
                
                Spacer()
                
                Text("$\(amount)")
                    .padding()
                    .foregroundColor(.white)
                    .font(.largeTitle)
            }
            
            HStack {
                HStack(spacing: -10) {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 44, height: 44)
                        .foregroundColor(.red)
                    
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 44, height: 44)
                        .foregroundColor(.blue)
                    
                    Image(systemName: "plus.circle")
                        .foregroundColor(.white)
                        .opacity(0.5)
                        .font(.system(size: 35))
                }
                
                Spacer()
                
                Text("Visa")
                    .padding()
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
            }
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(title: "Salary Card", lastFour: "4567", amount: "$5537")
    }
}


struct ContentView: View {
    
    let size = UIScreen.main.bounds
    
    var body: some View {
        
        VStack {
            HStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 75, height: 75)
                    .foregroundColor(.white)
                
                Text("Hi Jahe!")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Spacer()
                
                Image(systemName: "bell.badge")
                    .font(.title)
                    .foregroundColor(.white)
            }
            .padding()
            
            HStack(alignment: .center) {
                
                VStack {
                    Text("Total Balance")
                        .opacity(0.5)
                        .foregroundColor(.white)
                    Text("$15,269")
                        .foregroundColor(.white)
                        .font(.title)
                    
                }
                .frame(width: size.width / 2.2, height: size.height / 6)
                .background(Color(#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)))
                .cornerRadius(16)
                
                VStack {
                    Text("Monthy Spending")
                        .opacity(0.5)
                        .foregroundColor(.white)
                    Text("$7,175")
                        .foregroundColor(.white)
                        .font(.title)
                    
                }
                .frame(width: size.width / 2.2, height: size.height / 6)
                .background(Color(#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)))
                .cornerRadius(16)
            }
                        
            Spacer()
            
            // Card control here
//            ScrollView{
//                
//                VStack {
////                    Spacer()
//                    
//                    Card(title: "Salary Card", lastFour: "4567", amount: "$5537")
//                        .frame(width: size.width, height: 200)
//                        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)), Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)), Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
//                        .cornerRadius(30)
//                        .padding()
////                        .offset(y: 10)
//                    
//                    Card(title: "Private Card", lastFour: "2341", amount: "$12,345")
//                        .frame(width: size.width, height: 200)
//                        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.5875301361, green: 0.3669178486, blue: 1, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
//                        .cornerRadius(30)
//                        .padding()
//                        .offset(y: -150)
//                    
//                    
//                    Card(title: "Family Card", lastFour: "2616", amount: "$16,269")
//                        .frame(width: size.width, height: 200)
//                        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)), Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)), Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
//                        .cornerRadius(30)
//                        .padding()
//                        .offset(y: -300)
//                    
//                }
//            }
                    
                    ZStack {
                        Card(title: "Salary Card", lastFour: "4567", amount: "$5537")
                            .frame(width: size.width, height: 200)
                            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)), Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)), Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(30)
                            .padding()
                            .offset(y: -200)

                        Card(title: "Private Card", lastFour: "2341", amount: "$12,345")
                            .frame(width: size.width, height: 200)
                            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.5875301361, green: 0.3669178486, blue: 1, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(30)
                            .padding()
                            .offset(y: -100)


                        Card(title: "Family Card", lastFour: "2616", amount: "$16,269")
                            .frame(width: size.width, height: 200)
                            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)), Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)), Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(30)
                            .padding()
                    }

            
            // Add Card
            Button(action: {
                //
            }, label: {
                HStack {
                    Text("Add card")
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Image(systemName: "plus")
                }
            })
            .padding()
            .frame(width: size.width - 40, height: 80)
            .background(Color(#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)))
            .cornerRadius(3.0)
            
        }
        .padding()
        .frame(width: .infinity, height: .infinity)
        .background(Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)))
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
