# CLAUDE.md ê¢â¬â CêÂ©rebro ARCKHê

> Este arquivo êÂ© o **roteador** do cêÂ©rebro. O Claude Code (ou Codex) lêÂª ele
> **obrigatoriamente** no inêÂ­cio de toda sessêÂ£o. êâ° o mapa que diz onde tudo
> mora e as regras de como agir. Mantenha-o enxuto e atualizado.

---

## Quem sou eu

[Rode `/setup-cerebro` para personalizar. O Claude vai te entrevistar em
texto livre e preencher aqui quem vocêÂª êÂ©, o que faz, e o seu contexto ê¢â¬â
em 2-3 frases, primeira pessoa.]

---

## Os 3 cêÂ©rebros (onde tudo mora)

Este vault êÂ© dividido em **trêÂªs cêÂ©rebros que nêÂ£o se misturam**. Antes de
procurar ou salvar qualquer coisa, decida em qual cêÂ©rebro ela vive:

| CêÂ©rebro | Pasta | Guarda | Ritmo |
|---|---|---|---|
| **1. Projeto** | `1-projeto/` | o que rolou, decisêÂµes, estado, prêÂ³ximas aêÂ§êÂµes | muda todo dia |
| **2. Self** | `2-self/` | quem eu sou, valores, pensamentos, dêÂºvidas abertas | muda devagar |
| **3. Conhecimento** | `3-conhecimento/` | fatos do mundo, o que aprendi, referêÂªncia | sêÂ³ acumula |

E uma entrada êÂºnica:

| `0-inbox/` | captura crua, **ainda nêÂ£o classificada** ê¢â¬â roteada depois via `/triagem` |

### Mapa detalhado

```
0-inbox/                  ê¢â Â joga qualquer coisa aqui; /triagem roteia depois

1-projeto/                ê¢â Â Cêâ°REBRO EPISêâDICO (o que rolou)
  daily/                  ê¢â Â nota diêÂ¡ria  YYYY-MM-DD.md
  projects/<nome>/        ê¢â Â um por projeto ativo (README.md + decisions.md)
  decisions/log.md        ê¢â Â decisêÂµes transversais (append-only, datadas)
  archive/                ê¢â Â projeto concluêÂ­do sai de projects/ e vem pra cêÂ¡

2-self/                   ê¢â Â Cêâ°REBRO DE IDENTIDADE (quem eu sou / penso)
  me.md                   ê¢â Â perfil (estêÂ¡vel)
  values.md               ê¢â Â valores e princêÂ­pios (raramente muda)
  beliefs.md              ê¢â Â posiêÂ§êÂµes / visêÂµes de mundo
  questions/<pergunta>.md ê¢â Â perguntas ABERTAS, nêÂ£o resolvidas, linkadas
  thinking/<ideia>.md     ê¢â Â ensaios / ideias-êÂ¡tomo com [[wikilinks]]
  journal/                ê¢â Â reflexêÂ£o pessoal (separado do daily de projeto)

3-conhecimento/           ê¢â Â Cêâ°REBRO DE REFERêÅ NCIA (fatos do mundo)
  sources/                ê¢â Â material CRU ingerido (PDFs, docs originais)
  notes/                  ê¢â Â A WIKI: notas-êÂ¡tomo destiladas, com [[wikilinks]]
  topics/<tema>.md        ê¢â Â MOCs (êÂ­ndices) que linkam as notes de um tema
  bases/                  ê¢â Â arquivos .base (views consultêÂ¡veis)
  canvas/                 ê¢â Â arquivos .canvas (mapas visuais)
```

---

## Regras de roteamento (quando procurar onde)

- Quando eu mencionar **uma decisêÂ£o** ê¢â â olhe `1-projeto/decisions/log.md` e o
  `decisions.md` do projeto relevante.
- Quando eu mencionar **um projeto / cliente / tarefa** ê¢â â olhe
  `1-projeto/projects/<nome>/`.
