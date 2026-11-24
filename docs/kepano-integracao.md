# IntegraÃ§Ã£o com kepano/obsidian-skills (camada de Formato)

O core do CÃ©rebro ARCKHÉ Ã© **organizaÃ§Ã£o**. A camada de **formato** garante que o
Claude escreva Obsidian *de verdade* â€” `[[wikilinks]]`, `.base`, `.canvas`
vÃ¡lidos â€” em vez de markdown genÃ©rico. Sem isso, o cÃ©rebro 3 vira "pasta de
resumos"; com isso, vira uma wiki conectada e consultÃ¡vel.

## Por que vale (principalmente no cÃ©rebro 3)

| Skill kepano | O que garante | Onde ajuda aqui |
|---|---|---|
| `obsidian-markdown` | `[[wikilinks]]`, callouts, properties | `/nota` e `/triagem` geram notas que **se conectam** |
| `obsidian-bases` | arquivos `.base` (filtros, views) | `3-conhecimento/bases/` vira DB consultÃ¡vel |
| `json-canvas` | `.canvas` vÃ¡lido | `3-conhecimento/canvas/` (mapas) |
| `obsidian-cli` | operar o vault vivo (buscar, deduplicar) | manter a wiki sem duplicar nota |
| `defuddle` | markdown limpo de pÃ¡ginas web | melhor entrada crua pro `/nota` |

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

`obsidian-markdown`, `obsidian-bases` e `json-canvas` sÃ£o sÃ³ conhecimento (zero
dependÃªncia). `obsidian-cli` exige o Obsidian aberto; `defuddle` exige o CLI do
defuddle. Veja o repo do kepano para detalhes.

## Como o CLAUDE.md jÃ¡ aponta pra isso

As skills `/nota` e `/triagem` deste projeto jÃ¡ dizem "use a skill
`obsidian-markdown` do kepano se instalada". Ou seja: instalou o kepano, o cÃ©rebro
3 passa a sair com wikilinks/properties corretos automaticamente.
