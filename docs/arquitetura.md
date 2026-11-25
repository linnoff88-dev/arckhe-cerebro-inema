ï»¿# Arquitetura ê¢â¬â 3 cêÂ©rebros êâ 4 camadas

> ReferêÂªncia condensada. A pesquisa completa (comparaêÂ§êÂ£o com outros projetos,
> linhagem, Karpathy vs Obsidian) estêÂ¡ em
> [`linnoff88-dev/2cerebrox`](https://github.com/linnoff88-dev/2cerebrox).

## Os 3 tipos de cêÂ©rebro

"Segundo cêÂ©rebro" nêÂ£o êÂ© uma coisa sêÂ³. SêÂ£o **3 tipos de conteêÂºdo com necessidades
opostas** ê¢â¬â batem com os 3 tipos de memêÂ³ria da ciêÂªncia cognitiva. MisturêÂ¡-los
incha o cêÂ©rebro.

| | CêÂ©rebro | MemêÂ³ria | Natureza | Regra de ouro |
|---|---|---|---|---|
| **1** | Projeto | episêÂ³dica | muda todo dia, depois arquiva | append-only e datado |
| **2** | Self | identidade | poucos e estêÂ¡veis + ideias vivas | poucos arquivos + ideias linkadas |
| **3** | Conhecimento | semêÂ¢ntica | cresce pra sempre, impessoal | raw ê¢â â wiki, tudo consultêÂ¡vel |

Cada um ativa um lado diferente da LLM:
- **Projeto** ê¢â â a LLM **registra fiel** (decisêÂ£o + razêÂ£o + data).
- **Self** ê¢â â a LLM **pensa junto** (te confronta ê¢â¬â ver `/socratica`).
- **Conhecimento** ê¢â â a LLM **organiza e recupera** (raw ê¢â â wiki ê¢â¬â ver `/nota`).

SeparaêÂ§êÂ£o na pasta = ordem. `[[wikilinks]]` cruzando = o cêÂ©rebro pensando junto.

## As 4 camadas

```
ORGANIZAêâ¡êÆO   este projeto (CLAUDE.md + 3 cêÂ©rebros + skills)  ê¢â Â o cêÂ©rebro
FORMATO       kepano/obsidian-skills                          ê¢â Â as mêÂ£os (.md/.base/.canvas)
RECUPERAêâ¡êÆO   graphify                                        ê¢â Â a busca (grafo+MCP, p/ agente)
VISUALIZAêâ¡êÆO  brain-map                                       ê¢â Â a vista (grafo, p/ humano)
```

- **OrganizaêÂ§êÂ£o** êÂ© o core deste repo.
- **Formato** (kepano) êÂ© recomendado ê¢â¬â garante que a LLM escreva Obsidian de
  verdade. Ver [`kepano-integracao.md`](kepano-integracao.md).
- **RecuperaêÂ§êÂ£o** (graphify) êÂ© opcional ê¢â¬â melhor para cêÂ³digo ou volume grande.
- **VisualizaêÂ§êÂ£o** (brain-map) êÂ© opcional ê¢â¬â grafo bonito para *ver*/demonstrar.

## O loop (linha Karpathy)

```
material cru ê¢â â a LLM lêÂª ê¢â â a LLM organiza ê¢â â wiki (.md, [[wikilinks]])
                                              ê¢â â                    ê¢ââ
                                              ê¢ââê¢ââ¬ê¢ââ¬ê¢ââ¬ê¢ââ¬ê¢ââ¬ê¢ââ¬ê¢ââ¬ê¢ââ¬ê¢ââ¬ê¢ââ¬ê¢ââ¬ê¢ââ¬ê¢ââ¬ê¢ââ¬ê¢ââ¬ê¢ââ¬ê¢ââ¬ê¢ââ¬ê¢ââ¬ê¢ââ¬ê¢âË
                               a wiki vira contexto da prêÂ³xima sessêÂ£o ê¢â â acumula
```

A diferenêÂ§a para o Obsidian clêÂ¡ssico nêÂ£o êÂ© "estrutura vs nêÂ£o": êÂ© **quem cura**.
Aqui a LLM monta e mantêÂ©m a wiki; vocêÂª sêÂ³ joga o material e revisa. O Obsidian
(ou o VS Code, ou o app do Claude) êÂ© sêÂ³ o visualizador por cima dos `.md` ê¢â¬â o
cêÂ©rebro sêÂ£o os arquivos + o `CLAUDE.md`. Por isso sobrevive ao hype: êÂ© sêÂ³ texto.