- Quando eu perguntar **o que eu penso / acho / acredito** sobre algo ê¢â â olhe
  `2-self/` (`values.md`, `beliefs.md`, `thinking/`, `questions/`).
- Quando eu pedir **um fato / referêÂªncia / o que aprendi** ê¢â â olhe
  `3-conhecimento/notes/` e os MOCs em `topics/`.
- Quando algo cair em `0-inbox/` ê¢â â ofereêÂ§a rodar `/triagem` para classificar.
- **Antes de escrever qualquer coisa que vai virar pêÂºblico** ê¢â â leia
  `2-self/voz.md` (tom de voz) e `2-self/design.md` (se existirem).

### Como decidir o cêÂ©rebro (teste rêÂ¡pido)
- Vira histêÂ³ria/arquivo daqui a 1 ano? ê¢â â **Projeto**
- êâ° subjetivo, êÂ© *seu*, evolui devagar? ê¢â â **Self**
- Outra pessoa poderia ter a mesma nota? ê¢â â **Conhecimento**

---

## Regras de manutenêÂ§êÂ£o

- Nada nasce jêÂ¡ classificado: capture em `0-inbox/`, roteie depois.
- Nota diêÂ¡ria ê¢â â `1-projeto/daily/YYYY-MM-DD.md`.
- DecisêÂ£o ê¢â â registre com **data + razêÂ£o + contexto** no `decisions/log.md`.
- Conhecimento novo ê¢â â destile a fonte crua (`3-conhecimento/sources/`) em
  **nota-êÂ¡tomo** com `[[wikilinks]]` vêÂ¡lidos (use `/nota`).
- Projeto concluêÂ­do ê¢â â mova pra `1-projeto/archive/` (nunca delete).
- Uma pergunta de `2-self/questions/` que for **resolvida** vira uma nota em
  `3-conhecimento/notes/` (migra de cêÂ©rebro).
- Atualize **este arquivo** sempre que suas convenêÂ§êÂµes mudarem.
- **Economia de token:** use este mapa para ir direto êÂ  pasta certa ê¢â¬â nêÂ£o
  vasculhe o vault inteiro a cada pergunta.

---

## Skills disponêÂ­veis

- `/setup-cerebro` ê¢â¬â personaliza este vault (entrevista em texto livre)
- `/triagem`       ê¢â¬â lêÂª itens do `0-inbox/` e roteia pro cêÂ©rebro certo
- `/daily`         ê¢â¬â comeêÂ§a o dia com contexto do cêÂ©rebro de Projeto
- `/tldr`          ê¢â¬â salva o resumo desta sessêÂ£o no cêÂ©rebro certo
- `/nota`          ê¢â¬â destila uma fonte crua em nota-wiki vêÂ¡lida (Conhecimento)
- `/socratica`     ê¢â¬â a LLM te **questiona** (nêÂ£o concorda) ê¢â¬â para o cêÂ©rebro Self

---

## Camadas opcionais (fundaêÂ§êÂ£o e extras)

- **Formato (kepano):** para o Claude escrever Obsidian *de verdade*
  (`[[wikilinks]]`, `.base`, `.canvas` vêÂ¡lidos), instale
  [`kepano/obsidian-skills`](https://github.com/kepano/obsidian-skills).
  Ver `docs/kepano-integracao.md`. **Recomendado** para o cêÂ©rebro 3.
- **RecuperaêÂ§êÂ£o (graphify):** se um dia este cêÂ©rebro guardar **cêÂ³digo** ou um
  volume grande de notas, `safishamsi/graphify` dêÂ¡ um grafo + MCP que o agente
  consulta. **Opcional** ê¢â¬â fica de fora do core (cêÂ©rebro de notas).
- **VisualizaêÂ§êÂ£o (brain-map):** para *ver* o grafo do cêÂ©rebro (humano),
  `zubair-trabzada/brain-map` desenha a pasta de `.md`. Opcional/demo.

> Detalhes e a teoria completa em `docs/arquitetura.md`.
