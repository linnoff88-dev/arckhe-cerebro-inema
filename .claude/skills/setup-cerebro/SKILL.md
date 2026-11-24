---
name: setup-cerebro
description: Configurador interativo do CÃ©rebro ARCKHÉ. Pergunta ao usuÃ¡rio quem ele Ã© em texto livre, depois personaliza o CLAUDE.md e os arquivos-semente do cÃ©rebro Self. Use no primeiro uso, ou quando o usuÃ¡rio disser "setup", "configurar cÃ©rebro", "personalizar".
---

# Setup CÃ©rebro â€” Onboarding (texto livre, em PT-BR)

Rode de DENTRO da pasta do vault. Personaliza o cÃ©rebro a partir de uma conversa.

## Passo 1 â€” Uma pergunta, texto livre
Mostre exatamente esta mensagem e **espere** a resposta (nunca use menu):

---

**Me conta sobre vocÃª em algumas frases pra eu montar seu cÃ©rebro.**

Responda na ordem que quiser:
- O que vocÃª faz?
- O que mais escapa / o que vocÃª queria registrar melhor?
- SÃ³ trabalho, ou vida pessoal tambÃ©m?
- Tem arquivos pra importar? (PDFs, docs, notas)
- Quais sÃ£o seus valores / o que te guia? (pro cÃ©rebro Self)

Sem formalidade. Algumas frases bastam.

---

## Passo 2 â€” Inferir e prever (nÃ£o pergunte mais)
Da resposta em texto livre, infira: papel, principal dor, escopo (trabalho /
trabalho+pessoal), se tem arquivos, e 1-2 valores. FaÃ§a inferÃªncias espertas.

Mostre um preview da personalizaÃ§Ã£o (estrutura dos 3 cÃ©rebros jÃ¡ Ã© fixa â€” o que
muda Ã© o conteÃºdo do `me.md`, `values.md` e o "Quem sou eu" do `CLAUDE.md`).
PeÃ§a confirmaÃ§Ã£o em texto livre: "Pode construir assim? Me diz o que mudar."

## Passo 3 â€” Construir apÃ³s confirmaÃ§Ã£o
Quando confirmar ("pode", "manda", "isso"):

1. **Preencher `2-self/me.md`** com perfil, como gosta de trabalhar, o que delegaria.
2. **Preencher `2-self/values.md`** com os princÃ­pios que ele citou.
3. **Atualizar `CLAUDE.md`** â†’ seÃ§Ã£o "Quem sou eu" (2-3 frases, 1Âª pessoa, especÃ­fico).
4. Se mencionou regras de escrita/marca â†’ crie `2-self/voz.md` (tom de voz) e,
   se for o caso, `2-self/design.md` â€” o `CLAUDE.md` jÃ¡ aponta pra eles.
5. Se tem arquivos pra importar â†’ diga pra jogar em `0-inbox/` ou
   `3-conhecimento/sources/` e rodar `/triagem` ou `/nota`.

## Passo 4 â€” InjeÃ§Ã£o de contexto global (opcional)
Pergunte em texto livre se ele quer que este cÃ©rebro carregue em toda sessÃ£o.
Se sim, acrescente a `~/.claude/CLAUDE.md`:
```
## Meu cÃ©rebro pessoal
No inÃ­cio de cada sessÃ£o, leia [caminho absoluto do vault]/CLAUDE.md para o
contexto de quem eu sou, meu trabalho e minhas convenÃ§Ãµes.
```

## Passo 5 â€” Fechar
Liste as skills disponÃ­veis (`/triagem`, `/daily`, `/tldr`, `/nota`, `/socratica`)
e sugira o primeiro passo: "Joga umas coisas em `0-inbox/` e roda `/triagem`."
