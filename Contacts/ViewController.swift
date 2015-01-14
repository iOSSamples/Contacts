//
//  ViewController.swift
//  Contacts
//
//  Copyright (c) 2015 Example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var genderSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var favoriteSwitch: UISwitch!
    
    @IBOutlet weak var contactTypeLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!

    
    /**********************
    Ciclo de vida da View
    **********************/

    override func viewDidLoad() {

        super.viewDidLoad()

        var nameLabel = UILabel()
        nameLabel.text = "Nome"
        nameLabel.frame = CGRectMake(120, 30, 200, 30)
        view.addSubview(nameLabel)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) // Called when the view is about to made visible
    {
        super.viewWillAppear(animated)
        println("View ficará visível")
    }
    
    override func viewDidAppear(animated: Bool) // Called when the view has been fully transitioned onto the screen.
    {
        super.viewDidAppear(animated)
        println("View carregada na tela")
    }
    
    override func viewWillDisappear(animated: Bool) // Called when the view is dismissed, covered or otherwise hidden.
    {
        super.viewWillDisappear(animated)
        println("View ficará fora da tela ou escondida")
    }
    
    override func viewDidDisappear(animated: Bool) // Called after the view was dismissed, covered or otherwise hidden.
    {
        super.viewDidDisappear(animated)
        println("View fora da tela ou escondida")
    }
    
    /**********************
        Actions
    **********************/

    
    @IBAction func stepperChanged(sender: UIStepper) {
        //ageLabel.text = "\(sender.value)"
        ageLabel.text = String(format: "%.0f", sender.value)
        
    }
    
    @IBAction func choseContactType(sender: AnyObject) {
        
        var actionSheet = UIAlertController (title: "Contato", message:"Escolha uma forma de contato", preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        actionSheet.addAction(UIAlertAction(
            title: "Cancelar",
            style: .Cancel,
            handler: nil))
        
        actionSheet.addAction(UIAlertAction(
            title: "Email",
            style: .Default,
            handler: { action in
                       self.contactTypeLabel.text = action.title }
            ))
        
        actionSheet.addAction(UIAlertAction(
            title: "Telefone",
            style: .Default,
            handler: { action in
                       self.contactTypeLabel.text = action.title}
            ))
        
        presentViewController(actionSheet, animated: true, completion: nil)
    }
    
    @IBAction func saveContact(sender: AnyObject) {
        
        var alert = UIAlertController (
            title: "Confirmação",
            message: "Deseja realmente gravar o contato?",
            preferredStyle: .Alert)
        
        alert.addAction(UIAlertAction(
            title: "Não",
            style: .Cancel,
            handler: { _ in
                        println("Alert - Não")}
            ))
        
        alert.addAction(UIAlertAction(title: "Sim",
            style: .Default,
            handler: { _ in
                        println("Alert - Sim")}
            ))
        
        presentViewController(alert, animated: true, completion: nil)
    }
    
    
   }
