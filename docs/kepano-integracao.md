# Integração com kepano/obsidian-skills (camada de Formato)

O core do Cérebro INEMA é **organização**. A camada de **formato** garante que o
Claude escreva Obsidian *de verdade* — `[[wikilinks]]`, `.base`, `.canvas`
válidos — em vez de markdown genérico. Sem isso, o cérebro 3 vira "pasta de
resumos"; com isso, vira uma wiki conectada e consultável.

## Por que vale (principalmente no cérebro 3)

| Skill kepano | O que garante | Onde ajuda aqui |
|---|---|---|
| `obsidian-markdown` | `[[wikilinks]]`, callouts, properties | `/nota` e `/triagem` geram notas que **se conectam** |
| `obsidian-bases` | arquivos `.base` (filtros, views) | `3-conhecimento/bases/` vira DB consultável |
| `json-canvas` | `.canvas` válido | `3-conhecimento/canvas/` (mapas) |
| `obsidian-cli` | operar o vault vivo (buscar, deduplicar) | manter a wiki sem duplicar nota |
| `defuddle` | markdown limpo de páginas web | melhor entrada crua pro `/nota` |

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

`obsidian-markdown`, `obsidian-bases` e `json-canvas` são só conhecimento (zero
dependência). `obsidian-cli` exige o Obsidian aberto; `defuddle` exige o CLI do
defuddle. Veja o repo do kepano para detalhes.

## Como o CLAUDE.md já aponta pra isso

As skills `/nota` e `/triagem` deste projeto já dizem "use a skill
`obsidian-markdown` do kepano se instalada". Ou seja: instalou o kepano, o cérebro
3 passa a sair com wikilinks/properties corretos automaticamente.
