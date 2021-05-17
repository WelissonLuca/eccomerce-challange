const products = require('./products.json');

function quantityProducts() {
  let total = 0;
  let featured = 0;
  let available = 0;
  let inventoryValue = 0;

  for (const product of products) {
    total += product.qtdEstoque;
    inventoryValue += product.preco * product.qtdEstoque;
    if (product.emDestaque == 'sim') {
      featured++;
    }
    if (product.disponivel == 'sim') {
      product.disponivel;
      available++;
    }
  }
  console.log(`O total de items em estoque é: ${total}`);
  console.log(`Total de items em destaque é: ${featured}`);
  console.log(`Total de items disponiveis é: ${available}`);
  console.log(
    `Valor total do inventário é: ${inventoryValue.toLocaleString('pt-br', {
      style: 'currency',
      currency: 'BRL',
    })}`,
  );
}
function totalDepartmentItems(departamentId) {
  let total = 0;
  let price = 0;
  let departamentName = '';
  const departament = products.filter(
    (product) => product.departamento.idDepto == departamentId,
  );
  try {
    if (departament == false) {
      throw new Error();
    } else {
      for (const deparment of departament) {
        departamentName = deparment.departamento.nomeDepto;
        total++;
        price += deparment.preco * deparment.qtdEstoque;
      }
      console.log(
        `para o departamento: ${departamentName}, o total de itens é: ${total}`,
      );
      console.log(
        `para o departamento: ${departamentName}, o valor do seu inventário é: ${price.toLocaleString(
          'pt-br',
          { style: 'currency', currency: 'BRL' },
        )}`,
      );
    }
  } catch (err) {
    console.log('Departamento não encontrado');
  }
}
function CompanyAverageTicket() {
  let stock = 0;
  let total = 0;
  for (const product of products) {
    total += product.preco * product.qtdEstoque;
    stock += product.qtdEstoque;
  }
  total /= stock;

  console.log(
    `O ticker médio da empresa é: ${total.toLocaleString('pt-br', {
      style: 'currency',
      currency: 'BRL',
    })}`,
  );
}

function averageTicketalCaculation(callback, callbackArg) {
  const productsList = new Map();
  const value = productsList.values();
  const key = productsList.keys();

  callback(productsList);
  callbackArg(productsList, value, key);
}
function mostValuableProduct() {
  let comparation = products[0].preco;
  let nameDepartment = '';
  let nameProduct = '';
  for (const i of products) {
    if (comparation < i.preco) {
      comparation = i.preco;
      nameDepartment = i.departamento.nomeDepto;
      nameProduct = i.descricao;
    }
  }
  console.log(
    `O produto mais caro da loja é: ${nameProduct}. Seu departamento: ${nameDepartment}`,
  );
}
function cheapestProduct() {
  let comparation = products[0].preco;
  let nameDepartment = '';
  let nameProduct = '';
  for (const i of products) {
    if (comparation > i.preco) {
      comparation = i.preco;
      nameDepartment = i.departamento.nomeDepto;
      nameProduct = i.descricao;
    }
  }
  console.log(
    `O produto mais barato da loja é: ${nameProduct}. Seu departamento: ${nameDepartment}`,
  );
}
quantityProducts();
totalDepartmentItems(9);
CompanyAverageTicket();

averageTicketalCaculation(
  (productsList) => {
    for (product of products) {
      productsList.set(
        product.departamento.nomeDepto,
        products
          .filter(
            (p) => p.departamento.nomeDepto === product.departamento.nomeDepto,
          )
          .reduce((acc, cur) => acc + cur.preco * cur.qtdEstoque, 0),
      );
    }
  },
  (productsList, value, key) => {
    mostValuable = Math.max(value.next().value);

    if (value.next().value <= mostValuable) {
      departamentName = key.next().value;
    }

    console.log(
      `o departamento mais valioso é o: ${departamentName}, seu valor é:${mostValuable.toLocaleString(
        'pt-br',
        { style: 'currency', currency: 'BRL' },
      )}`,
    );
  },
);
averageTicketalCaculation(
  (productsList) => {
    for (product of products) {
      productsList.set(
        product.departamento.nomeDepto,
        products
          .filter(
            (p) => p.departamento.nomeDepto === product.departamento.nomeDepto,
          )
          .reduce((acc, cur) => acc + cur.preco * cur.qtdEstoque, 0),
      );
    }
  },
  (productsList, value, key) => {
    for (let i of productsList) {
      console.log(
        `Para o departamento: ${
          key.next().value
        }, o valor do ticket médio é: ${value
          .next()
          .value.toLocaleString('pt-br', {
            style: 'currency',
            currency: 'BRL',
          })} `,
      );
    }
  },
);
mostValuableProduct();
cheapestProduct();
