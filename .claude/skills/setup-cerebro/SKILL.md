---
name: setup-cerebro
description: Configurador interativo do Cérebro INEMA. Pergunta ao usuário quem ele é em texto livre, depois personaliza o CLAUDE.md e os arquivos-semente do cérebro Self. Use no primeiro uso, ou quando o usuário disser "setup", "configurar cérebro", "personalizar".
---

# Setup Cérebro — Onboarding (texto livre, em PT-BR)

Rode de DENTRO da pasta do vault. Personaliza o cérebro a partir de uma conversa.

## Passo 1 — Uma pergunta, texto livre
Mostre exatamente esta mensagem e **espere** a resposta (nunca use menu):

---

**Me conta sobre você em algumas frases pra eu montar seu cérebro.**

Responda na ordem que quiser:
- O que você faz?
- O que mais escapa / o que você queria registrar melhor?
- Só trabalho, ou vida pessoal também?
- Tem arquivos pra importar? (PDFs, docs, notas)
- Quais são seus valores / o que te guia? (pro cérebro Self)

Sem formalidade. Algumas frases bastam.

---

## Passo 2 — Inferir e prever (não pergunte mais)
Da resposta em texto livre, infira: papel, principal dor, escopo (trabalho /
trabalho+pessoal), se tem arquivos, e 1-2 valores. Faça inferências espertas.

Mostre um preview da personalização (estrutura dos 3 cérebros já é fixa — o que
muda é o conteúdo do `me.md`, `values.md` e o "Quem sou eu" do `CLAUDE.md`).
Peça confirmação em texto livre: "Pode construir assim? Me diz o que mudar."

## Passo 3 — Construir após confirmação
Quando confirmar ("pode", "manda", "isso"):

1. **Preencher `2-self/me.md`** com perfil, como gosta de trabalhar, o que delegaria.
2. **Preencher `2-self/values.md`** com os princípios que ele citou.
3. **Atualizar `CLAUDE.md`** → seção "Quem sou eu" (2-3 frases, 1ª pessoa, específico).
4. Se mencionou regras de escrita/marca → crie `2-self/voz.md` (tom de voz) e,
   se for o caso, `2-self/design.md` — o `CLAUDE.md` já aponta pra eles.
5. Se tem arquivos pra importar → diga pra jogar em `0-inbox/` ou
   `3-conhecimento/sources/` e rodar `/triagem` ou `/nota`.

## Passo 4 — Injeção de contexto global (opcional)
Pergunte em texto livre se ele quer que este cérebro carregue em toda sessão.
Se sim, acrescente a `~/.claude/CLAUDE.md`:
```
## Meu cérebro pessoal
No início de cada sessão, leia [caminho absoluto do vault]/CLAUDE.md para o
contexto de quem eu sou, meu trabalho e minhas convenções.
```

## Passo 5 — Fechar
Liste as skills disponíveis (`/triagem`, `/daily`, `/tldr`, `/nota`, `/socratica`)
e sugira o primeiro passo: "Joga umas coisas em `0-inbox/` e roda `/triagem`."
