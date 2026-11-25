---
name: setup-cerebro
description: Configurador interativo do CêÂ©rebro ARCKHê. Pergunta ao usuêÂ¡rio quem ele êÂ© em texto livre, depois personaliza o CLAUDE.md e os arquivos-semente do cêÂ©rebro Self. Use no primeiro uso, ou quando o usuêÂ¡rio disser "setup", "configurar cêÂ©rebro", "personalizar".
---

# Setup CêÂ©rebro ê¢â¬â Onboarding (texto livre, em PT-BR)

Rode de DENTRO da pasta do vault. Personaliza o cêÂ©rebro a partir de uma conversa.

## Passo 1 ê¢â¬â Uma pergunta, texto livre
Mostre exatamente esta mensagem e **espere** a resposta (nunca use menu):

---

**Me conta sobre vocêÂª em algumas frases pra eu montar seu cêÂ©rebro.**

Responda na ordem que quiser:
- O que vocêÂª faz?
- O que mais escapa / o que vocêÂª queria registrar melhor?
- SêÂ³ trabalho, ou vida pessoal tambêÂ©m?
- Tem arquivos pra importar? (PDFs, docs, notas)
- Quais sêÂ£o seus valores / o que te guia? (pro cêÂ©rebro Self)

Sem formalidade. Algumas frases bastam.

---

## Passo 2 ê¢â¬â Inferir e prever (nêÂ£o pergunte mais)
Da resposta em texto livre, infira: papel, principal dor, escopo (trabalho /
trabalho+pessoal), se tem arquivos, e 1-2 valores. FaêÂ§a inferêÂªncias espertas.

Mostre um preview da personalizaêÂ§êÂ£o (estrutura dos 3 cêÂ©rebros jêÂ¡ êÂ© fixa ê¢â¬â o que
muda êÂ© o conteêÂºdo do `me.md`, `values.md` e o "Quem sou eu" do `CLAUDE.md`).
PeêÂ§a confirmaêÂ§êÂ£o em texto livre: "Pode construir assim? Me diz o que mudar."

## Passo 3 ê¢â¬â Construir apêÂ³s confirmaêÂ§êÂ£o
Quando confirmar ("pode", "manda", "isso"):

1. **Preencher `2-self/me.md`** com perfil, como gosta de trabalhar, o que delegaria.
2. **Preencher `2-self/values.md`** com os princêÂ­pios que ele citou.
3. **Atualizar `CLAUDE.md`** ê¢â â seêÂ§êÂ£o "Quem sou eu" (2-3 frases, 1êÂª pessoa, especêÂ­fico).
4. Se mencionou regras de escrita/marca ê¢â â crie `2-self/voz.md` (tom de voz) e,
   se for o caso, `2-self/design.md` ê¢â¬â o `CLAUDE.md` jêÂ¡ aponta pra eles.
5. Se tem arquivos pra importar ê¢â â diga pra jogar em `0-inbox/` ou
   `3-conhecimento/sources/` e rodar `/triagem` ou `/nota`.

## Passo 4 ê¢â¬â InjeêÂ§êÂ£o de contexto global (opcional)
Pergunte em texto livre se ele quer que este cêÂ©rebro carregue em toda sessêÂ£o.
Se sim, acrescente a `~/.claude/CLAUDE.md`:
```
## Meu cêÂ©rebro pessoal
No inêÂ­cio de cada sessêÂ£o, leia [caminho absoluto do vault]/CLAUDE.md para o
contexto de quem eu sou, meu trabalho e minhas convenêÂ§êÂµes.
```

## Passo 5 ê¢â¬â Fechar
Liste as skills disponêÂ­veis (`/triagem`, `/daily`, `/tldr`, `/nota`, `/socratica`)
e sugira o primeiro passo: "Joga umas coisas em `0-inbox/` e roda `/triagem`."
