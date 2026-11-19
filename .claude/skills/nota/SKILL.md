---
name: nota
description: Destila uma fonte crua (PDF, artigo, conversa, doc) em uma nota-átomo do cérebro de Conhecimento, com [[wikilinks]] válidos. Use quando o usuário disser "vira nota", "destila isso", "salva no conhecimento", "resume essa fonte", ou apontar um arquivo/URL pra arquivar como referência.
---

# Nota — Destila fonte crua em nota-wiki (cérebro 3)

Transforma material cru em uma **nota-átomo** consultável e conectada. É o loop
raw → LLM → wiki: a LLM lê o cru e escreve uma nota Obsidian de verdade.

## Passo 1 — Pegar a fonte
A fonte pode ser: um arquivo em `3-conhecimento/sources/` ou `0-inbox/`, uma URL,
ou o conteúdo da conversa atual. Para arquivos binários (PDF/PPTX/XLSX/DOCX),
rode antes o processador Gemini:
```bash
python scripts/process_files_with_gemini.py <caminho>
```
Para URLs, prefira a skill `defuddle` do kepano (extrai markdown limpo) se instalada.

## Passo 2 — Destilar (uma ideia por nota)
Escreva uma nota **atômica**: um conceito por arquivo. Não copie a fonte —
**destile**. Estrutura:

```markdown
---
tipo: nota
fonte: <de onde veio>
tags: [tema1, tema2]
---

# <Título: o conceito em uma frase>

<2-5 parágrafos com a ideia essencial, com suas palavras.>

## Conexões
- Relaciona com [[outra-nota]]
- Contradiz / completa [[outra-nota]]

## Fonte
- <link ou caminho do material cru em sources/>
```

## Passo 3 — Linkar (isto fecha a alça)
- Crie `[[wikilinks]]` para notas que já existem em `3-conhecimento/notes/`.
  Procure por temas próximos antes de salvar — uma nota sem link é arquivo morto.
- Se houver um MOC do tema em `3-conhecimento/topics/`, adicione a nota a ele.
  Se não houver e o tema é recorrente, crie o MOC.
- Use a skill `obsidian-markdown` do kepano (se instalada) para garantir
  wikilinks/properties válidos.

## Passo 4 — Salvar e reportar
Salve em `3-conhecimento/notes/<titulo-kebab>.md`. Diga ao usuário: o título, onde
salvou, e a quais notas/MOCs ela ficou ligada.
