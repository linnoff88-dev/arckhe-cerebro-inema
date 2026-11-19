# CLAUDE.md — Cérebro INEMA

> Este arquivo é o **roteador** do cérebro. O Claude Code (ou Codex) lê ele
> **obrigatoriamente** no início de toda sessão. É o mapa que diz onde tudo
> mora e as regras de como agir. Mantenha-o enxuto e atualizado.

---

## Quem sou eu

[Rode `/setup-cerebro` para personalizar. O Claude vai te entrevistar em
texto livre e preencher aqui quem você é, o que faz, e o seu contexto —
em 2-3 frases, primeira pessoa.]

---

## Os 3 cérebros (onde tudo mora)

Este vault é dividido em **três cérebros que não se misturam**. Antes de
procurar ou salvar qualquer coisa, decida em qual cérebro ela vive:

| Cérebro | Pasta | Guarda | Ritmo |
|---|---|---|---|
| **1. Projeto** | `1-projeto/` | o que rolou, decisões, estado, próximas ações | muda todo dia |
| **2. Self** | `2-self/` | quem eu sou, valores, pensamentos, dúvidas abertas | muda devagar |
| **3. Conhecimento** | `3-conhecimento/` | fatos do mundo, o que aprendi, referência | só acumula |

E uma entrada única:

| `0-inbox/` | captura crua, **ainda não classificada** — roteada depois via `/triagem` |

### Mapa detalhado

```
0-inbox/                  ← joga qualquer coisa aqui; /triagem roteia depois

1-projeto/                ← CÉREBRO EPISÓDICO (o que rolou)
  daily/                  ← nota diária  YYYY-MM-DD.md
  projects/<nome>/        ← um por projeto ativo (README.md + decisions.md)
  decisions/log.md        ← decisões transversais (append-only, datadas)
  archive/                ← projeto concluído sai de projects/ e vem pra cá

2-self/                   ← CÉREBRO DE IDENTIDADE (quem eu sou / penso)
  me.md                   ← perfil (estável)
  values.md               ← valores e princípios (raramente muda)
  beliefs.md              ← posições / visões de mundo
  questions/<pergunta>.md ← perguntas ABERTAS, não resolvidas, linkadas
  thinking/<ideia>.md     ← ensaios / ideias-átomo com [[wikilinks]]
  journal/                ← reflexão pessoal (separado do daily de projeto)

3-conhecimento/           ← CÉREBRO DE REFERÊNCIA (fatos do mundo)
  sources/                ← material CRU ingerido (PDFs, docs originais)
  notes/                  ← A WIKI: notas-átomo destiladas, com [[wikilinks]]
  topics/<tema>.md        ← MOCs (índices) que linkam as notes de um tema
  bases/                  ← arquivos .base (views consultáveis)
  canvas/                 ← arquivos .canvas (mapas visuais)
```

---

## Regras de roteamento (quando procurar onde)

- Quando eu mencionar **uma decisão** → olhe `1-projeto/decisions/log.md` e o
  `decisions.md` do projeto relevante.
- Quando eu mencionar **um projeto / cliente / tarefa** → olhe
  `1-projeto/projects/<nome>/`.
- Quando eu perguntar **o que eu penso / acho / acredito** sobre algo → olhe
  `2-self/` (`values.md`, `beliefs.md`, `thinking/`, `questions/`).
- Quando eu pedir **um fato / referência / o que aprendi** → olhe
  `3-conhecimento/notes/` e os MOCs em `topics/`.
- Quando algo cair em `0-inbox/` → ofereça rodar `/triagem` para classificar.
- **Antes de escrever qualquer coisa que vai virar público** → leia
  `2-self/voz.md` (tom de voz) e `2-self/design.md` (se existirem).

### Como decidir o cérebro (teste rápido)
- Vira história/arquivo daqui a 1 ano? → **Projeto**
- É subjetivo, é *seu*, evolui devagar? → **Self**
- Outra pessoa poderia ter a mesma nota? → **Conhecimento**

---

## Regras de manutenção

- Nada nasce já classificado: capture em `0-inbox/`, roteie depois.
- Nota diária → `1-projeto/daily/YYYY-MM-DD.md`.
- Decisão → registre com **data + razão + contexto** no `decisions/log.md`.
- Conhecimento novo → destile a fonte crua (`3-conhecimento/sources/`) em
  **nota-átomo** com `[[wikilinks]]` válidos (use `/nota`).
- Projeto concluído → mova pra `1-projeto/archive/` (nunca delete).
- Uma pergunta de `2-self/questions/` que for **resolvida** vira uma nota em
  `3-conhecimento/notes/` (migra de cérebro).
- Atualize **este arquivo** sempre que suas convenções mudarem.
- **Economia de token:** use este mapa para ir direto à pasta certa — não
  vasculhe o vault inteiro a cada pergunta.

---

## Skills disponíveis

- `/setup-cerebro` — personaliza este vault (entrevista em texto livre)
- `/triagem`       — lê itens do `0-inbox/` e roteia pro cérebro certo
- `/daily`         — começa o dia com contexto do cérebro de Projeto
- `/tldr`          — salva o resumo desta sessão no cérebro certo
- `/nota`          — destila uma fonte crua em nota-wiki válida (Conhecimento)
- `/socratica`     — a LLM te **questiona** (não concorda) — para o cérebro Self

---

## Camadas opcionais (fundação e extras)

- **Formato (kepano):** para o Claude escrever Obsidian *de verdade*
  (`[[wikilinks]]`, `.base`, `.canvas` válidos), instale
  [`kepano/obsidian-skills`](https://github.com/kepano/obsidian-skills).
  Ver `docs/kepano-integracao.md`. **Recomendado** para o cérebro 3.
- **Recuperação (graphify):** se um dia este cérebro guardar **código** ou um
  volume grande de notas, `safishamsi/graphify` dá um grafo + MCP que o agente
  consulta. **Opcional** — fica de fora do core (cérebro de notas).
- **Visualização (brain-map):** para *ver* o grafo do cérebro (humano),
  `zubair-trabzada/brain-map` desenha a pasta de `.md`. Opcional/demo.

> Detalhes e a teoria completa em `docs/arquitetura.md`.
