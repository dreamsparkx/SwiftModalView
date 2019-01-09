//
//  ViewController.swift
//  SwiftModalView
//
//  Created by dreamsparkx on 01/10/2019.
//  Copyright (c) 2019 dreamsparkx. All rights reserved.
//

import UIKit
import SwiftModalView
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let modalView = SwiftModelView(frame: self.view.bounds)
        modalView.set(image: UIImage(named: "bookmark")!)
        modalView.set(headline: "Saved")
        modalView.set(subheading: "You can find this story in the saved tab.")
        view.addSubview(modalView)
    }

}
extension UIImage {
    var noir: UIImage? {
        let context = CIContext(options: nil)
        guard let currentFilter = CIFilter(name: "CIPhotoEffectNoir") else { return nil }
        currentFilter.setValue(CIImage(image: self), forKey: kCIInputImageKey)
        if let output = currentFilter.outputImage,
            let cgImage = context.createCGImage(output, from: output.extent) {
            return UIImage(cgImage: cgImage, scale: scale, orientation: imageOrientation)
        }
        return nil
    }
}

