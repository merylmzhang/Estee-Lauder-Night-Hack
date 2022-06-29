//
//  ViewController.swift
//  Estee Lauder Night Hack
//
//  Created by Scholar on 6/23/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var image2:UIImageView!
    @IBOutlet weak var image3: UIImageView!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var introduction: UIButton!
    
    @IBOutlet weak var esteelauder: UILabel!
    @IBOutlet weak var doublewear: UILabel!
    
    @IBOutlet weak var hand1: UIImageView!
    @IBOutlet weak var hand2: UIImageView!
    @IBOutlet weak var hand3: UIImageView!
    @IBOutlet weak var hand4: UIImageView!
    @IBOutlet weak var hand5: UIImageView!
    
    @IBOutlet weak var loadapp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let radius = image.frame.width / 2
              image.layer.cornerRadius = radius
              image.layer.masksToBounds = true
        let radius2 = image2.frame.width / 2
              image2.layer.cornerRadius = radius2
              image2.layer.masksToBounds = true
        let radius3 = image3.frame.width / 2
              image3.layer.cornerRadius = radius3
              image3.layer.masksToBounds = true
    
        self.esteelauder.alpha = 0.0
        self.doublewear.alpha = 0.0
        self.image.alpha = 0.0
        self.image2.alpha = 0.0
        self.image3.alpha = 0.0
        self.button1.alpha = 0.0
        self.button2.alpha = 0.0
        self.button3.alpha = 0.0
        introduction.isHidden = true
        loadapp.isHidden = false
    }
    
    private func createLayer(){
        let layer = CAEmitterLayer()
        layer.emitterPosition = CGPoint(x: view.center.x, y:-100)
        
        let colors: [UIColor] = [
            .systemPink,
            .systemBrown
        ]
        
        let cells: [CAEmitterCell] = colors.compactMap{
            let cell = CAEmitterCell()
            cell.scale = 0.002
            cell.emissionRange = .pi * 2
            cell.lifetime = 10
            cell.birthRate = 100
            cell.velocity = 150
            cell.color = $0.cgColor
            cell.contents = UIImage(named : "whitecircle")!.cgImage
            return cell
        }
        
        layer.emitterCells = cells
        view.layer.addSublayer(layer)
        
    }

    
    @IBAction func introducing(_ sender: Any) {
        if self.esteelauder.alpha == 0.0{
            UIView.animate(withDuration : 1.5, delay : 0.2, options : .curveEaseOut, animations : {
                self.esteelauder.alpha = 1.0
            })
        }
        
        if self.doublewear.alpha == 0.0{
            UIView.animate(withDuration : 1.5, delay : 0.2, options : .curveEaseOut, animations : {
                self.doublewear.alpha = 1.0
            })
        }
        
        if self.image.alpha == 0.0{
            UIView.animate(withDuration : 1.5, delay : 0.2, options : .curveEaseOut, animations : {
                self.image.alpha = 1.0
            })
        }
        
        if self.image2.alpha == 0.0{
            UIView.animate(withDuration : 1.5, delay : 0.2, options : .curveEaseOut, animations : {
                self.image2.alpha = 1.0
            })
        }
        
        if self.image3.alpha == 0.0{
            UIView.animate(withDuration : 1.5, delay : 0.2, options : .curveEaseOut, animations : {
                self.image3.alpha = 1.0
            })
        }
        
        if self.button1.alpha == 0.0{
            UIView.animate(withDuration : 1.5, delay : 0.2, options : .curveEaseOut, animations : {
                self.button1.alpha = 1.0
            })
        }
        
        if self.button2.alpha == 0.0{
            UIView.animate(withDuration : 1.5, delay : 0.2, options : .curveEaseOut, animations : {
                self.button2.alpha = 1.0
            })
        }
        
        if self.button3.alpha == 0.0{
            UIView.animate(withDuration : 1.5, delay : 0.2, options : .curveEaseOut, animations : {
                self.button3.alpha = 1.0
            })
        }
        
        /*if self.introduction.alpha != 0.0{
            UIView.animate(withDuration : 1.5, delay : 0.2, options : .curveEaseOut, animations : {
                self.introduction.alpha = 0.0
            })
        }*/

        introduction.isHidden = true
        createLayer()
        
    }
    
    @IBAction func load(_ sender: Any) {
        UIView.animate(withDuration : 1, animations : {
            self.hand1.frame.origin.y -= 1000
        }, completion : nil)
        
        UIView.animate(withDuration : 1, animations : {
            self.hand2.frame.origin.x += 1000
        }, completion : nil)
        
        UIView.animate(withDuration : 1, animations : {
            self.hand3.frame.origin.y += 1000
        }, completion : nil)
        
        UIView.animate(withDuration : 1, animations : {
            self.hand4.frame.origin.x -= 1000
        }, completion : nil)
        
        UIView.animate(withDuration : 1, animations : {
            self.hand5.frame.origin.x += 1000
        }, completion : nil)
        
        loadapp.isHidden = true
        introduction.isHidden = false
    }
    
}
