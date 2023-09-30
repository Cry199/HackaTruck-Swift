import SwiftUI

struct CalculadoraJuros: View
{
        @State private var capital = ""
        @State private var temp = ""
        @State private var taxa = ""
        @State private var mens = ""
        @State private var result = "0.00"
        @State private var y = "Opção"
        @State private var x = 0;
        @State private var showingAlert = false
    var body: some View {
        ZStack {
            VStack {
                ScrollView() {
                    Image("CalculadoraP3")
                        .renderingMode(.original)
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200.0, height: 200.0)
                    VStack(){
                        Text("Calculadora de Juros")
                            .font(.largeTitle)
                            .bold()
                            .padding()
                    }
                    VStack{
                        VStack {
                            TextField("Capital Inicial(R$)", text: $capital)
                            .padding()
                            .keyboardType(.decimalPad)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 8).padding()
                                    
                            TextField("Taxa(%)", text: $taxa)
                            .padding()
                            .keyboardType(.decimalPad)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 8)
                            .padding()
                            
                            HStack() {
                                TextField("Data(Anos/Meses)", text: $temp)
                                .padding()
                                .keyboardType(.decimalPad)
                                .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                .cornerRadius(5)
                                .shadow(color: .gray, radius: 8)
                                .padding()
                                
                                Menu("\(y)") {
                                    Button("Mêses", action: {
                                        y = "Meses"
                                        x = 1
                                        showingAlert = false
                                    })
                                    Button("Anos", action: {
                                        y = "Anos"
                                        x = 2
                                        showingAlert = false
                                    })
                                        .padding()
                                }
                                .padding(.trailing, 20.0)
                            Spacer()
                            }
                        Spacer()
                            .padding(.trailing, 20.0)
                            TextField("Valor Mensal(R$)", text: $mens)
                            .padding()
                            .keyboardType(.decimalPad)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 8)
                            .padding()
                        Spacer()
                        }
                    Spacer()
                        VStack {
                            HStack {
                                Button(action: SelicAnualMes) {
                                    Text("Calcular!")
                                    .font(.title)
                                    .padding()
                                    .frame(width: 160, height: 55, alignment: .center)
                                    .background(Color("ColorApp"))
                                    .foregroundColor(.white)
                                    .clipShape(Capsule())
                                }
                                .alert(isPresented: $showingAlert) {
                                    Alert(title: Text("Tipo de Juros"), message: Text("Selecione o tipo de juros!"), dismissButton: .default(Text("OK!")))
                                }
                            }
                        Spacer()
                            HStack{
                                Text("Resultado:")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .bold()
                            }
                            Text("R$ \(result)")
                            .frame(maxWidth: .infinity, alignment: .center)
                            .font(.title).bold()
                            .background(Color.white)
                            .foregroundColor(.green)
                            .frame(alignment: .center)
                        Spacer()
                        }
                    }
                }
            }
        }
    }
    func SelicAnualMes() {
        if(x == 0) {
            showingAlert = true
        }
        if(x == 1) {
            SelicMes()
        }
        if(x == 2) {
            SelicAnual()
        }
    }
    func SelicAnual() {
        let p = Double(capital) ?? 0.00
        let i = (Double(taxa) ?? 0.00) / 100
        let t = (Double(temp) ?? 0.00)
        let m = Double(mens) ?? 0.00
            
        let vfp1 = p * pow((1 + i), t)
        let vfp2 = m * ((pow((1 + i), t) - 1) / (i / 12))
        let vf = vfp1 + vfp2
            
        result = String(format: "%.2f", vf)
        }
    func SelicMes() {
        let p = Double(capital) ?? 0.00
        let i = (Double(taxa) ?? 0.00) / 100
        let t = (Double(temp) ?? 0.00) / 12
        let m = Double(mens) ?? 0.00
            
        let vfp1 = p * pow((1 + i), t)
        let vfp2 = m * ((pow((1 + i), t) - 1) / (i / 12))
        let vf = vfp1 + vfp2
            
        result = String(format: "%.2f", vf)
        }
    }
struct CalculadoraJuros_Previews: PreviewProvider {
    static var previews: some View {
        CalculadoraJuros()
    }
}



