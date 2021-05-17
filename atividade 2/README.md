## Atividade 2: Habilidade de resolução de problemas com Algoritmos


<details >
 <summary>Descrição atividade</summary>
Você receberá um arquivo no formato JSON (Objeto Javascript) com a seguinte estrutura:

```JSON
[

{ "codProduto": 1234,

  "descricao": "Computador Dell Inspiron XS 12000 8Gb RAM 1 TB HD Intel i5 4g NVidia 1080",

  "preco": 3500.00,

  "qtdEstoque": 5,

  "disponivel": "sim",

  "emDestaque": "sim",

  "departamento" : {

  "idDepto": 987,

  "nomeDepto":"Informatica e acessórios"

  }

},
...
]
```
Ou seja, cada objeto descreve um produto e seu respectivo departamento. Independente da quantidade (que você pode determinar através da propriedade length), você terá algumas tarefas a cumprir. Escreva rotinas em Javascript que recebam esta lista de produtos como parâmetros e calcule (1 rotina para cada item)




</details>

<hr>

#### Tarefas 
- [x] Quantidade total de itens em estoque (somatória das quantidades de todos os produtos)
- [x] Quantidade total de itens em destaque (somatória das quantidades dos itens marcados como "emDestaque : sim")

- [x] Quantidade total de itens disponíveis (similar ao anterior)
- [x] Valor total do inventário da empresa (somatória dos valores individuais multiplicado pela quantidade em estoque)
- [x] Valor total do inventário por departamento (similar ao item anterior)
- [x] Valor do ticket médio dos produtos da empresa (basicamente o valor total do inventário dividido pelo número de itens)
- [x] Ticket médio por departamento (similar ao item anterior, porém retornando uma lista de objetos que contenha o nome do departamento e o seu ticket médio)
- [x] Departamento mais valioso (qual o departamento que tem a maior somatória dos valores dos itens)
- [x] Produto mais caro da loja (bem como seu departamento)
- [x] Produto mais barato da loja (bem como seu departamento)



