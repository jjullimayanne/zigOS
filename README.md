# zigOS

- https://wiki.inf.ufpr.br/maziero/lib/exe/fetch.php?media=socm%3Asocm-livro.pdf
- Ping Pong OS => https://wiki.inf.ufpr.br/maziero/doku.php?id=so%3Apingpongos

https://ziglang.org/pt/

Como rodar:

você precisa ter um compilador C instalado no seu sistema. O compilador mais comum é o GCC (GNU Compiler Collection), mas há outras opções, como o Clang.
Linux
~~~
sudo apt update
sudo apt install build-essential
~~~
macOs
~~~
sudo apt update
sudo apt install build-essential
~~~

Arquivo de cabeçalho 
`.h` em C é um arquivo chamado de header contém as declarações de funções, tipos, macros e variáveis que serão usadas em outros arquivos do programa. Ele serve como uma interface entre diferentes partes do código.

Já o arquivo de implementação (como um .c) contém a lógica interna de como essas funções e estruturas declaradas no cabeçalho são implementadas.

Tarefa 1:
Num sistema operacional existe a necessidade de executar multiplos processos e muitas vezes, assim existe o escalonamento `Round-Robin` onde para organizar esses processos utiliza-se de uma lista circular

- O sistema deve colocar os processos numa fila circularmmente encadeada
- Cada processo é executado por um pequeno intervalo de tempo
- Após o termino do tempo passa-se para o proximo processo da lista
- o ultimo processo retorna para o primeiro
- todos os processos recebem uma fatia justa de tempo da CPU

  Vantagens:
  A lista circular encadeada nao necessita ser reiniciada, ao chegar no ultimo processo naturalmente retorna ao primeiro
~~~
[Processo A] -> [Processo B] -> [Processo C] -> [Processo A] -> ...
~~~

Uma lista duplamente encadeada
cada elemento (ou nó) possui dois ponteiros: um que aponta para o próximo nó na lista e outro que aponta para o nó anterior.

Isso permite que você navegue pela lista em duas direções: da cabeça (início) para a cauda (fim) e vice-versa.

~~~
NULL <- [Nó 1] <-> [Nó 2] <-> [Nó 3] -> NULL
~~~

lista circular e duplamente encadeada

É circular: O último nó da lista aponta para o primeiro nó, e o primeiro nó aponta de volta para o último nó, formando um ciclo.
É duplamente encadeada: Cada nó tem dois ponteiros: um para o nó anterior e outro para o próximo, permitindo a navegação em ambas as direções.

~~~
        ┌───────────────────────────────┐
NULL <- [Nó 1] <-> [Nó 2] <-> [Nó 3] <-> [Nó 4] ->
        └───────────────────────────────┘
           ^                            |
           |                            v
        <--[Nó 1] <-> [Nó 2] <-> [Nó 3] <-> [Nó 4]--

~~~

Nós (Nodes)
Um nó é um componente básico de muitas estruturas de dados, como listas encadeadas, árvores e grafos. Em termos simples, um nó é um bloco de informação que pode conter dois tipos de dados
Dados: O valor ou a informação real armazenada no nó (pode ser um número, string, ou outra estrutura de dados).
Ponteiros: Referências para outros nós na estrutura de dados.

Ponteiros (Pointers)
Um ponteiro é uma variável que armazena o endereço de memória de outra variável. Isso significa que, em vez de armazenar diretamente um valor, ele guarda onde esse valor está localizado na memória. Ponteiros são fundamentais em linguagens como C e C++, pois permitem trabalhar diretamente com a memória do computador.
