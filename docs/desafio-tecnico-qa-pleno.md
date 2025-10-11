# Avaliação de Conhecimentos - Analista QA Pleno

**Candidata:** Sthefany Albuquerque Ricardo

---

## Seção 1: Conceitos Básicos

### Questão 1: Testes de Regressão

**Qual é o objetivo principal dos testes de regressão?**

- [ ] a) Verificar se o software atende aos requisitos do cliente
- [ ] b) Encontrar bugs no código recém-desenvolvido
- [x] **c) Garantir que as alterações recentes no software não afetem as funcionalidades existentes**
- [ ] d) Testar a capacidade de resposta do software em condições de alta carga

---

### Questão 2: Objetivo Principal do Teste de Software

**Qual é o objetivo principal do teste de software?**

- [ ] a) Encontrar bugs no código
- [x] **b) Garantir que o software atenda aos requisitos e expectativas do cliente**
- [ ] c) Desenvolver novas funcionalidades
- [ ] d) Melhorar a velocidade de execução do programa

---

### Questão 3: Tipos de Testes Manuais em ERP

**Explique três tipos diferentes de testes manuais que podem ser realizados em um software ERP como o Microvix.**

#### a) Teste Funcional

Verifica se as funcionalidades do ERP estão operando conforme os requisitos definidos. Em um sistema como o Microvix, isso envolve testar fluxos específicos, como:

- Criação de um pedido de venda
- Lançamento de uma nota fiscal de entrada
- Geração de um relatório financeiro

Garantindo que campos e cálculos estejam corretos e que os dados sejam salvos adequadamente.

#### b) Teste de Integração

Avalia se os módulos do sistema se comunicam corretamente entre si, garantindo a consistência dos dados. 

**Exemplo:** Ao criar um pedido de venda no Microvix, o teste verifica se:
- O estoque é automaticamente atualizado
- Uma conta a receber é gerada no módulo financeiro
- O fluxo entre áreas integradas funciona corretamente

#### c) Teste de Usabilidade

Analisa se a interface do sistema é intuitiva, de fácil navegação e compreensível para o usuário final, buscando melhorar a experiência do usuário no uso diário do ERP. 

Em um sistema como o Microvix, onde agilidade e eficiência são essenciais, esse teste ajuda a identificar pontos de melhoria na interação do usuário com o sistema.

---

### Questão 4: Diferença entre Testes de Regressão e Aceitação

**Qual é a principal diferença entre testes de regressão e testes de aceitação?**

- [ ] a) Testes de regressão são executados manualmente, enquanto testes de aceitação são automatizados
- [x] **b) Testes de regressão garantem que as alterações recentes não afetem o comportamento existente do software, enquanto testes de aceitação verificam se o software atende aos requisitos do cliente**
- [ ] c) Testes de regressão são realizados antes do lançamento do software, enquanto testes de aceitação são realizados após o lançamento
- [ ] d) Testes de regressão são executados pelos desenvolvedores, enquanto testes de aceitação são executados pelos clientes

---

### Questão 5: Teste Exploratório

**Descreva o conceito de teste exploratório. Quais são os benefícios desse tipo de teste e em que situações ele pode ser mais eficaz do que abordagens de teste mais tradicionais? Como você equilibra o uso de testes exploratórios com testes planejados em um projeto de desenvolvimento de software?**

#### Conceito

O teste exploratório é uma abordagem em que o testador projeta e executa os testes ao mesmo tempo, explorando o sistema de forma dinâmica e investigativa, com base em sua experiência, intuição e conhecimento do produto.

#### Principais Benefícios

- Agilidade na identificação de falhas não previstas nos testes roteirizados
- Flexibilidade diante de mudanças
- Maior cobertura de cenários inesperados

#### Quando é Mais Eficaz

Esse tipo de teste é mais eficaz quando:
- Há pouco tempo para elaborar casos formais
- Em funcionalidades novas ou com documentação limitada
- Para validação de fluxos não convencionais

#### Estratégia de Equilíbrio

1. **Iniciar com testes planejados** para estabilizar o básico
2. **Seguir com testes exploratórios** para novas descobertas
3. **Documentar as falhas encontradas** para futuras automações
4. **Manter um ciclo de feedback contínuo**

---

### Questão 6: Cenário Scrum - Sprint Review

**Cenário:** Em uma equipe de desenvolvimento ágil que usa a metodologia Scrum. Durante a Sprint Review, o PO apresenta uma nova funcionalidade para a equipe, mas os testadores identificam alguns problemas de qualidade significativos que não foram detectados durante o desenvolvimento. Como membro da equipe de teste, como você abordaria essa situação?

