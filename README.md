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
