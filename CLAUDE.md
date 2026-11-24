# CLAUDE.md â€” CÃ©rebro ARCKHÉ

> Este arquivo Ã© o **roteador** do cÃ©rebro. O Claude Code (ou Codex) lÃª ele
> **obrigatoriamente** no inÃ­cio de toda sessÃ£o. Ã‰ o mapa que diz onde tudo
> mora e as regras de como agir. Mantenha-o enxuto e atualizado.

---

## Quem sou eu

[Rode `/setup-cerebro` para personalizar. O Claude vai te entrevistar em
texto livre e preencher aqui quem vocÃª Ã©, o que faz, e o seu contexto â€”
em 2-3 frases, primeira pessoa.]

---

## Os 3 cÃ©rebros (onde tudo mora)

Este vault Ã© dividido em **trÃªs cÃ©rebros que nÃ£o se misturam**. Antes de
procurar ou salvar qualquer coisa, decida em qual cÃ©rebro ela vive:

| CÃ©rebro | Pasta | Guarda | Ritmo |
|---|---|---|---|
| **1. Projeto** | `1-projeto/` | o que rolou, decisÃµes, estado, prÃ³ximas aÃ§Ãµes | muda todo dia |
| **2. Self** | `2-self/` | quem eu sou, valores, pensamentos, dÃºvidas abertas | muda devagar |
| **3. Conhecimento** | `3-conhecimento/` | fatos do mundo, o que aprendi, referÃªncia | sÃ³ acumula |

E uma entrada Ãºnica:

| `0-inbox/` | captura crua, **ainda nÃ£o classificada** â€” roteada depois via `/triagem` |

### Mapa detalhado

```
0-inbox/                  â† joga qualquer coisa aqui; /triagem roteia depois

1-projeto/                â† CÃ‰REBRO EPISÃ“DICO (o que rolou)
  daily/                  â† nota diÃ¡ria  YYYY-MM-DD.md
  projects/<nome>/        â† um por projeto ativo (README.md + decisions.md)
  decisions/log.md        â† decisÃµes transversais (append-only, datadas)
  archive/                â† projeto concluÃ­do sai de projects/ e vem pra cÃ¡

2-self/                   â† CÃ‰REBRO DE IDENTIDADE (quem eu sou / penso)
  me.md                   â† perfil (estÃ¡vel)
  values.md               â† valores e princÃ­pios (raramente muda)
  beliefs.md              â† posiÃ§Ãµes / visÃµes de mundo
  questions/<pergunta>.md â† perguntas ABERTAS, nÃ£o resolvidas, linkadas
  thinking/<ideia>.md     â† ensaios / ideias-Ã¡tomo com [[wikilinks]]
  journal/                â† reflexÃ£o pessoal (separado do daily de projeto)

3-conhecimento/           â† CÃ‰REBRO DE REFERÃŠNCIA (fatos do mundo)
  sources/                â† material CRU ingerido (PDFs, docs originais)
  notes/                  â† A WIKI: notas-Ã¡tomo destiladas, com [[wikilinks]]
  topics/<tema>.md        â† MOCs (Ã­ndices) que linkam as notes de um tema
  bases/                  â† arquivos .base (views consultÃ¡veis)
  canvas/                 â† arquivos .canvas (mapas visuais)
```

---

## Regras de roteamento (quando procurar onde)

- Quando eu mencionar **uma decisÃ£o** â†’ olhe `1-projeto/decisions/log.md` e o
  `decisions.md` do projeto relevante.
- Quando eu mencionar **um projeto / cliente / tarefa** â†’ olhe
  `1-projeto/projects/<nome>/`.
- Quando eu perguntar **o que eu penso / acho / acredito** sobre algo â†’ olhe
  `2-self/` (`values.md`, `beliefs.md`, `thinking/`, `questions/`).
- Quando eu pedir **um fato / referÃªncia / o que aprendi** â†’ olhe
  `3-conhecimento/notes/` e os MOCs em `topics/`.
- Quando algo cair em `0-inbox/` â†’ ofereÃ§a rodar `/triagem` para classificar.
- **Antes de escrever qualquer coisa que vai virar pÃºblico** â†’ leia
  `2-self/voz.md` (tom de voz) e `2-self/design.md` (se existirem).

### Como decidir o cÃ©rebro (teste rÃ¡pido)
- Vira histÃ³ria/arquivo daqui a 1 ano? â†’ **Projeto**
- Ã‰ subjetivo, Ã© *seu*, evolui devagar? â†’ **Self**
- Outra pessoa poderia ter a mesma nota? â†’ **Conhecimento**

---

## Regras de manutenÃ§Ã£o

- Nada nasce jÃ¡ classificado: capture em `0-inbox/`, roteie depois.
- Nota diÃ¡ria â†’ `1-projeto/daily/YYYY-MM-DD.md`.
- DecisÃ£o â†’ registre com **data + razÃ£o + contexto** no `decisions/log.md`.
- Conhecimento novo â†’ destile a fonte crua (`3-conhecimento/sources/`) em
  **nota-Ã¡tomo** com `[[wikilinks]]` vÃ¡lidos (use `/nota`).
- Projeto concluÃ­do â†’ mova pra `1-projeto/archive/` (nunca delete).
- Uma pergunta de `2-self/questions/` que for **resolvida** vira uma nota em
  `3-conhecimento/notes/` (migra de cÃ©rebro).
- Atualize **este arquivo** sempre que suas convenÃ§Ãµes mudarem.
- **Economia de token:** use este mapa para ir direto Ã  pasta certa â€” nÃ£o
  vasculhe o vault inteiro a cada pergunta.

---

## Skills disponÃ­veis

- `/setup-cerebro` â€” personaliza este vault (entrevista em texto livre)
- `/triagem`       â€” lÃª itens do `0-inbox/` e roteia pro cÃ©rebro certo
- `/daily`         â€” comeÃ§a o dia com contexto do cÃ©rebro de Projeto
- `/tldr`          â€” salva o resumo desta sessÃ£o no cÃ©rebro certo
- `/nota`          â€” destila uma fonte crua em nota-wiki vÃ¡lida (Conhecimento)
- `/socratica`     â€” a LLM te **questiona** (nÃ£o concorda) â€” para o cÃ©rebro Self

---

## Camadas opcionais (fundaÃ§Ã£o e extras)

- **Formato (kepano):** para o Claude escrever Obsidian *de verdade*
  (`[[wikilinks]]`, `.base`, `.canvas` vÃ¡lidos), instale
  [`kepano/obsidian-skills`](https://github.com/kepano/obsidian-skills).
  Ver `docs/kepano-integracao.md`. **Recomendado** para o cÃ©rebro 3.
- **RecuperaÃ§Ã£o (graphify):** se um dia este cÃ©rebro guardar **cÃ³digo** ou um
  volume grande de notas, `safishamsi/graphify` dÃ¡ um grafo + MCP que o agente
  consulta. **Opcional** â€” fica de fora do core (cÃ©rebro de notas).
- **VisualizaÃ§Ã£o (brain-map):** para *ver* o grafo do cÃ©rebro (humano),
  `zubair-trabzada/brain-map` desenha a pasta de `.md`. Opcional/demo.

> Detalhes e a teoria completa em `docs/arquitetura.md`.
