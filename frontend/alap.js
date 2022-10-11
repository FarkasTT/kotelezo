fetch("http://localhost:3000/tipus")
.then(x => x.json())
.then(y => megjelenit(y));


function megjelenit(tomb){
    console.log(tomb)
    sz=''
    for (let elem of tomb) {
        sz+='<tr>'
        sz+='<td>'
        sz+=elem.tipus_id
        sz+='</td>'   
        sz+='<td>'
        sz+=elem.tipus_nev
        sz+='</td>' 
        sz+='<td>'
        sz+=elem.tipus_ar
        sz+='</td>' 
        sz+='<td>'
        sz+=elem.tipus_szin
        sz+='</td>'
        sz+='<td>'
        sz+=elem.tipus_meret
        sz+='</td>'
        sz+='<td>'
        sz+=elem.tipus_anyag
        sz+='</td>'           
        sz+='</tr>'
        
        
    }
    document.getElementById("tablazat").innerHTML=sz
}


function bevitel(){
    let adat= {
    bevitel1:document.getElementById("nev").value,
    bevitel2:document.getElementById("ar").value,
    bevitel3:document.getElementById("szin").value,
    bevitel4:document.getElementById("meret").value,
    bevitel5:document.getElementById("anyag").value
}
fetch('http://localhost:3000/felvitel2', {
  method: "POST",
  body: JSON.stringify(adat),
  headers: {"Content-type": "application/json; charset=UTF-8"}
})
.then(response => response.text())
}
