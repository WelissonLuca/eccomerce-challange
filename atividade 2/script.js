const products = require("./products.json");

function quantitProducts() {
	// Função para o calculo da qtd total de items em estoque
	let total = 0;
	for (let product of products) {
		total += product.qtdEstoque;
	}
	console.log(total);
}

function featuredTotal() {
	// Função para o calculo da qtd total de items em destaque
	let total = 0;

	for (let product of products) {
		if (product.emDestaque == "sim") {
			product.emDestaque;
			total++;
		}
	}
	console.log(total);
}

function availableItems() {
	// Função para o calculo da qtd total de items disponiveis
	let total = 0;

	for (let product of products) {
		if (product.disponivel == "sim") {
			product.disponivel;
			total++;
		}
	}
	console.log(total);
}

function inventoryValue() {
	// Função para o calculo do valor total do inventário
	let total = 0;

	for (let product of products) {
		total += product.preco * product.qtdEstoque
	}
	console.log(total);
}

function totalDepartmentItems(departamentId) {
	let total = 0;	
	const departament = products.find(
		product => product.departamento.idDepto == departamentId
	);
	for (let product of products) {
		if (departament == product.departamento) {
			total += product
			departament
		}
	}
	console.log(total, departament);
}
//quantitProducts();
//featuredTotal();
//availableItems();
//inventoryValue();
totalDepartmentItems(987);

