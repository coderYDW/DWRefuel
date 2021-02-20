//
//  MineViewController.swift
//  Refuel
//
//  Created by Apple on 2021/2/20.
//

import UIKit
import SwiftyJSON

class MineViewController: UIViewController {

    @IBOutlet weak var testImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let jsonString = """
        {
          "Array": [
            1,
            2,
            3
          ],
          "CustArray": [
            {
              "a": "b"
            },
            {
              "a": "b"
            }
          ],
          "Boolean": true,
          "Null": null,
          "Number": 123,
          "Object": {
            "a": "b",
            "c": "d"
          },
          "String": "Hello World"
        }
    """
        
        if let dataFromString = jsonString.data(using: .utf8, allowLossyConversion: false) {
            let json = JSON(dataFromString)
            print(json["CustArray"])
        }
        
        testImage.image = R.image.snip20170804_10()
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
