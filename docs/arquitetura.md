# Arquitetura â€” 3 cÃ©rebros Ã— 4 camadas

> ReferÃªncia condensada. A pesquisa completa (comparaÃ§Ã£o com outros projetos,
> linhagem, Karpathy vs Obsidian) estÃ¡ em
> [`linnoff88-dev/2cerebrox`](https://github.com/linnoff88-dev/2cerebrox).

## Os 3 tipos de cÃ©rebro

"Segundo cÃ©rebro" nÃ£o Ã© uma coisa sÃ³. SÃ£o **3 tipos de conteÃºdo com necessidades
opostas** â€” batem com os 3 tipos de memÃ³ria da ciÃªncia cognitiva. MisturÃ¡-los
incha o cÃ©rebro.

| | CÃ©rebro | MemÃ³ria | Natureza | Regra de ouro |
|---|---|---|---|---|
| **1** | Projeto | episÃ³dica | muda todo dia, depois arquiva | append-only e datado |
| **2** | Self | identidade | poucos e estÃ¡veis + ideias vivas | poucos arquivos + ideias linkadas |
| **3** | Conhecimento | semÃ¢ntica | cresce pra sempre, impessoal | raw â†’ wiki, tudo consultÃ¡vel |

Cada um ativa um lado diferente da LLM:
- **Projeto** â†’ a LLM **registra fiel** (decisÃ£o + razÃ£o + data).
- **Self** â†’ a LLM **pensa junto** (te confronta â€” ver `/socratica`).
- **Conhecimento** â†’ a LLM **organiza e recupera** (raw â†’ wiki â€” ver `/nota`).

SeparaÃ§Ã£o na pasta = ordem. `[[wikilinks]]` cruzando = o cÃ©rebro pensando junto.

## As 4 camadas

```
ORGANIZAÃ‡ÃƒO   este projeto (CLAUDE.md + 3 cÃ©rebros + skills)  â† o cÃ©rebro
FORMATO       kepano/obsidian-skills                          â† as mÃ£os (.md/.base/.canvas)
RECUPERAÃ‡ÃƒO   graphify                                        â† a busca (grafo+MCP, p/ agente)
VISUALIZAÃ‡ÃƒO  brain-map                                       â† a vista (grafo, p/ humano)
```

- **OrganizaÃ§Ã£o** Ã© o core deste repo.
- **Formato** (kepano) Ã© recomendado â€” garante que a LLM escreva Obsidian de
  verdade. Ver [`kepano-integracao.md`](kepano-integracao.md).
- **RecuperaÃ§Ã£o** (graphify) Ã© opcional â€” melhor para cÃ³digo ou volume grande.
- **VisualizaÃ§Ã£o** (brain-map) Ã© opcional â€” grafo bonito para *ver*/demonstrar.

## O loop (linha Karpathy)

```
material cru â†’ a LLM lÃª â†’ a LLM organiza â†’ wiki (.md, [[wikilinks]])
                                              â†‘                    â”‚
                                              â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜
                               a wiki vira contexto da prÃ³xima sessÃ£o â†’ acumula
```

A diferenÃ§a para o Obsidian clÃ¡ssico nÃ£o Ã© "estrutura vs nÃ£o": Ã© **quem cura**.
Aqui a LLM monta e mantÃ©m a wiki; vocÃª sÃ³ joga o material e revisa. O Obsidian
(ou o VS Code, ou o app do Claude) Ã© sÃ³ o visualizador por cima dos `.md` â€” o
cÃ©rebro sÃ£o os arquivos + o `CLAUDE.md`. Por isso sobrevive ao hype: Ã© sÃ³ texto.
