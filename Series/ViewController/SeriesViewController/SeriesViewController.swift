//
//  SeriesViewController.swift
//  Series
//
//  Created by DAVID ANGULO CORCUERA on 3/10/18.
//  Copyright © 2018 DAVID ANGULO CORCUERA. All rights reserved.
//

import UIKit



internal var indexCurrentSerie = 0
class SeriesViewController: UIViewController {
    @IBOutlet weak var lbl_title: UILabel!
    @IBOutlet weak var imageView_main : UIImageView!
    @IBOutlet weak var imageView_background : UIImageView!
    @IBOutlet weak var textView_sumary: UITextView!
    @IBOutlet weak var btn_next: UIButton!
    @IBOutlet weak var btn_back: UIButton!
    
    internal var arr_series : [Series] = []
   
    internal var indexCurrentSeries = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBarButtonsItems()
        imageView_main.layer.cornerRadius = 20
        imageView_main.layer.borderColor = UIColor.white.cgColor
        imageView_main.layer.borderWidth = 2
        imageView_main.layer.masksToBounds = true
        btn_next.layer.cornerRadius = 10
        btn_next.layer.borderColor = UIColor.white.cgColor
        btn_next.layer.borderWidth = 2.0
        textView_sumary.layer.cornerRadius = 10
        textView_sumary.layer.borderColor = UIColor.white.cgColor
        textView_sumary.layer.borderWidth = 2.0
        btn_back.layer.cornerRadius = 10
        btn_back.layer.borderColor = UIColor.white.cgColor
        btn_back.layer.borderWidth = 2.0
         loadAllSeries()
        refreshUIwithSerie(serie: arr_series[indexCurrentSeries])
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    private func refreshUIwithSerie(serie: Series){
    self.lbl_title.text = serie.str_name
    self.imageView_main.image = UIImage(named: serie.str_image)
    self.imageView_background.image = UIImage(named: serie.str_image)
    self.textView_sumary.text = serie.str_summary
    }
    private func setupBarButtonsItems(){
        let btn_cancel = UIBarButtonItem(barButtonSystemItem : .cancel, target : self,action: #selector (cancelPressed))
        navigationItem.setLeftBarButton(btn_cancel, animated: false)
        
        let actorsBarButton = UIBarButtonItem(title: "Actores", style: .plain, target: self, action: #selector(actorsPressed))
        navigationItem.setRightBarButton(actorsBarButton, animated: false)
    }
    private func loadAllSeries (){
        
        let heisenberg = Actors(str_name: "Heisenberg", str_image: "heisenberg")
        let gus = Actors(str_name: "Gus Fring", str_image: "gusFring")
        let breakingBad = Series(str_name: "Breaking Bad", str_image: "breakingBad", str_summary: "La serie creada por Vince Gilligan (Expediente X) constituye un hito premonitorio al haberse estrenado en un insospechado preámbulo de la hecatombe económica, presentando una trama que, de manera inconsciente, se ha solapado con ella. Parte de una premisa sencilla, el tráfico de drogas como solución a la ruina familiar", int_seasons: 8, arr_actors: [heisenberg,gus])
        
       
        
        
        let betterCallSaul = Series(str_name: "Better call saul", str_image: "betterCallSaul", str_summary: "Better Call Saul es una serie de televisión estadounidense creada por Vince Gilligan y Peter Gould. Se trata de una precuela de Breaking Bad. La acción se ubica en el año 2002 en torno al abogado James Morgan Jimmy McGill (interpretado por Bob Odenkirk), seis años antes de su aparición en Breaking Bad como Saul Goodman. A pesar de ser una precuela también se muestra brevemente cual fue el destino de Saul tras los hechos de la serie original.", int_seasons: 8, arr_actors: [])
        
        
        
        arr_series.append(breakingBad)
        arr_series.append(betterCallSaul)
    }
    @IBAction private func nextSerie(){
        indexCurrentSeries  = (indexCurrentSeries + 1) % arr_series.count
        refreshUIwithSerie(serie: arr_series[indexCurrentSeries])
    }
    @IBAction private func backSerie(){
        if(indexCurrentSeries != 0){
        indexCurrentSeries -= 1
        refreshUIwithSerie(serie: arr_series[indexCurrentSeries])
        }
    }
    @objc private func cancelPressed(){
        dismiss(animated: true, completion: nil)
    }
    @objc private func actorsPressed(){
        let mySerie = arr_series[indexCurrentSeries]
        let actorsVC = ActorsViewController(actors: mySerie.arr_actors)
        navigationController?.pushViewController(actorsVC, animated: false)
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
