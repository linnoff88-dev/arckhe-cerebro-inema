# IntegraêÂ§êÂ£o com kepano/obsidian-skills (camada de Formato)

O core do CêÂ©rebro ARCKHê êÂ© **organizaêÂ§êÂ£o**. A camada de **formato** garante que o
Claude escreva Obsidian *de verdade* ê¢â¬â `[[wikilinks]]`, `.base`, `.canvas`
vêÂ¡lidos ê¢â¬â em vez de markdown genêÂ©rico. Sem isso, o cêÂ©rebro 3 vira "pasta de
resumos"; com isso, vira uma wiki conectada e consultêÂ¡vel.

## Por que vale (principalmente no cêÂ©rebro 3)

| Skill kepano | O que garante | Onde ajuda aqui |
|---|---|---|
| `obsidian-markdown` | `[[wikilinks]]`, callouts, properties | `/nota` e `/triagem` geram notas que **se conectam** |
| `obsidian-bases` | arquivos `.base` (filtros, views) | `3-conhecimento/bases/` vira DB consultêÂ¡vel |
| `json-canvas` | `.canvas` vêÂ¡lido | `3-conhecimento/canvas/` (mapas) |
| `obsidian-cli` | operar o vault vivo (buscar, deduplicar) | manter a wiki sem duplicar nota |
| `defuddle` | markdown limpo de pêÂ¡ginas web | melhor entrada crua pro `/nota` |

## Instalar

Como plugin de marketplace (Claude Code):
```
/plugin marketplace add kepano/obsidian-skills
/plugin install obsidian@obsidian-skills
```

Ou via npx skills:
```
npx skills add https://github.com/kepano/obsidian-skills
```

`obsidian-markdown`, `obsidian-bases` e `json-canvas` sêÂ£o sêÂ³ conhecimento (zero
dependêÂªncia). `obsidian-cli` exige o Obsidian aberto; `defuddle` exige o CLI do
defuddle. Veja o repo do kepano para detalhes.

## Como o CLAUDE.md jêÂ¡ aponta pra isso

As skills `/nota` e `/triagem` deste projeto jêÂ¡ dizem "use a skill
`obsidian-markdown` do kepano se instalada". Ou seja: instalou o kepano, o cêÂ©rebro
3 passa a sair com wikilinks/properties corretos automaticamente.
