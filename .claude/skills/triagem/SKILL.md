---
name: triagem
description: Lê os itens de 0-inbox/ e roteia cada um pro cérebro certo (1-projeto, 2-self ou 3-conhecimento). Use quando o usuário disser "triagem", "organiza a inbox", "classifica isso", "roteia", ou quando houver arquivos não classificados em 0-inbox/.
---

# Triagem — Roteador da inbox

Lê o que está em `0-inbox/` e decide, item por item, em qual dos 3 cérebros ele vive.

## Passo 1 — Ler a inbox
Liste tudo em `0-inbox/` (ignore o `README.md`). Para cada item, leia o conteúdo
(ou rode `/nota` antes, se for um arquivo cru tipo PDF).

## Passo 2 — Classificar com o teste rápido
Para cada item, aplique o teste e proponha o destino:

| Pergunta | Se sim → cérebro | Destino sugerido |
|---|---|---|
| Vira história/arquivo daqui a 1 ano? É sobre o que rolou / uma decisão / um projeto? | **1. Projeto** | `1-projeto/daily/`, `projects/<nome>/` ou `decisions/log.md` |
| É subjetivo, é *seu*, uma dúvida ou ideia em formação? | **2. Self** | `2-self/questions/`, `thinking/` ou `journal/` |
| É um fato / referência / algo que você aprendeu? | **3. Conhecimento** | `3-conhecimento/notes/` (destile com `/nota`) |

## Passo 3 — Propor, não executar às cegas
Mostre ao usuário uma tabela: **item → cérebro → destino → por quê** (1 linha cada).
Pergunte em **texto livre** (nunca menu): "Confirma essa triagem? Me diga em texto
o que mudar." Espere a resposta.

## Passo 4 — Mover
Após confirmação, mova cada arquivo pro destino. Se for conhecimento cru, destile
com `/nota` antes de salvar em `notes/`. Crie `[[wikilinks]]` ligando ao que já
existe (use a skill `obsidian-markdown` do kepano se instalada).

## Passo 5 — Reportar
Diga quantos itens foram roteados, pra onde, e o que sobrou na inbox (se algo ficou
ambíguo, deixe lá e explique).
