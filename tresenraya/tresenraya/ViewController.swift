//
//  ViewController.swift
//  tresenraya
//
//  Created by AlexCandi on 01/02/2019.
//  Copyright © 2019 AlexCandi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var jugador = 1
    var estado = [0,0,0,0,0,0,0,0,0]
    var botonesRojos = [0,0,0,0,0,0,0,0,0]
    var contador = 0
    var sitio = 0
    var encerrado = false
    var finJuego = false
    let imagenCC = UIImage(named: "cuadrado.png")
    let imagenCA = UIImage(named: "cazul.png")
    let imagenXA = UIImage(named: "xazul.png")
    let imagenBl = UIImage(named: "blanco.png")
    
    
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    @IBOutlet weak var labelError: UILabel!
    @IBOutlet weak var labelGanador: UILabel!
    @IBOutlet weak var buttonReset: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func jugar(_ sender: AnyObject) {
        if (contador == 6 && finJuego == false) {
           
            if ( jugador == 1 ) {
                switch sender.tag-1 {
                case 0:
                    if (estado[0] == 0 && encerrado == false){
                        sitio = sender.tag-1
                        if (estado[1] == 1){
                            botonesRojos[1] = jugador
                        }
                        if (estado[3] == 1){
                            botonesRojos[3] = jugador
                        }
                        if (estado[4] == 1){
                            botonesRojos[4] = jugador
                            
                        }
                        encerrado = true
                        recorreBotonRojo()
                        if ( encerrado == false ) {
                            b1.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                        } else {
                            b1.setImage(imagenCC?.withRenderingMode(.alwaysOriginal), for: .normal)
                        }
                        
                    } else {
                        if (botonesRojos[0] == 1){
                            botonRojoCero()
                            b1.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                            if ( sitio == 1 ) {
                                b2.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[1]=jugador
                                estado[0] = 0
                                encerrado = false
                            }
                            if ( sitio == 3 ){
                                b4.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[3]=jugador
                                estado[0] = 0
                                encerrado = false
                            }
                            if ( sitio == 4 ){
                                b5.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[4]=jugador
                                estado[0] = 0
                                encerrado = false
                            }
                            ganador()
                            jugador = 2
                        }
                    }
                     break
                case 1:
                    if (estado[1] == 0 && encerrado == false){
                        sitio = sender.tag-1
                        if (estado[0]==1){
                            botonesRojos[0] = jugador
                        }
                        if (estado[2]==1){
                            botonesRojos[2] = jugador
                        }
                        if (estado[4]==1){
                            botonesRojos[4] = jugador
                        }
                        encerrado = true
                        recorreBotonRojo()
                        if ( encerrado == false ) {
                            b2.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                        } else {
                            b2.setImage(imagenCC?.withRenderingMode(.alwaysOriginal), for: .normal)
                        }
                    } else {
                        if (botonesRojos[1] == 1){
                            botonRojoCero()
                            b2.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                            if ( sitio == 0 ) {
                                b1.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[0]=jugador
                                estado[1] = 0
                                encerrado = false
                            }
                            if ( sitio == 2 ){
                                b3.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[2]=jugador
                                estado[1] = 0
                                encerrado = false
                            }
                            if ( sitio == 4 ){
                                b5.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[4]=jugador
                                estado[1] = 0
                                encerrado = false
                            }
                            ganador()
                            jugador = 2
                        }
                    }
                     break
                case 2:
                    if (estado[2] == 0 && encerrado == false){
                        sitio = sender.tag-1
                        if (estado[1]==1){
                            botonesRojos[1] = jugador
                        }
                        if (estado[4]==1){
                            botonesRojos[4] = jugador
                        }
                        if (estado[5]==1){
                            botonesRojos[5] = jugador
                        }
                        encerrado = true
                        recorreBotonRojo()
                        if ( encerrado == false ) {
                            b3.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                        } else {
                            b3.setImage(imagenCC?.withRenderingMode(.alwaysOriginal), for: .normal)
                        }
                    } else {
                        if (botonesRojos[2] == 1){
                            botonRojoCero()
                            b3.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                            if ( sitio == 1 ) {
                                b2.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[1]=jugador
                                estado[2] = 0
                                encerrado = false
                            }
                            if ( sitio == 5 ){
                                b6.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[5]=jugador
                                estado[2] = 0
                                encerrado = false
                            }
                            if ( sitio == 4 ){
                                b5.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[4]=jugador
                                estado[2] = 0
                                encerrado = false
                            }
                            ganador()
                            jugador = 2
                        }
                    }
                    break
                case 3:
                    if (estado[3] == 0 && encerrado == false){
                        sitio = sender.tag-1
                        if (estado[0]==1){
                            botonesRojos[0] = jugador
                        }
                        if (estado[6]==1){
                            botonesRojos[6] = jugador
                        }
                        if (estado[4]==1){
                            botonesRojos[4] = jugador
                        }
                        encerrado = true
                        recorreBotonRojo()
                        if ( encerrado == false ) {
                            b4.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                        } else {
                            b4.setImage(imagenCC?.withRenderingMode(.alwaysOriginal), for: .normal)
                        }
                    } else {
                        if (botonesRojos[3] == 1){
                            botonRojoCero()
                            b4.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                            if ( sitio == 0 ) {
                                b1.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[0]=jugador
                                estado[3] = 0
                                encerrado = false
                            }
                            if ( sitio == 6 ){
                                b7.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[6]=jugador
                                estado[3] = 0
                                encerrado = false
                            }
                            if ( sitio == 4 ){
                                b5.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[4]=jugador
                                estado[3] = 0
                                encerrado = false
                            }
                            ganador()
                            jugador = 2
                        }
                    }
                    break
                case 4:
                    if (estado[4] == 0  && encerrado == false){
                        sitio = sender.tag-1
                        if (estado[0]==1){
                            botonesRojos[0] = jugador
                        }
                        if (estado[1]==1){
                            botonesRojos[1] = jugador
                        }
                        if (estado[2]==1){
                            botonesRojos[2] = jugador
                        }
                        if (estado[3]==1){
                            botonesRojos[3] = jugador
                        }
                        if (estado[5]==1){
                            botonesRojos[5] = jugador
                        }
                        if (estado[6]==1){
                            botonesRojos[6] = jugador
                        }
                        if (estado[7]==1){
                            botonesRojos[7] = jugador
                        }
                        if (estado[8]==1){
                            botonesRojos[8] = jugador
                        }
                        encerrado = true
                        recorreBotonRojo()
                        if ( encerrado == false ) {
                            b5.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                        } else {
                            b5.setImage(imagenCC?.withRenderingMode(.alwaysOriginal), for: .normal)
                        }
                    } else {
                        if (botonesRojos[4] == 1){
                            botonRojoCero()
                            b5.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                            if ( sitio == 0 ) {
                                b1.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[0]=jugador
                                estado[4] = 0
                                encerrado = false
                            }
                            if ( sitio == 1 ){
                                b2.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[1]=jugador
                                estado[4] = 0
                                encerrado = false
                            }
                            if ( sitio == 2 ){
                                b3.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[2]=jugador
                                estado[4] = 0
                                encerrado = false
                            }
                            if ( sitio == 3 ){
                                b4.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[3]=jugador
                                estado[4] = 0
                                encerrado = false
                            }
                            if ( sitio == 5 ){
                                b6.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[5]=jugador
                                estado[4] = 0
                                encerrado = false
                            }
                            if ( sitio == 6 ){
                                b7.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[6]=jugador
                                estado[4] = 0
                                encerrado = false
                            }
                            if ( sitio == 7 ){
                                b8.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[7]=jugador
                                estado[4] = 0
                                encerrado = false
                            }
                            if ( sitio == 8 ){
                                b9.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[8]=jugador
                                estado[4] = 0
                                encerrado = false
                            }
                            ganador()
                            jugador = 2
                        }
                    }
                    break
                case 5:
                    if (estado[5] == 0 && encerrado == false){
                        sitio = sender.tag-1
                        if (estado[2]==1){
                            botonesRojos[2] = jugador
                        }
                        if (estado[4]==1){
                            botonesRojos[4] = jugador
                        }
                        if (estado[8]==1){
                            botonesRojos[8] = jugador
                        }
                        encerrado = true
                        recorreBotonRojo()
                        if ( encerrado == false ) {
                            b6.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                        } else {
                            b6.setImage(imagenCC?.withRenderingMode(.alwaysOriginal), for: .normal)
                        }
                    } else {
                        if (botonesRojos[5] == 1){
                            botonRojoCero()
                            b6.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                            if ( sitio == 2 ) {
                                b3.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[2]=jugador
                                estado[5] = 0
                                encerrado = false
                            }
                            if ( sitio == 8 ){
                                b9.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[8]=jugador
                                estado[5] = 0
                                encerrado = false
                            }
                            if ( sitio == 4 ){
                                b5.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[4]=jugador
                                estado[5] = 0
                                encerrado = false
                            }
                            ganador()
                            jugador = 2
                        }
                    }
                    break
                case 6:
                    if (estado[6] == 0 && encerrado == false){
                        sitio = sender.tag-1
                        if (estado[3]==1){
                            botonesRojos[3] = jugador
                        }
                        if (estado[4]==1){
                            botonesRojos[4] = jugador
                        }
                        if (estado[7]==1){
                            botonesRojos[7] = jugador
                        }
                        encerrado = true
                        recorreBotonRojo()
                        if ( encerrado == false ) {
                            b7.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                        } else {
                            b7.setImage(imagenCC?.withRenderingMode(.alwaysOriginal), for: .normal)
                        }
                    } else {
                        if (botonesRojos[6] == 1){
                            botonRojoCero()
                            b7.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                            if ( sitio == 3 ) {
                                b4.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[3]=jugador
                                estado[6] = 0
                                encerrado = false
                            }
                            if ( sitio == 7 ){
                                b8.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[7]=jugador
                                estado[6] = 0
                                encerrado = false
                            }
                            if ( sitio == 4 ){
                                b5.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[4]=jugador
                                estado[6] = 0
                                encerrado = false
                            }
                            ganador()
                            jugador = 2
                        }
                    }
                    break
                case 7:
                    if (estado[7] == 0 && encerrado == false){
                        sitio = sender.tag-1
                        if (estado[6]==1){
                            botonesRojos[6] = jugador
                        }
                        if (estado[4]==1){
                            botonesRojos[4] = jugador
                        }
                        if (estado[8]==1){
                            botonesRojos[8] = jugador
                        }
                        encerrado = true
                        recorreBotonRojo()
                        if ( encerrado == false ) {
                            b8.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                        } else {
                            b8.setImage(imagenCC?.withRenderingMode(.alwaysOriginal), for: .normal)
                        }
                    } else {
                        if (botonesRojos[7] == 1){
                            botonRojoCero()
                            b8.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                            if ( sitio == 6 ) {
                                b7.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[6]=jugador
                                estado[7] = 0
                                encerrado = false
                            }
                            if ( sitio == 8 ){
                                b9.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[8]=jugador
                                estado[7] = 0
                                encerrado = false
                            }
                            if ( sitio == 4 ){
                                b5.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[4]=jugador
                                estado[7] = 0
                                encerrado = false
                            }
                            ganador()
                            jugador = 2
                        }
                    }
                    break
                case 8:
                    if (estado[8] == 0 && encerrado == false){
                        sitio = sender.tag-1
                        if (estado[4]==1){
                            botonesRojos[4] = jugador
                        }
                        if (estado[5]==1){
                            botonesRojos[5] = jugador
                        }
                        if (estado[7]==1){
                            botonesRojos[7] = jugador
                        }
                        encerrado = true
                        recorreBotonRojo()
                        if ( encerrado == false ) {
                            b9.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                        } else {
                            b9.setImage(imagenCC?.withRenderingMode(.alwaysOriginal), for: .normal)
                        }
                    } else {
                        if (botonesRojos[8] == 1){
                            botonRojoCero()
                            b9.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                            if ( sitio == 5 ) {
                                b6.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[5]=jugador
                                estado[8] = 0
                                encerrado = false
                            }
                            if ( sitio == 7 ){
                                b8.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[7]=jugador
                                estado[8] = 0
                                encerrado = false
                            }
                            if ( sitio == 4 ){
                                b5.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[4]=jugador
                                estado[8] = 0
                                encerrado = false
                            }
                            ganador()
                            jugador = 2
                        }
                    }
                    break
                default:
                    print("")
                }
            }
            else {
                switch sender.tag-1 {
                case 0:
                    if (estado[0] == 0 && encerrado == false){
                        sitio = sender.tag-1
                        if (estado[1] == 2){
                            botonesRojos[1] = jugador
                        }
                        if (estado[3] == 2){
                            botonesRojos[3] = jugador
                        }
                        if (estado[4] == 2){
                            botonesRojos[4] = jugador
                        }
                        encerrado = true
                        recorreBotonRojo()
                        if ( encerrado == false ) {
                            b1.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                        } else {
                            b1.setImage(imagenCC?.withRenderingMode(.alwaysOriginal), for: .normal)
                        }
                    } else {
                        if (botonesRojos[0] == 2){
                            botonRojoCero()
                            b1.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                            if ( sitio == 1 ) {
                                b2.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[1] = jugador
                                estado[0] = 0
                                encerrado = false
                            }
                            if ( sitio == 3 ){
                                b4.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[3] = jugador
                                estado[0] = 0
                                encerrado = false
                            }
                            if ( sitio == 4 ){
                                b5.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[4] = jugador
                                estado[0] = 0
                                encerrado = false
                            }
                            ganador()
                            jugador = 1
                        }
                    }
                    break
                case 1:
                    if (estado[1] == 0 && encerrado == false){
                        sitio = sender.tag-1
                        if (estado[0] == 2){
                            botonesRojos[0] = jugador
                        }
                        if (estado[2] == 2){
                            botonesRojos[2] = jugador
                        }
                        if (estado[4] == 2){
                            botonesRojos[4] = jugador
                        }
                        encerrado = true
                        recorreBotonRojo()
                        if ( encerrado == false ) {
                            b2.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                        } else {
                            b2.setImage(imagenCC?.withRenderingMode(.alwaysOriginal), for: .normal)
                        }
                    } else {
                        if (botonesRojos[1] == 2){
                            botonRojoCero()
                            b2.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                            if ( sitio == 0 ) {
                                b1.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[0]=jugador
                                estado[1] = 0
                                encerrado = false
                            }
                            if ( sitio == 2 ){
                                b3.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[2]=jugador
                                estado[1] = 0
                                encerrado = false
                            }
                            if ( sitio == 4 ){
                                b5.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[4]=jugador
                                estado[1] = 0
                                encerrado = false
                            }
                            ganador()
                            jugador = 1
                        }
                    }
                    break
                case 2:
                    if (estado[2] == 0 && encerrado == false){
                        sitio = sender.tag-1
                        if (estado[1] == 2){
                            botonesRojos[1] = jugador
                        }
                        if (estado[4] == 2){
                            botonesRojos[4] = jugador
                        }
                        if (estado[5] == 2){
                            botonesRojos[5] = jugador
                        }
                        encerrado = true
                        recorreBotonRojo()
                        if ( encerrado == false ) {
                            b3.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                        } else {
                            b3.setImage(imagenCC?.withRenderingMode(.alwaysOriginal), for: .normal)
                        }
                    } else {
                        if (botonesRojos[2] == 2){
                            botonRojoCero()
                            b3.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                            if ( sitio == 1 ) {
                                b2.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[1]=jugador
                                estado[2] = 0
                                encerrado = false
                            }
                            if ( sitio == 5 ){
                                b6.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[5]=jugador
                                estado[2] = 0
                                encerrado = false
                            }
                            if ( sitio == 4 ){
                                b5.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[4]=jugador
                                estado[2] = 0
                                encerrado = false
                            }
                            ganador()
                            jugador = 1
                        }
                    }
                    break
                case 3:
                    if (estado[3] == 0 && encerrado == false){
                        sitio = sender.tag-1
                        if (estado[0] == 2){
                            botonesRojos[0] = jugador
                        }
                        if (estado[6] == 2){
                            botonesRojos[6] = jugador
                        }
                        if (estado[4] == 2){
                            botonesRojos[4] = jugador
                        }
                        encerrado = true
                        recorreBotonRojo()
                        if ( encerrado == false ) {
                            b4.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                        } else {
                            b4.setImage(imagenCC?.withRenderingMode(.alwaysOriginal), for: .normal)
                        }
                    } else {
                        if (botonesRojos[3] == 2){
                            botonRojoCero()
                            b4.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                            if ( sitio == 0 ) {
                                b1.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[0]=jugador
                                estado[3] = 0
                                encerrado = false
                            }
                            if ( sitio == 6 ){
                                b7.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[6]=jugador
                                estado[3] = 0
                                encerrado = false
                            }
                            if ( sitio == 4 ){
                                b5.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[4]=jugador
                                estado[3] = 0
                                encerrado = false
                            }
                            ganador()
                            jugador = 1
                        }
                    }
                    break
                case 4:
                    if (estado[4] == 0 && encerrado == false){
                        sitio = sender.tag-1
                        if (estado[0] == 2){
                            botonesRojos[0] = jugador
                        }
                        if (estado[1] == 2){
                            botonesRojos[1] = jugador
                        }
                        if (estado[2] == 2){
                            botonesRojos[2] = jugador
                        }
                        if (estado[3] == 2){
                            botonesRojos[3] = jugador
                        }
                        if (estado[5] == 2){
                            botonesRojos[5] = jugador
                        }
                        if (estado[6] == 2){
                            botonesRojos[6] = jugador
                        }
                        if (estado[7] == 2){
                            botonesRojos[7] = jugador
                        }
                        if (estado[8] == 2){
                            botonesRojos[8] = jugador
                        }
                        encerrado = true
                        recorreBotonRojo()
                        if ( encerrado == false ) {
                            b5.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                        } else {
                            b5.setImage(imagenCC?.withRenderingMode(.alwaysOriginal), for: .normal)
                        }
                    } else {
                        if (botonesRojos[4] == 2){
                            botonRojoCero()
                            b5.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                            if ( sitio == 0 ) {
                                b1.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[0]=jugador
                                estado[4] = 0
                                encerrado = false
                            }
                            if ( sitio == 1 ){
                                b2.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[1]=jugador
                                estado[4] = 0
                                encerrado = false
                            }
                            if ( sitio == 2 ){
                                b3.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[2]=jugador
                                estado[4] = 0
                                encerrado = false
                            }
                            if ( sitio == 3 ){
                                b4.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[3]=jugador
                                estado[4] = 0
                                encerrado = false
                            }
                            if ( sitio == 5 ){
                                b6.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[5]=jugador
                                estado[4] = 0
                                encerrado = false
                            }
                            if ( sitio == 6 ){
                                b7.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[6]=jugador
                                estado[4] = 0
                                encerrado = false
                            }
                            if ( sitio == 7 ){
                                b8.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[7]=jugador
                                estado[4] = 0
                                encerrado = false
                            }
                            if ( sitio == 8 ){
                                b9.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[8]=jugador
                                estado[4] = 0
                                encerrado = false
                            }
                            ganador()
                            jugador = 1
                        }
                    }
                    break
                case 5:
                    if (estado[5] == 0 && encerrado == false){
                        sitio = sender.tag-1
                        if (estado[2] == 2){
                            botonesRojos[2] = jugador
                        }
                        if (estado[4] == 2){
                            botonesRojos[4] = jugador
                        }
                        if (estado[8] == 2){
                            botonesRojos[8] = jugador
                        }
                        encerrado = true
                        recorreBotonRojo()
                        if ( encerrado == false ) {
                            b6.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                        } else {
                            b6.setImage(imagenCC?.withRenderingMode(.alwaysOriginal), for: .normal)
                        }
                    } else {
                        if (botonesRojos[5] == 2){
                            botonRojoCero()
                            b6.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                            if ( sitio == 2 ) {
                                b3.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[2]=jugador
                                estado[5] = 0
                                encerrado = false
                            }
                            if ( sitio == 8 ){
                                b9.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[8]=jugador
                                estado[5] = 0
                                encerrado = false
                            }
                            if ( sitio == 4 ){
                                b5.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[4]=jugador
                                estado[5] = 0
                                encerrado = false
                            }
                            ganador()
                            jugador = 1
                        }
                    }
                    break
                case 6:
                    if (estado[6] == 0 && encerrado == false){
                        sitio = sender.tag-1
                        if (estado[3] == 2){
                            botonesRojos[3] = jugador
                        }
                        if (estado[4] == 2){
                            botonesRojos[4] = jugador
                        }
                        if (estado[7] == 2){
                            botonesRojos[7] = jugador
                        }
                        encerrado = true
                        recorreBotonRojo()
                        if ( encerrado == false ) {
                            b7.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                        } else {
                            b7.setImage(imagenCC?.withRenderingMode(.alwaysOriginal), for: .normal)
                        }
                    } else {
                        if (botonesRojos[6] == 2){
                            botonRojoCero()
                            b7.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                            if ( sitio == 3 ) {
                                b4.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[3]=jugador
                                estado[6] = 0
                                encerrado = false
                            }
                            if ( sitio == 7 ){
                                b8.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[7]=jugador
                                estado[6] = 0
                                encerrado = false
                            }
                            if ( sitio == 4 ){
                                b5.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[4]=jugador
                                estado[6] = 0
                                encerrado = false
                            }
                            ganador()
                            jugador = 1
                        }
                    }
                    break
                case 7:
                    if (estado[7] == 0 && encerrado == false){
                        sitio = sender.tag-1
                        if (estado[6] == 2){
                            botonesRojos[6] = jugador
                        }
                        if (estado[4] == 2){
                            botonesRojos[4] = jugador
                        }
                        if (estado[8] == 2){
                            botonesRojos[8] = jugador
                        }
                        encerrado = true
                        recorreBotonRojo()
                        if ( encerrado == false ) {
                            b8.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                        } else {
                            b8.setImage(imagenCC?.withRenderingMode(.alwaysOriginal), for: .normal)
                        }
                    } else {
                        if (botonesRojos[7] == 2){
                            botonRojoCero()
                            b8.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                            if ( sitio == 6 ) {
                                b7.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[6]=jugador
                                estado[7] = 0
                                encerrado = false
                            }
                            if ( sitio == 8 ){
                                b9.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[8]=jugador
                                estado[7] = 0
                                encerrado = false
                            }
                            if ( sitio == 4 ){
                                b5.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[4]=jugador
                                estado[7] = 0
                                encerrado = false
                            }
                            ganador()
                            jugador = 1
                        }
                    }
                    break
                case 8:
                    if (estado[8] == 0 && encerrado == false){
                        sitio = sender.tag-1
                        if (estado[4] == 2){
                            botonesRojos[4] = jugador
                        }
                        if (estado[5] == 2){
                            botonesRojos[5] = jugador
                        }
                        if (estado[7] == 2){
                            botonesRojos[7] = jugador
                        }
                        encerrado = true
                        recorreBotonRojo()
                        if ( encerrado == false ) {
                            b9.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                        } else {
                            b9.setImage(imagenCC?.withRenderingMode(.alwaysOriginal), for: .normal)
                        }
                    } else {
                        if (botonesRojos[8] == 2){
                            botonRojoCero()
                            b9.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
                            if ( sitio == 5 ) {
                                b6.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[5]=jugador
                                estado[8] = 0
                                encerrado = false
                            }
                            if ( sitio == 7 ){
                                b8.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[7]=jugador
                                estado[8] = 0
                                encerrado = false
                            }
                            if ( sitio == 4 ){
                                b5.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                                estado[4]=jugador
                                estado[8] = 0
                                encerrado = false
                            }
                            ganador()
                            jugador = 1
                        }
                    }
                    break
                default:
                    print("")
                }
            }
        }
        else if ( finJuego == false ) {
            if (estado[sender.tag-1] == 0){
                contador += 1
                estado[sender.tag-1] = jugador
                if (jugador == 1){
                    sender.setImage(imagenCA?.withRenderingMode(.alwaysOriginal), for: .normal)
                    jugador = 2
                }
                else {
                    sender.setImage(imagenXA?.withRenderingMode(.alwaysOriginal), for: .normal)
                    jugador = 1
                }
            }
            ganador()
        }
        reset()
    }
    
    func botonRojoCero() {
        for i in 0...8{
            botonesRojos[i] = 0
        }
    }
    
    func recorreBotonRojo() {
        var x = 0
        for i in botonesRojos{
            if ( i == 0 ) {
                x += 1
            }
        }
        if ( x == 9 ) {
            encerrado = false
            labelError.text = "No hay movimientos posibles"
        } else {
            labelError.text = ""
        }
    }
    
    func ganador() {
        if ( estado[0] == 1 && estado[1] == 1 && estado[2] == 1 ) {
            labelGanador.text = "Ha ganado O"
            finJuego = true
        }
        if ( estado[3] == 1 && estado[4] == 1 && estado[5] == 1 ) {
            labelGanador.text = "Ha ganado O"
            finJuego = true
        }
        if ( estado[6] == 1 && estado[7] == 1 && estado[8] == 1 ) {
            labelGanador.text = "Ha ganado O"
            finJuego = true
        }
        if ( estado[0] == 1 && estado[3] == 1 && estado[6] == 1 ) {
            labelGanador.text = "Ha ganado O"
            finJuego = true
        }
        if ( estado[1] == 1 && estado[4] == 1 && estado[7] == 1 ) {
            labelGanador.text = "Ha ganado O"
            finJuego = true
        }
        if ( estado[2] == 1 && estado[5] == 1 && estado[8] == 1 ) {
            labelGanador.text = "Ha ganado O"
            finJuego = true
        }
        if ( estado[0] == 1 && estado[4] == 1 && estado[8] == 1 ) {
            labelGanador.text = "Ha ganado O"
            finJuego = true
        }
        if ( estado[2] == 1 && estado[4] == 1 && estado[6] == 1 ) {
            labelGanador.text = "Ha ganado O"
            finJuego = true
        }
        if ( estado[0] == 2 && estado[1] == 2 && estado[2] == 2 ){
            labelGanador.text = "Ha ganado X"
            finJuego = true
        }
        if ( estado[3] == 2 && estado[4] == 2 && estado[5] == 2 ){
            labelGanador.text = "Ha ganado X"
            finJuego = true
        }
        if ( estado[6] == 2 && estado[7] == 2 && estado[8] == 2 ){
            labelGanador.text = "Ha ganado X"
            finJuego = true
        }
        if ( estado[0] == 2 && estado[3] == 2 && estado[6] == 2 ){
            labelGanador.text = "Ha ganado X"
            finJuego = true
        }
        if ( estado[1] == 2 && estado[4] == 2 && estado[7] == 2 ){
            labelGanador.text = "Ha ganado X"
            finJuego = true
        }
        if ( estado[2] == 2 && estado[5] == 2 && estado[8] == 2 ){
            labelGanador.text = "Ha ganado X"
            finJuego = true
        }
        if ( estado[0] == 2 && estado[4] == 2 && estado[8] == 2 ){
            labelGanador.text = "Ha ganado X"
            finJuego = true
        }
        if ( estado[2] == 2 && estado[4] == 2 && estado[6] == 2 ){
            labelGanador.text = "Ha ganado X"
            finJuego = true
        }
    }
    
    func reset() {
        if ( finJuego == true ) {
            buttonReset?.setTitle("Volver a jugar", for: .normal)
        }
    }
    

    @IBAction func reiniciar(_ sender: AnyObject) {
        if ( finJuego == true) {
            buttonReset?.setTitle("", for: .normal)
            botonRojoCero()
            labelGanador.text = ""
            contador = 0
            for i in 0...8{
                estado[i] = 0
            }
            jugador = 1
            encerrado = false
            finJuego = false
            sitio = 0
            b9.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
            b8.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
            b7.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
            b6.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
            b5.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
            b4.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
            b3.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
            b2.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
            b1.setImage(imagenBl?.withRenderingMode(.alwaysOriginal), for: .normal)
        }
        
    }
}

