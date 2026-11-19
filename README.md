<div align="center">

# ðŸ§  CÃ©rebro INEMA

<div align="center">
  <img src="capa/logo.svg" alt="Arckhé AI" height="48" />
  <p><strong>Arckhé AI</strong></p>
</div>


**Um segundo cÃ©rebro de IA com 3 cÃ©rebros â€” em portuguÃªs, roda no Linux.**

Obsidian + Claude Code Â· Local Â· Privado Â· Um comando

</div>

```
   VocÃª joga o material cru
          â”‚
          â–¼
  â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”
  â”‚   0-inbox/  (captura) â”‚
  â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”¬â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜
       /triagem roteia
   â”Œâ”€â”€â”€â”€â”€â”€â”€â”¼â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”
   â–¼       â–¼               â–¼
1-projeto 2-self    3-conhecimento
(o que    (quem eu   (fatos do mundo,
 rolou)    sou/penso)  o que aprendi)
   â””â”€â”€â”€â”€â”€â”€â”€â”´â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜
              â”‚  Claude Code lÃª este vault
              â–¼
     IA que jÃ¡ sabe quem vocÃª Ã©,
     o que vocÃª estÃ¡ fazendo,
     e o que vocÃª jÃ¡ aprendeu â€”
     antes de vocÃª digitar uma palavra.
```

---

## O que Ã©

A maioria dos "segundos cÃ©rebros" trata tudo como um monte sÃ³ de notas. O
**CÃ©rebro INEMA** parte de uma distinÃ§Ã£o: existem **3 tipos de memÃ³ria com
necessidades opostas**, e misturÃ¡-las incha o cÃ©rebro. EntÃ£o ele separa em trÃªs:

| CÃ©rebro | Guarda | Por quÃª |
|---|---|---|
| **1. Projeto** | o que rolou, decisÃµes, estado | Ã© episÃ³dico â€” muda todo dia, depois arquiva |
| **2. Self** | valores, pensamentos, dÃºvidas abertas | Ã© identidade â€” muda devagar, Ã© *seu* |
| **3. Conhecimento** | fatos, o que vocÃª aprendeu | Ã© referÃªncia â€” sÃ³ acumula, Ã© consultÃ¡vel |

Cada um tem sua pasta, sua regra e sua skill. Os `[[wikilinks]]` cruzam entre
os trÃªs â€” separaÃ§Ã£o dÃ¡ ordem, links dÃ£o o cÃ©rebro pensando junto.

> A teoria completa (3 cÃ©rebros Ã— 4 camadas, comparaÃ§Ã£o com outros projetos)
> estÃ¡ no repositÃ³rio de pesquisa [`2cerebrox`](https://github.com/inematds/2cerebrox).

## Como funciona

O truque Ã© simples: **o Claude Code lÃª os arquivos do diretÃ³rio no inÃ­cio de
toda sessÃ£o.** Se esses arquivos contÃªm seu contexto, ele jÃ¡ sabe tudo sobre
vocÃª antes de vocÃª digitar. O `CLAUDE.md` Ã© o **roteador** â€” o mapa que diz
onde cada coisa mora e as regras de como agir.

NÃ£o Ã© software com banco de dados escondido. **A memÃ³ria Ã© o seu sistema de
arquivos.** Por isso ele sobrevive ao hype: Ã© sÃ³ texto. Bane-se um modelo, vem
um melhor amanhÃ£ â€” vocÃª troca o motor e o cÃ©rebro fica.

## InÃ­cio rÃ¡pido

### Linux / macOS

```bash
git clone https://github.com/inematds/cerebro-inema.git
cd cerebro-inema
./setup.sh
```

O `setup.sh` cria o vault com a estrutura dos 3 cÃ©rebros, instala as skills, e
roda o `/setup-cerebro` para te entrevistar e personalizar o `CLAUDE.md`.

## As skills

| Skill | O que faz | CÃ©rebro |
|---|---|---|
| `/setup-cerebro` | entrevista em texto livre e personaliza o vault | â€” |
| `/triagem` | roteia o que estÃ¡ no `0-inbox/` pro cÃ©rebro certo | 0 |
| `/daily` | comeÃ§a o dia com contexto de projeto | 1 |
| `/tldr` | salva o resumo da sessÃ£o no lugar certo | 1/3 |
| `/nota` | destila uma fonte crua em nota-wiki vÃ¡lida | 3 |
| `/socratica` | a LLM te **questiona** em vez de concordar | 2 |

## As 4 camadas (opcional)

O core Ã© **organizaÃ§Ã£o**. Por baixo, pode acoplar:

- **Formato** â€” [`kepano/obsidian-skills`](https://github.com/kepano/obsidian-skills):
  faz o Claude escrever `[[wikilinks]]`, `.base`, `.canvas` vÃ¡lidos. Recomendado
  para o cÃ©rebro 3. Ver [`docs/kepano-integracao.md`](docs/kepano-integracao.md).
- **RecuperaÃ§Ã£o** â€” [`graphify`](https://github.com/safishamsi/graphify): grafo +
  MCP que o *agente* consulta. Opcional, melhor para cÃ³digo.
- **VisualizaÃ§Ã£o** â€” [`brain-map`](https://github.com/zubair-trabzada/brain-map):
  grafo que o *humano* explora. Opcional / demo.

## IngestÃ£o de arquivos (cÃ©rebro 3)

Tem PDFs, planilhas, docs? O `/nota` e o processador Gemini extraem e destilam:

```bash
pip install -r requirements.txt
cp .env.example .env   # coloque sua GEMINI_API_KEY
python scripts/process_files_with_gemini.py 3-conhecimento/sources/
```

## Filosofia em uma frase

Um vault, **trÃªs cÃ©rebros que nÃ£o se misturam**, uma inbox na entrada, skills
roteadas por cÃ©rebro, e wikilinks cruzando tudo â€” cada um com seu ritmo, sua
regra e sua ferramenta, conversando com a mesma LLM.

---

<div align="center">
Um projeto <a href="https://inema.club">INEMA.CLUB</a> Â· feito com Claude Code
</div>

---

<div align="center">
  <img src="capa/logo.svg" alt="Arckhé AI" height="32" />
  <p><strong>Arckhé AI</strong></p>
</div>