# Arquitetura — 3 cérebros × 4 camadas

> Referência condensada. A pesquisa completa (comparação com outros projetos,
> linhagem, Karpathy vs Obsidian) está em
> [`inematds/2cerebrox`](https://github.com/inematds/2cerebrox).

## Os 3 tipos de cérebro

"Segundo cérebro" não é uma coisa só. São **3 tipos de conteúdo com necessidades
opostas** — batem com os 3 tipos de memória da ciência cognitiva. Misturá-los
incha o cérebro.

| | Cérebro | Memória | Natureza | Regra de ouro |
|---|---|---|---|---|
| **1** | Projeto | episódica | muda todo dia, depois arquiva | append-only e datado |
| **2** | Self | identidade | poucos e estáveis + ideias vivas | poucos arquivos + ideias linkadas |
| **3** | Conhecimento | semântica | cresce pra sempre, impessoal | raw → wiki, tudo consultável |

Cada um ativa um lado diferente da LLM:
- **Projeto** → a LLM **registra fiel** (decisão + razão + data).
- **Self** → a LLM **pensa junto** (te confronta — ver `/socratica`).
- **Conhecimento** → a LLM **organiza e recupera** (raw → wiki — ver `/nota`).

Separação na pasta = ordem. `[[wikilinks]]` cruzando = o cérebro pensando junto.

## As 4 camadas

```
ORGANIZAÇÃO   este projeto (CLAUDE.md + 3 cérebros + skills)  ← o cérebro
FORMATO       kepano/obsidian-skills                          ← as mãos (.md/.base/.canvas)
RECUPERAÇÃO   graphify                                        ← a busca (grafo+MCP, p/ agente)
VISUALIZAÇÃO  brain-map                                       ← a vista (grafo, p/ humano)
```

- **Organização** é o core deste repo.
- **Formato** (kepano) é recomendado — garante que a LLM escreva Obsidian de
  verdade. Ver [`kepano-integracao.md`](kepano-integracao.md).
- **Recuperação** (graphify) é opcional — melhor para código ou volume grande.
- **Visualização** (brain-map) é opcional — grafo bonito para *ver*/demonstrar.

## O loop (linha Karpathy)

```
material cru → a LLM lê → a LLM organiza → wiki (.md, [[wikilinks]])
                                              ↑                    │
                                              └────────────────────┘
                               a wiki vira contexto da próxima sessão → acumula
```

A diferença para o Obsidian clássico não é "estrutura vs não": é **quem cura**.
Aqui a LLM monta e mantém a wiki; você só joga o material e revisa. O Obsidian
(ou o VS Code, ou o app do Claude) é só o visualizador por cima dos `.md` — o
cérebro são os arquivos + o `CLAUDE.md`. Por isso sobrevive ao hype: é só texto.
