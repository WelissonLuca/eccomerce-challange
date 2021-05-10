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
		total += product.preco * product.qtdEstoque;
	}
	console.log(total);
}

function totalDepartmentItems(departamentId) {
	let total = 0;
	const departament = products.filter(
		product => product.departamento.idDepto == departamentId
	);
	for (let deparment of departament) {
		var departamentName = deparment.departamento.nomeDepto;
		total++;
	}
	console.log(
		`para o departamento: ${departamentName}, o total de itens é: ${total}`
	);
}

function totalDepartmentValue(departamentId) {
	let total = 0;
	let departamentName = "";
	const departament = products.filter(
		product => product.departamento.idDepto == departamentId
	);

	for (let deparment of departament) {
		departamentName = deparment.departamento.nomeDepto;
		total += deparment.preco;
	}
	console.log(
		`para o departamento: ${departamentName}, o total de itens é: ${total}R$`
	);
}
function inventoryTotalValue() {
	let total = 0;
	for (let product of products) {
		total += product.preco / product.qtdEstoque;
	}
	console.log(total);
}

function inventoryTotalValue() {
	let total = 0;
	for (let product of products) {
		total += product.preco / product.qtdEstoque;
	}
	console.log(total);
}



//quantitProducts();
//featuredTotal();
//availableItems();
//inventoryValue();
//totalDepartmentItems(984);
//totalDepartmentValue(987);
inventoryTotalValue();

//Departamento mais valioso (qual o departamento que tem a maior somatória dos valores dos itens)

