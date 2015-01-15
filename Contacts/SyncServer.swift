//
//  SyncServer.swift
//  Contacts
//
//  Copyright (c) 2015 Example. All rights reserved.
//

protocol SyncServerDelegate: class {
    
    func infoSaved()
}

class SyncServer {
    
    weak var delegate: SyncServerDelegate?
    
    init(){}
    
    func sendInfo(){
        //...
        //envia informacoes para o servidor
        //após informações serem salvas "avisa" qualquer classe delegate
        delegate?.infoSaved()
    }
}