//
//  SymbolRollerViewController.swift
//  SymbolRoller
//
//  Created by 한빈 on 2022/07/04.
//

import UIKit

class SymbolRollerViewController:
    UIViewController
{
    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    @IBOutlet var ImageView: UIImageView!
    @IBOutlet var TextView: UITextField!
    @IBOutlet var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TO-DO:
        // 심볼에서, 하나를 임의로 추출해서,
        // 이미지와 텍스트 설정
        // DRY
        // Do not repeat yourself
        
        reload()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func reload()
    {
        let symbol = symbols.randomElement()!

        ImageView.image = UIImage(systemName: symbol)
        TextView.text = symbol
    }
    
    @IBAction func btnTapped(_ sender: Any) {
        reload()
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