#### Abordagem Imediata

Como membro da equipe de testes, eu abordaria a situação de forma **colaborativa e transparente**:

1. Sinalizar os problemas identificados na Sprint Review
2. Explicar o impacto técnico e de negócio
3. Sugerir que os itens com falhas sejam movidos de volta para o backlog ou para a próxima sprint

#### Coleta de Informações

Iniciar uma coleta detalhada com o PO e stakeholders sobre:
- Natureza dos bugs
- Impacto no negócio
- Cenários críticos afetados
- Apoio na priorização das correções

#### Melhorias Propostas

Para evitar recorrências, proporia:

- **Shift-Left Testing:** Antecipação dos testes no ciclo de desenvolvimento
- **Critérios de Aceite:** Revisão mais criteriosa e detalhada
- **Participação Ativa:** Maior envolvimento dos QAs nas etapas de refinamento e planejamento
- **Práticas Colaborativas:** Revisões contínuas, pair testing e feedbacks em conjunto com desenvolvedores

#### Aprendizado Contínuo

Levar os aprendizados para a **retrospectiva da sprint**, promovendo melhorias no processo para identificar causas sistêmicas:
- Falhas nos requisitos
- Gaps na cobertura de teste
- Problemas de comunicação
- Ausência de testes unitários

Reforçando a importância da **qualidade contínua** dentro do time.

---

### Questão 7: Boas Práticas em Automação de Testes

**Descreva três boas práticas para escrever scripts de automação de teste que sejam fáceis de manter e escaláveis.**

#### a) Separação de Responsabilidades

Organizar o código em camadas facilita a manutenção, promove reutilização e torna os scripts mais legíveis.

**Camadas recomendadas:**
- Lógica de teste
- Dados de teste
- Mapeamento de elementos

**Padrão recomendado:** Page Object Model (POM)

#### b) Modularização e Princípio DRY (Don't Repeat Yourself)

Evitar duplicação de código ao identificar e extrair lógicas ou sequências repetitivas em funções reutilizáveis.

**Benefícios:**
- Reduz o esforço de manutenção
- Aumenta a escalabilidade dos testes
- Facilita alterações futuras

#### c) Escrita Clara e Documentação Adequada

**Boas práticas:**
- Nomear os testes com clareza
- Descrever os passos de forma objetiva
- Refletir o comportamento esperado do sistema
- Focar no "o que" está sendo validado, não no "como"
Avaliação de conhecimentos vaga Analista QA Pleno 

---

# Seção 2: Montagem de Cenários e Resolução de Problemas Práticos 

1.  Com base na história abaixo, crie cenários de teste para verificar a funcionalidade de 

gerenciamento de estoque no sistema de ponto de venda. Inclua etapas para verificar 

a disponibilidade de produtos, fazer ajustes nas quantidades em estoque e garantir 

que as atualizações sejam refletidas corretamente no sistema. a.  História: O PO deseja introduzir uma nova funcionalidade de gerenciamento de 

estoque no sistema de ponto de venda (POS), onde os funcionários poderão 

verificar a disponibilidade de produtos em tempo real e fazer ajustes nas 

quantidades em estoque conforme necessário. Ele destaca a importância de 

garantir que as atualizações no estoque sejam precisas e refletidas 

imediatamente no sistema. 

2.  Cenários: 

a.  Cenário 1: Verificar disponibilidade de um produto existente no estoque 

● Objetivo: Garantir que o sistema exiba a quantidade em estoque em tempo 

real para um produto existente. 

● Pré-requisitos: 

○ O produto "Produto X" está cadastrado no sistema. 

○ A quantidade em estoque de "Produto X" é de 20 unidades. 

○ O funcionário está logado no sistema de ponto de venda (POS). 

● Caso de Teste (Gherkin): 

Dado que o produto "Produto X" está cadastrado com 20 unidades no 

estoque 

Quando o funcionário acessar o sistema de ponto de venda e buscar o 

produto pelo nome ou código 

Então o sistema deve exibir a quantidade atual em estoque (20 unidades) 

em tempo real 

● Resultados Esperados: 

○ O sistema deve exibir a quantidade atual em estoque (20 unidades) 

para "Produto X". 

○ A informação de estoque deve ser precisa e em tempo real. 

b.  Cenário 2: Tentar verificar um produto inexistente ● Objetivo: Assegurar que o sistema lida corretamente com a busca por 

produtos não cadastrados no estoque. 

● Pré-requisitos: 

○ O produto "Produto Y" NÃO está cadastrado no sistema de estoque. 

