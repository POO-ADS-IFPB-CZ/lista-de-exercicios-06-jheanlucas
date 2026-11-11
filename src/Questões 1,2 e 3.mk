Questão 1:

O Java Collections Framework existe basicamente para poupar a vida do desenvolvedor.
Em vez de você ficar criando do zero suas próprias estruturas de dados — como listas que crescem
sozinhas, filas, pilhas o Java já te entrega tudo isso pronto, testado e otimizado, através de
classes como ArrayList, linkedList, hashSet, entre outras.
Comparado ao array tradicional, a diferença mais sentida no dia a dia é a flexibilidade, o array
te obriga a definir um tamanho fixo lá no início, enquanto as coleções crescem e encolhem conforme
a necessidade. Além disso, operações que seriam trabalhosas no array como buscar, ordenar ou
remover elementos viram chamadas simples de metodo nas coleções.
No fundo é sobre não reinventar a roda toda vez que você precisar guardar um conjunto de dados.

Questão 2:

List é a mais intuitiva ela se comporta como uma fila de supermercado organizada
cada pessoa tem sua posição, e duas pessoas podem estar no mesmo lugar se você quiser.
Use quando a ordem importa e repetição é permitida. Um histórico de ações do usuário,
por exemplo, é um caso perfeito.
Set é o oposto nesse sentido ele age como um CPF não existe dois iguais. Se você tentar
adicionar um elemento que já está lá, ele simplesmente ignora. Use quando você quer garantir
unicidade, como uma lista de categorias de um produto ou e-mails cadastrados.
A diferença prática mais sentida é essa se você adicionar "João" duas vezes num ArrayList,
ele fica lá duplicado. No HashSet, a segunda inserção é ignorada silenciosamente.

Questão 3:

Ordem dos elementos:

HashSet — nenhuma ordem garantida. Os elementos aparecem numa sequência imprevisível baseada
no hashCode.
LinkedHashSet — mantém a ordem de inserção. O que entrou primeiro, aparece primeiro.
TreeSet — ordena automaticamente pelo critério natural (alfabético para Strings, numérico
para números) ou por um Comparator.

Complexidade de busca, inserção e remoção:

HashSet — O(1) em média para tudo. O mais rápido dos três.
LinkedHashSet — O(1) também mas com um pequeno custo extra por manter os ponteiros de ordem.
TreeSet — O(log n) para tudo pois precisa manter a árvore balanceada a cada operação.

Uso de memória:

HashSet — o mais leve.
LinkedHashSet — um pouco mais pesado, pois guarda ponteiros extras de ordem de inserção.
TreeSet — o mais pesado, mantém nós com referências para pai, filho esquerdo e direito.