//
//  FunFacts.swift
//  Final Project!!
//
//  Created by Vaneeka yaptangco on 7/16/24.
//

import SwiftUI

struct FunFacts: View {
    @State private var Ada = ""
    @State private var Mary = ""
    @State private var Hedy = ""
    @State private var Marie = ""
    @State private var Florence = ""
    
    var body: some View {
        
        NavigationStack{
            ScrollView{
                ZStack{
                    Color("lightpink")
                        .ignoresSafeArea()
                    
                    VStack(spacing: 20){
                       
                        Rectangle ()
                            .fill(Color.white)
                            .opacity (0.94)
                            .frame(height: 75.0)
                        
                            .overlay (
                                Text ("STEM Careers")
                                    .fontWeight(.black)
                                    .foregroundColor (Color("bluey"))
                                    .font(.title)
                                )
                      
                      
                                Text("Did You Know?")
                                    .font(.title2)
                                    .multilineTextAlignment(.leading)
                                
                        
                        Text("• Women are more likely than men to leave STEM careers. Nearly 50% of women in STEM fields leave their jobs after 10 years, compared to 20% of men. \n • Women earn 58% of biological sciences degrees but only 20% of engineering degrees.\n • Girls make up 30% of students enrolled in high school STEM programs, indicating a gender gap that begins early in education. \n • Less than 20% of bachelor’s degrees in computer science go to women despite women earning about 60% of all bachelor’s degrees. \n • In the United States, only 11% of working engineers are women. Among women who have earned an engineering degree, over a third (around 38%) quit engineering or never even enter the profession.")
                            .font(.footnote)
                        
                   
                                Text("STEM Careers with Pioneering Women")
                                    .font(.title2)
                                    .multilineTextAlignment(.leading)
                                
                      
                        Text("Computer Scientist: \n • Specialize in the theory of computation and the design of computational systems. \n • work on algorithms, data structures, software development, and artificial intelligence, among other areas. \n Women Pioneer: Ada Lovelace")
                            .font(.body)
                        HStack{
                            Button("Learn About Ada!"){
                                Ada = "• considered the world's first computer programmer. \n • Her notes on the engine include what is recognized as the first algorithm making her a pioneer in the field of computing"
                            }
                            .font(.callout)
                            .buttonStyle(.borderedProminent)
                            .tint(Color("coral"))
                            .foregroundColor(Color("bluey"))
                            .multilineTextAlignment(.leading)
                            Spacer()
                        }
                        if !Ada.isEmpty {
                            HStack{
                                Image("Lovelace")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(15)
                                Text(Ada) .multilineTextAlignment(.center)
                            }
                        }
                        
                        
                        Text("Mathematician: \n • uses mathematical theories,  algorithms, and the latest computer technology to solve economic, scientific, engineering, and business problems. \n Pioneering Woman: Mary Jackson")
                            .padding()
                        
                        HStack{
                            Button("Learn About Mary!"){
                                Mary = "• NASA's first African-American female engineer\n • contributed significantly to the aeronautics industry \n • helped improve the understanding of air flow, which is crucial in aircraft design"
                            }
                            .font(.callout)
                            .buttonStyle(.borderedProminent)
                            .tint(Color("coral"))
                            .foregroundColor(Color("bluey"))
                            .multilineTextAlignment(.leading)
                            Spacer()
                        }
                        if !Mary.isEmpty {
                            HStack{
                                Image("Jackson")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100.0, height: 140.0)
                                    .cornerRadius(15)
                                
                                Text(Mary) .multilineTextAlignment(.center)  .padding()
                            }
                        }
                        
                        Text("Engineer:\n • apply the principles of science and mathematics to develop solutions to technical problems. \n •design, develop, test, and oversee the manufacture of various products and systems.\n • Pioneering Woman: Hedy Lamarr ")
                        HStack{
                            Button("Learn About Hedy!"){
                                Hedy = "• co-invented an early version of frequency-hopping spread spectrum communication technology, \n • This innovation later became the foundation for modern wireless communication technologies, including Wi-Fi, Bluetooth, and GPS \n • She was also a famous actress!"
                            }
                            .font(.callout)
                            .buttonStyle(.borderedProminent)
                            .tint(Color("coral"))
                            .foregroundColor(Color("bluey"))
                            .multilineTextAlignment(.leading)
                            Spacer()
                        }
                        if !Hedy.isEmpty {
                            HStack{
                                Image("Lamarr")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100.0, height: 140.0)
                                    .cornerRadius(15)
                                
                                Text(Hedy) .multilineTextAlignment(.center)  .padding()
                            }
                        }
                        Text("Physicist:\n • studies the fundamental principles governing the behavior of the natural world. \n • explore concepts like energy, matter, and the fundamental forces of nature through experiments, theoretical analysis, and simulations. \n Pioneer Woman: Marie Curie")
                        
                        HStack{
                            Button("Learn About Marie!"){
                                Marie = "• pioneer in the study of radioactivity \n• discovered the elements polonium and radium \n • first woman to win a Nobel Prize and remains the only person to have won Nobel Prizes in two different scientific fields (Physics and Chemistry)"
                            }
                            .font(.callout)
                            .buttonStyle(.borderedProminent)
                            .tint(Color("coral"))
                            .foregroundColor(Color("bluey"))
                            .multilineTextAlignment(.leading)
                            Spacer()
                        }
                        if !Marie.isEmpty {
                            HStack{
                                Image("Curie")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100.0, height: 140.0)
                                    .cornerRadius(15)
                                
                                Text(Marie) .multilineTextAlignment(.center)  .padding()
                            }
                        }
                        Text("Statistician: \n • use statistical methods to collect, analyze, interpret, and present data.\n • apply their expertise to a wide range of fields, including economics, biology, engineering, medicine, public health, and marketing.\n • Women Pioneer: Florence Nightingale")
                        
                        HStack{
                            Button("Learn About Florence!"){
                                Florence = "• considered the founder of modern nursing and also made significant contributions to the field of statistics\n • used statistical analysis to demonstrate the impact of sanitary conditions on public health, \n • Her visual data presentation helped persuade policymakers and improve medical practices."
                            }
                            .font(.callout)
                            .buttonStyle(.borderedProminent)
                            .tint(Color("coral"))
                            .foregroundColor(Color("bluey"))
                            .multilineTextAlignment(.leading)
                            Spacer()
                        }
                        if !Florence.isEmpty {
                            HStack{
                                Image("Nightingale")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100.0, height: 140.0)
                                    .cornerRadius(15)
                                
                                Text(Florence) .multilineTextAlignment(.center)  .padding()
                              
                               
                                }
                            
                            }
                        HStack{
                        NavigationLink (destination: Quiz()){
                            Text("Personality Quiz")
                                .font(.title3)
                                .foregroundColor(Color("coral"))
                                .multilineTextAlignment(.center)
                        }
                            NavigationLink (destination: ResourcesPage()){
                                Text("Resources")
                                    .font(.title3)
                                    .foregroundColor(Color("coral"))
                                    .multilineTextAlignment(.center)
                            }
                            NavigationLink (destination: ContentView()){
                                Text("Home")
                                    .font(.title3)
                                    .foregroundColor(Color("coral"))
                                    .multilineTextAlignment(.center)
                            }
                        }
                    }
                    .padding()
                    
                }
            }
        }
        .navigationTitle("STEM Careers")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(true)
    }
}


#Preview {
    FunFacts()
}
