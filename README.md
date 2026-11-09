# The Higher Path 2027 · painel do curso

App visual com todo o escopo do curso, montado a partir da página "THE HIGHER PATH | 2027" no Notion (dados de 09/11/2026).

## O que tem

- **Painel**: dias até o prazo (30/01/2027), progresso por nível e módulo, fila de produção, janela atual da timeline, aula piloto.
- **Estruturação**: promessa, objetivo, público, dores, desejos, objeções, mitos, tom de voz, preço, bônus, experiência da aluna.
- **Níveis e módulos**: 4 níveis → 11 módulos + bônus, com objetivo, entrega e o que revisar.
- **Aulas**: as 61 aulas + 2 bônus com filtros e checklist de produção (texto, design, vídeo, publicação) e etapa.
- **Metodologia**: 3 pilares, 5 etapas do fechamento, The Smooth Flow, 7 dias 7 pilares.
- **Comunicação**: landing page, PDF, anúncios, 10 e-mails, 5 roteiros de vídeo de venda e tarefas de comunicação.
- **Timeline**: Gantt de 09/11/2026 a 31/01/2027, 5 etapas, primeira semana, capacidade.
- **Checklist**: todas as entregas do projeto em blocos.
- **Decisões**: o que já foi decidido e o que falta, com anotações.

## Arquivos

- `src/thp.html`: fonte do app (publicado como Artifact no claude.ai).
- `index.html`: versão completa para abrir direto no navegador ou publicar no GitHub Pages. Gere de novo com `./build.sh` depois de editar `src/thp.html`.

## Onde o progresso fica salvo

No link do claude.ai, as marcações ficam salvas no próprio app. Abrindo o `index.html` localmente, ficam no navegador (localStorage). Nada volta automaticamente para o Notion.

---

# Casa de Ferramentas THP · app das alunas

App para as alunas do The Higher Path 2027, no design system frandecampos v3 (revista + blog anos 2000: Helvetica minúscula com palavra em itálico rosa, rosa fran #ff04ed, base clara, cantos retos, contorno 1,5px, sombra chapada de janela, fita ticker, contador de visitas, texto mono). Substitui a página antiga "Casa de Ferramentas THP" no Notion.

## O que tem

- **Sempre à mão** (uma linha só no topo): the social media hub, grupo das alunas, quero te conhecer e check-in da realidade, com "como duplicar os templates?" recolhido.
- **Abas de nível** na barra fixa: filtram a lista (tudo, base, vender, entregar, sustentar, extras) e voltam pro começo dela, sem precisar rolar.
- **Ferramentas por nível e módulo**: as 11 gavetas + bônus da grade 2027, com o tipo (notion, canva, formulário, comunidade, link), o status (disponível, nova versão chegando, em breve) e as aulas em que cada ferramenta aparece (código + título).
- **Busca e filtros**: por nome, aula ou código (ex.: 7.06), por nível e por tipo; visão "disponíveis" e "★ minhas".
- **Rodapé**: link para o formulário de sugestões de novas aulas.

## Fonte dos dados

Base "AULAS · THE HIGHER PATH 2027" (colunas Ferramenta, Link da ferramenta e Ferramenta pronta) + base "ferramentas do curso" e templates de Canva da página antiga. Para liberar uma ferramenta, edite o item em `T` dentro de `src/casa.template.html`: troque `st:"soon"` por `st:"ok"` e preencha `links`. Depois rode `./build.sh`.

## Arquivos

- `src/casa.template.html`: fonte do app. Edite este arquivo.
- `src/fonts/`: TeX Gyre Heros e Cursor (equivalentes livres da Helvetica, do design system) reduzidas para latim.
- `tools/embed-fonts.py`: embute as fontes e gera `src/casa.html` (publicado como Artifact no claude.ai). O `./build.sh` já roda ele.
- `casa.html`: versão completa para abrir no navegador ou publicar no GitHub Pages.

Favoritos e "já usei" ficam salvos no navegador de cada aluna (localStorage).