○ O funcionário está logado no sistema de gerenciamento de estoque. 

● Caso de Teste (Gherkin): 

Dado que o produto "Produto Y" não está cadastrado no sistema 

Quando o funcionário tentar buscar esse produto no gerenciamento de 

estoque 

Então o sistema deve informar que o produto não foi encontrado ou que não 

há registro de estoque 

● Resultados Esperados: 

○ O sistema deve exibir uma mensagem clara informando que o 

produto não foi encontrado (ex: "Produto não encontrado", "Sem 

resultados para sua busca", ou "Não há registro de estoque para 

este item"). 

○ Nenhum dado de estoque deve ser exibido para o "Produto Y". 

c.  Cenário 3: Reduzir a quantidade de um item no estoque 

● Objetivo: Validar que o sistema permite a redução manual de estoque e que 

essa alteração é refletida imediatamente. 

● Pré-requisitos: 

○ O produto "Produto Z" está cadastrado com 10 unidades em 

estoque. 

○ O funcionário está logado no sistema de gerenciamento de estoque 

e possui permissão para realizar ajustes. 

● Caso de Teste (Gherkin): 

Dado que o produto "Produto Z" possui 10 unidades em estoque Quando o funcionário reduzir manualmente a quantidade para 5 unidades 

(ex: por dano ou perda) e confirmar o ajuste 

Então o sistema deve atualizar o estoque do produto para 5 unidades e 

refletir essa mudança imediatamente na tela e nos relatórios 

● Resultados Esperados: 

○ O sistema deve atualizar a quantidade em estoque para 5 unidades. 

○ Essa mudança deve ser refletida imediatamente na tela de 

gerenciamento de estoque. 

○ A alteração deve ser registrada corretamente nos relatórios de 

estoque e no histórico do produto. 

○ O sistema deve exibir uma mensagem de confirmação de que o 

ajuste foi realizado com sucesso. 

d.  Cenário 4: Aumentar a quantidade de um item no estoque 

● Objetivo: Assegurar que o sistema permite o aumento manual de estoque e 

que a nova quantidade é exibida instantaneamente. 

● Pré-requisitos: 

○ O produto "Produto W" está cadastrado com 10 unidades em 

estoque. 

○ O funcionário está logado no sistema de gerenciamento de estoque 

e possui permissão para realizar ajustes. 

● Caso de Teste (Gherkin): 

Dado que o produto "Produto W" possui 10 unidades em estoque 

Quando o funcionário adicionar 5 novas unidades e salvar a alteração 

Então o sistema deve exibir 15 unidades em estoque imediatamente após a 

atualização 

● Resultados Esperados: ○ O sistema deve atualizar a quantidade em estoque para 15 

unidades. 

○ O sistema deve exibir 15 unidades em estoque imediatamente após 

a confirmação do ajuste. 

○ A alteração deve ser registrada corretamente nos relatórios de 

estoque e no histórico do produto. 

○ O sistema deve exibir uma mensagem de confirmação de que o 

ajuste foi realizado com sucesso. 

e.  Cenário 5: Ajuste inválido: quantidade negativa 

● Objetivo: Verificar se o sistema impede ajustes de estoque que resultem em 

quantidades negativas. 

● Pré-requisitos: 

○ O produto "Produto U" está cadastrado com 10 unidades em 

estoque. 

○ O funcionário está logado no sistema de gerenciamento de estoque 

e possui permissão para realizar ajustes. 

● Caso de Teste (Gherkin): 

Dado que o produto "Produto U" possui 10 unidades em estoque 

Quando o funcionário tentar ajustar o estoque para -3 unidades 

Então o sistema deve impedir a ação e exibir uma mensagem de erro 

informando que a quantidade não pode ser negativa 

● Resultados Esperados: 

○ O sistema deve impedir a conclusão da ação de ajuste. 

○ O sistema deve exibir uma mensagem de erro clara informando que 

a quantidade não pode ser negativa ou que o valor inserido é 

inválido (ex: "A quantidade final em estoque não pode ser menor que 

zero", "Valor inválido"). ○ A quantidade em estoque do "Produto U" deve permanecer 

inalterada (8 unidades). 

f.  Cenário 6: Verificação simultânea por mais de um usuário 

● Objetivo: Garantir a consistência e a atualização em tempo real do estoque 

quando múltiplos usuários estão acessando o mesmo produto. 

● Pré-requisitos: 

○ O produto "Produto V" está cadastrado com uma quantidade inicial 

em estoque (ex: 50 unidades). 

○ Dois funcionários (Funcionário A e Funcionário B) estão logados 

simultaneamente no módulo de gerenciamento de estoque. 

○ Ambos os funcionários estão visualizando a página de 

detalhes/ajuste do "Produto V". 

● Caso de Teste (Gherkin): 

Dado que dois funcionários estão acessando o mesmo produto "Produto V", 

no módulo de estoque ao mesmo tempo 

Quando um funcionário realizar um ajuste na quantidade e salvar 

Então o outro funcionário deve ver a quantidade atualizada refletida em 

tempo real ou ao recarregar a tela 

● Resultados Esperados: 

○ Imediatamente após o Funcionário A salvar o ajuste, o Funcionário B 

deve ver a quantidade atualizada (40 unidades) refletida em sua tela, 

sem a necessidade de recarregar manualmente a página 

(atualização em tempo real via push de dados). 

○ Alternativamente (se não houver push em tempo real): Ao recarregar 

a tela ou navegar para outra parte do sistema e retornar, o

Funcionário B deve ver a quantidade atualizada. 

○ O sistema deve garantir a integridade dos dados, evitando, conflitos 

de atualização ou inconsistências entre os usuários. 

--- 

## Seção 3: Testes Automatizados 

1.  Automação Básico: Escreva um caso de teste automatizado utilizando 

Robot Framework para garantir o funcionamento de um gerenciador de 

atividades:  To-Do .

a.  Cenários: 

i.  Cenário 1: 

1.  Adicionar três atividades; 

2.  Marcar a segunda atividade como Concluído; 

3.  Filtrar pelas atividades Concluídas; 

ii.  Cenário 2: 

1.  Adicionar quatro atividades; 

2.  Marcar a terceira atividade como Concluído; 

3.  Excluir a terceira atividade 

4.  Filtrar pelas atividades Concluídas; 

iii.  Cenário 3: 

1.  Adicionar quatro atividades; 

2.  Marcar a quarta atividade como Concluído; 

3.  Limpar as atividades Concluídas 

# Link GitHub:  automacao_basico 

2.  Automação Intermediário: Escreva um script de automação usando Robot 

Framework para garantir o funcionamento de um sistema de vendas, 

utilizando o site  https://www.saucedemo.com/ . Utilize a abordagem de 

design pattern Page Object Model (POM). 

a.  Cenários: 

i.  Cenário 1: 

1.  Realizar o login com o usuário (usuário: standard_user) 

2.  Adicionar o segundo produto no carrinho 3.  Adicionar um outro produto no carrinho 

4.  Remover o primeiro produto adicionado 

5.  Acessar carrinho e finalizar o pedido 

ii.  Cenário 2: 

1.  Realizar o login com o usuário (usuário: 

performance_glitch_user) 

2.  Adicionar o segundo produto no carrinho 

3.  Adicionar um outro produto no carrinho 

4.  Remover o primeiro produto adicionado 

5.  Acessar carrinho e finalizar o pedido 

iii.  Cenário 3: 

1.  Realizar o login com o usuário (usuário: standard_user) 

2.  Acessar carrinho e tentar finalizar o pedido. 

# Link GitHub:  automacao_intermediario 

3.  Automação Avançado: Escreva um script de automação usando Robot 

Framework para garantir o funcionamento de um sistema bancário, 

utilizando o site  https://demo.testfire.net/login.jsp  (usuário e senha: admin) 

a.  Cenários: 

i.  Cenário 1: 

1.  Realizar o login 

2.  Realizar uma transferência da conta 800000 Corporate 

para a conta 800001 Checking 

3.  Acessar o resumo da conta 800001 Checking 

4.  Deve listar corretamente a transferência e os dados da 

mesma 

5.  Deve ter atualizado o Saldo da Conta 

# Link GitHub:  automacao_avançado
**Relatórios:**
- Estruturar com logs detalhados
- Incluir evidências (screenshots, vídeos)
- Facilitar rastreamento de falhas
- Simplificar análise de resultados

---

<div align="center">

## 👩‍💻 Autora

### Sthefany A. Ricardo

**Analista de QA** | **Especialista em Automação de Testes**

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/sthefanyricardo/)
[![Email](https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:sthefannyricardo@gmail.com)
[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/sthefanyricardo)
[![Portfolio](https://img.shields.io/badge/Portfolio-FF5722?style=for-the-badge&logo=todoist&logoColor=white)](https://sthefanyricardo.github.io/robot-actions/)

---

**Feito com ❤️ e muito ☕**

*Última atualização: Outubro de 2025*

⭐ **Se este projeto foi útil para você, considere dar uma estrela!** ⭐

</div>
