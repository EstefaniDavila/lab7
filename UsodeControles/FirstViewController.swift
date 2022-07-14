import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var txtRpta: UITextField!
    @IBOutlet weak var txtNumero2: UITextField!
    @IBOutlet weak var txtNumero1: UITextField!
    
    var nro1:Double = 0
    var nro2:Double = 0
    var rpta:Double = 0
    @IBAction func btnSumar(_ sender: Any) {
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil{
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            rpta = nro1 + nro2
            txtRpta.text = String(rpta)
        }else{
            mostrarAlerta(titulo: "error", mensaje: "Debe introduccir solo valores numericos")
            print("error al realizar operacion")
        }
    }
    
    @IBAction func btnRestar(_ sender: Any) {
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil{
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            rpta = nro1 - nro2
            txtRpta.text = String(rpta)
        }else{
            mostrarAlerta(titulo: "error", mensaje: "Debe introduccir solo valores numericos")
            print("error al realizar operacion")
        }
    }
    
    @IBAction func btnDivision(_ sender: Any) {
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil{
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            rpta = nro1 / nro2
            txtRpta.text = String(rpta)
        }else{
            mostrarAlerta(titulo: "error", mensaje: "Debe introduccir solo valores numericos")
            print("error al realizar operacion")
        }
    }
    
    @IBAction func btnMulti(_ sender: Any) {
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil{
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            rpta = nro1 * nro2
            txtRpta.text = String(rpta)
        }else{
            mostrarAlerta(titulo: "error", mensaje: "Debe introduccir solo valores numericos")
            print("error al realizar operacion")
        }
    }
    
    @IBAction func btnLimpiar(_ sender: Any) {
        self.Limpiar()
    }
    
    @objc func ocultarTeclado(){
        view.endEditing(true)
    }
    
    func Limpiar(){
        self.txtNumero1.text = "0"
        self.txtNumero2.text = "0"
        self.txtRpta.text = "0"
        
    }
    func mostrarAlerta(titulo: String,mensaje: String){
        let alerta =  UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        let limpiar = UIAlertAction(title: "Limpiar", style: .default,handler: { (action) in
            self.Limpiar()})
        let cancelar = UIAlertAction(title: "Cancelar", style: .cancel, handler:  { (action) in
            //asdasd
        })
        alerta.addAction(limpiar)
        alerta.addAction(cancelar)
        present(alerta, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ocultarTeclado))
        view.addGestureRecognizer(tap)
    }


}


