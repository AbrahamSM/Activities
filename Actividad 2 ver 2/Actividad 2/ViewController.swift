
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clima: UIImageView!
    @IBOutlet weak var controladorSlider: UISlider!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print(controladorSlider.value)
    }

    @IBAction func Controlador(_ sender: UISlider) {
        
        var porcentaje: Float
        
        print(controladorSlider.value)
        label1.text = String(Int(controladorSlider.value * 100)) + "%"
        
        porcentaje = controladorSlider.value * 100
        label2.text = String(Int(porcentaje))
        
        switch Int(porcentaje) {
        case 0...13:
            label2.text = "Helada, abrigate bien"
            clima.image = UIImage(named: "Helada")
        case 14...25:
            label2.text = "Frío, lleva sueter"
            clima.image = UIImage(named: "Frio")
        case 26...50:
            label2.text = "Lluvia, lleva paraguas"
            clima.image = UIImage(named: "Lluvia")
        case 51...75:
            label2.text = "Soleado, ponte bloqueador"
            clima.image = UIImage(named: "Soleado")
        default:
            label2.text = "Mejor compra una caguama"
            clima.image = UIImage(named: "Desierto")
        }
        
        
        
    }
    


}

