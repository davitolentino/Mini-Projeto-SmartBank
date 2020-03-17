function alerta(cod, msg){
	var body = document.querySelector("body");
	var pop = document.createElement("div");
	pop.className ="pop";
	var card = document.createElement("div");
	card.className = "card p-2";
	var cardBody = document.createElement("div");
	cardBody.className="card-body p-0";
	
	var h6 = document.createElement("h6");
	h6.className = "text-center";
	h6.style = "color:rgb(127, 13, 138);font-family: 'Fjalla One', sans-serif;margin-bottom:0;";
	if(cod == 0){
		h6.innerHTML = "<img src=\"img/confirme.png\" height=\"40px\">"+msg;
	} else {
		h6.innerHTML = "<img src=\"img/erro.png\" height=\"40px\">"+msg;
	}
	body.appendChild(pop);
	pop.appendChild(card);
	card.appendChild(cardBody);
	cardBody.appendChild(h6);
}