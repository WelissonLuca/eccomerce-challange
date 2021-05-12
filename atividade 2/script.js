const products = require("./products.json");

function quantityProducts() {
	// Função para o calculo da qtd total de items em estoque
	let total = 0;
	for (let product of products) {
		total += product.qtdEstoque;
	}
	console.log(`O total de items em estoque é: ${total}`);
}

function featuredTotal() {
	// Função para o calculo da qtd total de items em destaque
	let total = 0;

	for (let product of products) {
		if (product.emDestaque == "sim") {
			total++;
		}
	}
	console.log(`Total de items em destaque é: ${total}`);
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
	console.log(`Total de items disponiveis é: ${total}`);
}

function inventoryValue() {
	// Função para o calculo do valor total do inventário
	let total = 0;

	for (let product of products) {
		total += product.preco * product.qtdEstoque;
	}
	console.log(
		`Valor total do inventário é: ${total
			.toFixed(2)
			.toLocaleString("pt-br", { style: "currency", currency: "BRL" })}R$`
	);
}

function totalDepartmentItems(departamentId) {
	let total = 0;
	let departamentName = "";
	const departament = products.filter(
		product => product.departamento.idDepto == departamentId
	);
	try {
		if (departament == false) {
			throw new Error();
		} else {
			for (let deparment of departament) {
				departamentName = deparment.departamento.nomeDepto;
				total++;
			}
			console.log(
				`para o departamento: ${departamentName}, o total de itens é: ${total}`
			);
		}
	} catch (err) {
		console.log("Departamento não encontrado");
	}
}

function totalDepartmentValue(departamentId) {
		let total = 0;
		let departamentName = "";
		const departament = products.filter(
			product => product.departamento.idDepto == departamentId
		);
	try {
		if (departament == false) {
			throw new Error();
		} else {
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
				`para o departamento: ${departamentName}, o total de itens é: ${total
					.toFixed(2)
					.toLocaleString("pt-br", { style: "currency", currency: "BRL" })}R$$`
			);
		}
	} catch (err) {
		console.log("Departamento não encontrado");
	}
}

function CompanyAverageTicket() {
	let  stock = 0;
	let  total = 0 
	for (let product of products) {
		total += product.preco * product.qtdEstoque;
		stock += product.qtdEstoque;
	}
	total = total / stock;

	console.log(`O ticker médio da empresa é: ${total.toFixed(2).toLocaleString("pt-br", { style: "currency", currency: "BRL" })}R$`);
}

function averageTicket() {
const productsList = new Map();
for (product of products) {
	productsList.set(
		product.departamento.nomeDepto,
		products
			.filter(p => p.departamento.nomeDepto === product.departamento.nomeDepto)
			.reduce((acc, cur) => acc + cur.preco * cur.qtdEstoque, 0)
	);

}
	console.log(productsList.entries())
	
}
function mostValuable() {
	const productsList = new Map();
	for (product of products) {
		productsList.set(
			product.departamento.nomeDepto,
			products
				.filter(
					p => p.departamento.nomeDepto === product.departamento.nomeDepto
				)
				.reduce((acc, cur) => acc + cur.preco * cur.qtdEstoque, 0)
		);
	}
}

quantityProducts();
featuredTotal();
availableItems();
inventoryValue();
totalDepartmentItems(9);
totalDepartmentValue(9);
CompanyAverageTicket()
//averageTicket();
