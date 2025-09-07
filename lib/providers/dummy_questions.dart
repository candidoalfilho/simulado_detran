import 'package:flutter/material.dart';

simulateQuestions() {
  List<dynamic> questions = [];

  // Mecânica básica
  List<dynamic> mecanica = DUMMY_QUESTIONS
      .where((element) =>
          element["category"] == "Mecânica básica" &&
          element["right_answer"] != 'x')
      .toList();
  mecanica.shuffle();
  var mecanicaFiltrada = mecanica.getRange(0, 5);

  // Direção Defensiva
  List<dynamic> defensiva = DUMMY_QUESTIONS
      .where((element) =>
          element["category"] == "Direção defensiva" &&
          element["right_answer"] != 'x')
      .toList();
  mecanica.shuffle();
  var defensivaFiltrada = defensiva.getRange(0, 8);

  // Medicina de tráfego
  List<dynamic> medicina = DUMMY_QUESTIONS
      .where((element) =>
          element["category"] == "Medicina de tráfego" &&
          element["right_answer"] != 'x')
      .toList();
  medicina.shuffle();
  var medicinaFiltrada = medicina.getRange(0, 4);

  // Medicina de tráfego
  List<dynamic> legislacao = DUMMY_QUESTIONS
      .where((element) =>
          element["category"] == "Legislação de trânsito" &&
          element["right_answer"] != 'x')
      .toList();
  legislacao.shuffle();
  var legislacaoFiltrada = legislacao.getRange(0, 9);

  // Meio ambiente
  List<dynamic> ambiente = DUMMY_QUESTIONS
      .where((element) =>
          element["category"] == "Meio ambiente" &&
          element["right_answer"] != 'x')
      .toList();
  legislacao.shuffle();
  var ambienteFiltrada = ambiente.getRange(0, 4);

  questions.addAll(mecanicaFiltrada);
  questions.addAll(defensivaFiltrada);
  questions.addAll(medicinaFiltrada);
  questions.addAll(legislacaoFiltrada);
  questions.addAll(ambienteFiltrada);

  questions.shuffle();
  return questions;
}

var DUMMY_QUESTIONS = [
  {
    "question":
        "O controle da temperatura de um motor é realizado pelo sistema de ",
    "right_answer": "x",
    "answers": [
      {"prompt": " resfriamento ou arrefecimento ", "value": "a"},
      {"prompt": "  carburação e ventilação forçada ", "value": "b"},
      {"prompt": "  ventilação forçada e freio ", "value": "c"},
      {"prompt": "  velas e ventilação circulante ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 0
  },
  {
    "question":
        "Os fatores que interferem positivamente para que o trânsito seja humano e seguro são ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " educação, habilidades, atenção, cooperação e solidariedade ",
        "value": "a"
      },
      {
        "prompt":
            "  individualismo, habilidades, atenção, cooperação e solidariedade ",
        "value": "b"
      },
      {
        "prompt": "  educação, egoísmo, atenção, cooperação e solidariedade ",
        "value": "c"
      },
      {
        "prompt":
            "  educação, habilidades, displicência, cooperação e solidariedade ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 1
  },
  {
    "question":
        "A velocidade máxima permitida em rodovias de pista dupla, nas quais não exista sinalização regulamentadora, para automóveis, camionetas e motocicletas, é de ",
    "right_answer": "a",
    "answers": [
      {"prompt": " 110 km/h ", "value": "a"},
      {"prompt": "  80 km/h ", "value": "b"},
      {"prompt": "  90 km/h ", "value": "c"},
      {"prompt": "  60 km/h ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 2
  },
  {
    "question":
        "\"Pontos cegos\" são regiões da via em que veículos podem ficar escondidos momentaneamente do campo de visão dos espelhos, levando a situações de risco no trânsito. O procedimento que pode contribuir para minimizar esse problema é o ajuste ",
    "right_answer": "b",
    "answers": [
      {
        "prompt":
            " do espelho externo, apenas, para que o condutor tenha um maior campo de visão lateral do veículo ",
        "value": "a"
      },
      {
        "prompt":
            "  dos espelhos externos e internos para que o condutor tenha um maior campo de visão traseira e lateral do veículo ",
        "value": "b"
      },
      {
        "prompt":
            "  do espelho interno, apenas, para que o condutor tenha um maior campo de visão traseira do veículo ",
        "value": "c"
      },
      {
        "prompt":
            "  do espelho interno voltado para a lateral esquerda do veículo, para que o condutor tenha um maior campo de visão lateral do veículo ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 3
  },
  {
    "question":
        "Ao se procurar desobstruir as vias aéreas de uma vítima de acidente, não se deve movimentar sua cabeça, pois poderá ocorrer ",
    "right_answer": "x",
    "answers": [
      {"prompt": " fratura dos membros inferiores ", "value": "a"},
      {"prompt": "  lesão na coluna ", "value": "b"},
      {"prompt": "  traumatismo craniano ", "value": "c"},
      {"prompt": "  fratura da bacia ", "value": "d"}
    ],
    "category": "Medicina de tráfego",
    "id": 4
  },
  {
    "question":
        "Os requisitos necessários, dentre outros, para obter a Carteira Nacional de Habilitação (CNH) são ",
    "right_answer": "c",
    "answers": [
      {"prompt": " ter concluído o Ensino Médio ", "value": "a"},
      {"prompt": "  ter concluído o Ensino Fundamental ", "value": "b"},
      {"prompt": "  saber ler e escrever ", "value": "c"},
      {"prompt": "  estar matriculado no Ensino Fundamental ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 5
  },
  {
    "question": "A validade da Permissão para Dirigir é de ",
    "right_answer": "c",
    "answers": [
      {"prompt": " seis meses ", "value": "a"},
      {"prompt": "  dois anos ", "value": "b"},
      {"prompt": "  um ano ", "value": "c"},
      {"prompt": "  três meses ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 6
  },
  {
    "question":
        "A linha simples contínua de divisão de fluxo, na cor amarela, dividindo a via em duas mãos direcionais indica que ",
    "right_answer": "x",
    "answers": [
      {"prompt": " a ultrapassagem é permitida ", "value": "a"},
      {"prompt": "  os deslocamentos laterais são permitidos ", "value": "b"},
      {
        "prompt":
            "  a ultrapassagem e os deslocamentos laterais são proibidos ",
        "value": "c"
      },
      {
        "prompt":
            "  a ultrapassagem e os deslocamentos laterais são permitidos ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 7
  },
  {
    "question":
        "Quando o motorista estacionar junto de hidrantes de incêndio devidamente identificados, terá como medida administrativa (CTB Art. 181, inciso VI) ",
    "right_answer": "c",
    "answers": [
      {"prompt": " remoção do veículo ", "value": "a"},
      {"prompt": "  recolhimento da CNH ", "value": "b"},
      {"prompt": "  retenção do veículo ", "value": "c"},
      {"prompt": "  recolhimento do CRLV ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 8
  },
  {
    "question":
        "Em um veículo automotor, para que os cilindros realizem o ciclo de funcionamento, com um tempo de cada vez, é necessário que ocorra ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " o fornecimento de energia mecânica pela bateria ",
        "value": "a"
      },
      {"prompt": "  a queima do óleo nos cilindros ", "value": "b"},
      {
        "prompt": "  o funcionamento das válvulas de admissão e de escape ",
        "value": "c"
      },
      {
        "prompt": "  o funcionamento da ignição eletrônica e do carburador ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 9
  },
  {
    "question":
        "Estacionar o veículo no passeio (calçada) ou sobre a faixa destinada a pedestres é infração de trânsito com penalidade de multa e é considerada ",
    "right_answer": "d",
    "answers": [
      {"prompt": " leve ", "value": "a"},
      {"prompt": "  gravíssima ", "value": "b"},
      {"prompt": "  média ", "value": "c"},
      {"prompt": "  grave ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 10
  },
  {
    "question":
        "A estabilidade de um veículo nas retas e curvas é garantida pela manutenção dos seguintes sistemas ",
    "right_answer": "x",
    "answers": [
      {"prompt": " de freios e de rodagem ", "value": "a"},
      {"prompt": "  de suspensão e de transmissão ", "value": "b"},
      {"prompt": "  de transmissão e de direção ", "value": "c"},
      {"prompt": "  de direção e de suspensão ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 11
  },
  {
    "question":
        "Chuva e freios deficientes são situações de risco geradas por condições adversas relacionadas, respectivamente, com ",
    "right_answer": "d",
    "answers": [
      {"prompt": " via e veículo ", "value": "a"},
      {"prompt": "  via e condutor ", "value": "b"},
      {"prompt": "  clima e/ou ambiente e condutor ", "value": "c"},
      {"prompt": "  clima e/ou ambiente e veículo ", "value": "d"}
    ],
    "category": "Meio ambiente",
    "id": 12
  },
  {
    "question": "A convivência social no trânsito é facilitada se o condutor ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " demonstrar agilidade no manuseio dos equipamentos do veículo ",
        "value": "a"
      },
      {"prompt": "  conhecer como funciona o motor do veículo ", "value": "b"},
      {
        "prompt":
            "  entrar em atrito com outros condutores, caso julgue estar com a razão ",
        "value": "c"
      },
      {
        "prompt": "  conhecer e cumprir as regras de circulação e de conduta ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 13
  },
  {
    "question":
        "Ao solicitar o serviço de resgate para atender às vítimas de um acidente, deve-se adotar o seguinte procedimento ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " informar a localização do acidente e adiantar o atendimento, liberando as vias aéreas da vítima ",
        "value": "a"
      },
      {
        "prompt":
            "  isolar a área e fazer mutirão com os demais condutores para atender às vítimas ",
        "value": "b"
      },
      {
        "prompt":
            "  informar o tipo de acidente e retirar imediatamente a vítima do local do acidente ",
        "value": "c"
      },
      {
        "prompt":
            "  informar a identificação do solicitante, a localização, o estado das vítimas e o tipo de acidente ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 14
  },
  {
    "question":
        "No sistema de controle do aquecimento do motor, com sistema de arrefecimento à água, os componentes básicos são ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " válvula termostática, reservatório e alternador ",
        "value": "a"
      },
      {
        "prompt":
            "  termômetro, radiador, água com solução e bomba de expansão ",
        "value": "b"
      },
      {
        "prompt":
            "  bomba-d'água, câmaras de resfriamento e correia de ventilação ",
        "value": "c"
      },
      {
        "prompt":
            "  radiador, bomba-d'água e depósito de expansão do radiador ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 15
  },
  {
    "question":
        "São situações de risco que reduzem o atrito e, consequentemente, a aderência entre os pneus e a pista, dificultando o controle do veículo em frenagens, as seguintes condições ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " rodas trincadas, sistema de suspensão e amortecedores deficientes ",
        "value": "a"
      },
      {
        "prompt":
            "  neblina densa e fumaça vinda da queima de vegetação à beira da via ",
        "value": "b"
      },
      {
        "prompt": "  depressões, lombadas e ondulações no pavimento da via ",
        "value": "c"
      },
      {
        "prompt":
            "  barro em estradas de terra e lâmina de água sobre a pista pavimentada ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 16
  },
  {
    "question":
        "As vias rurais abertas à circulação de veículos classificam-se em ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " via de trânsito rápido, via arterial, via coletora, via local, rodovias e estradas ",
        "value": "a"
      },
      {
        "prompt":
            "  via de trânsito rápido, via arterial, via coletora e via local ",
        "value": "b"
      },
      {"prompt": "  via arterial, via coletora e via local ", "value": "c"},
      {"prompt": "  rodovias e estradas ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 17
  },
  {
    "question": "As três regras fundamentais de primeiros socorros são ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " tranquilizar o acidentado; estimular a circulação do local fraturado por meio de massagem local; e atuar com rapidez ",
        "value": "a"
      },
      {
        "prompt":
            "  aquecer o acidentado por meio da oferta de bebida quente; avaliar a situação; e conversar de forma calma com o acidentado ",
        "value": "b"
      },
      {
        "prompt":
            "  afastar os curiosos; telefonar para o serviço de resgate; e oferecer água ",
        "value": "c"
      },
      {
        "prompt":
            "  não entrar em pânico; pensar nas condutas a serem tomadas; e avaliar os riscos para o acidentado ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 18
  },
  {
    "question":
        "Conforme o artigo 147 do Código de Trânsito Brasileiro, o candidato à habilitação deverá submeter-se a exames realizados pelo órgão executivo de trânsito, na seguinte ordem ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " de aptidão física e mental; escrito conforme regulamentação do CONTRAN;  e de direção veicular ",
        "value": "a"
      },
      {
        "prompt":
            " \n escrito conforme regulamentação do CONTRAN; de aptidão física e mental;  e de direção veicular ",
        "value": "b"
      },
      {
        "prompt":
            " \n de direção veicular, de aptidão física e mental; e escrito conforme regulamentação do CONTRAN ",
        "value": "c"
      },
      {
        "prompt":
            " \n de aptidão física e mental; de direção veicular e escrito conforme regulamentação CONTRAN ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 19
  },
  {
    "question":
        "Um condutor, mediante acidente de trânsito, pode agravar ainda mais o estado de saúde da vítima se ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " não retirar o capacete dela, caso seja um motociclista, até a chegada da equipe de emergência ",
        "value": "a"
      },
      {
        "prompt":
            "  soltar o cinto de segurança da vítima presa ao veículo, se constatar dificuldade de respiração em razão do cinto ",
        "value": "b"
      },
      {
        "prompt":
            "  prestar o maior número de informações sobre o acidente à vítima ao acionar a equipe de emergência ",
        "value": "c"
      },
      {
        "prompt":
            "  oferecer alimentos ou bebidas para os acidentados que solicitarem, adiantando-se à equipe de emergência ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 20
  },
  {
    "question":
        "Há curvas em que a pista é mal construída e possui sobrelevação negativa (ligeira inclinação para o lado de fora da curva). Essa condição adversa exige do condutor a redução da velocidade e um maior esforço para manter o controle do veículo. Agindo dessa forma, o condutor evita o risco de ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " derrapagem do veículo em razão da perda total de aderência entre os pneus e o pavimento da pista ",
        "value": "a"
      },
      {
        "prompt":
            "  perda total do sistema de freios devido ao superaquecimento dos seus componentes internos ",
        "value": "b"
      },
      {
        "prompt":
            "  estouro do pneu traseiro em razão do esforço exigido e do aumento da aderência ao pavimento da pista ",
        "value": "c"
      },
      {
        "prompt":
            "  deslocamento do veículo para a contramão da via devido à força centrífuga não compensada pela pista ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 21
  },
  {
    "question":
        "Sobre o estado dos freios e sua relação com a segurança, podemos afirmar que ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " os freios em bom estado de funcionamento eliminam o fenômeno da aquaplanagem ",
        "value": "a"
      },
      {
        "prompt":
            "  com os freios em bom estado, não é necessário descer vias em declive com o veículo engrenado ",
        "value": "b"
      },
      {
        "prompt":
            "  a boa conservação dos freios elimina a necessidade de se manter distância do veículo à frente ",
        "value": "c"
      },
      {
        "prompt":
            "  quanto mais eficientes forem os freios, mais segurança haverá nas frenagens ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 22
  },
  {
    "question":
        "Transitar pela contramão de direção em vias com sinalização de regulamentação de sentido único de circulação é uma infração (CTB Art. 186, inciso II) ",
    "right_answer": "x",
    "answers": [
      {"prompt": " média ", "value": "a"},
      {"prompt": "  grave ", "value": "b"},
      {"prompt": "  leve ", "value": "c"},
      {"prompt": "  gravíssima ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 23
  },
  {
    "question": "A baixa calibragem dos pneus ",
    "right_answer": "x",
    "answers": [
      {"prompt": " reduz sua vida útil ", "value": "a"},
      {"prompt": "  aumenta a capacidade de frenagem ", "value": "b"},
      {"prompt": "  favorece a estabilidade em curvas ", "value": "c"},
      {"prompt": "  aumenta sua vida útil ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 24
  },
  {
    "question": "Entende-se por ''condições adversas'' ",
    "right_answer": "b",
    "answers": [
      {
        "prompt":
            " situações inadequadas geradas exclusivamente pelas autoridades de trânsito e que podem causar acidentes ",
        "value": "a"
      },
      {
        "prompt":
            "  condições pessoais do condutor ou fora do seu controle que podem ser causa de acidentes ",
        "value": "b"
      },
      {
        "prompt":
            "  condições geradoras de risco e acidentes de trânsito totalmente fora do controle do condutor ",
        "value": "c"
      },
      {
        "prompt":
            "  situações normais no trânsito que, por distração do condutor, podem gerar risco e até acidentes ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 25
  },
  {
    "question":
        "A visibilidade do condutor, que exige sua redobrada atenção, é mais reduzida ao dirigir ",
    "right_answer": "c",
    "answers": [
      {"prompt": " em túnel dotado de iluminação pública ", "value": "a"},
      {"prompt": "  em via urbana dotada de iluminação pública ", "value": "b"},
      {"prompt": "  à noite, com chuva, garoa ou neblina ", "value": "c"},
      {"prompt": "  em dia claro, com céu azul e sol ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 26
  },
  {
    "question":
        "Segundo a legislação, sono e vias em véspera de feriados prolongados são classificados, respectivamente, como condições adversas de ",
    "right_answer": "x",
    "answers": [
      {"prompt": " condutor e trânsito ", "value": "a"},
      {"prompt": "  tempo e condutor ", "value": "b"},
      {"prompt": "  condutor e via ", "value": "c"},
      {"prompt": "  via e trânsito ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 27
  },
  {
    "question":
        "O Código de Trânsito Brasileiro (CTB) estabelece regras e normas válidas em todo o território nacional para ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " ruas, avenidas, logradouros, caminhos, passagens, rodovias, estradas, praias abertas à circulação e vias internas de condomínios ",
        "value": "a"
      },
      {
        "prompt":
            "  ruas, avenidas, logradouros, caminhos, passagens, rodovias e estradas ",
        "value": "b"
      },
      {
        "prompt": "  ruas, avenidas, logradouros, rodovias e estradas ",
        "value": "c"
      },
      {"prompt": "  ruas, avenidas, rodovias e estradas ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 28
  },
  {
    "question":
        "A via que se caracteriza por interseções em nível não semaforizadas, destinada apenas ao acesso local ou a áreas restritas, é denominada ",
    "right_answer": "c",
    "answers": [
      {"prompt": " via arterial ", "value": "a"},
      {"prompt": "  via coletora ", "value": "b"},
      {"prompt": "  via local ", "value": "c"},
      {"prompt": "  via de trânsito rápido ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 29
  },
  {
    "question":
        "A velocidade instantânea desenvolvida pelo veículo é indicada no painel pelo ",
    "right_answer": "x",
    "answers": [
      {"prompt": " termômetro ", "value": "a"},
      {"prompt": "  velocímetro ", "value": "b"},
      {"prompt": "  hodômetro ", "value": "c"},
      {"prompt": "  conta-giros ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 30
  },
  {
    "question": "O condutor que dirigir sob efeito de bebida alcoólica ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " melhora a autoconfiança e torna a direção segura para si e para os demais ",
        "value": "a"
      },
      {
        "prompt":
            "  compromete a percepção de riscos e diminui a coordenação motora ",
        "value": "b"
      },
      {
        "prompt":
            "  aumenta a coordenação motora e os reflexos essenciais para dirigir ",
        "value": "c"
      },
      {
        "prompt":
            "  melhora a visão e a percepção de riscos do que ocorre no entorno ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 31
  },
  {
    "question":
        "Em caso de acidente de trânsito com vítima(s), podemos dizer que primeiros socorros são ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " as providências tomadas no local, iniciais e temporárias, até a chegada de socorro ",
        "value": "a"
      },
      {
        "prompt":
            "  procedimentos de competência exclusiva de médicos no local do acidente ",
        "value": "b"
      },
      {
        "prompt":
            "  as ações que só podem ser realizadas por equipes profissionais ",
        "value": "c"
      },
      {
        "prompt":
            "  o pronto atendimento da(s) vítima(s) em substituição às equipes da saúde ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 32
  },
  {
    "question":
        "Em uma rodovia, ao perceber movimentos na vegetação, indicando a existência de forte vento lateral, o recomendável é ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " reduzir a velocidade, ligar a seta indicativa de mudança de direção e transitar pelo acostamento ",
        "value": "a"
      },
      {
        "prompt":
            "  reduzir a velocidade adequando a marcha do motor para manter a estabilidade ",
        "value": "b"
      },
      {
        "prompt":
            "  acelerar, aumentando a força do motor e forçando um maior atrito entre os pneus e a pista ",
        "value": "c"
      },
      {
        "prompt":
            "  manter a velocidade e segurar o volante levemente, a fim de reduzir o risco de capotagem ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 33
  },
  {
    "question":
        "Uma das condições adversas que é, potencialmente, geradora de risco de acidente de trânsito é ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " o veículo em bom estado de conservação e os equipamentos de segurança funcionando adequadamente ",
        "value": "a"
      },
      {
        "prompt":
            "  dia sem chuva, com pouco sol incidindo verticalmente, com visibilidade total a uma razoável distância ",
        "value": "b"
      },
      {
        "prompt":
            "  o condutor bem disposto, sem sono, alimentado adequadamente e com total capacidade de atenção ",
        "value": "c"
      },
      {
        "prompt":
            "  a conservação inadequada da via, com presença de buracos e sinalização apagada ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 34
  },
  {
    "question":
        "Conhecer o funcionamento do veículo e de seus componentes é importante para a sua manutenção preventiva. Assinale a alternativa que contém informações corretas relacionadas à manutenção do veículo ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " catalisadores são equipamentos que não precisam ser substituídos periodicamente, pois não perdem sua capacidade de ação no tempo ",
        "value": "a"
      },
      {
        "prompt":
            "  usar combustíveis aditivados é uma medida necessária e suficiente para eliminar a produção de gases veiculares poluentes ",
        "value": "b"
      },
      {
        "prompt":
            "  o monóxido de carbono produzido pela queima de combustível no motor do veículo não é um gás inofensivo para a saúde humana ",
        "value": "c"
      },
      {
        "prompt":
            "  abastecer o veículo com combustíveis de procedência comprovada e efetuar revisões periódicas reduzem a possibilidade de produção de gases poluentes ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 35
  },
  {
    "question":
        "A sinalização vertical é classificada de acordo com sua função, compreendendo os seguintes tipos ",
    "right_answer": "d",
    "answers": [
      {
        "prompt": " placas, marcas de solo e dispositivo luminoso ",
        "value": "a"
      },
      {
        "prompt": "  placas de proibição, marcas de solo, apito do agente ",
        "value": "b"
      },
      {
        "prompt": "  regulamentação, gestos do agente e gestos de condutores ",
        "value": "c"
      },
      {"prompt": "  regulamentação, advertência e indicação ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 36
  },
  {
    "question":
        "Estacionar em desacordo com as posições estabelecidas no Código de Trânsito Brasileiro tem como penalidade (CTB Art. 181, inciso IV) ",
    "right_answer": "d",
    "answers": [
      {"prompt": " suspensão do direito de dirigir ", "value": "a"},
      {"prompt": "  apreensão do veículo ", "value": "b"},
      {"prompt": "  advertência ", "value": "c"},
      {"prompt": "  multa ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 37
  },
  {
    "question":
        "O melhor local do corpo para se verificar a pulsação de vítima adulta inconsciente é ",
    "right_answer": "d",
    "answers": [
      {"prompt": " a perna ", "value": "a"},
      {"prompt": "  o pulso ", "value": "b"},
      {"prompt": "  o peito ", "value": "c"},
      {"prompt": "  o pescoço ", "value": "d"}
    ],
    "category": "Medicina de tráfego",
    "id": 38
  },
  {
    "question":
        "A energia mecânica produzida pelo motor de um veículo é transmitida às rodas por meio do sistema de ",
    "right_answer": "x",
    "answers": [
      {"prompt": " câmbio ", "value": "a"},
      {"prompt": "  marchas ", "value": "b"},
      {"prompt": "  embreagem ", "value": "c"},
      {"prompt": "  transmissão ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 39
  },
  {
    "question":
        "Transitar pela contramão de direção, nas vias com sinalização de regulamentação de sentido único de circulação, constitui infração de trânsito de que natureza? ",
    "right_answer": "d",
    "answers": [
      {"prompt": " grave ", "value": "a"},
      {"prompt": "  média ", "value": "b"},
      {"prompt": "  leve ", "value": "c"},
      {"prompt": "  gravíssima ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 40
  },
  {
    "question":
        "O sistema que tem por função ligar e desligar a força motriz do motor da parte restante da transmissão é o(a) ",
    "right_answer": "x",
    "answers": [
      {"prompt": " sistema de freios ", "value": "a"},
      {"prompt": "  correia transmissora ", "value": "b"},
      {"prompt": "  dínamo ", "value": "c"},
      {"prompt": "  embreagem ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 41
  },
  {
    "question":
        "Em vias com velocidade máxima de 60 km/h, qual a distância mínima para iniciar a sinalização de acidente ocorrido à noite, em pista molhada ou com neblina? ",
    "right_answer": "a",
    "answers": [
      {
        "prompt": " a 120 metros do veículo ou, aproximadamente, 120 passos ",
        "value": "a"
      },
      {
        "prompt": "  a 60 metros do veículo ou, aproximadamente, 60 passos ",
        "value": "b"
      },
      {
        "prompt": "  a 80 metros do veículo ou, aproximadamente, 80 passos ",
        "value": "c"
      },
      {
        "prompt": "  a 40 metros do veículo ou, aproximadamente, 40 passos ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 42
  },
  {
    "question":
        "Entre outras atitudes a favor da segurança, pode-se dizer que o condutor que pratica a direção defensiva é aquele que ",
    "right_answer": "b",
    "answers": [
      {
        "prompt":
            " ultrapassa os veículos lentos, utilizando excepcionalmente o acostamento para andar mais rápido ",
        "value": "a"
      },
      {
        "prompt":
            "  mantém-se atento ao comportamento dos demais condutores e usuários do trânsito ",
        "value": "b"
      },
      {
        "prompt":
            "  desce um trecho de via em declive, com o veículo desengrenado, economizando combustível ",
        "value": "c"
      },
      {
        "prompt":
            "  usa, sob chuva, a luz alta do veículo e mantém distância de seguimento do veículo à sua frente ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 43
  },
  {
    "question": "As placas educativas têm como função ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " indicar e orientar os usuários da via sobre os locais onde podem dispor de serviços auxiliares, como também contêm informações relacionadas à direção a seguir ",
        "value": "a"
      },
      {
        "prompt":
            "  indicar e orientar os usuários da via sobre os locais onde podem dispor de atrativos turísticos, restaurantes, sanitários e outras instalações que signifiquem comodidade ",
        "value": "b"
      },
      {
        "prompt":
            "  indicar e orientar os usuários da via sobre a direção que eles devem seguir para atingir determinados destinos, como também relacionar as características geográficas desses destinos ",
        "value": "c"
      },
      {
        "prompt":
            "  orientar os usuários da via quanto ao seu comportamento adequado e seguro no trânsito, podendo conter mensagens que reforcem normas gerais de circulação e conduta ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 44
  },
  {
    "question":
        "Estacionar o veículo ao lado de outro veículo, em fila dupla, terá como penalidade (CTB Art. 181, inciso XI) ",
    "right_answer": "x",
    "answers": [
      {"prompt": " apreensão do veículo ", "value": "a"},
      {"prompt": "  suspensão do direito de dirigir ", "value": "b"},
      {"prompt": "  multa ", "value": "c"},
      {"prompt": "  advertência ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 45
  },
  {
    "question":
        "A velocidade mínima permitida em vias arteriais nas quais não exista sinalização regulamentadora é de ",
    "right_answer": "x",
    "answers": [
      {"prompt": " 40 km/h ", "value": "a"},
      {"prompt": "  20 km/h ", "value": "b"},
      {"prompt": "  30 km/h ", "value": "c"},
      {"prompt": "  50 km/h ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 46
  },
  {
    "question": "Um dos meios para evitar a poluição é ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " observar a vida útil dos filtros de ar e óleo ",
        "value": "a"
      },
      {"prompt": "  acelerar quando o veículo estiver parado ", "value": "b"},
      {
        "prompt": "  manter o motor ligado numa parada prolongada ",
        "value": "c"
      },
      {
        "prompt": "  transitar com o veículo com excesso de carga ",
        "value": "d"
      }
    ],
    "category": "Meio ambiente",
    "id": 47
  },
  {
    "question":
        "O condutor apresenta redução da capacidade para tomada de decisão, não podendo dirigir, ao consumir ",
    "right_answer": "a",
    "answers": [
      {
        "prompt": " bebidas alcoólicas ou substâncias psicoativas ",
        "value": "a"
      },
      {
        "prompt": "  refrigerantes dietéticos ou alimentos com pouco sal ",
        "value": "b"
      },
      {"prompt": "  sucos naturais ou doces industrializados ", "value": "c"},
      {"prompt": "  café sem açúcar ou bebidas industrializadas ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 48
  },
  {
    "question":
        "A desobediência ao sinal vermelho ou à parada obrigatória é uma infração gravíssima, que será punida com ",
    "right_answer": "b",
    "answers": [
      {"prompt": " multa e remoção do veículo ", "value": "a"},
      {"prompt": "  multa, apenas ", "value": "b"},
      {"prompt": "  multa e apreensão do veículo ", "value": "c"},
      {"prompt": "  multa e apreensão da CNH ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 49
  },
  {
    "question":
        "O condutor que transportar animais silvestres sem autorização poderá ser autuado em crimes ambientais, de acordo com a legislação ",
    "right_answer": "x",
    "answers": [
      {"prompt": " do Ibama ", "value": "a"},
      {"prompt": "  do Detran ", "value": "b"},
      {"prompt": "  da Anvisa ", "value": "c"},
      {"prompt": "  do Denatran ", "value": "d"}
    ],
    "category": "Meio ambiente",
    "id": 50
  },
  {
    "question":
        "Em uma situação de emergência, sendo necessário ao condutor imobilizar o veículo na pista, em via desprovida de acostamento, ele deve sinalizar o local adequadamente para evitar uma colisão traseira. A ausência de acostamento é uma condição adversa relacionada com o(a) ",
    "right_answer": "x",
    "answers": [
      {"prompt": " clima e/ou ambiente ", "value": "a"},
      {"prompt": "  condutor ", "value": "b"},
      {"prompt": "  via ", "value": "c"},
      {"prompt": "  veículo ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 51
  },
  {
    "question":
        "Os sulcos dos pneus, cuja profundidade mínima é de 1,6 mm, existem para ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " escoar a água em pista molhada e manter o atrito com o pavimento ",
        "value": "a"
      },
      {
        "prompt":
            "  reduzir o volume de ruído produzido pelo atrito do pneu com o pavimento ",
        "value": "b"
      },
      {
        "prompt":
            "  garantir a estabilidade do veículo ao fazer curvas acentuadas em alta velocidade ",
        "value": "c"
      },
      {
        "prompt":
            "  distinguir os diversos tipos e modelos de pneus e de marcas de fabricantes ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 52
  },
  {
    "question": "O condutor que vai parar o veículo no acostamento deve ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " acionar o pisca-alerta, ainda com o veículo na pista, reduzir a velocidade, entrar no acostamento e colocar o triângulo de segurança ",
        "value": "a"
      },
      {
        "prompt":
            "  entrar no acostamento, na mesma velocidade em que vinha para não prejudicar os demais veículos, parar e, em seguida, acionar as luzes do pisca-alerta ",
        "value": "b"
      },
      {
        "prompt":
            "  acionar a luz indicadora de direção e entrar rapidamente no acostamento; ao finalizar a manobra, acionar as luzes do piscaalerta ",
        "value": "c"
      },
      {
        "prompt":
            "  acionar a luz indicadora de direção, reduzir a velocidade, entrar no acostamento, colocar o triângulo de segurança e ligar o pisca-alerta ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 53
  },
  {
    "question":
        "Para maior segurança nas curvas, nas manobras de emergência e nas frenagens, os equipamentos que devem estar em boas condições de funcionamento são ",
    "right_answer": "d",
    "answers": [
      {"prompt": " amortecedores e pisca-alerta ", "value": "a"},
      {"prompt": "  pisca-alerta e faróis ", "value": "b"},
      {"prompt": "  suspensão e faróis ", "value": "c"},
      {"prompt": "  suspensão e amortecedores ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 54
  },
  {
    "question": "São fontes de poluição sonora veicular ",
    "right_answer": "x",
    "answers": [
      {"prompt": " baterias com vazamentos ", "value": "a"},
      {"prompt": "  combustível adulterado ", "value": "b"},
      {"prompt": "  carcaça de pneus usados ", "value": "c"},
      {"prompt": "  escapamento aberto e aparelhos de som ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 55
  },
  {
    "question":
        "A conduta adequada e responsável do condutor, caso ingira bebida alcoólica, é ",
    "right_answer": "d",
    "answers": [
      {
        "prompt": " lavar o rosto com água fria para ficar mais atento ",
        "value": "a"
      },
      {
        "prompt": "  ingerir café para ficar acordado e mais atento ",
        "value": "b"
      },
      {
        "prompt": "  tomar água reduzindo a concentração de álcool no sangue ",
        "value": "c"
      },
      {"prompt": "  não dirigir em hipótese alguma ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 56
  },
  {
    "question":
        "Um condutor reinicia uma etapa de sua viagem em uma rodovia após ingerir uma refeição pesada, em num dia ensolarado e quente. O excesso de comida, o calor e a monotonia da viagem podem gerar algumas condições adversas relacionadas ao condutor e contribuir para um acidente. Entre essas condições, encontra-se o(a) ",
    "right_answer": "d",
    "answers": [
      {"prompt": " fadiga ", "value": "a"},
      {"prompt": "  preocupação ", "value": "b"},
      {"prompt": "  euforia ", "value": "c"},
      {"prompt": "  sono ", "value": "d"}
    ],
    "category": "Medicina de tráfego",
    "id": 57
  },
  {
    "question":
        "Em dias de chuva, a falta de aderência do pneu com a pista molhada pode ocasionar o fenômeno da ",
    "right_answer": "x",
    "answers": [
      {"prompt": " força centrífuga ", "value": "a"},
      {"prompt": "  corrente térmica ", "value": "b"},
      {"prompt": "  corrente aerodinâmica ", "value": "c"},
      {"prompt": "  aquaplanagem ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 58
  },
  {
    "question":
        "Indique a alternativa que contém sistemas cujo bom funcionamento são vitais para a segurança do veículo em movimento, requerendo providências urgentes do condutor para evitar acidentes ",
    "right_answer": "d",
    "answers": [
      {"prompt": " freios, catalisador e pneus ", "value": "a"},
      {"prompt": "  pneus, rodas e escapamento ", "value": "b"},
      {"prompt": "  catalisador, direção e rodas ", "value": "c"},
      {"prompt": "  freios, suspensão e pneus ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 59
  },
  {
    "question":
        "Para entregar uma carga sem atraso, um condutor está dirigindo a muitas horas seguidas, sem qualquer descanso. Essa sua atitude representa um(a) ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " preocupação e um cuidado consigo mesmo e com os demais usuários da via ",
        "value": "a"
      },
      {
        "prompt":
            "  dedicação à empresa em que trabalha, além de senso de responsabilidade no trânsito ",
        "value": "b"
      },
      {
        "prompt":
            "  alto espírito profissional, que não compromete a segurança no trânsito ",
        "value": "c"
      },
      {
        "prompt":
            "  condição adversa do condutor, que é a fadiga e pode gerar acidentes ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 60
  },
  {
    "question":
        "Nos casos de acidente de trânsito em que a vítima apresenta parada cardiopulmonar, qual o procedimento correto a ser feito pela equipe de socorro? ",
    "right_answer": "x",
    "answers": [
      {"prompt": " respiração boca a boca ", "value": "a"},
      {"prompt": "  ventilação natural ", "value": "b"},
      {"prompt": "  massagem no coração ", "value": "c"},
      {"prompt": "  compressão torácica ", "value": "d"}
    ],
    "category": "Medicina de tráfego",
    "id": 61
  },
  {
    "question": "Os veículos que têm prioridade no trânsito são destinados a ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " polícia, ambulância e prestadores de serviços de utilidade pública, apenas ",
        "value": "a"
      },
      {
        "prompt": "  prestadores de serviços de utilidade pública, apenas ",
        "value": "b"
      },
      {
        "prompt":
            "  prestadores de serviços à rede de energia elétrica, apenas ",
        "value": "c"
      },
      {
        "prompt":
            "  socorro de incêndio e salvamento, polícia, fiscalização e operação de trânsito e ambulância ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 62
  },
  {
    "question":
        "Uma situação de risco que pode causar acidentes de trânsito em razão da perda de estabilidade do veículo é (são) ",
    "right_answer": "b",
    "answers": [
      {"prompt": " ausência de acostamento na via ", "value": "a"},
      {"prompt": "  ventos fortes laterais ", "value": "b"},
      {"prompt": "  sinalização de trânsito apagada ", "value": "c"},
      {"prompt": "  neblina densa ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 63
  },
  {
    "question":
        "A distância percorrida do momento em que o freio é acionado até a parada total do veículo é chamada de ",
    "right_answer": "x",
    "answers": [
      {"prompt": " distância de percepção ", "value": "a"},
      {"prompt": "  distância de seguimento ", "value": "b"},
      {"prompt": "  distância de frenagem ", "value": "c"},
      {"prompt": "  distância de reação ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 64
  },
  {
    "question":
        "A demonstração de tratamento humano, de respeito ao pedestre e de boa convivência no trânsito pode ser observada quando o condutor ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " dá prioridade ao pedestre, retendo o veículo a uma distância segura ",
        "value": "a"
      },
      {
        "prompt":
            "  avança com o veículo na direção daquele que está atravessando a via, pressionando-o ",
        "value": "b"
      },
      {
        "prompt":
            "  para sobre a faixa de pedestre em virtude de congestionamentos na via ",
        "value": "c"
      },
      {
        "prompt":
            "  usa de maneira ostensiva a buzina para pressionar os mais lentos na travessia ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 65
  },
  {
    "question": "Em direção defensiva, o elemento básico decisão depende ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " da habilidade, tempo e prática de direção; da previsão das Situações de Risco; e do conhecimento das condições do veículo e da via ",
        "value": "a"
      },
      {
        "prompt": "  somente do tempo de experiência do condutor ",
        "value": "b"
      },
      {"prompt": "  somente das condições do veículo e da via ", "value": "c"},
      {"prompt": "  da habilidade e da experiência do condutor ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 66
  },
  {
    "question":
        "As placas de identificação de atrativo turístico têm por objetivo ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " indicar e orientar os usuários sobre os pontos turísticos da região ",
        "value": "a"
      },
      {
        "prompt":
            "  regulamentar e indicar aos usuários os pontos turísticos da região ",
        "value": "b"
      },
      {
        "prompt": "  advertir os usuários sobre pontos turísticos da região ",
        "value": "c"
      },
      {
        "prompt":
            "  regulamentar os pontos turísticos da região e alertar os usuários ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 67
  },
  {
    "question":
        "A velocidade mínima permitida em uma rodovia sinalizada com a velocidade máxima de 100 km/h é ",
    "right_answer": "x",
    "answers": [
      {"prompt": " 50 km/h ", "value": "a"},
      {"prompt": "  60 km/h ", "value": "b"},
      {"prompt": "  40 km/h ", "value": "c"},
      {"prompt": "  30 km/h ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 68
  },
  {
    "question": "São condições adversas do veículo ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " veículo com as revisões efetuadas, boa conservação e manutenção em dia ",
        "value": "a"
      },
      {
        "prompt":
            "  veículo com manutenção mecânica periódica e pneus em bom estado ",
        "value": "b"
      },
      {
        "prompt": "  veículo em mau estado de conservação e pneus gastos ",
        "value": "c"
      },
      {
        "prompt":
            "  veículo em boas condições de uso, com equipamentos obrigatórios de segurança ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 69
  },
  {
    "question": "É considerado crime de trânsito dirigir veículo automotor ",
    "right_answer": "c",
    "answers": [
      {
        "prompt":
            " imprimindo velocidade acima do limite estabelecido pela placa de sinalização ",
        "value": "a"
      },
      {
        "prompt": "  desobedecendo a ordem do agente de trânsito ",
        "value": "b"
      },
      {
        "prompt": "  sem estar habilitado e gerando perigo de dano ",
        "value": "c"
      },
      {
        "prompt":
            "  deixando de dar passagem aos veículos precedidos de batedores ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 70
  },
  {
    "question":
        "Indique a alternativa que descreve uma ação correta do condutor ",
    "right_answer": "b",
    "answers": [
      {
        "prompt":
            " ao parar ou estacionar o veículo do lado direito da via, o condutor deve orientar o passageiro do banco de trás sobre o momento certo de desembarcar pelo lado esquerdo ",
        "value": "a"
      },
      {
        "prompt":
            "  ao perceber antecipadamente a presença de buracos na via, o condutor deve reduzir a velocidade usando os freios e ficar atento às condições de tráfego ",
        "value": "b"
      },
      {
        "prompt":
            "  ao fazer uma conversão à esquerda em uma rodovia, o condutor deve acionar a seta, posicionar o veículo no meio da pista e aguardar o momento de seguir ",
        "value": "c"
      },
      {
        "prompt":
            "  ao se aproximar de uma faixa de pedestres não sinalizada, com um pedestre iniciando a travessia, o condutor deve buzinar como alerta e manter sua velocidade ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 71
  },
  {
    "question":
        "O conjunto da embreagem fica situado no sistema de transmissão e está localizado entre ",
    "right_answer": "a",
    "answers": [
      {"prompt": " o volante do motor e a caixa de mudanças ", "value": "a"},
      {"prompt": "  os semieixos e a caixa de transmissão ", "value": "b"},
      {"prompt": "  o diferencial e os eixos ", "value": "c"},
      {"prompt": "  o motor e os eixos ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 72
  },
  {
    "question":
        "Transitar em marcha à ré, salvo na distância necessária a pequenas manobras e de forma a não causar riscos à segurança, é uma infração ",
    "right_answer": "c",
    "answers": [
      {"prompt": " leve ", "value": "a"},
      {"prompt": "  média ", "value": "b"},
      {"prompt": "  grave ", "value": "c"},
      {"prompt": "  gravíssima ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 73
  },
  {
    "question":
        "Indique a alternativa que contém uma atitude indevida do condutor que desvia sua atençao ao dirigir ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " falar e digitar mensagens ao telefone celular ",
        "value": "a"
      },
      {
        "prompt": "  prestar atenção às luzes do painel do veículo ",
        "value": "b"
      },
      {"prompt": "  manter as duas mãos no volante ", "value": "c"},
      {
        "prompt": "  observar atentamente os espelhos retrovisores ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 74
  },
  {
    "question":
        "Dos materiais listados em seguida, qual deles demora mais tempo para se decompor? ",
    "right_answer": "x",
    "answers": [
      {"prompt": " jornal ", "value": "a"},
      {"prompt": "  pneu ", "value": "b"},
      {"prompt": "  filtro de cigarro ", "value": "c"},
      {"prompt": "  papelão ", "value": "d"}
    ],
    "category": "Meio ambiente",
    "id": 75
  },
  {
    "question":
        "O candidato que pretende habilitar-se na categoria \"E\" deverá ",
    "right_answer": "a",
    "answers": [
      {
        "prompt": " estar habilitado no mínimo há um ano na categoria \"C\" ",
        "value": "a"
      },
      {
        "prompt":
            "  estar habilitado no mínimo há dois anos na categoria \"B\" ",
        "value": "b"
      },
      {
        "prompt":
            "  estar habilitado no mínimo há dois anos na categoria \"A\" ",
        "value": "c"
      },
      {
        "prompt": "  estar habilitado no mínimo há um ano na categoria \"B\" ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 76
  },
  {
    "question": "A função do silencioso é ",
    "right_answer": "x",
    "answers": [
      {"prompt": " aumentar a potência do motor do veículo ", "value": "a"},
      {
        "prompt": "  controlar os níveis de poluentes produzidos pelo motor ",
        "value": "b"
      },
      {"prompt": "  reduzir ruídos produzidos pelo motor ", "value": "c"},
      {"prompt": "  melhorar a queima do combustível no motor ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 77
  },
  {
    "question":
        "Transitar com o veículo produzindo fumaça, gases ou partículas em níveis superiores aos fixados pelo Contran é uma prática que tem como medida administrativa a (Art. 231, inciso III do CTB) ",
    "right_answer": "x",
    "answers": [
      {"prompt": " retenção do veículo para regularização ", "value": "a"},
      {"prompt": "  suspensão do direito de dirigir ", "value": "b"},
      {"prompt": "  apreensão do veículo ", "value": "c"},
      {"prompt": "  cassação da CNH ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 78
  },
  {
    "question":
        "O nível de atenção do condutor é influenciado pela fadiga, especialmente se for dirigir por um longo período. Qual deve ser a atitude do condutor ao constatar que se encontra nesse estado? ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " parar para descansar em local seguro, antes de prosseguir a viagem com segurança ",
        "value": "a"
      },
      {
        "prompt":
            "  reclinar o banco ligeiramente para trás, esticar as pernas, relaxar os braços e continuar dirigindo ",
        "value": "b"
      },
      {
        "prompt":
            "  o mais seguro é resistir ao cansaço e concluir a viagem antes que ocorra um acidente ",
        "value": "c"
      },
      {
        "prompt":
            "  o melhor é ingerir bebidas energéticas ou estimulantes, como café, para reduzir o cansaço ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 79
  },
  {
    "question":
        "O candidato à primeira habilitação, depois de submetido a todos os exames e considerado apto, receberá ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " permissão para dirigir, válida por 2 (dois) anos, em todo o território nacional ",
        "value": "a"
      },
      {
        "prompt":
            "  permissão para dirigir, válida por 1 (um) ano, em todo o território nacional ",
        "value": "b"
      },
      {
        "prompt":
            "  carteira nacional de habilitação, válida por 5 (cinco) anos ",
        "value": "c"
      },
      {
        "prompt": "  carteira nacional de habilitação, válida por 1 (um) ano ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 80
  },
  {
    "question": "Em caso de acidente de trânsito com vítima, o motorista deve ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " garantir os itens básicos em relação à segurança e oferecer água à vítima ",
        "value": "a"
      },
      {"prompt": "  transportar a vítima ao pronto-socorro ", "value": "b"},
      {
        "prompt": "  avaliar o estado geral da vítima e solicitar socorro ",
        "value": "c"
      },
      {"prompt": "  remover a vítima do veículo ", "value": "d"}
    ],
    "category": "Medicina de tráfego",
    "id": 81
  },
  {
    "question": "A circulação de bicicletas nos passeios públicos é ",
    "right_answer": "c",
    "answers": [
      {
        "prompt":
            " proibida para bicicletas de aros superiores a 24 e permitida para bicicletas com aros inferiores a 24 ",
        "value": "a"
      },
      {
        "prompt":
            "  permitida, desde que o passeio público tenha largura superior a 1 metro e sem circulação ",
        "value": "b"
      },
      {
        "prompt":
            "  permitida, desde que autorizada e sinalizada pelo órgão com circunscrição sobre a via ",
        "value": "c"
      },
      {
        "prompt":
            "  permitida para bicicletas de crianças e adolescentes, desde que os pais se responsabilizem ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 82
  },
  {
    "question":
        "Um candidato à obtenção da CNH foi aprovado nos exames de habilitação e recebeu a Permissão para Dirigir. Ao final de um ano, tendo cometido uma infração de natureza grave, ele ",
    "right_answer": "c",
    "answers": [
      {"prompt": " será submetido a curso de reciclagem ", "value": "a"},
      {
        "prompt": "  receberá a CNH e a multa correspondente à infração ",
        "value": "b"
      },
      {
        "prompt": "  terá de reiniciar todo o processo de habilitação ",
        "value": "c"
      },
      {
        "prompt": "  manterá a Permissão para Dirigir por mais um ano ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 83
  },
  {
    "question": "A ocorrência de aquaplanagem é agravada quando ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " a profundidade dos sulcos do pneu está abaixo do limite mínimo exigido ",
        "value": "a"
      },
      {
        "prompt":
            "  o sistema de embreagem do veículo está com desgaste acentuado ",
        "value": "b"
      },
      {
        "prompt":
            "  o condutor reduz a velocidade antes de entrar em trechos com água na pista ",
        "value": "c"
      },
      {
        "prompt":
            "  o sistema de suspensão e de amortecedores perdeu a validade ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 84
  },
  {
    "question":
        "Entre outros fatores, a durabilidade dos pneus também é determinada por ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " realizar manutenção sistemática do sistema de injeção eletrônica ",
        "value": "a"
      },
      {
        "prompt":
            "  conferir regularmente o alinhamento e o balanceamento das rodas ",
        "value": "b"
      },
      {"prompt": "  proceder regularmente à troca das câmaras ", "value": "c"},
      {"prompt": "  manter balanceado o cardan ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 85
  },
  {
    "question":
        "Para um condutor dirigir veículos motorizados, utilizados em transporte de carga, cujo peso bruto total exceda a 3 500 kg, a habilitação exigida corresponde à ",
    "right_answer": "a",
    "answers": [
      {"prompt": " categoria \"C\" ", "value": "a"},
      {"prompt": "  categoria \"B\" ", "value": "b"},
      {"prompt": "  categoria \"E\" ", "value": "c"},
      {"prompt": "  categoria \"D\" ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 86
  },
  {
    "question":
        "São condições adversas, em vias pavimentadas, envolvendo riscos que podem contribuir para gerar acidentes, as seguintes características ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " acostamento em desnível e sinalização em bom estado ",
        "value": "a"
      },
      {"prompt": "  presença de óleo e areia na pista ", "value": "b"},
      {
        "prompt": "  pavimento em bom estado e acostamento em desnível ",
        "value": "c"
      },
      {"prompt": "  longos trechos de retas e pontes estreitas ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 87
  },
  {
    "question":
        "Um componente cuja má condição representa risco potencial de acidente de trânsito, estando o veículo em velocidade, é (são) ",
    "right_answer": "x",
    "answers": [
      {"prompt": " roda trincada ", "value": "a"},
      {
        "prompt": "  palheta do limpador do para-brisa ressecada ",
        "value": "b"
      },
      {"prompt": "  rodas desalinhadas ", "value": "c"},
      {"prompt": "  bateria fraca ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 88
  },
  {
    "question":
        "Nos veículos com tração dianteira, a peça articulada que liga o semieixo à roda, permitindo a transmissão da força do motor às rodas, é a ",
    "right_answer": "x",
    "answers": [
      {"prompt": " ponta cinética da tração ", "value": "a"},
      {"prompt": "  caixa de câmbio ", "value": "b"},
      {"prompt": "  junta homocinética ", "value": "c"},
      {"prompt": "  embreagem ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 89
  },
  {
    "question":
        "Para conversão à esquerda, nas rodovias com acostamento e sem local apropriado para conversão, o condutor deverá ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " entrar no acostamento, reduzir a velocidade e, sem parar, cruzar a via aproveitando uma brecha entre os veículos ",
        "value": "a"
      },
      {
        "prompt":
            "  acessar o acostamento à direita, parar o veículo e aguardar o momento seguro de cruzar a via ",
        "value": "b"
      },
      {
        "prompt":
            "  parar o veículo na pista, o mais próximo possível da linha divisória de fluxo, e aguardar o momento certo de cruzar a via ",
        "value": "c"
      },
      {
        "prompt":
            "  reduzir a velocidade, não parar e cruzar a via à esquerda, aproveitando uma brecha entre os veículos ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 90
  },
  {
    "question":
        "Especialmente à noite, ao sinalizar a mudança de direção ao dirigir, essa manobra será prejudicada, gerando risco de colisão com outros veículos,caso estiverem queimadas as luzes de ",
    "right_answer": "b",
    "answers": [
      {"prompt": " freio ", "value": "a"},
      {"prompt": "  setas indicadoras de direção ", "value": "b"},
      {"prompt": "  lanternas de posição ", "value": "c"},
      {"prompt": "  ré ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 91
  },
  {
    "question":
        "Em um veículo automotor, a redução do atrito entre as peças internas do motor, aumentando seu rendimento, é proporcionada pelo(a) ",
    "right_answer": "c",
    "answers": [
      {"prompt": " velas de ignição ", "value": "a"},
      {"prompt": "  água do sistema de arrefecimento ", "value": "b"},
      {"prompt": "  óleo do motor ", "value": "c"},
      {"prompt": "  fluido de freios ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 92
  },
  {
    "question":
        "No trânsito, o condutor deve ter percepção e respeito às reações das pessoas sendo cuidadoso e atento. Deve também observar: ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " preferencialmente os espelhos retrovisores e a pista à sua frente ",
        "value": "a"
      },
      {"prompt": "  fixamente e unicamente a via à sua frente ", "value": "b"},
      {
        "prompt": "  periodicamente as luzes indicativas do painel do veículo ",
        "value": "c"
      },
      {
        "prompt": "  constantemente todo o ambiente no trânsito à sua volta ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 93
  },
  {
    "question":
        "O condutor que, na ultrapassagem por outro veículo, mantém ou diminui a velocidade do seu veículo está ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " dificultando a ultrapassagem, irritando o outro condutor e indo contra o bom convívio social no trânsito ",
        "value": "a"
      },
      {
        "prompt":
            "  provocando o outro condutor ao frear, agindo contra a convivência harmoniosa no trânsito ",
        "value": "b"
      },
      {
        "prompt":
            "  retardando o fluxo de veículos na via a seu favor, indo contra o bom convívio no trânsito ",
        "value": "c"
      },
      {
        "prompt":
            "  agindo com prudência, facilitando a ultrapassagem e indo a favor do bom convívio no trânsito ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 94
  },
  {
    "question": "O bom relacionamento no trânsito se deve ao ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " controle emocional do indivíduo e ao respeito às normas e regulamentos ",
        "value": "a"
      },
      {
        "prompt": "  respeito às normas e regulamentos de trânsito, apenas ",
        "value": "b"
      },
      {"prompt": "  controle emocional do indivíduo, apenas ", "value": "c"},
      {
        "prompt": "  controle emocional e respeito ao cidadão, apenas ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 95
  },
  {
    "question":
        "É mais seguro, ao se aproximar de um cruzamento, que os condutores tenham uma boa visão das vias que se cruzam; por isso, as esquinas devem ficar livres de estacionamento. A distância mínima que deve ser observada é de ",
    "right_answer": "a",
    "answers": [
      {"prompt": " 5 metros ", "value": "a"},
      {"prompt": "  4 metros ", "value": "b"},
      {"prompt": "  3 metros ", "value": "c"},
      {"prompt": "  2 metros ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 96
  },
  {
    "question":
        "Em caso de atendimento a vítima que apresenta sangramento, é aconselhável ",
    "right_answer": "x",
    "answers": [
      {"prompt": " estancar o sangramento usando torniquete ", "value": "a"},
      {"prompt": "  oferecer água para evitar a desidratação ", "value": "b"},
      {
        "prompt": "  usar luva de borracha para evitar contaminações ",
        "value": "c"
      },
      {"prompt": "  ministrar analgésico e alimentar a vítima ", "value": "d"}
    ],
    "category": "Medicina de tráfego",
    "id": 97
  },
  {
    "question":
        "A Carteira Nacional de Habilitação e a Permissão para Dirigir terão validade para a condução do veículo quando forem ",
    "right_answer": "a",
    "answers": [
      {"prompt": " comprovadas por meio físico e/ou digital ", "value": "a"},
      {"prompt": "  cópias autenticadas por um cartório ", "value": "b"},
      {"prompt": "  cópias autenticadas pelo Detran.SP ", "value": "c"},
      {
        "prompt": "  originais e apresentadas com a Carteira de Identidade ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 98
  },
  {
    "question":
        "Há um preocupante aumento no número de acidentes envolvendo motociclistas. O motorista deve evitar este tipo de ocorrência, ficando atento ",
    "right_answer": "a",
    "answers": [
      {
        "prompt": " à distância lateral e frontal de motocicletas ",
        "value": "a"
      },
      {"prompt": "  somente às motocicletas com farol aceso ", "value": "b"},
      {
        "prompt": "  somente a motocicletas que transitem pela esquerda ",
        "value": "c"
      },
      {
        "prompt": "  somente a motocicletas que transitem à direita ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 99
  },
  {
    "question":
        "A ação correta do condutor que presta primeiros socorros no local do acidente deve ser a seguinte ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " no caso do acidentado ser um motociclista, a primeira medida a ser tomada de imediato é a retirada do capacete ",
        "value": "a"
      },
      {
        "prompt":
            "  havendo vítima(s) com hemorragia na perna, fazer imediatamente um torniquete para estancar o sangue ",
        "value": "b"
      },
      {
        "prompt":
            "  não havendo risco imediato de incêndio ou queda do veículo em barranco, não movimentar a(s) vítima(s) e aguardar a equipe de socorro ",
        "value": "c"
      },
      {
        "prompt":
            "  oferecer água para uma vítima em estado grave, que reclama estar com sede, e alimentá-la se for necessário ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 100
  },
  {
    "question":
        "A condição adversa que pode causar acidentes, porque o condutor não consegue parar o veículo a tempo de evitar colisão, é aquela relacionada com o sistema de ",
    "right_answer": "b",
    "answers": [
      {
        "prompt":
            " arrefecimento do motor, com baixo nível de água no reservatório ",
        "value": "a"
      },
      {
        "prompt": "  freios desregulados ou com falhas em seus componentes ",
        "value": "b"
      },
      {
        "prompt":
            "  iluminação traseira, danificada ou com lâmpadas queimadas ",
        "value": "c"
      },
      {
        "prompt": "  direção, com folgas ou com o sistema hidráulico falhando ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 101
  },
  {
    "question":
        "Um exemplo de situação de risco proporcionada por uma condição adversa relacionada com o clima e/ou ambiente é ",
    "right_answer": "b",
    "answers": [
      {
        "prompt":
            " pneus descalibrados, reduzindo a estabilidade do veículo nas curvas acentuadas ",
        "value": "a"
      },
      {
        "prompt":
            "  luz do sol incidindo sobre o semáforo, impedindo a identificação das suas luzes ",
        "value": "b"
      },
      {
        "prompt":
            "  condutor dirigindo com sono durante a noite, reduzindo sua concentração no trânsito ",
        "value": "c"
      },
      {
        "prompt":
            "  via com alterações na malha asfáltica, prejudicando a condução do veículo e a ação do condutor ",
        "value": "d"
      }
    ],
    "category": "Meio ambiente",
    "id": 102
  },
  {
    "question":
        "O condutor infrator será submetido a curso de reciclagem e avaliação psicológica quando ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " se envolver em acidente grave para o qual tenha contribuído ",
        "value": "a"
      },
      {
        "prompt":
            "  cometer uma infração de natureza grave segundo as normas de trânsito ",
        "value": "b"
      },
      {
        "prompt":
            "  cometer uma infração por excesso de velocidade até 20% do permitido ",
        "value": "c"
      },
      {
        "prompt":
            "  cometer uma infração por estacionar afastado a 1 metro da guia da calçada ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 103
  },
  {
    "question":
        "O transporte de criança em motocicleta é permitido a partir de ",
    "right_answer": "a",
    "answers": [
      {"prompt": " dez anos de idade ", "value": "a"},
      {"prompt": "  quatro anos de idade ", "value": "b"},
      {"prompt": "  seis anos de idade ", "value": "c"},
      {"prompt": "  cinco anos de idade ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 104
  },
  {
    "question": "O freio, do tipo ABS, torna mais segura a frenagem, pois ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " evita que a roda bloqueie e o veículo derrape ",
        "value": "a"
      },
      {"prompt": "  aplica força menor nas rodas dianteiras ", "value": "b"},
      {"prompt": "  aplica força menor nas rodas traseiras ", "value": "c"},
      {"prompt": "  bloqueia todas as rodas simultaneamente ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 105
  },
  {
    "question":
        "Ao procurar prestar os primeiros socorros, o condutor deve estar atento ao estado da vítima para passar essa informação, da melhor maneira possível, quando acionar a equipe de emergência, e, assim, dar mais agilidade ao socorro. Indique a maneira mais correta de verificar as condições da vítima ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " a perda de consciência pode ser identificada pela medição da frequência cardíaca por meio do pulso ou pela ausência de respiração ",
        "value": "a"
      },
      {
        "prompt":
            "  lesões na medula podem ser identificadas movimentando-se a cabeça da vítima para os lados e para cima e para baixo ",
        "value": "b"
      },
      {
        "prompt":
            "  a hemorragia pode ser identificada pela observação de sangramentos pelo nariz, pela boca ou em ferimentos pelo corpo ",
        "value": "c"
      },
      {
        "prompt":
            "  a fratura exposta pode ser identificada observando-se o inchaço de membros inferiores e a ausência de sangramento ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 106
  },
  {
    "question":
        "Quais condições da via comprometem a visibilidade do condutor e podem contribuir para a ocorrência de acidentes? ",
    "right_answer": "x",
    "answers": [
      {"prompt": " pistas esburacadas e capeamento falho ", "value": "a"},
      {
        "prompt": "  pistas irregulares, saliências e depressões ",
        "value": "b"
      },
      {"prompt": "  retas planas com bom calçamento ", "value": "c"},
      {"prompt": "  curvas, aclives e declives ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 107
  },
  {
    "question":
        "Ultrapassar outro veículo pelo acostamento, em interseções e passagens de nível, terá como penalidade (Art. 202, incisos I e II do CTB) ",
    "right_answer": "d",
    "answers": [
      {"prompt": " retenção do veículo ", "value": "a"},
      {"prompt": "  remoção do veículo ", "value": "b"},
      {"prompt": "  recolhimento da CNH ", "value": "c"},
      {"prompt": "  multa ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 108
  },
  {
    "question":
        "As crianças com idade inferior a 10 (dez) anos que não tenham atingido 1,45 m (um metro e quarenta e cinco centímetros) de altura devem ser transportadas nos bancos traseiros. Não se aplica essa regra quando",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " o condutor estiver sozinho, sendo autorizado o uso da cadeirinha no banco dianteiro ",
        "value": "a"
      },
      {"prompt": "  em situação de emergência ", "value": "b"},
      {"prompt": "  a criança possuir altura superior a 1,20 m ", "value": "c"},
      {
        "prompt": "  o veículo for dotado exclusivamente de bancos dianteiros ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 109
  },
  {
    "question": "Granizo e chuva são classificados como condições adversas de ",
    "right_answer": "x",
    "answers": [
      {"prompt": " veículo ", "value": "a"},
      {"prompt": "  trânsito ", "value": "b"},
      {"prompt": "  luz ", "value": "c"},
      {"prompt": "  tempo ", "value": "d"}
    ],
    "category": "Meio ambiente",
    "id": 110
  },
  {
    "question":
        "Ofuscamento e chuva são fatores classificados, respectivamente, como condições adversas de ",
    "right_answer": "x",
    "answers": [
      {"prompt": " tempo e trânsito ", "value": "a"},
      {"prompt": "  luz e trânsito ", "value": "b"},
      {"prompt": "  trânsito e estrada ", "value": "c"},
      {"prompt": "  luz e tempo ", "value": "d"}
    ],
    "category": "Meio ambiente",
    "id": 111
  },
  {
    "question":
        "Nos casos de acidente em que a vítima apresenta perda da consciência, desmaio e falta de batimentos cardíacos, ao acionar a equipe de socorro, o condutor deve informar que a vítima apresenta sinais e sintomas de ",
    "right_answer": "x",
    "answers": [
      {"prompt": " crise aguda de asma ", "value": "a"},
      {"prompt": "  infecção respiratória ", "value": "b"},
      {"prompt": "  hemorragia interna ", "value": "c"},
      {"prompt": "  parada cardiorrespiratória ", "value": "d"}
    ],
    "category": "Medicina de tráfego",
    "id": 112
  },
  {
    "question": "A falta de controle emocional na direção do veículo ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " não interfere na segurança e na convivência social no trânsito ",
        "value": "a"
      },
      {
        "prompt": "  dá mais agilidade ao condutor e melhora a convivência ",
        "value": "b"
      },
      {
        "prompt":
            "  pode livrar o condutor de um acidente de trânsito e de irritações ",
        "value": "c"
      },
      {
        "prompt":
            "  pode causar acidentes e aborrecimentos com outros condutores ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 113
  },
  {
    "question": "Em caso de acidente com vítima, o condutor deverá ",
    "right_answer": "d",
    "answers": [
      {
        "prompt": " iluminar o local com as lanternas do veículo, apenas ",
        "value": "a"
      },
      {"prompt": "  deixar a polícia chegar para resolver tudo ", "value": "b"},
      {"prompt": "  remover, imediatamente, as vítimas ", "value": "c"},
      {
        "prompt":
            "  sinalizar a área do acidente, utilizando entre outros: o triângulo, o pisca-alerta e galhos de árvores ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 114
  },
  {
    "question":
        "Para evitar a colisão em caso de freada brusca do veículo que vai à frente, a ação preventiva do condutor que segue atrás é ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " manter distância de seguimento e frear bruscamente quando houver risco de colisão ",
        "value": "a"
      },
      {
        "prompt":
            "  manter distância de seguimento apenas quando pressentir que o motorista da frente pode ser imprudente ",
        "value": "b"
      },
      {
        "prompt":
            "  dirigir com atenção, independente da distância de seguimento do veículo que vai à sua frente ",
        "value": "c"
      },
      {
        "prompt":
            "  manter distância de seguimento e estar atento para conseguir frear a tempo de evitar a colisão ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 115
  },
  {
    "question":
        "No caso de o motorista não identificar algum tipo de proibição pela sinalização, seja na via ou pelo CTB, o acionamento da buzina deve ocorrer com toques ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " estridentes, sempre que atravessar sinal vermelho em um cruzamento ",
        "value": "a"
      },
      {
        "prompt":
            "  repetidos, para pressionar os condutores dos veículos à frente em vias congestionadas ",
        "value": "b"
      },
      {
        "prompt":
            "  breves, ao circular em acostamentos de rodovias congestionadas ",
        "value": "c"
      },
      {
        "prompt":
            "  breves, para advertências necessárias, a fim de evitar acidentes ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 116
  },
  {
    "question": "Em um motor, os componentes do sistema de alimentação são ",
    "right_answer": "d",
    "answers": [
      {"prompt": " vela e bobina ", "value": "a"},
      {"prompt": "  bomba de ignição e bobina ", "value": "b"},
      {"prompt": "  ignição e lubrificação ", "value": "c"},
      {"prompt": "  carburador e injeção eletrônica ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 117
  },
  {
    "question":
        "Caracteriza-se crime de trânsito (sujeito a multa, suspensão ou proibição de obter a habilitação para dirigir veículo automotor e pena de prisão) conduzir veículo com concentração de álcool por litro de sangue igual ou superior a ",
    "right_answer": "x",
    "answers": [
      {"prompt": " 6 (seis) decigramas ", "value": "a"},
      {"prompt": "  8 (oito) decigramas ", "value": "b"},
      {"prompt": "  4 (quatro) decigramas ", "value": "c"},
      {"prompt": "  2 (dois) decigramas ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 118
  },
  {
    "question":
        "De acordo com o Código de Trânsito Brasileiro, comete uma infração de trânsito o condutor que ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " trafegar em velocidade compatível com a segurança nas proximidades de escolas e hospitais ",
        "value": "a"
      },
      {"prompt": "  respeitar a legislação de trânsito ", "value": "b"},
      {
        "prompt": "  prestar socorro a vítima em caso de acidente ",
        "value": "c"
      },
      {
        "prompt":
            "  desrespeitar qualquer preceito do CTB, a legislação complementar e as Resoluções do Contran ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 119
  },
  {
    "question":
        "A falta de equipamentos obrigatórios do veículo representa uma condição adversa, durante a prestação de auxílio em um acidente de trânsito. O equipamento necessário nessa situação é ",
    "right_answer": "d",
    "answers": [
      {
        "prompt": " pneus com sulcos com profundidade acima de 1,6mm ",
        "value": "a"
      },
      {
        "prompt": "  sistema de escapamento e catalisador em bom estado ",
        "value": "b"
      },
      {
        "prompt": "  luzes de freios em boas condições de funcionamento ",
        "value": "c"
      },
      {"prompt": "  triângulo de segurança ", "value": "d"}
    ],
    "category": "Medicina de tráfego",
    "id": 120
  },
  {
    "question":
        "Segundo o CTB, quanto à tração, os veículos classificam-se em ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " motocicleta, motoneta, triciclo e quadriciclo ",
        "value": "a"
      },
      {
        "prompt": "  trator, caminhão-trator, trator de esteira e utilitário ",
        "value": "b"
      },
      {"prompt": "  camioneta e utilitário ", "value": "c"},
      {
        "prompt":
            "  automotor, elétrico, de propulsão humana, de tração animal, reboque ou semirreboque ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 121
  },
  {
    "question":
        "Em acidente com vítima, sempre que possível, devemos manter o tráfego fluindo. Para a vítima, a razão mais importante para a manutenção da fluidez do fluxo é ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " possibilitar a chegada mais rápida da equipe de socorro ",
        "value": "a"
      },
      {
        "prompt":
            "  impedir que as empresas de transporte não sofram prejuízos ",
        "value": "b"
      },
      {
        "prompt":
            "  possibilitar que as pessoas que estão em deslocamento pela via não se atrasem ",
        "value": "c"
      },
      {
        "prompt": "  impedir que o acidente gere congestionamento ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 122
  },
  {
    "question":
        "Em uma via com mais de uma faixa por sentido, o condutor observa um obstáculo a distância (por exemplo, um buraco). Nesta condição, para evitar manobra que possa causar acidente com a possível presença de motociclistas, o condutor deve: ",
    "right_answer": "b",
    "answers": [
      {
        "prompt":
            " manter a velocidade e frear bruscamente diante do obstáculo ",
        "value": "a"
      },
      {
        "prompt":
            "  reduzir a velocidade e sinalizar com antecedência se for necessário mudar de faixa ",
        "value": "b"
      },
      {
        "prompt":
            "  aumentar a velocidade e mudar de faixa imediatamente, não necessitando sinalizar ",
        "value": "c"
      },
      {
        "prompt":
            "  manter a velocidade e mudar de faixa imediatamente, não necessitando sinalizar ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 123
  },
  {
    "question":
        "O sistema elétrico do veículo é responsável principalmente pelo acionamento ",
    "right_answer": "c",
    "answers": [
      {"prompt": " da ignição e do pedal da embreagem ", "value": "a"},
      {"prompt": "  da direção hidráulica ", "value": "b"},
      {"prompt": "  da ignição e dos acessórios ", "value": "c"},
      {"prompt": "  da ignição e suspensão ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 124
  },
  {
    "question":
        "A legislação vigente estabeleceu equipamentos obrigatórios para as bicicletas com aro superior a 20 polegadas, entre eles ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " campainha, espelho retrovisor do lado esquerdo e iluminação dianteira, traseira e lateral ",
        "value": "a"
      },
      {
        "prompt":
            "  campainha, espelho retrovisor do lado esquerdo e luz de indicação de direção ",
        "value": "b"
      },
      {
        "prompt": "  campainha pisca-alerta e luz de indicação de direção ",
        "value": "c"
      },
      {
        "prompt": "  campainha pisca-alerta e iluminação traseira e lateral ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 125
  },
  {
    "question":
        "Ao se aproximar de escolas ou de vias em que haja travessia de pedestres, o condutor deve ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " reduzir a velocidade do veículo e ligar o pisca-alerta ",
        "value": "a"
      },
      {
        "prompt":
            "  reduzir a velocidade do veículo, somente se a pista estiver escorregadia ",
        "value": "b"
      },
      {
        "prompt":
            "  reduzir a velocidade do veículo de forma compatível com a segurança do trânsito no local ",
        "value": "c"
      },
      {
        "prompt":
            "  manter a velocidade do veículo e seguir em frente, mesmo sendo área de travessia de pedestres ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 126
  },
  {
    "question": "Ultrapassar pela direita é uma infração média, a menos que ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " o veículo da frente não queira permitir a ultrapassagem ",
        "value": "a"
      },
      {"prompt": "  o condutor do veículo da frente permita ", "value": "b"},
      {
        "prompt":
            "  o veículo da frente esteja na faixa apropriada e dê sinal de que vai entrar à esquerda ",
        "value": "c"
      },
      {
        "prompt":
            "  o veículo da frente esteja na faixa em que o veículo quer ultrapassar ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 127
  },
  {
    "question":
        "Ao se deparar com um acidente de trânsito com vítima(s), entre as ações de socorro possíveis, uma atitude correta é ",
    "right_answer": "c",
    "answers": [
      {
        "prompt":
            " fazer torniquete em um dos membros se a vítima estiver com hemorragia ",
        "value": "a"
      },
      {
        "prompt":
            "  manter-se no meio da pista acenando para outros veículos que se aproximam ",
        "value": "b"
      },
      {
        "prompt": "  manter a calma e avaliar o estado geral da(s) vítima(s) ",
        "value": "c"
      },
      {
        "prompt":
            "  retirar a(s) vítima(s) rapidamente do local para restabelecer o tráfego na via ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 128
  },
  {
    "question": "Desconhecendo o local de destino, o condutor deve ",
    "right_answer": "b",
    "answers": [
      {
        "prompt": " parar o veículo na via para obter informação ",
        "value": "a"
      },
      {
        "prompt": "  estudar previamente o trajeto a ser executado ",
        "value": "b"
      },
      {
        "prompt": "  seguir a intuição, quando for motorista experiente ",
        "value": "c"
      },
      {"prompt": "  enquanto dirige, cadastrar o destino no GPS ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 129
  },
  {
    "question":
        "Em acidentes de trânsito com vítima(s) no qual ocorra princípio de incêndio, na ausência de especialista, o condutor deve, primeiramente ",
    "right_answer": "a",
    "answers": [
      {
        "prompt": " retirar rapidamente a(s) vítima(s) de dentro do veículo ",
        "value": "a"
      },
      {"prompt": "  aguardar a chegada dos bombeiros ", "value": "b"},
      {
        "prompt": "  remover o veículo para impedir que o fogo se alastre ",
        "value": "c"
      },
      {
        "prompt": "  iniciar o procedimento de reanimação da vitima ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 130
  },
  {
    "question":
        "Compete aos órgãos e entidades executivos de trânsito dos municípios, entre outras obrigações ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " organizar e manter atualizado o Registro Nacional de Veículos Automotores ",
        "value": "a"
      },
      {
        "prompt":
            "  habilitar condutores e registrar veículos, licenciando-os e recolhendo o IPVA ",
        "value": "b"
      },
      {
        "prompt":
            "  elaborar normas regionais, complementares ao Código de Trânsito Brasileiro ",
        "value": "c"
      },
      {
        "prompt":
            "  planejar, operar e fiscalizar a circulação e a parada de veículos em vias urbanas ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 131
  },
  {
    "question":
        "Um condutor que se depara com vítima com pequena hemorragia externa, deve proteger as suas mãos e aplicar a seguinte técnica para conter essa hemorragia ",
    "right_answer": "x",
    "answers": [
      {"prompt": " desinfetar o ferimento com álcool ", "value": "a"},
      {
        "prompt": "  aplicar compressão direta no ferimento com papel limpo ",
        "value": "b"
      },
      {"prompt": "  aplicar pó de café no ferimento ", "value": "c"},
      {"prompt": "  comprimir a região com um pano limpo ", "value": "d"}
    ],
    "category": "Medicina de tráfego",
    "id": 132
  },
  {
    "question": "Não há comprometimento da segurança do veículo quando ",
    "right_answer": "d",
    "answers": [
      {
        "prompt": " as lâmpadas das luzes de freios estão queimadas ",
        "value": "a"
      },
      {
        "prompt": "  não há alinhamento e balanceamento das rodas ",
        "value": "b"
      },
      {
        "prompt": "  se observa bolha em pelo menos um dos pneus ",
        "value": "c"
      },
      {
        "prompt": "  os limpadores de para-brisa funcionam adequadamente ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 133
  },
  {
    "question":
        "Qual atitude o condutor defensivo deve ter quando o sinal luminoso \"abrir\" para seu veículo e ainda existirem pedestres efetuando a travessia? ",
    "right_answer": "x",
    "answers": [
      {"prompt": " buzinar alertando-os ", "value": "a"},
      {
        "prompt":
            "  iniciar o deslocamento lentamente, pois o sinal já está aberto ",
        "value": "b"
      },
      {"prompt": "  piscar os faróis e buzinar ", "value": "c"},
      {"prompt": "  aguardar que concluam a travessia ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 134
  },
  {
    "question":
        "Qual é o freio a ser acionado quando da imobilização do veículo? ",
    "right_answer": "c",
    "answers": [
      {"prompt": " freio ABS ", "value": "a"},
      {"prompt": "  freio-motor ", "value": "b"},
      {"prompt": "  freio de estacionamento (freio de mão) ", "value": "c"},
      {"prompt": "  pedal de freio ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 135
  },
  {
    "question":
        "Três fatores são determinantes para a segurança viária. Um desses fatores é o fator humano, sendo que os outros dois são ",
    "right_answer": "c",
    "answers": [
      {"prompt": " a via e a sinalização ", "value": "a"},
      {"prompt": "  a cidade e o meio urbano ", "value": "b"},
      {"prompt": "  o veículo e a via ", "value": "c"},
      {"prompt": "  o veículo e o passageiro ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 136
  },
  {
    "question": "Ao dirigir sob neblina ou cerração, o condutor deve ",
    "right_answer": "x",
    "answers": [
      {"prompt": " usar a luz baixa do farol ", "value": "a"},
      {
        "prompt": "  manter a velocidade e acionar o pisca-alerta ",
        "value": "b"
      },
      {"prompt": "  usar a luz alta do farol ", "value": "c"},
      {"prompt": "  acelerar e acionar o pisca-alerta ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 137
  },
  {
    "question":
        "Por que devo respeitar a distância de seguimento com o veículo da frente? ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " para que o veículo da frente possa ter melhor visibilidade ",
        "value": "a"
      },
      {
        "prompt":
            "  para possibilitar uma distância suficiente que permita a manobra de ultrapassagem segura ",
        "value": "b"
      },
      {
        "prompt":
            "  para que haja tempo e distância de reação no caso de freada brusca, evitando colisão ",
        "value": "c"
      },
      {
        "prompt":
            "  para que os veículos que vêm no sentido contrário possam ter melhor visibilidade ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 138
  },
  {
    "question":
        "São condições próprias das estradas de terra que representam risco e podem contribuir para gerar acidentes ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " piso irregular e pedras que podem ser lançadas pelos pneus ",
        "value": "a"
      },
      {
        "prompt":
            "  acostamentos bem definidos e existência de pouca sinalização vertical ",
        "value": "b"
      },
      {
        "prompt":
            "  existência de boa sinalização horizontal e de curvas pouco acentuadas ",
        "value": "c"
      },
      {
        "prompt":
            "  piso uniforme, nivelado e plano e mãos de direção bem sinalizadas ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 139
  },
  {
    "question":
        "Quando, ao atingir certa velocidade, ocorre trepidação transmitida pelo volante, que condição do veículo deve ser avaliada? ",
    "right_answer": "x",
    "answers": [
      {"prompt": " o balanceamento do conjunto pneus/rodas ", "value": "a"},
      {"prompt": "  a manutenção do sistema de embreagem ", "value": "b"},
      {"prompt": "  a manutenção do sistema de refrigeração ", "value": "c"},
      {"prompt": "  a manutenção da injeção eletrônica ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 140
  },
  {
    "question":
        "Limpador de para-brisa, freios e faróis quando em mal estado de funcionamento podem contribuir para acidentes de trânsito e são considerados condições adversas relacionadas com o(a) ",
    "right_answer": "x",
    "answers": [
      {"prompt": " via ", "value": "a"},
      {"prompt": "  clima e/ou ambiente ", "value": "b"},
      {"prompt": "  veículo ", "value": "c"},
      {"prompt": "  condutor ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 141
  },
  {
    "question":
        "Um condutor teve seus óculos quebrados no dia anterior. Mesmo assim, no dia seguinte, resolve dirigir sem os óculos em razão de um compromisso importante. Essa condição adversa do condutor é devida ao (à) ",
    "right_answer": "b",
    "answers": [
      {"prompt": " cansaço ", "value": "a"},
      {"prompt": "  visão deficiente ", "value": "b"},
      {"prompt": "  audição deficiente ", "value": "c"},
      {"prompt": "  habilidade insuficiente ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 142
  },
  {
    "question":
        "Para reter as impurezas do combustível e manter o bom desempenho do veículo, é necessário assegurar regularmente a troca do filtro ",
    "right_answer": "a",
    "answers": [
      {"prompt": " de combustível ", "value": "a"},
      {"prompt": "  de ar ", "value": "b"},
      {"prompt": "  de ar condicionado ", "value": "c"},
      {"prompt": "  de óleo ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 143
  },
  {
    "question":
        "A distância percorrida pelo veículo do momento em que o condutor tira o pé do acelerador e o coloca sobre o pedal do freio é denominada ",
    "right_answer": "a",
    "answers": [
      {"prompt": " distância de reação ", "value": "a"},
      {"prompt": "  distância de frenagem ", "value": "b"},
      {"prompt": "  distância de seguimento ", "value": "c"},
      {"prompt": "  distância de parada ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 144
  },
  {
    "question":
        "Assegurar e manter o veículo com combustível é um dos itens de verificação do condutor defensivo. No caso de pane por falta de combustível durante o deslocamento, o condutor ",
    "right_answer": "x",
    "answers": [
      {"prompt": " pratica infração leve resultando em multa ", "value": "a"},
      {"prompt": "  não pratica infração ", "value": "b"},
      {
        "prompt":
            "  pratica infração média, resultando em multa e remoção do veículo ",
        "value": "c"
      },
      {
        "prompt":
            "  pratica infração leve, não resultando em multa ou remoção do veículo ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 145
  },
  {
    "question":
        "Quando o condutor ultrapassar outro veículo pelo acostamento, em interseções e passagens de nível, terá como punição ",
    "right_answer": "a",
    "answers": [
      {"prompt": " multa, apenas ", "value": "a"},
      {"prompt": "  multa e suspensão da CNH ", "value": "b"},
      {"prompt": "  multa e remoção do veículo ", "value": "c"},
      {"prompt": "  multa e retenção do veículo ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 146
  },
  {
    "question":
        "Para evitar o ofuscamento da visão pelo farol alto do veículo em sentido contrário, o condutor deve tomar o cuidado de ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " acionar o farol alto quando avistar o outro veículo ",
        "value": "a"
      },
      {
        "prompt": "  acionar o pisca-alerta comunicando a sua presença ",
        "value": "b"
      },
      {"prompt": "  apagar totalmente as luzes do veículo ", "value": "c"},
      {
        "prompt":
            "  desviar a visão para uma referência na faixa, à direita da pista ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 147
  },
  {
    "question":
        "Após sofrer uma queda acidental de sua moto, um motociclista apresenta hemorragia na região do peito. Uma providência que pode ser tomada pelo condutor, enquanto aguarda o socorro, é ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " não movimentar a vítima e comprimir o ferimento com gaze ou pano limpo ",
        "value": "a"
      },
      {
        "prompt":
            "  remover a vítima do local e comprimir o ferimento com gaze ou pano limpo ",
        "value": "b"
      },
      {
        "prompt":
            "  remover a vítima do local e lavar o ferimento com água abundante ",
        "value": "c"
      },
      {
        "prompt":
            "  não movimentar a vítima e lavar o ferimento com água abundante ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 148
  },
  {
    "question":
        "As situações de emergência relacionadas à parte elétrica do veículo podem ser evitadas com a manutenção de ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " cabo do eletrodo, da ignição elétrica e cabo de partida ",
        "value": "a"
      },
      {"prompt": "  cabo da bobina e condutor da carburação ", "value": "b"},
      {"prompt": "  cabo da bobina e correias ", "value": "c"},
      {"prompt": "  cabo de partida e válvulas de escape ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 149
  },
  {
    "question":
        "O condutor contribui para o aumento da poluição ambiental quando ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " utiliza escapamento e silencioso dentro dos padrões especificados pelo fabricante ",
        "value": "a"
      },
      {
        "prompt":
            "  mantém a aceleração em marcha lenta enquanto espera a abertura do semáforo ",
        "value": "b"
      },
      {
        "prompt":
            "  usa a buzina apenas quando é necessário alertar outros condutores ou pedestres ",
        "value": "c"
      },
      {
        "prompt":
            "  liga aparelhos sonoros no interior do veículo em volumes muito altos ",
        "value": "d"
      }
    ],
    "category": "Meio ambiente",
    "id": 150
  },
  {
    "question":
        "Portar no veículo placas de identificação em desacordo com as especificações e modelos estabelecidos pelo Contran é uma infração (CTB Art. 221) ",
    "right_answer": "d",
    "answers": [
      {"prompt": " grave ", "value": "a"},
      {"prompt": "  gravíssima ", "value": "b"},
      {"prompt": "  leve ", "value": "c"},
      {"prompt": "  média ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 151
  },
  {
    "question":
        "Por falta de manutenção preventiva, os veículos automotores liberam gases prejudiciais ao meio ambiente, entre os quais se inclui o ",
    "right_answer": "d",
    "answers": [
      {"prompt": " oxigênio ", "value": "a"},
      {"prompt": "  nitrogênio ", "value": "b"},
      {"prompt": "  hidrogênio ", "value": "c"},
      {"prompt": "  monóxido de carbono ", "value": "d"}
    ],
    "category": "Meio ambiente",
    "id": 152
  },
  {
    "question":
        "Qual das condições abaixo contribui para o fenômeno da aquaplanagem? ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " utilizar pneus calibrados e com profundidade de sulcos acima dos valores mínimos exigidos pelas normas ",
        "value": "a"
      },
      {
        "prompt":
            "  reduzir a velocidade e manter distância do veículo da frente evitando, assim, colisão desnecessária ",
        "value": "b"
      },
      {
        "prompt":
            "  estar atento à existência de poças d'água e reduzir a velocidade sem frear sobre elas ",
        "value": "c"
      },
      {
        "prompt":
            "  frear o veículo sobre poças d'água no intuito de aumentar a aderência entre os pneus e o pavimento da pista ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 153
  },
  {
    "question":
        "O manuseio dos pedais de freio, acelerador e de embreagem, dependendo do calçado utilizado, pode atrapalhar o condutor e gerar risco de acidente. Para evitar isso, o condutor deve utilizar calçados ",
    "right_answer": "d",
    "answers": [
      {
        "prompt": " que disponham de cadarços, não importando o tipo ",
        "value": "a"
      },
      {
        "prompt":
            "  que possuam solado de borracha independentemente do modelo ",
        "value": "b"
      },
      {
        "prompt": "  que podem ser de borracha ou couro, do tipo chinelo ",
        "value": "c"
      },
      {
        "prompt": "  que se firmem nos pés e não atrapalhem o uso dos pedais ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 154
  },
  {
    "question":
        "Um determinado equipamento obrigatório é importante para proteger os ocupantes do veículo durante um possível acidente. A sua falta, ou estando ele em mal estado de conservação, é uma condição adversa relacionada ao veículo. Esse equipamento é o(a) ",
    "right_answer": "d",
    "answers": [
      {"prompt": " retrovisor interno ", "value": "a"},
      {"prompt": "  chave de roda ", "value": "b"},
      {"prompt": "  triângulo de segurança ", "value": "c"},
      {"prompt": "  cinto de segurança ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 155
  },
  {
    "question":
        "Nos grandes centros urbanos, os principais causadores da poluição do ar são ",
    "right_answer": "x",
    "answers": [
      {"prompt": " os veículos automotores e indústrias ", "value": "a"},
      {"prompt": "  as fábricas ", "value": "b"},
      {"prompt": "  as usinas termelétricas ", "value": "c"},
      {"prompt": "  as queimadas ", "value": "d"}
    ],
    "category": "Meio ambiente",
    "id": 156
  },
  {
    "question":
        "Para virar à esquerda em cruzamentos de vias urbanas, com duplo sentido de trânsito, o condutor deve ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " sinalizar com a seta e, ao atingir a linha divisória da pista, executar a manobra, cedendo passagem aos veículos que transitam em sentido contrário ",
        "value": "a"
      },
      {
        "prompt":
            "  sinalizar com a seta e, ao atingir a linha divisória da pista, executar a manobra, forçando passagem entre os veículos que transitam em sentido contrário ",
        "value": "b"
      },
      {
        "prompt":
            "  sinalizar com o pisca-alerta e, ao atingir a linha divisória da pista, executar a manobra ",
        "value": "c"
      },
      {
        "prompt":
            "  sinalizar com a seta e aguardar à direita da pista para executar a manobra, cedendo passagem aos veículos que transitam em sentido contrário ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 157
  },
  {
    "question":
        "Ao frear para parar em um cruzamento, diante do sinal vermelho do semáforo, a condição adversa que pode levar à ocorrência de acidente de trânsito é (são) ",
    "right_answer": "x",
    "answers": [
      {"prompt": " lâmpadas das luzes de freio queimadas ", "value": "a"},
      {"prompt": "  espelho retrovisor interno quebrado ", "value": "b"},
      {"prompt": "  velocímetro e odômetro danificados ", "value": "c"},
      {"prompt": "  folgas no sistema de direção ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 158
  },
  {
    "question":
        "Dirigir o veículo usando calçado que não se firme nos pés ou que comprometa a utilização dos pedais terá como penalidade (CTB Art. 252, inciso IV) ",
    "right_answer": "c",
    "answers": [
      {"prompt": " apreensão do veículo ", "value": "a"},
      {
        "prompt": "  frequência obrigatória em curso de reciclagem ",
        "value": "b"
      },
      {"prompt": "  multa ", "value": "c"},
      {"prompt": "  advertência ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 159
  },
  {
    "question":
        "A falta de consciência ambiental do condutor pode ser observada quando ele ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " procura observar periodicamente a existência de vazamento de óleo do motor, corrigindo o problema prontamente ",
        "value": "a"
      },
      {
        "prompt":
            "  deixa de substituir o silencioso deteriorado e mantém o veículo produzindo ruído excessivo ao dirigir ",
        "value": "b"
      },
      {
        "prompt":
            "  troca os pneus usados e procura descartá-los em local apropriado, preferencialmente em local que recicle o material ",
        "value": "c"
      },
      {
        "prompt":
            "  acondiciona dentro do veículo o lixo produzido por ele ou pelos passageiros e o descarta em local apropriado ",
        "value": "d"
      }
    ],
    "category": "Meio ambiente",
    "id": 160
  },
  {
    "question":
        "Existem atitudes do condutor que são prejudiciais ao meio ambiente, entre elas ",
    "right_answer": "c",
    "answers": [
      {
        "prompt":
            " manter os pneus calibrados na pressão especificada pelo fabricante ",
        "value": "a"
      },
      {
        "prompt": "  manter o catalisador em bom estado de funcionamento ",
        "value": "b"
      },
      {"prompt": "  jogar lixo ou qualquer objeto na rua ", "value": "c"},
      {
        "prompt": "  fazer a manutenção e a regulagem periódica do motor ",
        "value": "d"
      }
    ],
    "category": "Meio ambiente",
    "id": 161
  },
  {
    "question":
        "Para manter o desempenho do motor e o consumo adequado de combustível, o condutor deve efetuar, periodicamente, a troca do filtro de ",
    "right_answer": "x",
    "answers": [
      {"prompt": " ar condicionado ", "value": "a"},
      {"prompt": "  ar do motor ", "value": "b"},
      {"prompt": "  óleo dos freios ", "value": "c"},
      {"prompt": "  óleo do câmbio ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 162
  },
  {
    "question":
        "A sinalização de linhas duplas contínuas, na cor amarela, representa ao motorista ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " ultrapassagem permitida apenas para um dos sentidos ",
        "value": "a"
      },
      {
        "prompt": "  ultrapassagem permitida para os dois sentidos ",
        "value": "b"
      },
      {
        "prompt": "  ultrapassagem proibida para os dois sentidos ",
        "value": "c"
      },
      {
        "prompt": "  ultrapassagem proibida apenas para um dos sentidos ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 163
  },
  {
    "question":
        "Indique a alternativa que apresenta um comportamento do condutor que favorece a segurança de todos em relação à circulação de motocicletas ",
    "right_answer": "c",
    "answers": [
      {
        "prompt":
            " quando parado, aguardando o sinal verde do semáforo, abrir a porta do veículo para verificar os pneus ",
        "value": "a"
      },
      {
        "prompt":
            "  mudar constantemente de faixa, observando somente o espelho retrovisor interno ",
        "value": "b"
      },
      {
        "prompt":
            "  facilitar a circulação da motocicleta que vai à frente ou que pretende ultrapassá-lo ",
        "value": "c"
      },
      {
        "prompt":
            "  mudar rapidamente de faixa de tráfego, acelerando o veículo, sem sinalizar a ultrapassagem ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 164
  },
  {
    "question": "A ingestão de bebida alcoólica ou o uso de drogas ao dirigir ",
    "right_answer": "b",
    "answers": [
      {
        "prompt":
            " tiram o sono e a sensação de cansaço, melhorando a segurança ",
        "value": "a"
      },
      {
        "prompt": "  afetam a percepção e a coordenação motora do condutor ",
        "value": "b"
      },
      {
        "prompt":
            "  aumentam a autoconfiança do condutor e sua habilidade ao dirigir ",
        "value": "c"
      },
      {
        "prompt":
            "  melhoram a percepção e aliviam qualquer tipo de desconforto do condutor ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 165
  },
  {
    "question":
        "Quais devem ser as três primeiras providências a ser tomadas no local de um acidente de trânsito com vítima(s)? ",
    "right_answer": "b",
    "answers": [
      {
        "prompt":
            " sinalizar o local, acionar o serviço de emergência e medicar a(s) vítima(s) ",
        "value": "a"
      },
      {
        "prompt":
            "  avaliar as condições gerais da(s) vítima(s), sinalizar bem o local e acionar o serviço de emergência ",
        "value": "b"
      },
      {
        "prompt":
            "  acionar o serviço de emergência, sinalizar o local e remover imediatamente o veículo acidentado da via ",
        "value": "c"
      },
      {
        "prompt":
            "  medicar a(s) vítima(s), avisar os parentes e removê-la(s) imediatamente do local ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 166
  },
  {
    "question":
        "As condições presentes na via e que geram riscos de acidentes de trânsito, exigindo do condutor a atenção redobrada para evitá-los, são ",
    "right_answer": "b",
    "answers": [
      {
        "prompt":
            " curva acentuada precedida de sinalização vertical e existência de faixa amarela contínua ",
        "value": "a"
      },
      {
        "prompt":
            "  depressões acentuadas no pavimento e desnível elevado entre a pista e o acostamento ",
        "value": "b"
      },
      {
        "prompt":
            "  declive acentuado e existência da terceira faixa à direita para o trânsito de veículos lentos ",
        "value": "c"
      },
      {
        "prompt":
            "  pavimento bem nivelado e sinalização horizontal visível e em bom estado de conservação ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 167
  },
  {
    "question":
        "Qual dos procedimentos a seguir contribui para o aumento da poluição atmosférica? ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " evitar aceleradas bruscas e frenagens excessivas ",
        "value": "a"
      },
      {"prompt": "  transitar com excesso de peso ", "value": "b"},
      {"prompt": "  calibrar periodicamente os pneus ", "value": "c"},
      {
        "prompt": "  fazer a manutenção periódica do motor do veículo ",
        "value": "d"
      }
    ],
    "category": "Meio ambiente",
    "id": 168
  },
  {
    "question":
        "Em uma via com várias faixas de trânsito de mesmo sentido, as da esquerda são destinadas à ",
    "right_answer": "c",
    "answers": [
      {"prompt": " passagem de veículo de carga ", "value": "a"},
      {"prompt": "  passagem de motocicletas ", "value": "b"},
      {
        "prompt":
            "  ultrapassagem e ao deslocamento dos veículos de maior velocidade ",
        "value": "c"
      },
      {"prompt": "  passagem de veículos de transporte coletivo ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 169
  },
  {
    "question":
        "Recebendo Permissão para Dirigir, na categoria B, o condutor poderá conduzir ",
    "right_answer": "c",
    "answers": [
      {
        "prompt": " veículos de passeio e veículos de carga articulados ",
        "value": "a"
      },
      {
        "prompt":
            "  veículos de passeio e veículos com peso acima de três mil e quinhentos quilogramas e que a lotação não exceda a oito lugares, excluído o do motorista ",
        "value": "b"
      },
      {
        "prompt":
            "  veículos de passeio e veículos com peso até três mil e quinhentos quilogramas e que a lotação não exceda a oito lugares, excluído o do motorista ",
        "value": "c"
      },
      {
        "prompt":
            "  veículos de passeio e veículos com peso acima de três mil e quinhentos quilogramas e que a lotação exceda a oito lugares, excluído o do motorista ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 170
  },
  {
    "question":
        "O estado do condutor é fundamental para que ele dirija com segurança. Assim, em viagem longa, é correto afirmar que ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " estando cansado e com sono, ele deve parar em local seguro, descansar e dormir ",
        "value": "a"
      },
      {
        "prompt":
            "  o cansaço e o sono podem ser contornados se o condutor ingerir bebida energética ",
        "value": "b"
      },
      {
        "prompt":
            "  o cansaço e o sono podem ser contornados se o condutor ingerir bebidas estimulantes ",
        "value": "c"
      },
      {
        "prompt":
            "  é melhor continuar dirigindo para chegar ao destino mais rápido, onde poderá descansar ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 171
  },
  {
    "question":
        "O congestionamento é um fator estressante para os condutores e causa irritação e atitudes que podem comprometer a segurança de todos. Nessas condições, o condutor deve ",
    "right_answer": "c",
    "answers": [
      {
        "prompt":
            " mudar constantemente de faixa, buscando brechas entre os carros ",
        "value": "a"
      },
      {
        "prompt":
            "  utilizar a luz alta do veículo de forma frequente, sinalizando que deseja passar rápido ",
        "value": "b"
      },
      {
        "prompt":
            "  procurar manter-se calmo como forma de evitar novos aborrecimentos ",
        "value": "c"
      },
      {
        "prompt":
            "  utilizar a buzina de forma insistente; é a melhor maneira de fazer o trânsito andar ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 172
  },
  {
    "question":
        "Em caso de acidente em que a vítima está inconsciente e com sangramento na perna, a conduta correta é ",
    "right_answer": "x",
    "answers": [
      {"prompt": " socorrer a vítima com veículo próprio ", "value": "a"},
      {
        "prompt": "  não movimentar a vítima e acionar a equipe de socorro ",
        "value": "b"
      },
      {
        "prompt":
            "  tentar acordar a vítima com o auxílio de um pano molhado em álcool ",
        "value": "c"
      },
      {
        "prompt": "  aplicar torniquete para estancar a hemorragia ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 173
  },
  {
    "question":
        "Quando um condutor dirigir em um longo trecho de via em que se observam buracos na pista na sua mão de direção, é recomendável que ele ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " permaneça em sua faixa e reduza a velocidade para diminuir os impactos nas rodas e controlar o veículo ",
        "value": "a"
      },
      {
        "prompt":
            "  aumente a velocidade para reduzir o efeito dos buracos nas rodas e mantenha as duas mãos firmemente ao volante ",
        "value": "b"
      },
      {
        "prompt":
            "  dirija na contramão para evitar impactos nas rodas, aumentando a velocidade para retornar rapidamente à sua faixa ",
        "value": "c"
      },
      {
        "prompt":
            "  mantenha a velocidade e freie abruptamente quando perceber que não será possível desviar dos buracos ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 174
  },
  {
    "question":
        "O embarque e o desembarque de passageiros deve ocorrer (Art. 49 do CTB) ",
    "right_answer": "x",
    "answers": [
      {"prompt": " sempre do lado da calçada ", "value": "a"},
      {"prompt": "  sempre do lado da rua ", "value": "b"},
      {"prompt": "  do lado esquerdo da via ", "value": "c"},
      {"prompt": "  de qualquer lado do veículo ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 175
  },
  {
    "question":
        "Em que velocidade mínima é permitida ao condutor trafegar com automóvel em rodovia de pista dupla, não sinalizada? ",
    "right_answer": "x",
    "answers": [
      {"prompt": " 50 km/h ", "value": "a"},
      {"prompt": "  65 km/h ", "value": "b"},
      {"prompt": "  55 km/h ", "value": "c"},
      {"prompt": "  60 km/h ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 176
  },
  {
    "question": "Agir com prudência no trânsito é ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " agir de forma a evitar perigos ou consequências ruins para si e para os demais usuários da via ",
        "value": "a"
      },
      {
        "prompt":
            "  agir com cautela de forma a evitar um acidente ao avançar um sinal vermelho do semáforo ",
        "value": "b"
      },
      {
        "prompt":
            "  agir com precaução quando, ao dirigir, não observar alguma regra de segurança no trânsito ",
        "value": "c"
      },
      {
        "prompt":
            "  usar de ousadia e agressividade suficientes para se proteger de riscos e de imprevisibilidades no trânsito ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 177
  },
  {
    "question":
        "O candidato que pretenda habilitar-se na categoria \"E\" deve atender ao seguinte requisito em relação à idade ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " ter 18 (dezoito) anos a serem completados quando da realização do exame prático de direção ",
        "value": "a"
      },
      {"prompt": "  ser maior de 21 (vinte e um) anos ", "value": "b"},
      {
        "prompt":
            "  ter 16 (dezesseis) anos completos, com emancipação judicial ",
        "value": "c"
      },
      {"prompt": "  ter 18 (dezoito) anos completos ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 178
  },
  {
    "question":
        "A distância percorrida pelo veículo do momento em que o motorista aciona o pedal de freio, até a parada total do veículo, é denominada ",
    "right_answer": "c",
    "answers": [
      {"prompt": " distância de reação ", "value": "a"},
      {"prompt": "  distância de parada ", "value": "b"},
      {"prompt": "  distância de frenagem ", "value": "c"},
      {"prompt": "  distância de seguimento ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 179
  },
  {
    "question":
        "A alteração da percepção de perigo e dos reflexos ao dirigir são condições adversas do condutor relacionadas com ",
    "right_answer": "b",
    "answers": [
      {"prompt": " pouca habilidade no manuseio do veículo ", "value": "a"},
      {"prompt": "  ingestão de bebida alcoólica ", "value": "b"},
      {"prompt": "  falta de controle emocional ", "value": "c"},
      {"prompt": "  desconhecimento das regras de trânsito ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 180
  },
  {
    "question":
        "O condutor poderá dirigir o veículo com apenas uma das mãos ao ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " fazer sinais regulamentares de braço, mudar a marcha do veículo ou acionar equipamentos e acessórios do veículo ",
        "value": "a"
      },
      {
        "prompt":
            "  manusear um guia de ruas visando a identificar a localização do endereço desejado ou mesmo itinerários ",
        "value": "b"
      },
      {
        "prompt":
            "  alimentar-se, acionar equipamentos e acessórios do veículo ou atender a chamadas de celular ",
        "value": "c"
      },
      {
        "prompt":
            "  atender ao celular, alimentar-se ou procurar um CD para trocar aquele que está no aparelho de som ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 181
  },
  {
    "question":
        "Em vias com velocidade máxima de 80 km/h, qual a distância mínima para iniciar a sinalização de acidente ocorrido à noite, em pista molhada ou com neblina? ",
    "right_answer": "a",
    "answers": [
      {
        "prompt": " a 160 metros do veículo ou, aproximadamente, 160 passos ",
        "value": "a"
      },
      {
        "prompt": "  a 60 metros do veículo ou, aproximadamente, 60 passos ",
        "value": "b"
      },
      {
        "prompt": "  a 100 metros do veículo ou, aproximadamente, 100 passos ",
        "value": "c"
      },
      {
        "prompt": "  a 40 metros do veículo ou, aproximadamente, 40 passos ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 182
  },
  {
    "question": "São classificadas como condições adversas do condutor ",
    "right_answer": "a",
    "answers": [
      {
        "prompt": " sono, audição ou visão deficientes e desconcentração ",
        "value": "a"
      },
      {
        "prompt":
            "  sono ou audição deficientes e capacidade de falar em público ",
        "value": "b"
      },
      {
        "prompt": "  audição ou visão deficientes e conhecimentos de mecânica ",
        "value": "c"
      },
      {
        "prompt":
            "  audição ou visão deficientes e conhecimento da legislação de trânsito ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 183
  },
  {
    "question":
        "Fazer ou deixar que se faça reparo em veículo na via pública, salvo nos casos de impedimento absoluto de sua remoção e em que o veículo esteja devidamente sinalizado, em pista de rolamento de rodovias e vias de trânsito rápido, é considerada infração (CTB Art. 179, inciso I) ",
    "right_answer": "a",
    "answers": [
      {"prompt": " grave ", "value": "a"},
      {"prompt": "  média ", "value": "b"},
      {"prompt": "  gravíssima ", "value": "c"},
      {"prompt": "  leve ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 184
  },
  {
    "question":
        "Que tipo de veículo automotor os condutores habilitados na categoria \"A\" podem conduzir? ",
    "right_answer": "x",
    "answers": [
      {"prompt": " ônibus e micro-ônibus ", "value": "a"},
      {"prompt": "  motocicletas, triciclos e ciclomotores ", "value": "b"},
      {"prompt": "  camionetas ", "value": "c"},
      {"prompt": "  trailers ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 185
  },
  {
    "question":
        "Para ajudar a prevenir incêndios às margens das vias, devemos evitar jogar na vegetação ",
    "right_answer": "x",
    "answers": [
      {"prompt": " restos de comida ", "value": "a"},
      {"prompt": "  garrafas plásticas ", "value": "b"},
      {"prompt": "  materiais acesos ", "value": "c"},
      {"prompt": "  peças do veículo já utilizadas ", "value": "d"}
    ],
    "category": "Meio ambiente",
    "id": 186
  },
  {
    "question":
        "Por dirigir sob efeito de álcool, qual é a infração e a penalidade do condutor? ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " Infração gravíssima; penalidade de multa (10 vezes o valor do grupo) e suspensão do direito de dirigir ",
        "value": "a"
      },
      {
        "prompt": "  infração gravíssima, penalidade de apreensão do veículo ",
        "value": "b"
      },
      {
        "prompt": "  infração média; penalidade de apreensão do veículo ",
        "value": "c"
      },
      {
        "prompt":
            "  infração grave; penalidade de cassação do direito de dirigir ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 187
  },
  {
    "question":
        "Avançar o sinal vermelho do semáforo ou de parada obrigatória, exceto onde houver sinalização que permita a livre conversão à direita prevista no art. 44-A do CTB, é uma infração gravíssima que terá como penalidade (CTB Art. 208) ",
    "right_answer": "b",
    "answers": [
      {
        "prompt": " frequência obrigatória em curso de reciclagem ",
        "value": "a"
      },
      {"prompt": "  multa ", "value": "b"},
      {"prompt": "  apreensão da CNH ", "value": "c"},
      {"prompt": "  apreensão do veículo ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 188
  },
  {
    "question": "Para não correr o risco de aquaplanagem, deve-se ",
    "right_answer": "c",
    "answers": [
      {
        "prompt": " frear com antecedência e acelerar sobre poças d'água ",
        "value": "a"
      },
      {
        "prompt": "  aumentar a velocidade ao trafegar sobre poças d'água ",
        "value": "b"
      },
      {
        "prompt":
            "  reduzir a velocidade e não frear ao trafegar sobre poças d'água ",
        "value": "c"
      },
      {"prompt": "  evitar frear sobre poças d'água ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 189
  },
  {
    "question":
        "Em caso de acidente, uma das regras fundamentais para fazer a sinalização do ocorrido é ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " não permitir que curiosos parem na via destinada ao tráfego ",
        "value": "a"
      },
      {
        "prompt":
            "  não sinalizar com materiais encontrados nas imediações, como galhos de árvores e latas ",
        "value": "b"
      },
      {
        "prompt":
            "  sinalizar o local a uma distância de 3 metros do acidente ",
        "value": "c"
      },
      {
        "prompt":
            "  selecionar pessoas vestidas com roupas de cor branca para fazer a sinalização ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 190
  },
  {
    "question":
        "Em condições de chuva intensa e diminuição de visibilidade, o condutor deve trafegar com velocidade reduzida e utilizar ",
    "right_answer": "x",
    "answers": [
      {"prompt": " os faróis de milha ", "value": "a"},
      {"prompt": "  a luz baixa do farol ", "value": "b"},
      {"prompt": "  o pisca-alerta acionado ", "value": "c"},
      {"prompt": "  a luz alta do farol ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 191
  },
  {
    "question":
        "Em uma rodovia, para aumentar a segurança em caso de chuva, além de reduzir a velocidade, o condutor deve ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " aumentar a distância do veículo à frente e ligar o pisca-alerta ",
        "value": "a"
      },
      {
        "prompt":
            "  reduzir a distância do veículo à frente e acender o farol alto ",
        "value": "b"
      },
      {
        "prompt":
            "  manter distância do veículo que segue à frente e acender o farol baixo ",
        "value": "c"
      },
      {
        "prompt":
            "  aumentar a distância do veículo à frente e acender o farol alto ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 192
  },
  {
    "question":
        "Um pedestre torceu o pé e queixa-se de dor na região do tornozelo. O condutor, sem outras informações sobre o estado da vítima, deve ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " recolocar a articulação no lugar, com auxílio de outros colaboradores no local do acidente ",
        "value": "a"
      },
      {
        "prompt":
            "  solicitar ao acidentado que dê alguns passos para verificar com mais precisão as condições do entorse ",
        "value": "b"
      },
      {
        "prompt":
            "  orientar o acidentado a não caminhar até a chegada da equipe de emergência ",
        "value": "c"
      },
      {
        "prompt":
            "  enfaixar fortemente o pé com um pedaço de pano molhado até a chegada da equipe de emergência ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 193
  },
  {
    "question":
        "Quando o veículo estiver estacionado na calçada ou sobre as faixas destinadas a pedestres, o condutor terá como medida administrativa (CTB Art. 181, inciso VIII) ",
    "right_answer": "b",
    "answers": [
      {"prompt": " retenção do veículo ", "value": "a"},
      {"prompt": "  remoção do veículo ", "value": "b"},
      {"prompt": "  recolhimento da CNH ", "value": "c"},
      {"prompt": "  recolhimento do CRV ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 194
  },
  {
    "question":
        "Ao fazer curvas em rodovias, para maior segurança, o condutor deve ",
    "right_answer": "c",
    "answers": [
      {
        "prompt":
            " aumentar a velocidade antes da curva e frear sucessivamente para manter o veículo em equilíbrio ",
        "value": "a"
      },
      {
        "prompt":
            "  manter a velocidade e frear no meio da curva, movimentando o volante de forma suave ",
        "value": "b"
      },
      {
        "prompt":
            "  reduzir a velocidade antes da curva, movimentar o volante de forma suave e acelerar gradativamente ",
        "value": "c"
      },
      {
        "prompt":
            "  acelerar no início da curva para aumentar a aderência dos pneus e segurar o volante com as duas mãos ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 195
  },
  {
    "question":
        "No trecho de rodovia em declive acentuado (descida de serra, por exemplo), é mais seguro descer com o câmbio engrenado em marcha reduzida, acionando o freio apenas o necessário para manter o controle do veículo. Esse procedimento é ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " cuidadoso, pois nessas condições o aconselhável é descer desengrenado para economizar combustível, já que isso não afeta a estabilidade do veículo ",
        "value": "a"
      },
      {
        "prompt":
            "  adequado, para não forçar o freio e evitar o seu aquecimento, mantendo o controle sobre o veículo ",
        "value": "b"
      },
      {
        "prompt":
            "  incorreto, pois deve-se manter o pedal do freio acionado o tempo todo para aumentar a segurança na descida ",
        "value": "c"
      },
      {
        "prompt":
            "  imprudente, pois a marcha reduzida força o motor, consome mais combustível e reduz a estabilidade do veículo ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 196
  },
  {
    "question":
        "Um fator que reduz a atenção do condutor e pode ser causa de acidente é ",
    "right_answer": "b",
    "answers": [
      {"prompt": " utilizar a luz baixa do veículo sob neblina ", "value": "a"},
      {"prompt": "  falar ao telefone celular enquanto dirige ", "value": "b"},
      {
        "prompt": "  observar frequentemente os sinais de luzes no painel ",
        "value": "c"
      },
      {
        "prompt":
            "  utilizar os espelhos retrovisores antes de mudar de direção ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 197
  },
  {
    "question": "Entre as condições adversas de via estão ",
    "right_answer": "x",
    "answers": [
      {"prompt": " os desvios e os buracos ", "value": "a"},
      {"prompt": "  o morro e o granizo ", "value": "b"},
      {"prompt": "  o granizo e a pista escorregadia ", "value": "c"},
      {"prompt": "  a chuva e a neblina ", "value": "d"}
    ],
    "category": "Meio ambiente",
    "id": 198
  },
  {
    "question":
        "Transitar com o veículo em calçadas, passeios, passarelas, ciclovias, divisores de pistas de rolamento e acostamentos é considerada infração ",
    "right_answer": "a",
    "answers": [
      {"prompt": " gravíssima ", "value": "a"},
      {"prompt": "  grave ", "value": "b"},
      {"prompt": "  média ", "value": "c"},
      {"prompt": "  leve ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 199
  },
  {
    "question":
        "Segundo a legislação de trânsito, o Certificado de Licenciamento Anual (CLA) é um documento ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " usado para cadastramento do veículo em âmbito nacional ",
        "value": "a"
      },
      {
        "prompt":
            "  em que constam os dados do veículo e do seu proprietário, usado para a venda do veículo, sendo de porte não obrigatório ",
        "value": "b"
      },
      {
        "prompt":
            "  de porte obrigatório expedido pelos Departamentos Estaduais de Trânsito, com dados do veículo e exercício do ano do último licenciamento ",
        "value": "c"
      },
      {
        "prompt":
            "  usado como seguro contra danos provocados a pessoas transportadas ou não, em acidentes com veículos automotores ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 200
  },
  {
    "question":
        "O condutor que dirige com atenção não deixa de observar a todo instante ",
    "right_answer": "c",
    "answers": [
      {
        "prompt":
            " o noticiário dos telejornais pelo monitor de TV a bordo do veículo ",
        "value": "a"
      },
      {
        "prompt": "  as mensagens de texto que chegam pelo telefone celular ",
        "value": "b"
      },
      {
        "prompt":
            "  a movimentação de pedestres, ciclistas e veículos ao longo da via ",
        "value": "c"
      },
      {
        "prompt":
            "  as placas de publicidade e os anúncios comerciais à beira da via ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 201
  },
  {
    "question": "Parada de veículo é definida pelo tempo ",
    "right_answer": "c",
    "answers": [
      {
        "prompt":
            " não superior a quinze minutos, para efetuar embarque ou desembarque de passageiros ",
        "value": "a"
      },
      {
        "prompt":
            "  pelo tempo máximo de 30 minutos, para efetuar embarque ou desembarque de passageiros ",
        "value": "b"
      },
      {
        "prompt":
            "  estritamente necessário para efetuar embarque ou desembarque de passageiros ",
        "value": "c"
      },
      {
        "prompt":
            "  não superior a dez minutos para efetuar embarque ou desembarque de passageiros ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 202
  },
  {
    "question":
        "Ao presenciar situações de acidentes com vítima, o condutor deve, entre outras providências de segurança do local do acidente ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " sinalizar colocando fogo em galhos de árvores ",
        "value": "a"
      },
      {
        "prompt":
            "  colocar o veículo no sentido contrário ao fluxo com farol alto ligado ",
        "value": "b"
      },
      {
        "prompt":
            "  estacionar em local seguro, com o pisca-alerta acionado e sinalizar o local com o triângulo ",
        "value": "c"
      },
      {
        "prompt":
            "  parar o veículo na pista de rolamento e sinalizar aos demais condutores por meio de gestos ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 203
  },
  {
    "question":
        "A velocidade máxima permitida em vias coletoras nas quais não exista sinalização regulamentadora é de ",
    "right_answer": "x",
    "answers": [
      {"prompt": " 40 km/h ", "value": "a"},
      {"prompt": "  60 km/h ", "value": "b"},
      {"prompt": "  20 km/h ", "value": "c"},
      {"prompt": "  30 km/h ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 204
  },
  {
    "question":
        "A distância percorrida pelo veículo do momento em que o motorista vê o perigo, até a imobilização total do veículo, é denominada ",
    "right_answer": "b",
    "answers": [
      {"prompt": " distância de frenagem ", "value": "a"},
      {"prompt": "  distância de parada ", "value": "b"},
      {"prompt": "  distância de seguimento ", "value": "c"},
      {"prompt": "  distância de reação ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 205
  },
  {
    "question":
        "A atitude do condutor que favorece a segurança no trânsito, ao conduzir um veículo em rodovia sob chuva intensa, é ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " reduzir a velocidade e não frear subitamente sobre poças d'água ",
        "value": "a"
      },
      {
        "prompt":
            "  reduzir a distancia de seguimento se aproximando do veículo à frente ",
        "value": "b"
      },
      {
        "prompt":
            "  trafegar pelo acostamento até a diminuição da intensidade da chuva ",
        "value": "c"
      },
      {
        "prompt":
            "  manter a velocidade e frear enquanto passa sobre poças d'água ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 206
  },
  {
    "question":
        "No veículo, o sistema de resfriamento ou arrefecimento evita o superaquecimento do ",
    "right_answer": "c",
    "answers": [
      {"prompt": " ar condicionado ", "value": "a"},
      {"prompt": "  pneu ", "value": "b"},
      {"prompt": "  motor ", "value": "c"},
      {"prompt": "  câmbio ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 207
  },
  {
    "question":
        "A baixa eficiência do sistema de freios do veículo, que é percebida quando o condutor tem de acionar o pedal várias vezes ao frear, é devida ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " ao nível baixo do fluido de freios e à presença de bolhas de ar na tubulação ",
        "value": "a"
      },
      {
        "prompt": "  ao mau estado de conservação das rodas e dos pneus ",
        "value": "b"
      },
      {
        "prompt":
            "  ao nível baixo do fluido de freios e a trincas na roda dianteira ",
        "value": "c"
      },
      {
        "prompt":
            "  à presença de bolhas de ar na tubulação e de trincas nas rodas do veículo ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 208
  },
  {
    "question": "São exemplos de responsabilidade ambiental do condutor ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " descartar pneus velhos, jogando-os em terrenos baldios ou córregos ",
        "value": "a"
      },
      {
        "prompt":
            "  manter em condições de funcionamento o catalisador e o escapamento ",
        "value": "b"
      },
      {
        "prompt":
            "  descartar restos de óleo usado do motor no ralo de águas pluviais ",
        "value": "c"
      },
      {
        "prompt":
            "  alterar as condições de regulagem do motor para aumentar a sua potência ",
        "value": "d"
      }
    ],
    "category": "Meio ambiente",
    "id": 209
  },
  {
    "question":
        "Sinalização horizontal inexistente ou apagada pode contribuir para gerar acidente de trânsito e é uma situação de risco relacionada como estado do(a) ",
    "right_answer": "c",
    "answers": [
      {"prompt": " condutor ", "value": "a"},
      {"prompt": "  clima e/ou ambiente ", "value": "b"},
      {"prompt": "  via ", "value": "c"},
      {"prompt": "  veículo ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 210
  },
  {
    "question":
        "Para sinalizar acidentes em trajeto em que há curva entre o local do acidente e o local a ser sinalizado, qual é a regra para medir a distância entre o acidente e a sinalização? ",
    "right_answer": "c",
    "answers": [
      {
        "prompt": " iniciar a contagem a partir do local do acidente ",
        "value": "a"
      },
      {
        "prompt":
            "  iniciar a contagem a partir do local do acidente, acrescentando 15 passos largos ",
        "value": "b"
      },
      {"prompt": "  iniciar a contagem a partir da curva ", "value": "c"},
      {
        "prompt":
            "  iniciar a contagem a partir do local do acidente, acrescentando 10 passos largos ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 211
  },
  {
    "question":
        "O condutor contribui para a preservação do meio ambiente, sem comprometer a segurança no trânsito, quando ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " desliga o motor do veículo em longos trechos em declive, reduzindo o consumo de combustível ",
        "value": "a"
      },
      {
        "prompt":
            "  descarta lixo na pista, na vegetação à beira da estrada, protegido por saco plástico ",
        "value": "b"
      },
      {
        "prompt":
            "  efetua a troca de filtros de óleo, ar e combustível conforme a especificação do fabricante ",
        "value": "c"
      },
      {
        "prompt":
            "  mantém ligado o motor do veículo, estando o trânsito paralisado dentro de um túnel ",
        "value": "d"
      }
    ],
    "category": "Meio ambiente",
    "id": 212
  },
  {
    "question":
        "Identifique, entre as alternativas a seguir, aquela que contém informações sobre \"condições adversas de tempo\" ",
    "right_answer": "x",
    "answers": [
      {"prompt": " chuva, vento, granizo, cerração ou neblina ", "value": "a"},
      {
        "prompt": "  chuva, buracos, obras na via ou largura da pista ",
        "value": "b"
      },
      {
        "prompt": "  chuva, granizo, obras na via ou largura de pista ",
        "value": "c"
      },
      {"prompt": "  granizo, vento, obras na via ou neblina ", "value": "d"}
    ],
    "category": "Meio ambiente",
    "id": 213
  },
  {
    "question":
        "Condutores com idade com idade igual ou superior a 50 (cinquenta)  anos e inferior a 70 (setenta) anos deve renovar o exame de aptidão fí­sica e mental (médico) ",
    "right_answer": "d",
    "answers": [
      {"prompt": " de 2 em 2 anos ", "value": "a"},
      {"prompt": "  de 5 em 5 anos ", "value": "b"},
      {"prompt": "  de 4 em 4 anos ", "value": "c"},
      {"prompt": "  de 3 em 3 anos ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 214
  },
  {
    "question":
        "A luz de indicação de freio no painel do veículo tem como principal função indicar eventuais falhas no sistema, como ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " falta de água, vazamentos e desgaste de pastilha ",
        "value": "a"
      },
      {
        "prompt": "  falta de fluido, vazamentos e desgaste de pastilha ",
        "value": "b"
      },
      {"prompt": "  falta de óleo no motor e vazamentos ", "value": "c"},
      {"prompt": "  falta de óleo no câmbio e vazamentos ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 215
  },
  {
    "question":
        "Entre as manutenções necessárias do veículo para o controle do nível de poluição atmosférica, destaca-se a verificação da vida útil do ",
    "right_answer": "a",
    "answers": [
      {"prompt": " filtro de ar ", "value": "a"},
      {"prompt": "  filtro do ar condicionado ", "value": "b"},
      {"prompt": "  hodômetro ", "value": "c"},
      {"prompt": "  radiador ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 216
  },
  {
    "question":
        "As vias urbanas abertas à circulação, de acordo com sua utilização, classificam-se em ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " de trânsito rápido, arteriais, coletoras e locais ",
        "value": "a"
      },
      {
        "prompt": "  de trânsito rápido, radiais, arteriais e coletoras ",
        "value": "b"
      },
      {
        "prompt": "  intermunicipais, arteriais, coletoras e locais ",
        "value": "c"
      },
      {"prompt": "  radiais, arteriais, coletoras e locais ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 217
  },
  {
    "question":
        "A classificação estabelecida no Código de Trânsito Brasileiro (CTB) contempla, entre outros, os seguintes tipos de sinais ",
    "right_answer": "b",
    "answers": [
      {
        "prompt":
            " semafóricos, gestos de pedestres e dispositivos auxiliares ",
        "value": "a"
      },
      {"prompt": "  verticais, horizontais e sonoros ", "value": "b"},
      {
        "prompt": "  dispositivos auxiliares, sirenes e horizontais ",
        "value": "c"
      },
      {
        "prompt": "  verticais, gestos de agentes ou de condutores e buzina ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 218
  },
  {
    "question":
        "Freios deficientes exigem maior distância de frenagem, o que pode contribuir para causar um acidente. Uma condição adversa que reduz a eficiência do sistema freio é a seguinte ",
    "right_answer": "a",
    "answers": [
      {"prompt": " presença de água no fluido de freio ", "value": "a"},
      {
        "prompt": "  disco dentro das especificações do fabricante ",
        "value": "b"
      },
      {"prompt": "  pastilhas dentro do prazo de validade ", "value": "c"},
      {"prompt": "  lonas novas ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 219
  },
  {
    "question":
        "O condutor deve saber que o embarque e o desembarque de passageiros de um automóvel devem ser feitos ",
    "right_answer": "c",
    "answers": [
      {"prompt": " pelo lado esquerdo do veículo ", "value": "a"},
      {"prompt": "  pelo lado direito do veículo ", "value": "b"},
      {"prompt": "  sempre do lado da calçada ", "value": "c"},
      {"prompt": "  do lado em que o desembarque for mais fácil ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 220
  },
  {
    "question":
        "A emissão de gases poluentes por veículos pode causar danos à saúde das pessoas, entre os quais ",
    "right_answer": "x",
    "answers": [
      {"prompt": " dores de coluna, perda da audição e náuseas ", "value": "a"},
      {
        "prompt": "  perda da audição, dificuldade de respirar e torcicolo ",
        "value": "b"
      },
      {
        "prompt": "  ardência nos olhos, náuseas e dificuldade de respirar ",
        "value": "c"
      },
      {
        "prompt": "  dificuldade de respirar, torcicolo e perda da audição ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 221
  },
  {
    "question":
        "Você mesmo(a) pode observar o funcionamento de seu veículo, e evitar situações de risco à noite, efetuando uma inspeção visual do ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " funcionamento dos faróis: verificando visualmente se todas estão acendendo (luzes baixa e alta) ",
        "value": "a"
      },
      {
        "prompt":
            "  nível de óleo de freio, do motor e de direção hidráulica: observando os respectivos reservatórios, conforme manual do proprietário ",
        "value": "b"
      },
      {
        "prompt":
            "  nível de óleo do sistema de transmissão (câmbio): para veículos de transmissão automática, verificando o nível do reservatório ",
        "value": "c"
      },
      {
        "prompt":
            "  nível de água do radiador: nos veículos refrigerados à água, verificando o nível do reservatório de água ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 222
  },
  {
    "question":
        "A distância de seguimento contribui para evitar colisões traseiras e facilita as ultrapassagens entre veículos. Podemos dizer que a distância de seguimento ",
    "right_answer": "a",
    "answers": [
      {"prompt": " é proporcional à velocidade do veículo ", "value": "a"},
      {"prompt": "  não se justifica para velocidades baixas ", "value": "b"},
      {"prompt": "  não precisa ser observada em vias urbanas ", "value": "c"},
      {
        "prompt": "  justifica-se quando o veículo da frente é pesado ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 223
  },
  {
    "question":
        "São condições adversas relacionadas com o estado do condutor ao dirigir e que podem contribuir para um acidente de trânsito ",
    "right_answer": "a",
    "answers": [
      {"prompt": " cansaço e sono ", "value": "a"},
      {"prompt": "  alegria e falta de habilidade ", "value": "b"},
      {"prompt": "  boa disposição e tristeza ", "value": "c"},
      {"prompt": "  irritação e boa audição ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 224
  },
  {
    "question":
        "A aquaplanagem é causada pela falta de aderência dos pneus com a via. Pode-se afirmar que ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " quanto maior a velocidade, menor o contato dos pneus com a via ",
        "value": "a"
      },
      {
        "prompt":
            "  quanto maior a velocidade, maior o contato dos pneus com a via ",
        "value": "b"
      },
      {
        "prompt":
            "  quanto menor a velocidade, menor o contato dos pneus com a via ",
        "value": "c"
      },
      {
        "prompt":
            "  a estabilidade do veículo depende somente da potência do motor ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 225
  },
  {
    "question":
        "Em relação ao meio ambiente, o condutor que mantém sacolas de lixo apropriadas no veículo demonstra ",
    "right_answer": "x",
    "answers": [
      {"prompt": " uma boa consciência ambiental ", "value": "a"},
      {"prompt": "  excesso de zelo com o meio ambiente ", "value": "b"},
      {"prompt": "  falta de responsabilidade ambiental ", "value": "c"},
      {"prompt": "  pouca noção de higiene e limpeza ", "value": "d"}
    ],
    "category": "Meio ambiente",
    "id": 226
  },
  {
    "question":
        "Dirigir veículo sem possuir a Carteira de Habilitação ou Permissão para Dirigir é uma infração (CTB Art. 162, inciso I) ",
    "right_answer": "c",
    "answers": [
      {"prompt": " grave ", "value": "a"},
      {"prompt": "  média ", "value": "b"},
      {"prompt": "  gravíssima ", "value": "c"},
      {"prompt": "  leve ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 227
  },
  {
    "question":
        "Ingerir bebida alcoólica ao dirigir é uma condição adversa porque torna o condutor ",
    "right_answer": "c",
    "answers": [
      {
        "prompt":
            " ágil e obediente às normas de trânsito, evitando acidentes ",
        "value": "a"
      },
      {
        "prompt":
            "  seguro e atento, percebendo mais facilmente as situações de risco ",
        "value": "b"
      },
      {
        "prompt": "  desconcentrado e desatento, podendo gerar acidentes ",
        "value": "c"
      },
      {
        "prompt": "  sociável e responsável, não gerando situações de risco ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 228
  },
  {
    "question":
        "As primeiras providências que o condutor deve tomar ao se deparar com um acidente grave com vítima(s), nessa ordem, são ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " manter a calma, garantir a segurança do local e solicitar socorro profissional ",
        "value": "a"
      },
      {
        "prompt":
            "  avaliar a situação da(s) vítima(s) e remover o(s) veículo(s) sinistrado(s) do local ",
        "value": "b"
      },
      {
        "prompt":
            "  garantir a segurança do local e atender primeiro a(s) vítima(s) com fraturas expostas ",
        "value": "c"
      },
      {
        "prompt":
            "  sinalizar o local, avaliar o estado da(s) vítima(s) e removê-las ao Pronto Socorro ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 229
  },
  {
    "question":
        "A pessoa que pretende habilitar-se na categoria E deverá preencher os seguintes requisitos ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " não ter cometido mais de uma infração gravíssima nos últimos12 (doze) meses ",
        "value": "a"
      },
      {
        "prompt":
            " não ter cometido nenhuma infração  grave ou gravíssima  ou ser reincidente em infrações médias durante os últimos 6 (seis) meses ",
        "value": "b"
      },
      {
        "prompt":
            " não ter cometido nenhuma infração grave ou gravíssima durante os últimos 6 (seis) meses ",
        "value": "c"
      },
      {
        "prompt":
            " não ter cometido nenhuma infração grave ou gravíssima ou ser reincidente em infrações médias ou ainda ter cometido quatro infrações leves durante os últimos 12 (doze) meses ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 230
  },
  {
    "question": "A função da bateria é ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " manter o carro em movimento, caso o motor pare de funcionar ",
        "value": "a"
      },
      {"prompt": "  armazenar e fornecer corrente elétrica ", "value": "b"},
      {"prompt": "  regular a energia elétrica ", "value": "c"},
      {
        "prompt": "  transformar a energia mecânica em energia elétrica ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 231
  },
  {
    "question":
        "Com o veículo em circulação, um dos documentos de porte obrigatório é ",
    "right_answer": "c",
    "answers": [
      {
        "prompt":
            " o documento de habilitação acompanhado da carteira de identidade ",
        "value": "a"
      },
      {
        "prompt": "  a apólice de seguro contra roubo e furto de veículos ",
        "value": "b"
      },
      {
        "prompt":
            "  o documento de habilitação expedida por meio físico e/ou digital ",
        "value": "c"
      },
      {
        "prompt": "  o Manual do Proprietário entregue pelo fabricante ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 232
  },
  {
    "question":
        "A velocidade máxima permitida em estradas nas quais não exista sinalização regulamentadora é de ",
    "right_answer": "x",
    "answers": [
      {"prompt": " 110 km/h ", "value": "a"},
      {"prompt": "  40 km/h ", "value": "b"},
      {"prompt": "  60 km/h ", "value": "c"},
      {"prompt": "  80 km/h ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 233
  },
  {
    "question":
        "O condutor que parar o veículo sobre a faixa de pedestre na mudança de sinal luminoso terá como penalidade (CTB Art. 183) ",
    "right_answer": "a",
    "answers": [
      {"prompt": " multa ", "value": "a"},
      {"prompt": "  suspensão da CNH ", "value": "b"},
      {"prompt": "  apreensão do veículo ", "value": "c"},
      {"prompt": "  cassação da CNH ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 234
  },
  {
    "question":
        "A circulação de pedestres em vias rurais deve ser feita pelo acostamento. Caso não exista acostamento, o pedestre circulará pela borda da ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " faixa de tráfego, com prioridade sobre os veículos automotores ",
        "value": "a"
      },
      {
        "prompt": "  pista, em sentido contrário ao fluxo de veículos ",
        "value": "b"
      },
      {
        "prompt": "  pista, no mesmo sentido do fluxo de veículos ",
        "value": "c"
      },
      {
        "prompt":
            "  pista, em qualquer dos dois sentidos de tráfego, indiferentemente ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 235
  },
  {
    "question":
        "Segundo a legislação, Peso Bruto Total dos veículos de transporte de carga é ",
    "right_answer": "x",
    "answers": [
      {"prompt": " o peso do próprio veículo ", "value": "a"},
      {
        "prompt":
            "  a capacidade própria do veículo, sem os equipamentos obrigatórios ",
        "value": "b"
      },
      {"prompt": "  a capacidade de carga do veículo ", "value": "c"},
      {
        "prompt":
            "  o peso máximo, constituído do peso próprio do veículo mais a lotação, que o veículo transmite ao pavimento ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 236
  },
  {
    "question":
        "Segundo a legislação, o Detran de cada Estado é o órgão executivo que tem sob sua exclusiva responsabilidade, entre outras ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " fiscalizar a circulação e a parada de veículos em vias urbanas ",
        "value": "a"
      },
      {
        "prompt":
            "  alterar as normas de sinalização e circulação de veículos ",
        "value": "b"
      },
      {
        "prompt":
            "  fiscalizar a circulação e a parada de veículos em rodovias estaduais ",
        "value": "c"
      },
      {
        "prompt": "  vistoriar, registrar e emplacar veículos, legalizando-os ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 237
  },
  {
    "question":
        "Pneus lisos (carecas) e ofuscamento, respectivamente, são condições adversas de ",
    "right_answer": "x",
    "answers": [
      {"prompt": " veículo e motorista ", "value": "a"},
      {"prompt": "  motor e tempo ", "value": "b"},
      {"prompt": "  luz e tempo ", "value": "c"},
      {"prompt": "  veículo e luz ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 238
  },
  {
    "question":
        "Usar a buzina em situações que não a de simples toque breve como advertência ao pedestre ou a condutores de outros veículos é considerada infração (CTB Art. 227, inciso I) ",
    "right_answer": "d",
    "answers": [
      {"prompt": " grave ", "value": "a"},
      {"prompt": "  média ", "value": "b"},
      {"prompt": "  gravíssima ", "value": "c"},
      {"prompt": "  leve ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 239
  },
  {
    "question":
        "Identifique a alternativa que corresponde às condições adversas de: condutor, veículo, via e tempo, nessa ordem ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " fadiga; pneus desregulados; congestionamento; granizo ",
        "value": "a"
      },
      {
        "prompt":
            "  ofuscamento; amortecedores em mau estado; pista escorregadia; chuva ",
        "value": "b"
      },
      {
        "prompt": "  granizo; freios desregulados; ofuscamento; fadiga ",
        "value": "c"
      },
      {
        "prompt":
            "  sono; amortecedores em mau estado; pista escorregadia; granizo ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 240
  },
  {
    "question":
        "Enquadra-se na previsão dos crimes de trânsito a seguinte conduta ",
    "right_answer": "x",
    "answers": [
      {"prompt": " dirigir sobe efeito de bebida alcóolica ", "value": "a"},
      {"prompt": "  bloquear a via com o veículo ", "value": "b"},
      {"prompt": "  seguir veículo em serviço de emergência ", "value": "c"},
      {
        "prompt":
            "  conduzir o veículo sem os documentos de porte obrigatório ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 241
  },
  {
    "question":
        "Para estabelecer uma convivência pacífica no trânsito, espera-se que os condutores ",
    "right_answer": "b",
    "answers": [
      {
        "prompt":
            " sejam intolerantes com quem comete erros grosseiros no trânsito ",
        "value": "a"
      },
      {
        "prompt": "  mantenham comportamentos de tolerância e solidariedade ",
        "value": "b"
      },
      {
        "prompt":
            "  entrem em conflito no trânsito para defender seus direitos ",
        "value": "c"
      },
      {
        "prompt": "  pensem primeiro em si mesmos e depois no bem coletivo ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 242
  },
  {
    "question":
        "Parar o veículo na área de cruzamento de vias, prejudicando a circulação de veículos e pedestres, é uma infração (CTB Art. 182, inciso VII) ",
    "right_answer": "d",
    "answers": [
      {"prompt": " gravíssima ", "value": "a"},
      {"prompt": "  leve ", "value": "b"},
      {"prompt": "  grave ", "value": "c"},
      {"prompt": "  média ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 243
  },
  {
    "question":
        "O trânsito de veículos sobre passeios e calçadas só poderá ocorrer ",
    "right_answer": "x",
    "answers": [
      {"prompt": " para carga e descarga de mercadorias ", "value": "a"},
      {"prompt": "  para embarque de passageiros ", "value": "b"},
      {"prompt": "  para entrada ou saída de imóveis ", "value": "c"},
      {"prompt": "  onde não houver largura suficiente na pista ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 244
  },
  {
    "question": "Podemos considerar que o condutor está tendo prudência ao: ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " trafegar lentamente pela faixa da esquerda, dificultando as ultrapassagens ",
        "value": "a"
      },
      {
        "prompt":
            "  manter a velocidade máxima permitida pela legislação ou pela placa de sinalização nos locais com grande movimento de pedestres ",
        "value": "b"
      },
      {
        "prompt":
            "  diminuir a velocidade, sob chuva, neblina, ou trafegando sobre poças d'água ",
        "value": "c"
      },
      {
        "prompt":
            "  mudar de faixa de tráfego sem usar a seta indicativa de direção ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 245
  },
  {
    "question":
        "A Lei no 9.605/98 regulamenta que toda pessoa física ou jurídica que praticar atos lesivos ao meio ambiente será penalizada ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " civil, administrativa e criminalmente, além de ter a obrigação de recuperar os danos causados ",
        "value": "a"
      },
      {
        "prompt": "  civil e criminalmente pelos danos causados, apenas ",
        "value": "b"
      },
      {"prompt": "  civil e administrativamente, apenas ", "value": "c"},
      {"prompt": "  com multa, apenas ", "value": "d"}
    ],
    "category": "Meio ambiente",
    "id": 246
  },
  {
    "question":
        "Fadiga, excesso de preocupações e irritação diante de vias congestionadas são condições adversas relacionadas com o(a) ",
    "right_answer": "d",
    "answers": [
      {"prompt": " condutor ", "value": "a"},
      {"prompt": "  veículo ", "value": "b"},
      {"prompt": "  clima e/ou ambiente ", "value": "c"},
      {"prompt": "  via ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 247
  },
  {
    "question":
        "De acordo com o Código de Trânsito Brasileiro, nas vias públicas, o trânsito de veículos será sempre feito (Art. 29, inciso I do CTB) ",
    "right_answer": "c",
    "answers": [
      {"prompt": " pelo centro da via, sempre ", "value": "a"},
      {"prompt": "  pelo lado esquerdo da via ", "value": "b"},
      {
        "prompt":
            "  pelo lado direito da via, admitidas as exceções justificadas e sinalizadas ",
        "value": "c"
      },
      {
        "prompt":
            "  pela direita da via nas estradas, e pela esquerda nas vias de uma cidade ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 248
  },
  {
    "question":
        "É melhor para a segurança de todos no trânsito que o condutor ",
    "right_answer": "a",
    "answers": [
      {"prompt": " facilite a ultrapassagem de outro veículo ", "value": "a"},
      {
        "prompt": "  dificulte ao máximo a ultrapassagem de outro veículo ",
        "value": "b"
      },
      {"prompt": "  impeça a ultrapassagem de outro veículo ", "value": "c"},
      {"prompt": "  atrapalhe a ultrapassagem de outro veículo ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 249
  },
  {
    "question":
        "O condutor que estiver com sua Carteira Nacional de Habilitação cassada e for encontrado dirigindo será punido com (Art. 162, inciso II do CTB) ",
    "right_answer": "b",
    "answers": [
      {"prompt": " remoção do veículo ", "value": "a"},
      {
        "prompt":
            "  multa, recolhimento do documento de habilitação e retenção do veículo ",
        "value": "b"
      },
      {"prompt": "  duas multas ", "value": "c"},
      {"prompt": "  apreensão do veículo ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 250
  },
  {
    "question": "Agir com cortesia no trânsito significa ",
    "right_answer": "a",
    "answers": [
      {
        "prompt": " ser educado e respeitar os direitos dos outros usuários ",
        "value": "a"
      },
      {
        "prompt": "  ser habilidoso e conhecer as regras de trânsito ",
        "value": "b"
      },
      {
        "prompt":
            "  ser decidido e adotar ações corretas em Situação de Risco ",
        "value": "c"
      },
      {
        "prompt": "  ser atento e antecipar-se às Situação de Risco ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 251
  },
  {
    "question":
        "O condutor que age em favor da segurança adota o seguinte procedimento como atitude ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " parar em local com sinalização de proibido parar e estacionar ",
        "value": "a"
      },
      {
        "prompt":
            "  não atravessar um cruzamento em marcha a ré em razão da falta de visibilidade ",
        "value": "b"
      },
      {
        "prompt":
            "  orientar os passageiros do banco traseiro a descerem pela porta do lado da pista de rolamento, observando atentamente o movimento da via por meio dos espelhos retrovisores ",
        "value": "c"
      },
      {
        "prompt":
            "  ao abrir o sinal verde do semáforo, avançar o veículo mesmo tendo pedestre concluindo a travessia ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 252
  },
  {
    "question":
        "Quando o condutor desobedecer às ordens emanadas da autoridade competente de trânsito ou de seus agentes, terá como penalidade (CTB Art. 195) ",
    "right_answer": "x",
    "answers": [
      {"prompt": " cassação da CNH ", "value": "a"},
      {"prompt": "  suspensão do direito de dirigir ", "value": "b"},
      {"prompt": "  multa ", "value": "c"},
      {"prompt": "  apreensão da CNH ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 253
  },
  {
    "question":
        "A sinalização de linhas de retenção e linhas de estímulo à redução de velocidade, nas vias de mão única, é demarcada ",
    "right_answer": "x",
    "answers": [
      {"prompt": " transversalmente à via, na cor amarela ", "value": "a"},
      {"prompt": "  longitudinalmente à via, na cor amarela ", "value": "b"},
      {"prompt": "  transversalmente à via, na cor branca ", "value": "c"},
      {"prompt": "  longitudinalmente à via, na cor branca ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 254
  },
  {
    "question":
        "Numa situação de acidente de trânsito com vítimas, constatamos a existência de fratura exposta pela observação ",
    "right_answer": "x",
    "answers": [
      {"prompt": " de osso quebrado, com o rompimento da pele ", "value": "a"},
      {
        "prompt": "  de osso quebrado, sem que haja rompimento da pele ",
        "value": "b"
      },
      {
        "prompt": "  de inchaço do local, sem sangramento aparente ",
        "value": "c"
      },
      {"prompt": "  de manchas de hematoma, sem sangramento ", "value": "d"}
    ],
    "category": "Medicina de tráfego",
    "id": 255
  },
  {
    "question":
        "Qual a sequência de ações recomendável a um condutor ao deparar com um acidente de trânsito? ",
    "right_answer": "b",
    "answers": [
      {
        "prompt":
            " atender as vítimas, primeiro, e, depois, sinalizar o local evitando novos acidentes ",
        "value": "a"
      },
      {
        "prompt":
            "  parar seu veículo em local seguro e, em seguida, sinalizar o local do acidente ",
        "value": "b"
      },
      {
        "prompt":
            "  retirar imediatamente as vítimas do veículo e, em seguida, removê-las da pista ",
        "value": "c"
      },
      {
        "prompt":
            "  parar o seu veículo, bloqueando a via e, em seguida, atender a vítima mais grave ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 256
  },
  {
    "question":
        "Reduzir a velocidade e redobrar a atenção em trechos de via sujeitos à presença de animais silvestres é uma medida ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " a favor da segurança no trânsito e que demonstra a consciência ambiental do condutor ",
        "value": "a"
      },
      {
        "prompt":
            "  a favor da segurança no trânsito, mas sem ligação com a preservação do meio ambiente ",
        "value": "b"
      },
      {
        "prompt":
            "  necessária para minimizar riscos de atropelamento e de colisão, porém destituída de sentido para o meio ambiente ",
        "value": "c"
      },
      {
        "prompt":
            "  relacionada com a maneira de dirigir do condutor e que não tem relação com o meio ambiente ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 257
  },
  {
    "question":
        "Considerando as responsabilidades relativas ao meio ambiente, podemos afirmar que ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " o Ibama tem por atribuição aplicar multas de trânsito a condutores que desrespeitam as normas ambientais no trânsito ",
        "value": "a"
      },
      {
        "prompt":
            "  o meio ambiente não é afetado pela circulação de veículos automotores cuja manutenção é precária ",
        "value": "b"
      },
      {
        "prompt":
            "  o Ibama tem por missão proteger o meio ambiente, visando a promover a qualidade ambiental propícia à vida ",
        "value": "c"
      },
      {
        "prompt":
            "  as normas de proteção ao meio ambiente não dizem respeito aos veículos automotores ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 258
  },
  {
    "question":
        "Algumas condições comprometem seriamente a segurança ao dirigir e podem gerar acidentes. Considerando as condições dos pneus, é situação inadequada de dirigibilidade que eles estejam ",
    "right_answer": "x",
    "answers": [
      {"prompt": " com bolhas nas suas laterais ", "value": "a"},
      {"prompt": "  calibrados conforme a especificação ", "value": "b"},
      {
        "prompt": "  nas dimensões indicadas pelo fabricante do veículo ",
        "value": "c"
      },
      {"prompt": "  com sulcos acima de 1,6 mm de profundidade ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 259
  },
  {
    "question": "O condutor habilitado na categoria \"D\" poderá conduzir ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " veículos motorizados para transporte de passageiros, que tenham mais de 8 (oito) lugares, sem contar o condutor ",
        "value": "a"
      },
      {
        "prompt":
            "  combinação de veículos composta de veículo trator e reboque de tração para cargas de diferentes dimensões ",
        "value": "b"
      },
      {
        "prompt":
            "  combinação de veículos, com unidade de reboque enquadrada na categoria trailer, não excedendo 5 (cinco) lugares ",
        "value": "c"
      },
      {
        "prompt":
            "  veículos motorizados de duas ou três rodas, com ou sem carro lateral, como também veículos de carga ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 260
  },
  {
    "question":
        "O excesso de fumaça eliminado pelos motores de combustão pode ser identificado ",
    "right_answer": "b",
    "answers": [
      {"prompt": " pela ventilação do motor ", "value": "a"},
      {"prompt": "  pelo escapamento ", "value": "b"},
      {"prompt": "  pelo silenciador ", "value": "c"},
      {"prompt": "  pelo sistema de ventilação interna ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 261
  },
  {
    "question":
        "As placas da sinalização de regulamentação têm por finalidade ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " informar aos usuários as condições, proibições, obrigações ou restrições no uso das vias ",
        "value": "a"
      },
      {
        "prompt":
            "  alertar os usuários sobre as condições potencialmente perigosas da via urbana ou estrada ",
        "value": "b"
      },
      {
        "prompt":
            "  indicar logradouros públicos importantes, áreas turísticas ou rotas dentro da cidade orientando transeuntes ",
        "value": "c"
      },
      {
        "prompt":
            "  advertir os condutores sobre as condições irregulares e imprevistas na via mudando a direção ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 262
  },
  {
    "question":
        "A velocidade máxima permitida em rodovias de pista dupla, nas quais não exista sinalização regulamentadora, para automóveis, camionetas e motocicletas, é de 110 km/h e para os demais veículos é de?",
    "right_answer": "c",
    "answers": [
      {"prompt": " 110 km/h ", "value": "a"},
      {"prompt": "  70 km/h ", "value": "b"},
      {"prompt": "  90 km/h ", "value": "c"},
      {"prompt": "  80 km/h ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 263
  },
  {
    "question":
        "Em caso de acidente de trânsito com vítima(s), são adequadas, entre outras, as seguintes atitudes do condutor ",
    "right_answer": "c",
    "answers": [
      {
        "prompt":
            " deixar o veículo em local seguro e medicar a(s) vítima(s) que considerar como grave(s) imediatamente ",
        "value": "a"
      },
      {
        "prompt":
            "  abandonar o veículo de forma a impedir o trânsito na via e sinalizar o local do acidente ",
        "value": "b"
      },
      {
        "prompt":
            "  parar o veículo em local seguro e sinalizar o local com segurança, evitando novos acidentes ",
        "value": "c"
      },
      {
        "prompt":
            "  agir sozinho, evitando pedir ajuda a outros condutores e aos profissionais socorristas ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 264
  },
  {
    "question":
        "Nos casos de acidente de trânsito em que a vítima apresenta queimaduras nas mãos, o condutor deve ",
    "right_answer": "x",
    "answers": [
      {"prompt": " passar creme dental no local do machucado ", "value": "a"},
      {"prompt": "  irrigar a área queimada com água corrente ", "value": "b"},
      {
        "prompt": "  enfaixar e apertar bem o local do ferimento ",
        "value": "c"
      },
      {"prompt": "  comprimir com força o local da queimadura ", "value": "d"}
    ],
    "category": "Medicina de tráfego",
    "id": 265
  },
  {
    "question":
        "Segundo a legislação de trânsito, está incluído entre os equipamentos obrigatórios de um veículo: ",
    "right_answer": "x",
    "answers": [
      {"prompt": " Placa de identificação traseira ", "value": "a"},
      {"prompt": "  Luzes de rodagem diurna ", "value": "b"},
      {
        "prompt":
            "  certificado de registro e licenciamento de veículos (CRLV) ",
        "value": "c"
      },
      {"prompt": "  engate para reboque ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 266
  },
  {
    "question":
        "Em relação aos riscos de ocorrência de acidentes no trânsito, é correto afirmar que ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " na grande maioria dos acidentes, o fator humano está presente ",
        "value": "a"
      },
      {
        "prompt":
            "  revisar e aperfeiçoar os conhecimentos sobre a técnica de dirigir são conselhos recomendáveis somente aos motoristas inexperientes ",
        "value": "b"
      },
      {
        "prompt":
            "  situações de tráfego denso (horários de pico) são totalmente seguras para os usuários das vias devido à baixa velocidade ",
        "value": "c"
      },
      {
        "prompt":
            "  estar atento não garante ao condutor a possibilidade de evitar as Situação de Risco ao volante ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 267
  },
  {
    "question":
        "Ao dirigir em meio à neblina densa, o condutor tende à ter redução da visibilidade. Nessa circunstância, o risco de colisão pode ocorrer em virtude de ",
    "right_answer": "a",
    "answers": [
      {"prompt": " lâmpadas do farol baixo queimadas ", "value": "a"},
      {"prompt": "  pala do quebra-sol ausente ", "value": "b"},
      {"prompt": "  espelhos retrovisores danificados ", "value": "c"},
      {"prompt": "  lâmpadas do farol alto queimadas ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 268
  },
  {
    "question": "Em casos de parada de emergência, o condutor deve ",
    "right_answer": "c",
    "answers": [
      {
        "prompt":
            " remover o veículo do local e esperar que alguém avise a mantenedora da via sobre o problema ",
        "value": "a"
      },
      {
        "prompt":
            "  permanecer no mesmo local, acionando apenas o pisca-alerta, e ficar esperando auxílio ",
        "value": "b"
      },
      {
        "prompt":
            "  retirar o veículo do fluxo do trânsito, acionar o pisca-alerta e sinalizar com o triângulo ",
        "value": "c"
      },
      {
        "prompt":
            "  permanecer no mesmo local e acenar para que os outros condutores desviem do seu veículo ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 269
  },
  {
    "question":
        "A condição geral em que o condutor se encontra interfere na sua forma de dirigir. Assinale a alternativa que descreve estados que devem ser evitados para que o condutor dirija com segurança ",
    "right_answer": "b",
    "answers": [
      {"prompt": " bem alimentado, sem sono ", "value": "a"},
      {
        "prompt": "  cansado, estar sob efeito de bebida alcóolica ",
        "value": "b"
      },
      {"prompt": "  tranquilo, bem disposto ", "value": "c"},
      {"prompt": "  fiscamente bem, atento ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 270
  },
  {
    "question":
        "Ao conduzir motocicleta com habilitação na categoria \"B\", além dos riscos de acidentes, o condutor terá como penalidade (CTB Art. 162, inciso III) ",
    "right_answer": "b",
    "answers": [
      {"prompt": " multa e prisão ", "value": "a"},
      {"prompt": "  multa (duas vezes), apenas ", "value": "b"},
      {"prompt": "  multa e apreensão do veículo ", "value": "c"},
      {"prompt": "  multa e suspensão do direito de dirigir ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 271
  },
  {
    "question":
        "Para o início do funcionamento do motor de um veículo é necessária energia elétrica para acionar o ",
    "right_answer": "a",
    "answers": [
      {"prompt": " alternador ou motor de partida ", "value": "a"},
      {"prompt": "  virabrequim e cilindros ", "value": "b"},
      {"prompt": "  motor de arranque ou de partida ", "value": "c"},
      {"prompt": "  volante do pistão motor ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 272
  },
  {
    "question":
        "Quando o veículo sofrer uma pane e parar em meio ao fluxo de veículos na via, o condutor deverá: ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " retirar o veículo do fluxo de trânsito e sinalizar com o pisca-alerta e o triângulo de segurança ",
        "value": "a"
      },
      {
        "prompt":
            "  estacionar o veículo no próprio local da pane e sinalizar com a luz o freio e o triângulo de segurança ",
        "value": "b"
      },
      {
        "prompt":
            "  manter o veículo no próprio local onde parou e sinalizar com lanternas de posição e pisca-alerta ",
        "value": "c"
      },
      {
        "prompt":
            "  manter o veículo no próprio local onde parou e sinalizar com pisca-alerta e triângulo de seguraça ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 273
  },
  {
    "question":
        "A classificação da sinalização horizontal, contida no Código de Trânsito Brasileiro (CTB), contempla, entre outros, os seguintes tipos de marcas ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " transversais, marcas no pavimento e placas de indicação ",
        "value": "a"
      },
      {
        "prompt":
            "  de canalização, placas de regulamentação e placas de advertência ",
        "value": "b"
      },
      {
        "prompt":
            "  longitudinais, marcas transversais e marcas de canalização ",
        "value": "c"
      },
      {
        "prompt":
            "  de canalização, inscrições no pavimento e dispositivos auxiliares ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 274
  },
  {
    "question":
        "Durante o exame de direção veicular, o candidato à obtenção da Carteira Nacional de Habilitação avançou sobre o meio-fio. Nessas condições, ele será ",
    "right_answer": "c",
    "answers": [
      {
        "prompt": " aprovado, desde que não cometa outra falta leve ",
        "value": "a"
      },
      {
        "prompt": "  aprovado, desde que não cometa outra falta média ",
        "value": "b"
      },
      {"prompt": "  reprovado, devendo realizar novo exame ", "value": "c"},
      {
        "prompt":
            "  aprovado, desde que não cometa falta de qualquer natureza ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 275
  },
  {
    "question":
        "No trecho de rodovia dentro de áreas urbanas, o condutor deve ",
    "right_answer": "b",
    "answers": [
      {
        "prompt":
            " não se importar com as situações locais, pois a rodovia é preferencial ",
        "value": "a"
      },
      {
        "prompt": "  utilizar velocidade compatível com as condições locais ",
        "value": "b"
      },
      {
        "prompt": "  manter a mesma velocidade com que vinha dirigindo ",
        "value": "c"
      },
      {
        "prompt":
            "  manter a mesma velocidade, mas não fazer ultrapassagens nesse trecho ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 276
  },
  {
    "question":
        "A aquaplanagem é um fenômeno que ocorre pela combinação dos seguintes fatores ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " excesso de água na pista e distância reduzida entre os veículos ",
        "value": "a"
      },
      {
        "prompt":
            "  alta velocidade, excesso de água na pista e suspensão em mau estado ",
        "value": "b"
      },
      {
        "prompt":
            "  falta de atenção, excesso de água na pista e buraco na pista ",
        "value": "c"
      },
      {
        "prompt":
            "  alta velocidade, excesso de água na pista e pneus em mau estado ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 277
  },
  {
    "question":
        "Exceto onde o estacionamento é livre, a operação de carga e descarga só é possível em ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " vias com grande presença de lojas comerciais e agências bancárias ",
        "value": "a"
      },
      {
        "prompt":
            "  qualquer local da via, exceto nos pontos de parada de ônibus ",
        "value": "b"
      },
      {
        "prompt":
            "  qualquer local da via, exceto a menos de 5 metros da esquina ",
        "value": "c"
      },
      {
        "prompt": "  local sinalizado por placa de regulamentação específica ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 278
  },
  {
    "question":
        "O condutor responsável, ao deparar-se com o pedestre pisando na faixa com intenção de atravessar a via, em local sem semáforo, deve ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " seguir em frente, acionando a buzina para alertar o pedestre a não atravessar ",
        "value": "a"
      },
      {
        "prompt":
            "  acelerar o veículo para conseguir passar antes do pedestre iniciar a travessia ",
        "value": "b"
      },
      {
        "prompt":
            "  manter a velocidade, pois a preferência nesses casos é sempre do veículo ",
        "value": "c"
      },
      {
        "prompt":
            "  parar o veículo antes da faixa e dar preferência à travessia do pedestre ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 279
  },
  {
    "question": "Banda de rodagem, carcaça de lonas e flancos fazem parte do ",
    "right_answer": "x",
    "answers": [
      {"prompt": " freio ", "value": "a"},
      {"prompt": "  motor ", "value": "b"},
      {"prompt": "  roda ", "value": "c"},
      {"prompt": "  pneu ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 280
  },
  {
    "question":
        "São classificados como condições adversas do condutor os seguintes fatores ",
    "right_answer": "d",
    "answers": [
      {"prompt": " chuva, neblina, vento e granizo ", "value": "a"},
      {
        "prompt": "  buracos na pista, trechos escorregadios e curvas ",
        "value": "b"
      },
      {
        "prompt": "  falha no sistema de iluminação e desníveis da pista ",
        "value": "c"
      },
      {"prompt": "  sono, cansaço e dirigir alcoolizado ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 281
  },
  {
    "question":
        "Em via com velocidade máxima de 80 km/h, qual a distância mínima para iniciar a sinalização de acidente ocorrido durante o dia, com pista seca? ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " a 100 metros do veículo ou, aproximadamente, 100 passos ",
        "value": "a"
      },
      {
        "prompt": "  a 120 metros do veículo ou, aproximadamente, 120 passos ",
        "value": "b"
      },
      {
        "prompt": "  a 60 metros do veículo ou, aproximadamente, 60 passos ",
        "value": "c"
      },
      {
        "prompt": "  a 80 metros do veículo ou, aproximadamente, 80 passos ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 282
  },
  {
    "question":
        "Segundo o Anexo I do Código de Trânsito Brasileiro (CTB), \"via rural não pavimentada\" é a definição utilizada para designar ",
    "right_answer": "c",
    "answers": [
      {"prompt": " via arterial ", "value": "a"},
      {"prompt": "  rodovia ", "value": "b"},
      {"prompt": "  via coletora ", "value": "c"},
      {"prompt": "  estrada ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 283
  },
  {
    "question": "Qual a função das velas de ignição no veículo ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " produzir centelhas elétricas (faíscas) para a mistura de ar e água ",
        "value": "a"
      },
      {
        "prompt": "  realizar a admissão e o escape dos gases da combustão ",
        "value": "b"
      },
      {
        "prompt":
            "  produzir centelhas elétricas (faíscas) para a mistura de ar e óleo ",
        "value": "c"
      },
      {
        "prompt":
            "  produzir centelhas elétricas (faíscas) para a mistura de ar e combustível ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 284
  },
  {
    "question": "Qual a função da bomba de água? ",
    "right_answer": "x",
    "answers": [
      {"prompt": " bombear água para limpeza do para-brisa ", "value": "a"},
      {
        "prompt": "  controlar a temperatura do sistema de ar condicionado ",
        "value": "b"
      },
      {
        "prompt": "  bombear a água do radiador para resfriamento da bateria ",
        "value": "c"
      },
      {
        "prompt":
            "  receber a água de resfriamento que vem do radiador e fazê-la circular no cabeçote, no motor e de volta ao radiador ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 285
  },
  {
    "question":
        "As linhas de divisão de fluxos de mesmo sentido são demarcadas na cor ",
    "right_answer": "x",
    "answers": [
      {"prompt": " azul ", "value": "a"},
      {"prompt": "  amarela ", "value": "b"},
      {"prompt": "  vermelha ", "value": "c"},
      {"prompt": "  branca ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 286
  },
  {
    "question":
        "A velocidade máxima permitida em vias de trânsito rápido nas quais não exista sinalização regulamentadora é de ",
    "right_answer": "x",
    "answers": [
      {"prompt": " 90 km/h ", "value": "a"},
      {"prompt": "  70 km/h ", "value": "b"},
      {"prompt": "  110 km/h ", "value": "c"},
      {"prompt": "  80 km/h ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 287
  },
  {
    "question":
        "Quais as exigências para conduzir um veículo de transporte de escolar? ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " ter realizado curso especializado em instituição devidamente credenciada pelo município ",
        "value": "a"
      },
      {
        "prompt":
            "  ser habilitado na categoria \"A\" e ter idade mínima de 21 anos ",
        "value": "b"
      },
      {
        "prompt":
            "  ter realizado curso especializado reconhecido pelo Detran e ser habilitado na categoria \"B\" ",
        "value": "c"
      },
      {
        "prompt":
            "  ter idade mínima de 21 anos, ser habilitado na categoria \"D\" e ter realizado curso especializado reconhecido pelo Detran ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 288
  },
  {
    "question":
        "A demonstração de tolerância do condutor com os demais usuários da via, que contribui para uma melhor convivência e segurança no trânsito, pode ser observada quando ele ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " antes de agir, aguarda, primeiro, a manifestação dos outros ",
        "value": "a"
      },
      {
        "prompt": "  não se importa com o que pode acontecer com os outros ",
        "value": "b"
      },
      {
        "prompt": "  cuida da sua própria segurança ignorando a dos pedestres ",
        "value": "c"
      },
      {
        "prompt": "  age preocupado, primeiramente, com a segurança de todos ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 289
  },
  {
    "question":
        "Os veículos classificados como \"ciclomotor\", \"de propulsão humana\" e \"de tração animal\" deverão ser registrados e licenciados pelo ",
    "right_answer": "x",
    "answers": [
      {"prompt": " órgão executivo de trânsito estadual ", "value": "a"},
      {"prompt": "  Conselho Nacional de Trânsito / Contran ", "value": "b"},
      {
        "prompt": "  Departamento Nacional de Trânsito / Denatran ",
        "value": "c"
      },
      {"prompt": "  órgão executivo de trânsito municipal ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 290
  },
  {
    "question":
        "Na sinalização horizontal, a cor amarela é utilizada para as seguintes finalidades ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " regulação de fluxos de sentidos opostos; delimitação de espaços proibidos para estacionamento e/ou parada; e marcação de obstáculos ",
        "value": "a"
      },
      {
        "prompt":
            "  proporcionar o contraste adequado entre o pavimento e a pintura, e delimitar trechos de vias destinados ao estacionamento ",
        "value": "b"
      },
      {
        "prompt":
            "  regulação de locais especiais de estacionamento e regulação de fluxos de mesmo sentido ",
        "value": "c"
      },
      {
        "prompt":
            "  regulação de fluxos de mesmo sentido e delimitação de trechos de vias destinados ao estacionamento ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 291
  },
  {
    "question":
        "O condutor demonstra um comportamento favorável à segurança no trânsito quando ",
    "right_answer": "c",
    "answers": [
      {
        "prompt":
            " é ousado e usa a agressividade para se livrar de situações de perigo que surgem à sua frente ",
        "value": "a"
      },
      {
        "prompt":
            "  julga que sua habilidade com o veículo é suficiente para escapar de situações de perigo ",
        "value": "b"
      },
      {
        "prompt":
            "  reconhece antecipadamente situações de perigo e age a fim de evitar acidentes ",
        "value": "c"
      },
      {
        "prompt":
            "  sabe contornar situações de risco criadas por ele mesmo ao deixar de observar alguma norma ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 292
  },
  {
    "question":
        "Para identificar um superaquecimento do motor, o condutor deve estar atento a um instrumento do painel do veículo denominado ",
    "right_answer": "x",
    "answers": [
      {"prompt": " relógio ", "value": "a"},
      {"prompt": "  termômetro ", "value": "b"},
      {"prompt": "  velocímetro ", "value": "c"},
      {"prompt": "  taxímetro ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 293
  },
  {
    "question":
        "O condutor infrator será submetido a curso de reciclagem quando ",
    "right_answer": "d",
    "answers": [
      {"prompt": " cometer qualquer infração grave ", "value": "a"},
      {
        "prompt": "  for multado por ultrapassar a velocidade permitida ",
        "value": "b"
      },
      {
        "prompt": "  estacionar em local sinalizado como proibido ",
        "value": "c"
      },
      {"prompt": "  for suspenso do seu direito de dirigir ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 294
  },
  {
    "question":
        "Portar no veículo placas de identificação em desacordo com as especificações e modelos estabelecidos pelo Contran tem como medida administrativa ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " retenção do veículo para regularização e apreensão das placas irregulares ",
        "value": "a"
      },
      {
        "prompt":
            "  remoção do veículo e recolhimento do documento de habilitação ",
        "value": "b"
      },
      {"prompt": "  apreensão das placas irregulares, apenas ", "value": "c"},
      {
        "prompt": "  retenção do veículo para regularização, apenas ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 295
  },
  {
    "question":
        "Quando pessoas assumem o compromisso de sinalizar a ocorrência de acidentes de trânsito, elas devem ",
    "right_answer": "d",
    "answers": [
      {
        "prompt": " estar no meio da pista e no local do acidente ",
        "value": "a"
      },
      {
        "prompt": "  estar no meio da pista e após o local do acidente ",
        "value": "b"
      },
      {
        "prompt": "  estar na lateral da pista e após o local do acidente ",
        "value": "c"
      },
      {
        "prompt": "  estar na lateral da pista e antes do local do acidente ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 296
  },
  {
    "question":
        "Dos tipos de colisões estudados em Direção Defensiva, qual envolve frequentemente somente um veículo ",
    "right_answer": "x",
    "answers": [
      {"prompt": " colisão com o veículo da frente ", "value": "a"},
      {"prompt": "  colisão com o veículo em sentido contrário ", "value": "b"},
      {"prompt": "  colisão com o veículo de trás ", "value": "c"},
      {"prompt": "  colisão com objetos fixos ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 297
  },
  {
    "question":
        "Parar o veiculo na área de cruzamento de vias, prejudicando a circulação, é ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " falta de civilidade, mas não caracteriza infração de trânsito ",
        "value": "a"
      },
      {
        "prompt":
            "  infração de trânsito, desde que haja sinalização de pintura na pista ",
        "value": "b"
      },
      {
        "prompt": "  permitido, em caso de congestionamento da via ",
        "value": "c"
      },
      {
        "prompt":
            "  infração de trânsito e uma atitude não cidadã do condutor ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 298
  },
  {
    "question":
        "O condutor de veículo deve dar preferência de passagem aos pedestres ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " somente quando isso for solicitado pelo agente de trânsito ",
        "value": "a"
      },
      {
        "prompt": "  caso as pessoas estejam próximas a área escolar ",
        "value": "b"
      },
      {
        "prompt": "  somente quando estão atravessando na faixa de pedestres ",
        "value": "c"
      },
      {
        "prompt":
            "  que não tenham concluído a travessia, quando houver mudança de sinal ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 299
  },
  {
    "question":
        "Vencida a validade da CNH, o condutor deve renová-la, no máximo em ",
    "right_answer": "d",
    "answers": [
      {"prompt": " 20 dias ", "value": "a"},
      {"prompt": "  45 dias ", "value": "b"},
      {"prompt": "  10 dias ", "value": "c"},
      {"prompt": "  30 dias ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 300
  },
  {
    "question":
        "A colisão frontal pode ser muito grave, dependendo da velocidade, e ocorre com o veículo ",
    "right_answer": "d",
    "answers": [
      {"prompt": " vindo por trás ", "value": "a"},
      {"prompt": "  que está na frente ", "value": "b"},
      {"prompt": "  que está parado ", "value": "c"},
      {"prompt": "  em sentido contrário ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 301
  },
  {
    "question": "O condutor habilitado na categoria \"A\" poderá conduzir ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " veículos motorizados, para transporte de passageiros, que tenham mais de 8 (oito) lugares, sem contar o condutor ",
        "value": "a"
      },
      {
        "prompt":
            "  veículos motorizados, para transporte de carga, que excedam a 3.500 kg de peso bruto total (PBT) ",
        "value": "b"
      },
      {
        "prompt":
            "  veículos motorizados, que não excedam a 8 (oito) lugares, sem contar o condutor, e que não ultrapassem 3.500 kg de peso bruto total (PBT) ",
        "value": "c"
      },
      {
        "prompt":
            "  veículos motorizados, de duas ou três rodas, com ou sem carro lateral ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 302
  },
  {
    "question":
        "Qual a velocidade máxima permitida em que o condutor deve trafegar com automóvel em via arterial não sinalizada? ",
    "right_answer": "d",
    "answers": [
      {"prompt": " 80 km/h ", "value": "a"},
      {"prompt": "  30 km/h ", "value": "b"},
      {"prompt": "  40 km/h ", "value": "c"},
      {"prompt": "  60 km/h ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 303
  },
  {
    "question":
        "Para prolongar a vida útil do motor, entre os itens de manutenção do veículo, destaca-se a verificação do nível e a troca periódica do: ",
    "right_answer": "x",
    "answers": [
      {"prompt": " fluido de bateria ", "value": "a"},
      {"prompt": "  fluido de freios ", "value": "b"},
      {"prompt": "  óleo lubrificante do motor ", "value": "c"},
      {"prompt": "  óleo lubrificante do câmbio ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 304
  },
  {
    "question":
        "Entre as peças principais (fixas e móveis) de um motor de combustão interna estão as seguintes ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " bloco, cabeçote, piloto do volante do motor e caixa de câmbio ",
        "value": "a"
      },
      {
        "prompt": "  bloco, cabeçote, virabrequim e caixa de câmbio ",
        "value": "b"
      },
      {"prompt": "  bloco, cabeçote, virabrequim e cárter ", "value": "c"},
      {"prompt": "  sincronizado, caixa de câmbio e suspensão ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 305
  },
  {
    "question":
        "Em um veículo, a função de manter a sua estabilidade em deslocamento nas retas e curvas é realizada, entre outros sistemas, pelos seguintes ",
    "right_answer": "x",
    "answers": [
      {"prompt": " direção, suspensão e transmissão ", "value": "a"},
      {"prompt": "  direção e transmissão ", "value": "b"},
      {"prompt": "  direção e suspensão ", "value": "c"},
      {"prompt": "  suspensão e transmissão ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 306
  },
  {
    "question":
        "Ao comprar o veículo de um amigo, o novo proprietário pretende executar algumas modificações estruturais. No entanto, antes de proceder essas modificações, o proprietário deverá adotar o seguinte procedimento obrigatório ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " apresentar o Certificado de Segurança Veicular ao despachante credenciado ",
        "value": "a"
      },
      {
        "prompt":
            "  preencher a ficha cadastral, assinalando como opção mudança de características ",
        "value": "b"
      },
      {
        "prompt":
            "  solicitar prévia autorização da autoridade de trânsito de registro do veículo ",
        "value": "c"
      },
      {
        "prompt":
            "  enviar carta à autoridade de trânsito do Detran informando as modificações efetuadas no veículo e anexando fotos delas ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 307
  },
  {
    "question":
        "Estacionar o veículo em viadutos, pontes e túneis terá como medida administrativa a (Art. 181, inciso XIV do CTB) ",
    "right_answer": "a",
    "answers": [
      {"prompt": " remoção do veículo ", "value": "a"},
      {"prompt": "  multa ", "value": "b"},
      {"prompt": "  apreensão do veículo ", "value": "c"},
      {"prompt": "  cassação da CNH ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 308
  },
  {
    "question":
        "Os veículos automotores, movidos à gasolina, eliminam gases poluentes pelo seu escapamento. Um desses gases é o ",
    "right_answer": "x",
    "answers": [
      {"prompt": " nitrogênio ", "value": "a"},
      {"prompt": "  monóxido de carbono ", "value": "b"},
      {"prompt": "  hélio ", "value": "c"},
      {"prompt": "  oxigênio ", "value": "d"}
    ],
    "category": "Meio ambiente",
    "id": 309
  },
  {
    "question":
        "Um condutor que teve sua CNH cassada poderá requerer sua reabilitação após ",
    "right_answer": "d",
    "answers": [
      {"prompt": " 6 meses ", "value": "a"},
      {"prompt": "  3 anos ", "value": "b"},
      {"prompt": "  1 ano ", "value": "c"},
      {"prompt": "  2 anos ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 310
  },
  {
    "question":
        "Duas das condições adversas que reduzem a visibilidade do condutor ao dirigir e que podem causar acidente de trânsito são ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " desembaçador de para-brisa em bom estado e faróis bem regulados ",
        "value": "a"
      },
      {
        "prompt":
            "  dia claro e bem iluminado e quebra-sol em bom estado de conservação ",
        "value": "b"
      },
      {
        "prompt":
            "  farol baixo contra os olhos à noite e sinalização da via em perfeitas condições ",
        "value": "c"
      },
      {
        "prompt":
            "  chuva intensa à noite e luz do sol incidindo nos olhos do condutor ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 311
  },
  {
    "question":
        "Ao entardecer, o dia já não está tão claro e a noite ainda não está tão escura, situação chamada de lusco-fusco. Recomenda-se que o condutor reduza a velocidade e preste mais atenção ao trânsito, pois esta situação ",
    "right_answer": "x",
    "answers": [
      {"prompt": " torna mais lenta a tomada de decisões ", "value": "a"},
      {
        "prompt":
            "  reduz a visibilidade do condutor em relação ao ambiente geral do trânsito ",
        "value": "b"
      },
      {
        "prompt": "  diminui a capacidade de ouvir o que se passa à sua volta ",
        "value": "c"
      },
      {
        "prompt": "  altera a habilidade nas manobras com o veículo ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 312
  },
  {
    "question":
        "Aproximando-se de uma curva acentuada à direita, para evitar a invasão da pista contrária, devido à ação da força centrífuga, um motorista defensivo deverá manter-se à direita e ",
    "right_answer": "d",
    "answers": [
      {"prompt": " acelerar o veículo antes da curva ", "value": "a"},
      {
        "prompt": "  reduzir a velocidade no meio da curva, usando o freio ",
        "value": "b"
      },
      {
        "prompt": "  aumentar a velocidade em todo o trecho em curva ",
        "value": "c"
      },
      {"prompt": "  diminuir a velocidade antes da curva ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 313
  },
  {
    "question":
        "Dos fatores listados nas alternativas, qual deles pode contribuir para causar acidente no trânsito? ",
    "right_answer": "d",
    "answers": [
      {"prompt": " respeito ao limite de velocidade ", "value": "a"},
      {"prompt": "  distância segura do veículo da frente ", "value": "b"},
      {"prompt": "  pneus em bom estado ", "value": "c"},
      {"prompt": "  freios deficientes ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 314
  },
  {
    "question":
        "O desgaste físico provocado pela regulagem e pelo posicionamento inadequado do assento feito pelo condutor, exigindo esforço adicional nas pernas e nos braços, é uma condição adversa relacionada com o(a) ",
    "right_answer": "d",
    "answers": [
      {"prompt": " veículo ", "value": "a"},
      {"prompt": "  via ", "value": "b"},
      {"prompt": "  clima e/ou ambiente ", "value": "c"},
      {"prompt": "  condutor ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 315
  },
  {
    "question":
        "Na condução de um veículo, qual o procedimento correto do motorista, além de demonstrar respeito aos demais usuários da via? ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " estacionar sobre o passeio, porém preocupando-se em deixar espaço para o trânsito de pedestres ",
        "value": "a"
      },
      {
        "prompt":
            "  acionar as luzes de emergência (pisca-alerta) sempre que necessitar parar em fila dupla ",
        "value": "b"
      },
      {
        "prompt":
            "  buzinar sempre que perceber um pedestre tentando efetuar a travessia ",
        "value": "c"
      },
      {
        "prompt":
            "  sinalizar com antecedência todas as manobras que for realizar ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 316
  },
  {
    "question": "No sistema de lubrificação, o filtro de óleo tem a função de ",
    "right_answer": "x",
    "answers": [
      {"prompt": " separar a água do óleo do motor ", "value": "a"},
      {"prompt": "  indicar a quantidade do óleo existente ", "value": "b"},
      {"prompt": "  fazer circular o óleo do motor ", "value": "c"},
      {"prompt": "  reter as impurezas do óleo do motor ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 317
  },
  {
    "question":
        "O que fazer se, em acidente de trânsito, houver vítima inconsciente e com cinto de segurança no veículo acidentado? ",
    "right_answer": "d",
    "answers": [
      {"prompt": " reanimar a vítima ", "value": "a"},
      {
        "prompt": "  alterar a posição do banco em está a vítima ",
        "value": "b"
      },
      {"prompt": "  retirar o cinto de segurança ", "value": "c"},
      {"prompt": "  sinalizar o local e chamar o resgate ", "value": "d"}
    ],
    "category": "Medicina de tráfego",
    "id": 318
  },
  {
    "question":
        "Os sistemas básicos para que um motor de combustão interna funcione são ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " de alimentação de combustível, de injeção, de ignição e de explosão, apenas ",
        "value": "a"
      },
      {
        "prompt":
            "  de lubrificação, de admissão, de resfriamento, de escape e de ignição, apenas ",
        "value": "b"
      },
      {
        "prompt":
            "  de alimentação de combustível, de lubrificação, de ignição e de escape, apenas ",
        "value": "c"
      },
      {
        "prompt":
            "  de alimentação de combustível, de ignição, de lubrificação, de arrefecimento e de escapamento ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 319
  },
  {
    "question":
        "Manter o espaço público limpo e conservado, além de manter o aspecto visual da cidade, é um cuidado necessário em relação ao meio ambiente. Diante disso, a falta de consciência ambiental pode ser observada quando o(a) ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " responsável por um condomínio não permite que os funcionários depositem os sacos de lixo dos moradores diretamente nas calçadas ou na via pública ",
        "value": "a"
      },
      {
        "prompt":
            "  comunidade escolar ensina as crianças a não jogarem lixo nas ruas, especialmente aquele transportado nos veículos ",
        "value": "b"
      },
      {
        "prompt":
            "  responsável por uma construção impede que fornecedores depositem materiais na via pública ",
        "value": "c"
      },
      {
        "prompt":
            "  condutor deixa cair parte da carga do veículo ou descarta peças usadas utilizadas do veículo na via pública ",
        "value": "d"
      }
    ],
    "category": "Meio ambiente",
    "id": 320
  },
  {
    "question": "Ao dirigir com chuva, o condutor deve manter, pelo menos ",
    "right_answer": "x",
    "answers": [
      {"prompt": " pisca-alerta aceso ", "value": "a"},
      {"prompt": "  faróis altos acesos ", "value": "b"},
      {"prompt": "  luzes de posição apagadas ", "value": "c"},
      {"prompt": "  luzes de posição acesas ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 321
  },
  {
    "question":
        "São equipamentos obrigatórios dos veículos automotores, entre outros ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " luz de marcha a ré, cinto de segurança, espelhos retrovisores, farol de neblina e lanternas de freio ",
        "value": "a"
      },
      {
        "prompt":
            "  pneu sobressalente, cinto de segurança e GPS para localização do condutor ",
        "value": "b"
      },
      {
        "prompt":
            "  lanternas de freio, limpador de para-brisa, luz da placa de identificação e lanternas de posição traseira ",
        "value": "c"
      },
      {
        "prompt":
            "  luz de marcha a ré, lanterna de posição, macaco, luz interna e freios do tipo ABS ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 322
  },
  {
    "question":
        "De onde provém a eletricidade necessária para acionar o motor de arranque? ",
    "right_answer": "x",
    "answers": [
      {"prompt": " do alternador ", "value": "a"},
      {"prompt": "  da ignição eletrônica ", "value": "b"},
      {"prompt": "  da bateria ", "value": "c"},
      {"prompt": "  das velas ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 323
  },
  {
    "question":
        "Alguns fatores diminuem a concentração e retardam os reflexos na condução do veículo. A ação que deve ser evitada, pois pode afetar a concentração do condutor, é ",
    "right_answer": "c",
    "answers": [
      {
        "prompt": " adequar a velocidade à sinalização e às condições locais ",
        "value": "a"
      },
      {"prompt": "  ouvir música suave em volume moderado ", "value": "b"},
      {"prompt": "  conversar ao celular no modo viva-voz ", "value": "c"},
      {"prompt": "  fazer uma refeição leve antes de dirigir ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 324
  },
  {
    "question":
        "Algumas atitudes de relacionamento do condutor com os demais usuários da via podem tornar o trânsito mais humano. Entre essas atitudes, pode-se incluir a de ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " respeitar as regras de preferência dos demais condutores e pedestres ",
        "value": "a"
      },
      {
        "prompt":
            "  ajudar outro condutor, rebocando seu veículo por meio de uma corda ",
        "value": "b"
      },
      {
        "prompt":
            "  informar seus colegas sobre o local de realização de fiscalização da \"lei seca\" ",
        "value": "c"
      },
      {
        "prompt":
            "  parar o veículo sobre a calçada para o desembarque de um idoso ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 325
  },
  {
    "question":
        "O condutor age em favor da segurança do trânsito ao utilizar pneus ",
    "right_answer": "c",
    "answers": [
      {"prompt": " com bolhas nas rodas traseiras do veículo ", "value": "a"},
      {
        "prompt": "  fora da especificação do fabricante do veículo ",
        "value": "b"
      },
      {"prompt": "  calibrados e em bom estado de conservação ", "value": "c"},
      {
        "prompt": "  lisos (carecas) nas rodas dianteiras do veículo ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 326
  },
  {
    "question":
        "No território nacional, a competência de sinalizar as vias terrestres abertas à circulação cabe ",
    "right_answer": "x",
    "answers": [
      {"prompt": " à Polícia Militar e à Guarda Municipal ", "value": "a"},
      {
        "prompt":
            "  aos órgãos executivos de trânsito no âmbito de circunscrição da via ",
        "value": "b"
      },
      {
        "prompt":
            "  ao Detran de cada Estado da Federação e do Distrito Federal ",
        "value": "c"
      },
      {
        "prompt": "  aos Conselhos Estaduais de Trânsito (Cetran) ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 327
  },
  {
    "question":
        "O condutor que cometer infração de natureza gravíssima, grave ou for reincidente em infração de natureza média enquanto possuir a Permissão para Dirigir ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " não receberá a CNH e reiniciará todo o processo de habilitação ",
        "value": "a"
      },
      {
        "prompt":
            "  terá sua habilitação suspensa por um período de 6 (seis) meses ",
        "value": "b"
      },
      {"prompt": "  deverá passar por curso de reciclagem ", "value": "c"},
      {
        "prompt": "  não receberá a CNH, mantendo a Permissão para Dirigir ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 328
  },
  {
    "question":
        "A pessoa que pretende habilitar-se na categoria D deverá preencher qual destes requisitos? ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " ser habilitado e maior de 21 (vinte e um) anos ",
        "value": "a"
      },
      {
        "prompt":
            "  ser habilitado na categoria B e ter 18 (dezoito) anos completos ",
        "value": "b"
      },
      {"prompt": "  ser habilitado na categoria E ", "value": "c"},
      {
        "prompt": "  ser habilitado e ter 18 (dezoito) anos completos ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 329
  },
  {
    "question":
        "Ao observar que os veículos em movimento estão mantendo distâncias de seguimento regulamentares entre si, para evitar que o veículo que vem atrás colida em sua traseira, o procedimento recomendado ao condutor é ",
    "right_answer": "b",
    "answers": [
      {
        "prompt":
            " mudar para a faixa da esquerda, se estiver em via urbana, e ir para o acostamento, se estiver em rodovia ",
        "value": "a"
      },
      {
        "prompt":
            "  manter-se atento aos espelhos retrovisores e, quando necessário, pisar no freio aos poucos ",
        "value": "b"
      },
      {
        "prompt":
            "  usar o freio normalmente para a luz traseira acender e, ao mesmo tempo, acionar o pisca-alerta ",
        "value": "c"
      },
      {
        "prompt":
            "  aproximar-se o máximo possível do veículo que vai à sua frente, usando o freio para não colidir ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 330
  },
  {
    "question":
        "Ao acionar a equipe de socorro para comunicar um acidente, o condutor deve informar, da melhor maneira possível, o estado da vítima. Indique a maneira mais correta de verificar as condições da vítima ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " a perda de consciência pode ser verificada movimentando-se a cabeça da vítima para os lados rapidamente ",
        "value": "a"
      },
      {
        "prompt":
            "  o estado de choque pode ser identificado pela presença de calafrios, pulsação rápida e fraca e suor em demasia ",
        "value": "b"
      },
      {
        "prompt":
            "  luxações podem ser verificadas pela observação de ossos expostos e ausência de sangramento no local ",
        "value": "c"
      },
      {
        "prompt":
            "  o desmaio pode ser identificado pela ausência de respiração e pela presença de confusão mental com fala alterada ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 331
  },
  {
    "question":
        "Ao trafegar sob forte chuva em rodovia com limite de velocidade de 80 km/h, a providência correta em termos de direção segura é ",
    "right_answer": "x",
    "answers": [
      {"prompt": " diminuir a distância do veículo da frente ", "value": "a"},
      {"prompt": "  ligar o pisca-alerta ", "value": "b"},
      {"prompt": "  reduzir a velocidade ", "value": "c"},
      {"prompt": "  manter o limite de velocidade da rodovia ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 332
  },
  {
    "question":
        "Chuva, vento e cerração são fatores classificados como condições adversas de ",
    "right_answer": "x",
    "answers": [
      {"prompt": " trânsito ", "value": "a"},
      {"prompt": "  tempo ", "value": "b"},
      {"prompt": "  veículo ", "value": "c"},
      {"prompt": "  luz ", "value": "d"}
    ],
    "category": "Meio ambiente",
    "id": 333
  },
  {
    "question":
        "É permitido ao condutor transitar com o veículo em marcha à ré na seguinte condição ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " no período noturno, desde que em distâncias pequenas ",
        "value": "a"
      },
      {
        "prompt": "  na distância necessária para pequenas manobras ",
        "value": "b"
      },
      {
        "prompt": "  em qualquer distância, nos acostamentos de rodovias ",
        "value": "c"
      },
      {"prompt": "  em vias urbanas e em qualquer distância ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 334
  },
  {
    "question":
        "Ao se aproximar de um cruzamento, uma forma segura de agir do condutor é ",
    "right_answer": "b",
    "answers": [
      {"prompt": " acionar a buzina ", "value": "a"},
      {"prompt": "  reduzir a velocidade ", "value": "b"},
      {"prompt": "  manter a mesma velocidade ", "value": "c"},
      {"prompt": "  aumentar a velocidade ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 335
  },
  {
    "question":
        "Vários fatores influenciam o desempenho do motorista, entre eles, iluminação e condições meteorológicas. Considerando esses aspectos, assinale a alternativa correta ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " os raios solares, quando incidem sobre os olhos do condutor, causam ofuscamento, perda de visão momentânea e risco de acidente ",
        "value": "a"
      },
      {
        "prompt":
            "  dirigir à noite usando somente as lanternas indicadoras de posição é favorável à segurança no trânsito e à redução de acidente ",
        "value": "b"
      },
      {
        "prompt":
            "  a iluminação em determinado trecho da via não interfere na visibilidade do condutor ao dirigir já que os faróis fornecem iluminação suficiente ",
        "value": "c"
      },
      {
        "prompt":
            "  à noite, ao transitar por uma via, o veículo com o farol alto não causa cegueira momentânea no condutor que dirige no sentido oposto de tráfego ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 336
  },
  {
    "question":
        "A poeira, condição adversa mais frequentemente observada em estradas de terra, causa a seguinte situação de risco ",
    "right_answer": "c",
    "answers": [
      {"prompt": " reduz a estabilidade do veículo ", "value": "a"},
      {"prompt": "  suja internamente o veículo ", "value": "b"},
      {"prompt": "  reduz a visibilidade do condutor ", "value": "c"},
      {"prompt": "  reduz a força dos freios ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 337
  },
  {
    "question": "As placas da sinalização de advertência têm por finalidade ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " alertar os usuários da via para as condições potencialmente perigosas, indicando sua natureza ",
        "value": "a"
      },
      {
        "prompt": "  informar os usuários das condições satisfatórias da via ",
        "value": "b"
      },
      {
        "prompt":
            "  informar os usuários da via das condições, proibições e obrigações dos condutores ",
        "value": "c"
      },
      {
        "prompt": "  alertar os usuários da via sobre atrativos turísticos ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 338
  },
  {
    "question":
        "Quando o proprietário permite que pessoas não habilitadas dirijam o seu veículo, ele ",
    "right_answer": "b",
    "answers": [
      {"prompt": " não comete infração nem crime de trânsito ", "value": "a"},
      {"prompt": "  comete infração e crime de trânsito ", "value": "b"},
      {
        "prompt": "  comete crime, mas não comete infração de trânsito ",
        "value": "c"
      },
      {
        "prompt": "  comete apenas infração, passível de multa de trânsito ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 339
  },
  {
    "question":
        "Ao dirigir de dia, durante a ocorrência de chuva, um dos equipamentos do veículo indispensáveis para a visibilidade do condutor é o ",
    "right_answer": "c",
    "answers": [
      {"prompt": " sistema de freios ", "value": "a"},
      {"prompt": "  lanternas de posição ", "value": "b"},
      {"prompt": "  limpador de para-brisa ", "value": "c"},
      {"prompt": "  retrovisor interno ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 340
  },
  {
    "question":
        "Na maioria das regiões do Brasil, quando se deseja acionar o Corpo de Bombeiros, deve-se telefonar para o número ",
    "right_answer": "a",
    "answers": [
      {"prompt": " 193 ", "value": "a"},
      {"prompt": "  192 ", "value": "b"},
      {"prompt": "  190 ", "value": "c"},
      {"prompt": "  191 ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 341
  },
  {
    "question":
        "Um motorista trafega em uma via de pista única e de mão dupla, e necessita fazer uma ultrapassagem. Considerando que sua intenção seja realizar esse procedimento de forma segura, esse motorista deve evitar ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " acionar a seta para a esquerda, mudar de faixa e retornar à faixa normal de tráfego quando enxergar o veículo ultrapassado pelo retrovisor ",
        "value": "a"
      },
      {
        "prompt":
            "  ultrapassar outro veículo em trechos sinalizados com linha amarela contínua ",
        "value": "b"
      },
      {
        "prompt":
            "  ultrapassar se a faixa do sentido contrário ao fluxo estiver livre o suficiente ",
        "value": "c"
      },
      {
        "prompt":
            "  fazer a ultrapassagem, de preferência nos trechos em que existir a terceira faixa adicional para veículos lentos ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 342
  },
  {
    "question": "O que é distância de seguimento? ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " é a distância que o veículo percorre depois de acionado o freio ",
        "value": "a"
      },
      {
        "prompt":
            "  é a soma da distância de percepção e a parada total do veículo ",
        "value": "b"
      },
      {
        "prompt":
            "  é a distância de segurança entre o seu veículo e o que segue imediatamente à sua frente ",
        "value": "c"
      },
      {
        "prompt":
            "  é a soma da distância de reação mais a distância de frenagem ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 343
  },
  {
    "question":
        "Subidas e descidas da pista são classificadas como condições adversas de ",
    "right_answer": "x",
    "answers": [
      {"prompt": " trânsito ", "value": "a"},
      {"prompt": "  tempo ", "value": "b"},
      {"prompt": "  via ", "value": "c"},
      {"prompt": "  veículo ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 344
  },
  {
    "question":
        "Quando pessoas com deficiência dirigem sem seus aparelhos auxiliares, isso resulta em infração ",
    "right_answer": "b",
    "answers": [
      {"prompt": " com multa e apreensão da CNH ", "value": "a"},
      {"prompt": "  com multa e retenção do veículo ", "value": "b"},
      {"prompt": "  sem multa e com curso de reciclagem ", "value": "c"},
      {"prompt": "  com multa, apenas ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 345
  },
  {
    "question":
        "Quando ocorre a produção de fumaça nos terrenos à margem da rodovia, a visibilidade do condutor fica reduzida. Nessas condições, o condutor deve ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " parar o veículo na pista para evitar o risco de colisão com outros veículos ",
        "value": "a"
      },
      {"prompt": "  redobrar a atenção e reduzir a velocidade ", "value": "b"},
      {
        "prompt":
            "  aumentar a velocidade para sair rapidamente da zona de fumaça ",
        "value": "c"
      },
      {
        "prompt": "  redobrar a atenção e ligar a luz alta do farol ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 346
  },
  {
    "question":
        "O painel do veículo apresenta lâmpadas que acendem quando há algum sinal de anormalidade de um sistema importante do veículo. Uma dessas lâmpadas indica uma possível falha do (da) ",
    "right_answer": "x",
    "answers": [
      {"prompt": " sistema de freios ", "value": "a"},
      {"prompt": "  catalisador ", "value": "b"},
      {"prompt": "  iluminação interna do veículo ", "value": "c"},
      {"prompt": "  buzina ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 347
  },
  {
    "question":
        "O posicionamento que proporciona mais conforto e segurança para o condutor ao dirigir é aquele em que o banco encontra-se ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " ligeiramente inclinado para trás, braços e pernas um pouco flexionados e com as duas mãos ao volante ",
        "value": "a"
      },
      {
        "prompt":
            "  inclinado para trás, pernas e braços esticados, cabeça recostada e com uma das mãos ao volante ",
        "value": "b"
      },
      {
        "prompt":
            "  inclinado para trás, pernas esticadas, braços ligeiramente flexionados e com as duas mãos ao volante ",
        "value": "c"
      },
      {
        "prompt":
            "  ereto, mantendo as pernas e braços esticados o máximo possível e com as duas mãos ao volante ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 348
  },
  {
    "question":
        "Escapamento com fuligem, emissão excessiva de fumaça e cheiro forte de combustível são indicativos de ",
    "right_answer": "c",
    "answers": [
      {
        "prompt":
            " bom desempenho do catalisador dos sistemas de escape, significando a realização de manutenção ",
        "value": "a"
      },
      {
        "prompt":
            "  queima do combustível no interior do motor dentro dos padrões especificados pelo fabricante ",
        "value": "b"
      },
      {
        "prompt":
            "  produção de poluição veicular acima do normal, exigindo manutenção preventiva do veículo ",
        "value": "c"
      },
      {
        "prompt":
            "  funcionamento adequado do motor de acordo com as normas de trânsito e as orientações do fabricante ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 349
  },
  {
    "question":
        "No trânsito, não basta ser bom condutor. É necessário adotar uma atitude pessoal que melhore a convivência no trânsito, inclusive diante dos erros cometidos por outros usuários da via, evitando, assim, possíveis acidentes. Essa atitude pessoal deve ser de ",
    "right_answer": "x",
    "answers": [
      {"prompt": " agressividade ", "value": "a"},
      {"prompt": "  ousadia ", "value": "b"},
      {"prompt": "  tolerância ", "value": "c"},
      {"prompt": "  impaciência ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 350
  },
  {
    "question":
        "Quando ocorre um acidente de trânsito, o procedimento correto de atendimento à vítima é ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " movimentar a vítima presa dentro do carro, sem que haja risco de incêndio, para a segurança de todos ",
        "value": "a"
      },
      {
        "prompt":
            "  fazer perguntas simples à vítima de acidente de trânsito, identificando o seu nível de consciência ",
        "value": "b"
      },
      {
        "prompt":
            "  oferecer água à vítima com hemorragia externa no intuito de hidratá-la e deixá-la confortável ",
        "value": "c"
      },
      {
        "prompt":
            "  retirar imediatamente o capacete de um motociclista caído na pista e levantá-lo caso esteja consciente ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 351
  },
  {
    "question":
        "Transitar com o veículo danificando a via, suas instalações e equipamentos é (CTB Art. 231, inciso I) ",
    "right_answer": "c",
    "answers": [
      {
        "prompt": " infração média, penalidade multa e remoção do veículo ",
        "value": "a"
      },
      {"prompt": "  infração leve, penalidade multa ", "value": "b"},
      {"prompt": "  infração gravíssima, penalidade multa ", "value": "c"},
      {
        "prompt": "  infração grave, penalidade multa e apreensão do veículo ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 352
  },
  {
    "question":
        "Antes da chegada do socorro profissional em acidente com vítima(s), o condutor deve fazer uma avaliação inicial e ",
    "right_answer": "b",
    "answers": [
      {
        "prompt":
            " transportar imediatamente a(s) vítima(s) grave(s) para o hospital ",
        "value": "a"
      },
      {"prompt": "  controlar situações críticas ", "value": "b"},
      {"prompt": "  iniciar o atendimento à(s) vítima(s) ", "value": "c"},
      {"prompt": "  remover a(s) vítima(s) do local do acidente ", "value": "d"}
    ],
    "category": "Medicina de tráfego",
    "id": 353
  },
  {
    "question": "Por direção defensiva entende-se dirigir ",
    "right_answer": "b",
    "answers": [
      {
        "prompt":
            " cuidando exclusivamente de si, já que a conduta dos outros usuários da via não gera acidentes ",
        "value": "a"
      },
      {
        "prompt":
            "  com a atenção voltada para a segurança, evitando criar situações de risco ou gerar acidentes ",
        "value": "b"
      },
      {
        "prompt":
            "  com cautela para evitar acidentes nos momentos em que deixar de cumprir regras básicas de trânsito ",
        "value": "c"
      },
      {
        "prompt":
            "  de forma imprudente e com ousadia, a fim de defender-se dos demais condutores ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 354
  },
  {
    "question":
        "Ao presenciar um acidente ocorrido com um motociclista, caído na pista, a ação prioritária do condutor é ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " colocá-lo em seu veículo com ajuda de outros socorristas e transportá-lo para um hospital mais próximo ",
        "value": "a"
      },
      {
        "prompt":
            "  retirar imediatamente o capacete do motociclista, em qualquer circunstância, para verificar o seu estado de consciência ",
        "value": "b"
      },
      {
        "prompt":
            "  remover o motociclista com ajuda de outros socorristas, em qualquer circunstância, colocando-o na calçada ",
        "value": "c"
      },
      {
        "prompt":
            "  isolar o local para evitar novo acidente e evitar movimentar o motociclista do local onde está caído ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 355
  },
  {
    "question":
        "Ultrapassar, sem autorização, veículo em movimento que integre cortejo ou desfile terá como penalidade (CTB Art. 205) ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " frequência obrigatória em curso de reciclagem ",
        "value": "a"
      },
      {"prompt": "  apreensão do veículo ", "value": "b"},
      {"prompt": "  advertência ", "value": "c"},
      {"prompt": "  multa ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 356
  },
  {
    "question":
        "Ao dirigir, o condutor defensivo deve manter-se em posição confortável e segura. A recomendação de posição correta é ",
    "right_answer": "d",
    "answers": [
      {"prompt": " calcanhares ligeiramente suspensos ", "value": "a"},
      {"prompt": "  pernas esticadas ", "value": "b"},
      {
        "prompt": "  pé esquerdo levemente apoiado no pedal da embreagem ",
        "value": "c"
      },
      {
        "prompt":
            "  braços ligeiramente dobrados e costas apoiadas no encosto do banco ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 357
  },
  {
    "question":
        "Um condutor deseja ultrapassar um ônibus que está parado, efetuando embarque e desembarque. A conduta adequada do condutor, ante essa situação, deve ser ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " manter a velocidade e piscar os faróis para alertar os pedestres ",
        "value": "a"
      },
      {
        "prompt":
            "  acelerar a velocidade e buzinar para alertar os pedestres ",
        "value": "b"
      },
      {
        "prompt":
            "  reduzir a velocidade e buzinar com intensidade para alertar os pedestres ",
        "value": "c"
      },
      {
        "prompt":
            "  reduzir a velocidade e ficar atento a algum movimento dos pedestres ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 358
  },
  {
    "question":
        "Ao dirigir, um condutor que trabalha com seu veículo em uma grande cidade, troca de marchas centenas de vezes durante o dia. Essa condição adversa do condutor está relacionada com o(a) ",
    "right_answer": "d",
    "answers": [
      {"prompt": " deficiência da visão ", "value": "a"},
      {"prompt": "  redução da audição ", "value": "b"},
      {"prompt": "  sono ", "value": "c"},
      {"prompt": "  desgaste físico ", "value": "d"}
    ],
    "category": "Medicina de tráfego",
    "id": 359
  },
  {
    "question":
        "No veículo, os impactos na estrutura e em seus ocupantes são evitados pelo sistema de ",
    "right_answer": "x",
    "answers": [
      {"prompt": " transmissão ", "value": "a"},
      {"prompt": "  câmbio ", "value": "b"},
      {"prompt": "  suspensão ", "value": "c"},
      {"prompt": "  direção ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 360
  },
  {
    "question":
        "Para evitar os riscos causados pelo ofuscamento da visão devido à luz solar, é adequado ao condutor do veículo ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " utilizar o quebra-sol (pala de proteção interna) ou óculos de sol ",
        "value": "a"
      },
      {
        "prompt": "  parar no acostamento, até as condições de luz melhorarem ",
        "value": "b"
      },
      {"prompt": "  desviar a visão para os lados do veículo ", "value": "c"},
      {"prompt": "  desviar a visão para o centro da pista ", "value": "d"}
    ],
    "category": "Medicina de tráfego",
    "id": 361
  },
  {
    "question":
        "Um condutor, dirigindo de dia, não consegue alertar a tempo de evitar acidente com um pedestre distraído, que está iniciando a travessia em local proibido. Essa condição adversa de veículo está relacionada com ",
    "right_answer": "a",
    "answers": [
      {"prompt": " falha da buzina ", "value": "a"},
      {"prompt": "  pneus em mal estado ", "value": "b"},
      {"prompt": "  amortecedores danificados ", "value": "c"},
      {"prompt": "  catalisador inoperante ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 362
  },
  {
    "question":
        "O condutor que deixar de transferir a propriedade do veículo no prazo de 30 dias terá como punição multa e ",
    "right_answer": "d",
    "answers": [
      {"prompt": " suspensão da CNH ", "value": "a"},
      {"prompt": "  retenção do veículo ", "value": "b"},
      {"prompt": "  apreensão do veículo ", "value": "c"},
      {"prompt": "  remoção do veículo ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 363
  },
  {
    "question":
        "Para dirigir com segurança, evitando acidentes, o condutor deve demonstrar ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " habilidade ao dirigir; conhecimento das regras de trânsito; cooperação com os demais usuários da via ",
        "value": "a"
      },
      {
        "prompt":
            "  conhecimento de algumas regras de trânsito; agressivamente nas situações perigosas; habilidade ao dirigir ",
        "value": "b"
      },
      {
        "prompt":
            "  bom senso; respeito apenas às regras mais importantes para a segurança; habilidade ao dirigir ",
        "value": "c"
      },
      {
        "prompt":
            "  habilidade ao dirigir; conhecimento de algumas regras de trânsito; bom senso ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 364
  },
  {
    "question":
        "O Código de Trânsito Brasileiro (CTB) prevê que o condutor envolvido em acidente com vítima(s) que deixar de prestar ou providenciar socorro, podendo fazê-lo ",
    "right_answer": "b",
    "answers": [
      {
        "prompt":
            " comete infração gravíssima com penalidade de multa, mas poderá continuar com a sua habilitação e dirigir ",
        "value": "a"
      },
      {
        "prompt":
            "  comete crime sujeito à detenção, infração gravíssima, penalidade, multa (multiplicada por cinco) e suspensão do direito de dirigir ",
        "value": "b"
      },
      {
        "prompt":
            "  comete infração grave com penalidade de multa somente se for condutor maior de 21 anos ",
        "value": "c"
      },
      {
        "prompt":
            "  não comete crime, pois não foi o causador do acidente e, portanto, não pode ser responsabilizado criminalmente ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 365
  },
  {
    "question":
        "Quando o condutor, envolvido em acidente sem vítima, deixa de adotar providências para remover o veículo do local, quando é necessária tal medida para assegurar a segurança e a fluidez do trânsito, indica-se a seguinte penalidade (Art. 178 do CTB) ",
    "right_answer": "x",
    "answers": [
      {"prompt": " remoção do veículo ", "value": "a"},
      {"prompt": "  recolhimento da CNH ", "value": "b"},
      {"prompt": "  multa ", "value": "c"},
      {"prompt": "  apreensão do veículo ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 366
  },
  {
    "question":
        "Ao mudar de faixa, para a direita ou para a esquerda, o condutor deverá ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " observar se é possível realizar a mudança com segurança e sinalizar avisando aos outros de sua intenção ",
        "value": "a"
      },
      {
        "prompt":
            "  realizar a manobra com atenção apenas aos veículos à frente ",
        "value": "b"
      },
      {
        "prompt":
            "  realizar a manobra rapidamente sem se preocupar com os outros usuários da via ",
        "value": "c"
      },
      {
        "prompt":
            "  realizar a manobra e deixar que os demais veículos se ajustem à sua ação ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 367
  },
  {
    "question":
        "Quais providências o condutor deve tomar quando for entrar em uma rodovia com faixa de aceleração ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " aumentar gradativamente a velocidade na faixa de aceleração, até que possa ingressar com segurança na faixa principal da rodovia ",
        "value": "a"
      },
      {
        "prompt":
            "  ingressar imediatamente na faixa principal da rodovia, aumentando gradativamente a velocidade até atingir a velocidade máxima imposta pela via ",
        "value": "b"
      },
      {
        "prompt":
            "  ingressar na faixa de aceleração com a velocidade máxima imposta pela via, desde que não exista a placa \"Dê a preferência\" ",
        "value": "c"
      },
      {
        "prompt":
            "  ingressar imediatamente na faixa principal da rodovia, desde que o veículo esteja na velocidade máxima imposta pela via ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 368
  },
  {
    "question":
        "O condutor que utiliza o pisca-alerta de forma indevida age contra a segurança no trânsito. Isso acontece quando aciona ",
    "right_answer": "x",
    "answers": [
      {"prompt": " em situações de emergência ", "value": "a"},
      {"prompt": "  com o veículo em movimento ", "value": "b"},
      {
        "prompt": "  em atendimento à determinação da sinalização da via ",
        "value": "c"
      },
      {"prompt": "  em caso de imobilização do veículo ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 369
  },
  {
    "question":
        "Identifique a alternativa que corresponde às seguintes condições adversas de dirigibilidade para luz, condutor, veículo e tempo, nessa ordem ",
    "right_answer": "x",
    "answers": [
      {"prompt": " ofuscamento; fadiga; buracos na via; chuva ", "value": "a"},
      {
        "prompt":
            "  neblina; ofuscamento; freios desregulados; faróis desregulados ",
        "value": "b"
      },
      {
        "prompt": "  ofuscamento; fadiga; pneus lisos (carecas); chuva ",
        "value": "c"
      },
      {
        "prompt":
            "  faróis desregulados; fadiga; pneus lisos (carecas); neblina ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 370
  },
  {
    "question":
        "As pessoas que possuem habilitação e têm idade igual ou superior a 70 (setenta) anos deverÃ£o renovar o exame de aptidão fí­sica e mental (médico) ",
    "right_answer": "x",
    "answers": [
      {"prompt": " de 5 em 5 anos ", "value": "a"},
      {"prompt": "  de 2 em 2 anos ", "value": "b"},
      {"prompt": "  de 3 em 3 anos ", "value": "c"},
      {"prompt": "  de 4 em 4 anos ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 371
  },
  {
    "question":
        "Para que um condutor possa dirigir veículo destinado ao transporte de escolares é preciso, além de outras exigências, que tenha idade superior a ",
    "right_answer": "a",
    "answers": [
      {
        "prompt": " 21 anos e seja habilitado na categoria \"D\" ",
        "value": "a"
      },
      {
        "prompt": "  21 anos e seja habilitado na categoria \"C\" ",
        "value": "b"
      },
      {
        "prompt": "  18 anos e seja habilitado na categoria \"B\" ",
        "value": "c"
      },
      {
        "prompt": "  21 anos e seja habilitado na categoria \"E\" ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 372
  },
  {
    "question":
        "Quais os requisitos relativos ao cometimento de infração exigidos da pessoa que pretende habilitar-se na categoria \"D\"? ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " não ter cometido mais de uma infração gravíssima nos últimos 12 (doze) meses ",
        "value": "a"
      },
      {
        "prompt":
            "  não ter cometido nenhuma infração grave ou gravíssima nem ser reincidente em infrações médias durante os últimos 6 (seis) meses ",
        "value": "b"
      },
      {
        "prompt":
            "  não ter cometido nenhuma infração grave ou gravíssima durante os últimos 6 (seis) meses ",
        "value": "c"
      },
      {
        "prompt":
            "  não ter cometido nenhuma infração média ou gravíssima durante os últimos 12 (doze) meses ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 373
  },
  {
    "question":
        "Quando o motor falha ou engasga, perdendo o rendimento, estes são indícios de ",
    "right_answer": "x",
    "answers": [
      {"prompt": " bicos injetores entupidos ou sujos ", "value": "a"},
      {"prompt": "  cilindros entupidos ou sujos ", "value": "b"},
      {"prompt": "  falta de calibragem dos pneus ", "value": "c"},
      {"prompt": "  falta de óleo no motor ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 374
  },
  {
    "question":
        "Há situações em que o condutor percebe uma alteração da visibilidade geral, exigindo uma adaptação rápida da visão, o que gera momentaneamente uma situação de risco. Isso ocorre ao ",
    "right_answer": "b",
    "answers": [
      {"prompt": " dirigir em um dia claro ", "value": "a"},
      {"prompt": "  entrar e sair de túneis ", "value": "b"},
      {"prompt": "  circular em via urbana iluminada ", "value": "c"},
      {"prompt": "  trafegar a favor do sol ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 375
  },
  {
    "question": "A ultrapassagem nas pontes e viadutos é proibida ",
    "right_answer": "a",
    "answers": [
      {
        "prompt": " nas vias com duplo sentido de direção e pista única ",
        "value": "a"
      },
      {"prompt": "  em qualquer tipo de via ", "value": "b"},
      {"prompt": "  nas vias com sentido único ", "value": "c"},
      {
        "prompt": "  apenas quando houver sinalização de regulamentação ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 376
  },
  {
    "question":
        "O condutor que dirigir embriagado o veículo ou sob influência de qualquer substância entorpecente terá como penalidade (CTB Art. 165) ",
    "right_answer": "a",
    "answers": [
      {"prompt": " multa e suspensão do direito de dirigir ", "value": "a"},
      {"prompt": "  apreensão do veículo ", "value": "b"},
      {"prompt": "  multa, apenas ", "value": "c"},
      {"prompt": "  suspensão do direito de dirigir, apenas ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 377
  },
  {
    "question":
        "Chuva intensa, associada a irregularidades na pista, gera poças ou lâminas de água que reduzem a aderência do pneu ao pavimento, dificultando o controle do veículo. Essa situação é chamada de ",
    "right_answer": "c",
    "answers": [
      {"prompt": " deslizamento ", "value": "a"},
      {"prompt": "  força centrífuga ", "value": "b"},
      {"prompt": "  aquaplanagem ", "value": "c"},
      {"prompt": "  área de escape ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 378
  },
  {
    "question":
        "A pessoa que pretende candidatar-se à obtenção da Carteira Nacional de Habilitação (CNH) deve possuir a seguinte documentação ",
    "right_answer": "b",
    "answers": [
      {"prompt": " cadastro de pessoa física (CPF), apenas ", "value": "a"},
      {
        "prompt":
            "  documento de identidade e cadastro de pessoa física (CPF) ",
        "value": "b"
      },
      {
        "prompt": "  cadastro de pessoa física (CPF) e título de eleitor ",
        "value": "c"
      },
      {"prompt": "  título de eleitor, apenas ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 379
  },
  {
    "question":
        "Ao volante, qual a postura correta que um motorista deve adotar? ",
    "right_answer": "b",
    "answers": [
      {
        "prompt":
            " sentar com o banco inclinado para trás, com apenas uma das mãos ao volante ",
        "value": "a"
      },
      {
        "prompt": "  sentar confortavelmente e com as duas mãos ao volante ",
        "value": "b"
      },
      {
        "prompt":
            "  sentar com o banco inclinado para trás, com as duas mãos ao volante ",
        "value": "c"
      },
      {
        "prompt":
            "  sentar confortavelmente e com o braço para fora do veículo ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 380
  },
  {
    "question":
        "Identifique a alternativa que corresponde às condições adversas de dirigibilidade para trânsito,via,veículo e tempo, nessa ordem ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " congestionamento; pista escorregadia; freios desregulados; neblina ",
        "value": "a"
      },
      {
        "prompt":
            "  chuva; pista escorregadia; freios desregulados; congestionamento ",
        "value": "b"
      },
      {
        "prompt": "  neblina; chuva; freios desregulados; congestionamento ",
        "value": "c"
      },
      {
        "prompt":
            "  pista escorregadia; congestionamento; freios desregulados; neblina ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 381
  },
  {
    "question":
        "É considerado crime de trânsito, pelo Código de Trânsito Brasileiro ",
    "right_answer": "c",
    "answers": [
      {
        "prompt": " transitar de marcha à ré, em manobra para estacionamento ",
        "value": "a"
      },
      {
        "prompt": "  dirigir sem fazer uso do cinto de segurança ",
        "value": "b"
      },
      {
        "prompt":
            "  conduzir veículo automotor, na via pública, sob a influência de álcool ou substância de efeitos análogos ",
        "value": "c"
      },
      {"prompt": "  passar pelo sinal vermelho ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 382
  },
  {
    "question": "As vias abertas à circulação são classificadas em ",
    "right_answer": "c",
    "answers": [
      {"prompt": " vias locais e expressas ", "value": "a"},
      {"prompt": "  vias urbanas e estradas ", "value": "b"},
      {"prompt": "  vias urbanas e vias rurais ", "value": "c"},
      {"prompt": "  ruas e vias rurais ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 383
  },
  {
    "question":
        "Os condutores se sujeitam a penalidades e medidas administrativas no caso de inobservância de qualquer norma ou preceito estabelecido pelo ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " Código de Trânsito Brasileiro, por leis federais complementares e pelas Resoluções do Contran ",
        "value": "a"
      },
      {
        "prompt":
            "  Código de Trânsito Brasileiro e por leis estaduais complementares, desde que regulamentadas pelo Contran ",
        "value": "b"
      },
      {
        "prompt":
            "  Código de Trânsito Brasileiro, desde que regulamentado pelo Contran e fiscalizado pela Guarda Municipal ",
        "value": "c"
      },
      {
        "prompt":
            "  Código de Trânsito Brasileiro, por leis estaduais complementares e pelas Resoluções do Contran ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 384
  },
  {
    "question": "O condutor ajuda na preservação do meio ambiente ao manter ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " sacolinhas de lixo no veículo e fazer, posteriormente, o descarte em locais apropriados ",
        "value": "a"
      },
      {
        "prompt":
            "  o catalisador em mau estado de funcionamento, embora dentro do prazo de validade ",
        "value": "b"
      },
      {
        "prompt":
            "  o motor regulado fora das especificações do fabricante visando a aumentar sua potência ",
        "value": "c"
      },
      {
        "prompt":
            "  o silencioso em mau estado de funcionamento, produzindo ruído em nível elevado ",
        "value": "d"
      }
    ],
    "category": "Meio ambiente",
    "id": 385
  },
  {
    "question":
        "Qual fator pode contribuir para a ocorrência de acidente no trânsito? ",
    "right_answer": "b",
    "answers": [
      {
        "prompt":
            " pneus com profundidade de sulcos dentro dos padrões mínimos exigidos pela especificação ",
        "value": "a"
      },
      {
        "prompt":
            "  pneus descalibrados, e freios e amortecedores em mau estado de funcionamento ",
        "value": "b"
      },
      {
        "prompt":
            "  suspensão em bom estado de funcionamento e pneus novos ou em boa conservação ",
        "value": "c"
      },
      {
        "prompt":
            "  nível de fluido do freio dentro dos níveis mínimos exigidos pela especificação técnica do veículo ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 386
  },
  {
    "question":
        "São formas importantes de se manter atento na direção do veículo, que é um dos fatores fundamentais para a segurança no trânsito ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " observar o movimento geral do trânsito, olhando periodicamente para os espelhos retrovisores ",
        "value": "a"
      },
      {
        "prompt":
            "  dirigir observando o letreiro de lojas e estabelecimentos comerciais ou publicidade em outdoor ",
        "value": "b"
      },
      {
        "prompt":
            "  usar o telefone celular utilizando o sistema de viva-voz, mantendo as mãos no volante ",
        "value": "c"
      },
      {
        "prompt":
            "  fazer pequenas refeições a bordo do veículo em movimento, utilizando para isso apenas uma das mãos ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 387
  },
  {
    "question":
        "Ao deixar de promover a baixa do registro de veículo irrecuperável ou definitivamente desmontado, o responsável comete uma infração ",
    "right_answer": "x",
    "answers": [
      {"prompt": " gravíssima ", "value": "a"},
      {"prompt": "  grave ", "value": "b"},
      {"prompt": "  média ", "value": "c"},
      {"prompt": "  leve ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 388
  },
  {
    "question":
        "Com relação aos cuidados iniciais no local do acidente com vítima(s), o condutor deve ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " isolar e sinalizar o local e acionar o serviço especializado ",
        "value": "a"
      },
      {
        "prompt": "  remover a(s) vítima(s) para o hospital mais próximo ",
        "value": "b"
      },
      {
        "prompt":
            "  retirar imediatamente a(s) vítima(s) de dentro do veículo ",
        "value": "c"
      },
      {"prompt": "  bloquear a via nos dois sentidos de tráfego ", "value": "d"}
    ],
    "category": "Medicina de tráfego",
    "id": 389
  },
  {
    "question": "Atos de imperícia de condutores são ocasionados por ",
    "right_answer": "b",
    "answers": [
      {"prompt": " desobediência à sinalização ", "value": "a"},
      {"prompt": "  falta de habilidade ", "value": "b"},
      {"prompt": "  dirigir com sono ", "value": "c"},
      {"prompt": "  dirigir sob efeito de álcool ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 390
  },
  {
    "question":
        "A falha humana, que muito contribui para o acidente de trânsito, é mais frequentemente ligada ao condutor ",
    "right_answer": "c",
    "answers": [
      {"prompt": " que respeita normas de trânsito ", "value": "a"},
      {"prompt": "  bem habilitado ", "value": "b"},
      {"prompt": "  imprudente ", "value": "c"},
      {"prompt": "  que dirige com atenção ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 391
  },
  {
    "question":
        "Ao observar indicação no painel do veículo, sinalizando motor superaquecido, o condutor deve ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " parar o veículo em local seguro e abrir o reservatório imediatamente para completar a água, se necessário ",
        "value": "a"
      },
      {
        "prompt":
            "  parar o veículo em local seguro, aguardar o resfriamento do motor e abrir o reservatório para completar a água, se necessário ",
        "value": "b"
      },
      {
        "prompt":
            "  dirigir o veículo até o destino e abrir o reservatório imediatamente para completar a água, se necessário ",
        "value": "c"
      },
      {
        "prompt":
            "  dirigir o veículo até o destino, aguardar o resfriamento do motor e abrir o reservatório para completar a água, se necessário ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 392
  },
  {
    "question":
        "Para garantir melhor estabilidade do veículo, o condutor deve manter a pressão dos pneus ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " acima da especificação do fabricante do veículo ",
        "value": "a"
      },
      {
        "prompt": "  abaixo da especificação do fabricante do veículo ",
        "value": "b"
      },
      {
        "prompt": "  de acordo com a especificação do fabricante do veículo ",
        "value": "c"
      },
      {
        "prompt":
            "  acima da especificação do fabricante no eixo traseiro e abaixo no eixo dianteiro ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 393
  },
  {
    "question":
        "Os pneus têm três funções importantes: impulsionar, frear e manter a dirigibilidade do veículo. Para a segurança no trânsito o condutor deve sempre ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " conferir a calibragem dos pneus, de acordo com as recomendações do fabricante ",
        "value": "a"
      },
      {
        "prompt": "  manter as calotas, protegendo as rodas do pneu ",
        "value": "b"
      },
      {"prompt": "  manter as rodas dos pneus cromadas", "value": "c"},
      {
        "prompt":
            "  utilizar pneus com dimensões superiores às recomendadas pelo fabricante",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 394
  },
  {
    "question":
        "A centelha elétrica (faísca) que inflama a mistura de ar e combustível, permitindo que ocorra a explosão, é produzida ",
    "right_answer": "x",
    "answers": [
      {"prompt": " pela bobina ", "value": "a"},
      {"prompt": "  pela vela de ignição ", "value": "b"},
      {"prompt": "  pelo motor de partida ou motor de arranque ", "value": "c"},
      {"prompt": "  pelo alternador ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 395
  },
  {
    "question":
        "Em via com velocidade máxima de 60 km/h, qual a distância mínima para iniciar a sinalização de acidente ocorrido durante o dia, com pista seca? ",
    "right_answer": "b",
    "answers": [
      {
        "prompt": " a 40 metros do veículo ou, aproximadamente, 40 passos ",
        "value": "a"
      },
      {
        "prompt": "  a 60 metros do veículo ou, aproximadamente, 60 passos ",
        "value": "b"
      },
      {
        "prompt": "  a 100 metros do veículo ou, aproximadamente, 100 passos ",
        "value": "c"
      },
      {
        "prompt": "  a 80 metros do veículo ou, aproximadamente, 80 passos ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 396
  },
  {
    "question":
        "O condutor defensivo, por inspeção visual simples, pode verificar vários itens de segurança no veículo. Outras verificações devem ser feitas somente por profissional habilitado, como é o caso ",
    "right_answer": "a",
    "answers": [
      {"prompt": " da regulagem dos faróis ", "value": "a"},
      {"prompt": "  do nível do reservatório de água ", "value": "b"},
      {"prompt": "  do nível de óleo do motor ", "value": "c"},
      {"prompt": "  do nível do óleo da direção hidráulica ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 397
  },
  {
    "question": "A validade da Carteira Nacional de Habilitação é de ",
    "right_answer": "c",
    "answers": [
      {"prompt": " 5 anos após o condutor completar 40 anos ", "value": "a"},
      {
        "prompt":
            "  3 anos para idade até 65 anos e 5 anos para idade superior a 65 anos ",
        "value": "b"
      },
      {"prompt": "  10 anos para idade inferior a 50 anos ", "value": "c"},
      {"prompt": "  8 anos para qualquer idade ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 398
  },
  {
    "question":
        "Entre as afirmativas a seguir, identifique aquela que pode ser considerada como correta ",
    "right_answer": "b",
    "answers": [
      {
        "prompt":
            " o nível de fluido dos freios, abaixo dos limites mínimos recomendados pela especificação técnica do veículo, não constitui fator de risco de acidente ",
        "value": "a"
      },
      {
        "prompt":
            "  os sulcos dos pneus, com profundidade mínima estabelecida pela legislação, facilitam o escoamento da água empoçada na pista e, com isso, melhoram a aderência dos pneus ",
        "value": "b"
      },
      {
        "prompt":
            "  a utilização de película protetora nos vidros do veículo amplia o ângulo de visão do condutor e reduz os \"pontos cegos\" ao dirigir ",
        "value": "c"
      },
      {
        "prompt":
            "  as lâmpadas queimadas das lanternas de posição traseira não são importantes para a segurança no trânsito ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 399
  },
  {
    "question": "Congestionamento é considerado condição adversa de ",
    "right_answer": "a",
    "answers": [
      {"prompt": " trânsito ", "value": "a"},
      {"prompt": "  motorista ", "value": "b"},
      {"prompt": "  rodovias ", "value": "c"},
      {"prompt": "  vias ", "value": "d"}
    ],
    "category": "Meio ambiente",
    "id": 400
  },
  {
    "question":
        "Ao acionar a equipe de socorro para informar acidente de trânsito em que a vítima manifesta dor no pescoço, posicionamento estranho da cabeça e adormecimento dos braços, pernas ou outras partes do corpo, o condutor deve informar que a vítima apresenta sinais ou sintomas de ",
    "right_answer": "x",
    "answers": [
      {"prompt": " fratura de braço ", "value": "a"},
      {"prompt": "  estresse ", "value": "b"},
      {"prompt": "  fratura de coluna ", "value": "c"},
      {"prompt": "  fratura do fêmur ", "value": "d"}
    ],
    "category": "Medicina de tráfego",
    "id": 401
  },
  {
    "question":
        "Os fatores que interferem de forma negativa no trânsito e na relação homem/máquina/via são ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " o individualismo, o egoísmo e a supervalorização do veículo ",
        "value": "a"
      },
      {
        "prompt":
            "  o individualismo, a cortesia e a supervalorização do veículo ",
        "value": "b"
      },
      {
        "prompt":
            "  o coletivismo, a cortesia e a supervalorização do veículo ",
        "value": "c"
      },
      {
        "prompt": "  o coletivismo, o egoísmo e a supervalorização do veículo ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 402
  },
  {
    "question":
        "Deparando-se com uma pessoa com hemorragia, qual a atitude a ser tomada pelo condutor? ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " estancar a hemorragia em algum membro, fazendo um torniquete ",
        "value": "a"
      },
      {"prompt": "  comprimir o local com as próprias mãos ", "value": "b"},
      {
        "prompt":
            "  comprimir o local com um pano ou gaze, não movimentando a pessoa ",
        "value": "c"
      },
      {
        "prompt":
            "  movimentar a pessoa de forma a reduzir a hemorragia do local ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 403
  },
  {
    "question":
        "Uma vítima de acidente de trânsito apresenta fratura em um dos membros. Nesse caso, é mais aconselhável o condutor ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " isolar o local do acidente e acionar a equipe de socorro ",
        "value": "a"
      },
      {
        "prompt": "  lavar com água corrente, antes de enfaixar o local ",
        "value": "b"
      },
      {
        "prompt": "  procurar deslocar o osso do lugar e enfaixar o local ",
        "value": "c"
      },
      {
        "prompt": "  colocar o osso no lugar e amarrar com talas improvisadas ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 404
  },
  {
    "question":
        "Qual o prazo máximo para expedição da notificação de autuação por infração ao proprietário do veículo? ",
    "right_answer": "x",
    "answers": [
      {"prompt": " quinze dias ", "value": "a"},
      {"prompt": "  trinta dias ", "value": "b"},
      {"prompt": "  noventa dias ", "value": "c"},
      {"prompt": "  sessenta dias ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 405
  },
  {
    "question":
        "O condutor habilitado na categoria \"B\" pode conduzir que tipo de veículo? ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " veículos motorizados, para transporte de carga, que excedam a 3.500 kg de peso bruto total (PBT) ",
        "value": "a"
      },
      {
        "prompt":
            "  veículos motorizados, para transporte de passageiros, que tenham mais de 8 (oito) lugares, sem contar o condutor ",
        "value": "b"
      },
      {
        "prompt":
            "  veículos motorizados, que não excedam a 8 (oito) lugares, sem contar o condutor, e que não ultrapassem 3.500 kg de peso bruto total (PBT) ",
        "value": "c"
      },
      {
        "prompt":
            "  veículos motorizados, de duas ou três rodas, com ou sem carro lateral ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 406
  },
  {
    "question":
        "Ao dirigir com chuva, para maior segurança, o condutor deve manter ",
    "right_answer": "x",
    "answers": [
      {"prompt": " faróis baixos acesos ", "value": "a"},
      {"prompt": "  faróis altos acesos ", "value": "b"},
      {"prompt": "  faróis de neblina e de milha acesos ", "value": "c"},
      {"prompt": "  faróis desligados ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 407
  },
  {
    "question":
        "Em um veículo, a mola, os amortecedores e o braço da suspensão compõem o ",
    "right_answer": "a",
    "answers": [
      {"prompt": " sistema de suspensão ", "value": "a"},
      {"prompt": "  sistema de rodagem ", "value": "b"},
      {"prompt": "  sistema de transmissão ", "value": "c"},
      {"prompt": "  sistema de freios ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 408
  },
  {
    "question": "A proteção do meio ambiente ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " é de responsabilidade exclusiva das organizações internacionais ",
        "value": "a"
      },
      {
        "prompt":
            "  não deve ser preocupação de condutores de veículos automotores ",
        "value": "b"
      },
      {
        "prompt": "  é o objetivo fundamental das leis e normas ambientais ",
        "value": "c"
      },
      {
        "prompt":
            "  não está relacionada com as normas de circulação no trânsito ",
        "value": "d"
      }
    ],
    "category": "Meio ambiente",
    "id": 409
  },
  {
    "question":
        "O condutor, ao abrir mão de sua preferência em razão da segurança do motociclista, pratica ",
    "right_answer": "a",
    "answers": [
      {"prompt": " direção defensiva ", "value": "a"},
      {"prompt": "  direção ativa ", "value": "b"},
      {"prompt": "  direção agressiva ", "value": "c"},
      {"prompt": "  direção passiva ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 410
  },
  {
    "question": "O sistema de transmissão dos veículos é composto por ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " semieixo, diferencial, embreagem e caixa de câmbio ",
        "value": "a"
      },
      {"prompt": "  virabrequim, pistões e válvulas ", "value": "b"},
      {
        "prompt": "  semieixo, diferencial, embreagem e motor de arranque ",
        "value": "c"
      },
      {"prompt": "  caixa de câmbio, válvulas e pistões ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 411
  },
  {
    "question":
        "O condutor atento às condições do veículo, com ele em movimento, tem condições de identificar o(a) ",
    "right_answer": "c",
    "answers": [
      {"prompt": " nível de água do reservatório ", "value": "a"},
      {"prompt": "  pressão exata dos pneus dianteiros ", "value": "b"},
      {"prompt": "  funcionamento do velocímetro ", "value": "c"},
      {"prompt": "  nível do óleo do motor ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 412
  },
  {
    "question":
        "Imperícia, medo e estresse são fatores geradores de acidentes que estão associados à condição adversa do ",
    "right_answer": "x",
    "answers": [
      {"prompt": " trânsito ", "value": "a"},
      {"prompt": "  condutor ", "value": "b"},
      {"prompt": "  veículo ", "value": "c"},
      {"prompt": "  clima ", "value": "d"}
    ],
    "category": "Meio ambiente",
    "id": 413
  },
  {
    "question":
        "Uma das afirmações abaixo reflete corretamente a ideia contida no conceito de direção defensiva, que é a forma ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " de dirigir que permite ao condutor reconhecer antecipadamente as situações de perigo e agir com prontidão suficiente para evitar acidentes ",
        "value": "a"
      },
      {
        "prompt":
            "  de dirigir de modo agressivo e impulsivo para preservar sua própria vida e a dos ocupantes do seu veículo ",
        "value": "b"
      },
      {
        "prompt":
            "  do condutor se defender das ações incorretas dos outros usuários da via, preservando apenas sua própria vida e o seu patrimônio ",
        "value": "c"
      },
      {
        "prompt":
            "  de dirigir e de se comportar no trânsito com ousadia e impetuosidade para preservar sua própria vida e a dos ocupantes do seu veículo, bem como o seu patrimônio ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 414
  },
  {
    "question":
        "Quando ocorre um acidente com vítima(s), a falta de sinalização pode ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " facilitar a segurança e o fluxo de veículos no local da ocorrência ",
        "value": "a"
      },
      {
        "prompt":
            "  impedir a chegada do carro da equipe de socorro e a ação de transeuntes ",
        "value": "b"
      },
      {
        "prompt":
            "  acarretar um segundo acidente, como o atropelamento de um socorrista ",
        "value": "c"
      },
      {
        "prompt":
            "  colaborar para o fluxo livre de veículos na via reduzindo o número de curiosos ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 415
  },
  {
    "question":
        "A velocidade máxima permitida em vias locais nas quais não exista sinalização regulamentadora é de ",
    "right_answer": "b",
    "answers": [
      {"prompt": " 20 km/h ", "value": "a"},
      {"prompt": "  30 km/h ", "value": "b"},
      {"prompt": "  50 km/h ", "value": "c"},
      {"prompt": "  40 km/h ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 416
  },
  {
    "question":
        "O condutor que deixar de efetuar o registro do veículo, no prazo de 30 dias, no DETRAN, terá como penalidade (CTB Art. 233) ",
    "right_answer": "b",
    "answers": [
      {"prompt": " suspensão do direito de dirigir ", "value": "a"},
      {"prompt": "  multa ", "value": "b"},
      {"prompt": "  apreensão do veículo ", "value": "c"},
      {"prompt": "  advertência ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 417
  },
  {
    "question":
        "A sinalização horizontal de cor branca é utilizada na via pública, entre outras finalidades, para ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " demarcar os locais de pontos de parada de ônibus ",
        "value": "a"
      },
      {
        "prompt":
            "  organizar o fluxo de veículos no mesmo sentido de tráfego ",
        "value": "b"
      },
      {
        "prompt": "  demarcar áreas de conflito entre veículos e motocicletas ",
        "value": "c"
      },
      {
        "prompt":
            "  organizar o fluxo de veículos em sentidos opostos de tráfego ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 418
  },
  {
    "question":
        "Em conformidade com o Anexo I do Código de Trânsito Brasileiro, caminhonete é ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " veículo misto destinado ao transporte de passageiros e de carga no mesmo compartimento ",
        "value": "a"
      },
      {
        "prompt":
            "  veículo destinado ao transporte de carga com peso bruto total até três mil e quinhentos quilogramas ",
        "value": "b"
      },
      {
        "prompt":
            "  veículo automotor destinado ao transporte coletivo de pessoas ",
        "value": "c"
      },
      {
        "prompt":
            "  veículo automotor destinado a realizar trabalhos agrícolas, de construção e de pavimentação ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 419
  },
  {
    "question":
        "Em caso de acidente de trânsito com vítima, o condutor deverá ",
    "right_answer": "b",
    "answers": [
      {
        "prompt": " não perder tempo e levar a vítima para o hospital ",
        "value": "a"
      },
      {
        "prompt":
            "  sinalizar a área do acidente, utilizando o triângulo, o pisca-alerta ou quaisquer outros materiais, como galhos de árvores, que os condutores de outros veículos possam ver para evitar outros incidentes ",
        "value": "b"
      },
      {
        "prompt":
            "  sinalizar a área do acidente, utilizando o farol alto do veículo, apenas ",
        "value": "c"
      },
      {"prompt": "  remover, imediatamente, as vítimas do local ", "value": "d"}
    ],
    "category": "Medicina de tráfego",
    "id": 420
  },
  {
    "question":
        "Quais são os tipos de traçado da sinalização horizontal fixados no pavimento da via pública? ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " contínuo, símbolos e legendas, primas e balizadores ",
        "value": "a"
      },
      {
        "prompt": "  contínuo, tracejado ou seccionado, símbolos e legendas ",
        "value": "b"
      },
      {"prompt": "  balizadores, símbolo e legendas e tachões ", "value": "c"},
      {
        "prompt":
            "  contínuo, tracejado ou seccionado, balizadores e símbolos e legendas ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 421
  },
  {
    "question": "As condições adversas que podem causar acidentes são ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " luz, tempo, via, trânsito, veículo e condutor ",
        "value": "a"
      },
      {
        "prompt":
            "  luz, via, tempo, trânsito, veículo e conhecimentos de mecânica ",
        "value": "b"
      },
      {
        "prompt":
            "  trânsito, via, luz, modelo do veículo, trânsito e condução preventiva ",
        "value": "c"
      },
      {
        "prompt":
            "  tempo, via, trânsito, veículo e conhecimento da legislação de trânsito ",
        "value": "d"
      }
    ],
    "category": "Meio ambiente",
    "id": 422
  },
  {
    "question":
        "Para se comportar de forma segura no trânsito, o condutor deve ",
    "right_answer": "b",
    "answers": [
      {
        "prompt":
            " ter conhecimento das leis, mas não necessita colocá-las em prática ",
        "value": "a"
      },
      {"prompt": "  conhecer seus direitos e deveres ", "value": "b"},
      {"prompt": "  ter somente conhecimento de seu veículo ", "value": "c"},
      {"prompt": "  conhecer somente seus direitos ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 423
  },
  {
    "question":
        "Ao se deparar com um acidente com vítima, uma pessoa pode adotar medidas para evitar novos acidentes. Para isso, ela deve ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " sinalizar o local para evitar novos acidentes e atropelamentos ",
        "value": "a"
      },
      {
        "prompt":
            "  ligar a chave de ignição dos veículos acidentados para retirá-los da via ",
        "value": "b"
      },
      {
        "prompt":
            "  remover os veículos do local do acidente independentemente das condições dos veículos ",
        "value": "c"
      },
      {
        "prompt":
            "  colocar o triângulo a 2 metros de distância do local do acidente ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 424
  },
  {
    "question":
        "O sistema cuja manutenção é essencial para se reduzir a velocidade e imobilizar o veículo com segurança é o de ",
    "right_answer": "x",
    "answers": [
      {"prompt": " iluminação ", "value": "a"},
      {"prompt": "  freios ", "value": "b"},
      {"prompt": "  direção ", "value": "c"},
      {"prompt": "  injeção eletrônica ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 425
  },
  {
    "question": "Os veículos automotores mais poluentes são movidos a ",
    "right_answer": "c",
    "answers": [
      {"prompt": " etanol ", "value": "a"},
      {"prompt": "  biodiesel ", "value": "b"},
      {"prompt": "  gasolina ", "value": "c"},
      {"prompt": "  eletricidade ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 426
  },
  {
    "question":
        "Um comportamento social que favorece a harmonia no trânsito pode ser identificado quando o condutor ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " retém o veículo antes do cruzamento mesmo com o sinal verde favorável, evitando parar no meio da travessia ",
        "value": "a"
      },
      {
        "prompt":
            "  ocupa uma vaga de estacionamento destinada a pessoas com deficiência ou a pessoas idosas ",
        "value": "b"
      },
      {
        "prompt":
            "  para o veículo em local proibido, defronte de um estabelecimento comercial, para facilitar o trabalho do lojista ",
        "value": "c"
      },
      {
        "prompt":
            "  anima a festa com os amigos na rua, mantendo alto o volume de músicas do sistema de som do veículo durante a madrugada ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 427
  },
  {
    "question":
        "Para evitar colisão com o veículo que segue à frente, o condutor deve ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " manter distância de parada do veículo à frente e estar atento às condições gerais do trânsito no momento ",
        "value": "a"
      },
      {
        "prompt":
            "  manter distância de seguimento do veículo à frente e estar atento às condições gerais do trânsito ",
        "value": "b"
      },
      {
        "prompt":
            "  acionar o farol alto quando se aproximar do veículo à frente para garantir visibilidade suficiente ",
        "value": "c"
      },
      {
        "prompt":
            "  manter-se próximo ao veículo à frente, observar o comportamento do condutor e fazer uso do freio adequadamente ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 428
  },
  {
    "question":
        "Dirigir e utilizar o celular, concomitantemente, é proibido pela legislação de trânsito. Considerando essa premissa, o condutor deve ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " falar ao celular, desde que conectado por fio ao ouvido, já que essa forma não reduz a atenção do condutor e não apresenta risco de acidente ",
        "value": "a"
      },
      {
        "prompt":
            "  desligar o celular ou deixá-lo no modo de atendimento pela caixa postal, já que seu uso na direção do veículo traz risco de acidente ",
        "value": "b"
      },
      {
        "prompt":
            "  atender ao celular, desde que pelo \"viva-voz\", já que essa forma não retira a atenção do condutor e não apresenta risco de acidente ",
        "value": "c"
      },
      {
        "prompt":
            "  utilizar o celular, desde que em vias urbanas locais, já que essa forma não apresenta risco de acidente ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 429
  },
  {
    "question": "Em acidentes de trânsito com vítima(s), a ação correta é ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " bloquear a via utilizando os demais veículos para evitar novos acidentes e transportar a(s) vítima(s) ao hospital imediatamente ",
        "value": "a"
      },
      {
        "prompt":
            "  remover a(s) vítima(s) grave(s) e o(s) veículo(s) do local para regularizar o tráfego da via, permitindo a fluidez do trânsito ",
        "value": "b"
      },
      {
        "prompt":
            "  informar a quantidade de vítimas e o estado aparente de cada uma delas ao acionar o serviço de socorro ",
        "value": "c"
      },
      {
        "prompt":
            "  permitir que curiosos se aglomerem e auxiliem no socorro à(s) vítima(s) enquanto o socorro profissional é acionado ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 430
  },
  {
    "question":
        "Qual alternativa abaixo contém atitudes do condutor que favorecem a segurança no trânsito? ",
    "right_answer": "x",
    "answers": [
      {"prompt": " cooperação, obediência às leis e tolerância ", "value": "a"},
      {"prompt": "  egoísmo, obediência às leis e descortesia ", "value": "b"},
      {"prompt": "  intolerância, descortesia e agressividade ", "value": "c"},
      {"prompt": "  descortesia, egoísmo e obediência às leis ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 431
  },
  {
    "question":
        "A sinalização da via, como faixas seccionadas ou contínuas, faixas de pedestre e sinais ou palavras escritas no solo, são marcas que caracterizam a sinalização ",
    "right_answer": "x",
    "answers": [
      {"prompt": " horizontal ", "value": "a"},
      {"prompt": "  auxiliar ", "value": "b"},
      {"prompt": "  vertical ", "value": "c"},
      {"prompt": "  semafórica ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 432
  },
  {
    "question":
        "Utilizar placa de identificação em desacordo com as especificações e os modelos estabelecidos pelo Contran é infração de natureza: ",
    "right_answer": "c",
    "answers": [
      {"prompt": " leve, com três pontos na carteira ", "value": "a"},
      {"prompt": "  gravíssima, com cinco pontos na carteira ", "value": "b"},
      {"prompt": "  média, com quatro pontos na carteira ", "value": "c"},
      {"prompt": "  grave, com sete pontos na carteira ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 433
  },
  {
    "question":
        "Manter os sistemas elétricos e eletrônicos do veículo ativos, quando o motor está desligado, é função do(a) ",
    "right_answer": "x",
    "answers": [
      {"prompt": " bobina ", "value": "a"},
      {"prompt": "  sistema de injeção eletrônica ", "value": "b"},
      {"prompt": "  bateria ", "value": "c"},
      {"prompt": "  correia de transmissão ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 434
  },
  {
    "question":
        "Em situações de neblina muito intensa, com baixa visibilidade, o condutor deve ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " procurar um local seguro fora da pista para parar o veículo e aguardar a melhoria da visibilidade ",
        "value": "a"
      },
      {
        "prompt":
            "  parar no acostamento, ligando as luzes de posição do veículo, e esperar fora do veículo ",
        "value": "b"
      },
      {
        "prompt":
            "  prosseguir a viagem com velocidade reduzida, acionando os faróis altos e buzinando ",
        "value": "c"
      },
      {
        "prompt":
            "  prosseguir a viagem com velocidade reduzida, mantendo acionado o pisca-alerta ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 435
  },
  {
    "question":
        "Para o controle da emissão dos gases poluentes emitidos pelos veículos automotores é necessário ",
    "right_answer": "c",
    "answers": [
      {
        "prompt":
            " manutenção preventiva da injeção eletrônica e das mangueiras de combustíveis ",
        "value": "a"
      },
      {
        "prompt": "  manutenção preventiva do alternador e bateria ",
        "value": "b"
      },
      {
        "prompt":
            "  manutenção preventiva e regulagem periódica do sistema de combustão ",
        "value": "c"
      },
      {
        "prompt": "  manutenção preventiva e troca do aditivo do radiador ",
        "value": "d"
      }
    ],
    "category": "Meio ambiente",
    "id": 436
  },
  {
    "question":
        "Uma das condições adversas ao dirigir, que pode contribuir para gerar uma situação de risco no trânsito, é a irritação do condutor ao dirigir ",
    "right_answer": "c",
    "answers": [
      {
        "prompt": " veículos com motor de baixa cilindrada e pouca potência ",
        "value": "a"
      },
      {
        "prompt": "  obrigado à cumprir as normas e regras de trânsito ",
        "value": "b"
      },
      {
        "prompt": "  no trânsito intenso e agressivo das grandes cidades ",
        "value": "c"
      },
      {
        "prompt": "  em rodovias de pista dupla com canteiro central ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 437
  },
  {
    "question":
        "As motocicletas em movimento são difíceis de ser percebidas no trânsito pelos motoristas; portanto, um comportamento considerado inadequado por parte do condutor do veículo é ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " mudar bruscamente de faixa sem utilização da seta; afinal, a preferência é sempre dos carros ",
        "value": "a"
      },
      {
        "prompt":
            "  prestar atenção ao ruído do motor ou à luz do farol das motos antes de mudar de faixa ou de direção na via ",
        "value": "b"
      },
      {
        "prompt":
            "  observar constantemente a presença de motos, utilizando os espelhos retrovisores interno e externos ",
        "value": "c"
      },
      {
        "prompt":
            "  sinalizar com antecedência sua intenção de mudar de faixa, além de olhar nos espelhos retrovisores ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 438
  },
  {
    "question":
        "Os veículos movidos à gasolina são uma das maiores fontes de emissão de poluentes do ar. Nesses veículos, para garantir menor emissão de poluentes, deve-se ",
    "right_answer": "x",
    "answers": [
      {"prompt": " retirar o catalisador ", "value": "a"},
      {"prompt": "  retirar o silenciador ", "value": "b"},
      {"prompt": "  manter o motor sempre regulado ", "value": "c"},
      {"prompt": "  manter o radiador limpo ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 439
  },
  {
    "question": "A circulação da água entre o motor e o radiador é forçada ",
    "right_answer": "x",
    "answers": [
      {"prompt": " pela bomba de óleo ", "value": "a"},
      {"prompt": "  pela bomba de ar ", "value": "b"},
      {"prompt": "  pela bomba-d'água ", "value": "c"},
      {"prompt": "  pela bomba de combustível ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 440
  },
  {
    "question": "Em caso de atropelamento, o condutor deverá ",
    "right_answer": "b",
    "answers": [
      {"prompt": " remover a vítima ", "value": "a"},
      {
        "prompt":
            "  sinalizar o local e chamar o serviço de resgate especializado ",
        "value": "b"
      },
      {"prompt": "  chamar o serviço de resgate, apenas ", "value": "c"},
      {"prompt": "  movimentar o acidentado para local seguro ", "value": "d"}
    ],
    "category": "Medicina de tráfego",
    "id": 441
  },
  {
    "question":
        "Transitar com o veículo produzindo fumaça, gases ou partículas em níveis superiores aos fixados pelo Contran ocasionará infração cuja penalidade será multa e ",
    "right_answer": "a",
    "answers": [
      {"prompt": " retenção do veículo para regularização ", "value": "a"},
      {
        "prompt": "  remoção do veículo para o pátio do órgão de trânsito ",
        "value": "b"
      },
      {"prompt": "  suspensão do direito de dirigir ", "value": "c"},
      {"prompt": "  curso de reciclagem e advertência verbal ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 442
  },
  {
    "question":
        "Um condutor discutiu à noite com familiares e, pela manhã, inicia uma viagem longa, estando irritado e muito preocupado. Essa situação é uma condição adversa que pode contribuir para ocasionar acidente de trânsito e está relacionada ao(à) ",
    "right_answer": "d",
    "answers": [
      {"prompt": " clima e/ou ambiente ", "value": "a"},
      {"prompt": "  via ", "value": "b"},
      {"prompt": "  veículo ", "value": "c"},
      {"prompt": "  condutor ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 443
  },
  {
    "question":
        "O condutor que dirige com segurança é aquele que reconhece antecipadamente as situações de perigo e age ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " pressionando os outros condutores que estão próximos, no intuito de se preservar de acidentes ",
        "value": "a"
      },
      {
        "prompt":
            "  contrariando as normas de trânsito, no intuito de chegar rapidamente ao destino, dirigindo com imprudência ",
        "value": "b"
      },
      {
        "prompt":
            "  com manobras arriscadas, pondo em risco outras pessoas, no intuito de se preservar de acidentes ",
        "value": "c"
      },
      {
        "prompt":
            "  no intuito de preservar a si, os acompanhantes, o veículo e outros usuários da via ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 444
  },
  {
    "question":
        "O condutor que tenha Permissão para Dirigir na categoria \"B\" obterá a Carteira Nacional de Habilitação após um ano, desde que não tenha cometido infração de natureza ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " média ou leve, ou que não tenha recebido multa por alcoolismo ",
        "value": "a"
      },
      {
        "prompt": "  grave ou média, ou não tenha recebido advertência verbal ",
        "value": "b"
      },
      {
        "prompt":
            "  leve ou grave, ou que não seja reincidente em infração leve ",
        "value": "c"
      },
      {
        "prompt":
            "  grave ou gravíssima, ou não seja reincidente em infração média ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 445
  },
  {
    "question":
        "Indique a alternativa que contém itens de segurança obrigatórios em qualquer veículo, os quais deverão ser mantidos em boas condições contribuindo, assim, para a segurança no trânsito ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " rodas, pneus, amortecedores e película protetora ",
        "value": "a"
      },
      {
        "prompt": "  freios, pneus, sistema de iluminação e farol de neblina ",
        "value": "b"
      },
      {
        "prompt": "  engate para reboque, rodas, película refletiva e freios ",
        "value": "c"
      },
      {
        "prompt": "  pneus, freios, sistema de iluminação e suspensão ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 446
  },
  {
    "question":
        "Antes de iniciar o deslocamento, o condutor deve verificar os equipamentos obrigatórios, que são ",
    "right_answer": "d",
    "answers": [
      {"prompt": " triângulo, rádio, radiador e catalisador ", "value": "a"},
      {
        "prompt":
            "  cinto de segurança, carburador e alarme contra roubo e furto de rádio ",
        "value": "b"
      },
      {"prompt": "  GPS, faróis, lanternas de posição e buzina ", "value": "c"},
      {
        "prompt": "  triângulo, macaco, pneu sobressalente e buzina ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 447
  },
  {
    "question":
        "A experiência adquirida na direção do veículo pode levar o condutor a ações automáticas na direção, sem pensar. Esse automatismo pode levá-lo a ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " adotar um comportamento preventivo em relação aos acidentes ",
        "value": "a"
      },
      {"prompt": "  reduzir a possibilidade de acidentes ", "value": "b"},
      {"prompt": "  aumentar o seu nível de concentração ", "value": "c"},
      {"prompt": "  erros e acidentes graves ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 448
  },
  {
    "question": "Ocorre a hidroplanagem ou aquaplanagem quando o veículo ",
    "right_answer": "x",
    "answers": [
      {"prompt": " tem os pneus cobertos por uma enxurrada ", "value": "a"},
      {"prompt": "  derrapa sobre uma camada de óleo na pista ", "value": "b"},
      {
        "prompt": "  passa por um buraco na pista coberto por água da chuva ",
        "value": "c"
      },
      {
        "prompt":
            "  perde a aderência do pneu com o solo, causada por água sobre a pista ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 449
  },
  {
    "question":
        "Transitar em velocidade superior à máxima permitida em até vinte por cento é uma infração (CTB Art. 218, inciso I) ",
    "right_answer": "d",
    "answers": [
      {"prompt": " grave ", "value": "a"},
      {"prompt": "  leve ", "value": "b"},
      {"prompt": "  gravíssima ", "value": "c"},
      {"prompt": "  média ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 450
  },
  {
    "question":
        "No início de garoa, a pista fica escorregadia. Nessas condições, o veículo pode deslizar e derrapar durante a frenagem. Isso ocorre devido à ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " presença de umidade nos componentes do freio, reduzindo sua capacidade de frenagem ",
        "value": "a"
      },
      {
        "prompt":
            "  característica do revestimento asfáltico da pista, que impede a absorção da água da chuva ",
        "value": "b"
      },
      {
        "prompt":
            "  formação de poças de água, que geram o fenômeno da aquaplanagem, fazendo o veículo flutuar na pista ",
        "value": "c"
      },
      {
        "prompt":
            "  mistura da umidade com o pó sobre o pavimento, reduzindo a aderência entre o pneu e a pista ",
        "value": "d"
      }
    ],
    "category": "Meio ambiente",
    "id": 451
  },
  {
    "question":
        "Durante o percurso de descida em serra, o condutor deve utilizar o freio com ",
    "right_answer": "d",
    "answers": [
      {"prompt": " o acionamento manual ", "value": "a"},
      {"prompt": "  o motor desligado ", "value": "b"},
      {"prompt": "  o veículo desengrenado ", "value": "c"},
      {"prompt": "  a marcha reduzida ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 452
  },
  {
    "question": "O condutor que age em favor da segurança no trânsito ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " ultrapassa veículo lento em uma curva em pista de mão dupla sem sinalização horizontal ",
        "value": "a"
      },
      {
        "prompt":
            "  calibra periodicamente a pressão dos pneus mantendo-a acima dos valores especificados pelo fabricante ",
        "value": "b"
      },
      {
        "prompt":
            "  conhece e troca sozinho peças defeituosas do seu veículo mantendo-o seguro e bem conservado ",
        "value": "c"
      },
      {
        "prompt":
            "  guarda distância de segurança entre o veículo que dirige e o que segue à sua frente ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 453
  },
  {
    "question":
        "Aprender os conceitos da direção defensiva e usar estes conhecimentos com eficiência exige que o motorista ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " dirija com cautela adotando os cuidados necessários quando não respeitar uma regra de trânsito ",
        "value": "a"
      },
      {
        "prompt":
            "  reconheça que os acidentes acontecem por acaso, por obra do destino ou por azar, independentemente da sua ação ",
        "value": "b"
      },
      {
        "prompt":
            "  cuide apenas de si para evitar acidentes, já que os demais condutores devem cuidar de si mesmos ",
        "value": "c"
      },
      {
        "prompt":
            "  dirija sempre com atenção para poder prever o que fazer e tomar as decisões certas para evitar acidentes ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 454
  },
  {
    "question":
        "A transformação da corrente em alta-tensão e a produção da centelha são funções, respectivamente ",
    "right_answer": "x",
    "answers": [
      {"prompt": " da bateria e do alternador ", "value": "a"},
      {"prompt": "  da bobina e das velas ", "value": "b"},
      {"prompt": "  das velas e da bobina ", "value": "c"},
      {"prompt": "  do bico injetor e da bobina ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 455
  },
  {
    "question":
        "Qual deve ser a ação se uma vítima de atropelamento queixar-se de frio e solicitar que seja removida para outro local? ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " sinalizar o local, chamar a equipe de socorro e oferecer à vítima bebidas e alimentos quentes ",
        "value": "a"
      },
      {
        "prompt":
            "  chamar a equipe de socorro, remover a vítima para a calçada e cobri-la com um cobertor ",
        "value": "b"
      },
      {
        "prompt":
            "  sinalizar o local, oferecer bebidas e alimentos quentes à vítima e protegê-la para que não perca calor ",
        "value": "c"
      },
      {
        "prompt":
            "  sinalizar o local, chamar a equipe de socorro e protegê-la com um agasalho ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 456
  },
  {
    "question":
        "Parar o veículo afastado da guia da calçada (meio-fio) a uma distância de cinquenta centímetros a um metro é uma infração (CTB Art. 182, inciso II) ",
    "right_answer": "d",
    "answers": [
      {"prompt": " grave ", "value": "a"},
      {"prompt": "  média ", "value": "b"},
      {"prompt": "  gravíssima ", "value": "c"},
      {"prompt": "  leve ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 457
  },
  {
    "question":
        "O comportamento do condutor que torna o trânsito menos estressante e violento em situações críticas é ",
    "right_answer": "d",
    "answers": [
      {"prompt": " o desrespeito às leis ", "value": "a"},
      {"prompt": "  o individualismo ", "value": "b"},
      {"prompt": "  a intolerância ", "value": "c"},
      {"prompt": "  o controle emocional ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 458
  },
  {
    "question":
        "A maior causa de poluição do ar nas cidades é decorrência do(a) ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " atividade industrial na produção de automóveis ",
        "value": "a"
      },
      {"prompt": "  trânsito de veículos automotores ", "value": "b"},
      {"prompt": "  atividade industrial em geral ", "value": "c"},
      {"prompt": "  aumento da circulação de bicicletas ", "value": "d"}
    ],
    "category": "Meio ambiente",
    "id": 459
  },
  {
    "question": "A operação de carga e descarga na via pública ",
    "right_answer": "b",
    "answers": [
      {
        "prompt":
            " requer regulamentação de parada permitida e é semelhante ao embarque e desembarque de passageiros ",
        "value": "a"
      },
      {
        "prompt":
            "  deve ser regulamentada pelo órgão de trânsito e é considerada estacionamento ",
        "value": "b"
      },
      {
        "prompt":
            "  não requer regulamentação e pode ser feita onde é permitida a parada de veículos comuns ",
        "value": "c"
      },
      {
        "prompt":
            "  não requer regulamentação e pode ser feita no período das 22 horas às 6 horas, em qualquer via ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 460
  },
  {
    "question":
        "A fadiga do condutor ocorre em razão de excessiva atividade física ou mental. Caso se encontre nesse estado, ele deve ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " procurar um local seguro e parar para descanso ",
        "value": "a"
      },
      {
        "prompt": "  parar o veículo no acostamento para descansar ",
        "value": "b"
      },
      {
        "prompt": "  aumentar a velocidade para chegar ao destino ",
        "value": "c"
      },
      {
        "prompt":
            "  deixar outra pessoa dirigir o veículo, mesmo que essa não seja habilitada ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 461
  },
  {
    "question":
        "Quando a luz indicadora de carga de bateria estiver acesa, isto é indício de que ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " ocorreu rompimento da correia que liga o alternador ao motor ",
        "value": "a"
      },
      {"prompt": "  o alternador está carregando a bateria ", "value": "b"},
      {
        "prompt":
            "  ocorreu rompimento da correia que liga o motor de arranque ao motor ",
        "value": "c"
      },
      {"prompt": "  o motor está com rotação insuficiente ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 462
  },
  {
    "question":
        "Parar o veículo na área de cruzamento de vias, prejudicando a circulação de veículos e pedestres, é infração de natureza ",
    "right_answer": "a",
    "answers": [
      {"prompt": " média, com quatro pontos na CNH do condutor ", "value": "a"},
      {"prompt": "  grave, com oito pontos na CNH do condutor ", "value": "b"},
      {"prompt": "  leve, com sete pontos na CNH do condutor ", "value": "c"},
      {
        "prompt": "  gravíssima, com nove pontos na CNH do condutor ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 463
  },
  {
    "question":
        "Efetuar transporte remunerado de pessoas ou bens, quando o veículo não for licenciado para esse fim, terá como penalidade e medida administrativa, respectivamente (Art. 231, inciso VIII do CTB) ",
    "right_answer": "x",
    "answers": [
      {"prompt": " multa e remoção do veículo ", "value": "a"},
      {"prompt": "  recolhimento da CNH e multa ", "value": "b"},
      {"prompt": "  multa e retenção do veículo ", "value": "c"},
      {"prompt": "  multa, apenas ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 464
  },
  {
    "question":
        "Uma das circunstâncias que agravam as penalidades dos crimes de trânsito é dirigir ",
    "right_answer": "x",
    "answers": [
      {"prompt": " sem estar habilitado ", "value": "a"},
      {
        "prompt": "  com a Carteira Nacional de Habilitação vencida ",
        "value": "b"
      },
      {"prompt": "  com apenas umas das mãos ao volante ", "value": "c"},
      {
        "prompt": "  sem que o veículo esteja devidamente licenciado ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 465
  },
  {
    "question":
        "A manutenção dos freios é condição básica de segurança no trânsito. Pode-se observar uma provável falha desse sistema identificando ",
    "right_answer": "c",
    "answers": [
      {"prompt": " a falta de estabilidade em curvas ", "value": "a"},
      {
        "prompt":
            "  a luz indicativa no painel de falha no sistema de arrefecimento ",
        "value": "b"
      },
      {"prompt": "  o baixo nível de fluido no reservatório ", "value": "c"},
      {
        "prompt": "  o baixo nível do óleo do sistema de transmissão ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 466
  },
  {
    "question": "A energia elétrica fornecida ao veículo é produzida ",
    "right_answer": "c",
    "answers": [
      {"prompt": " pelo carburador e alternador ", "value": "a"},
      {"prompt": "  pelo acumulador e gerador primário ", "value": "b"},
      {"prompt": "  pela bateria e pelo alternador ", "value": "c"},
      {"prompt": "  pelo gerador primário e pela bobina ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 467
  },
  {
    "question": "Para aumentar a durabilidade dos pneus é importante ",
    "right_answer": "x",
    "answers": [
      {"prompt": " trocar a câmara de ar regularmente ", "value": "a"},
      {"prompt": "  realizar o rodízio dos pneus regularmente ", "value": "b"},
      {
        "prompt": "  usar pneus com pressão de ar acima da especificação ",
        "value": "c"
      },
      {
        "prompt": "  usar pneus com pressão de ar abaixo da especificação ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 468
  },
  {
    "question":
        "O condutor de veículo que estiver habilitado na categoria C poderá conduzir que tipo de veículo? ",
    "right_answer": "b",
    "answers": [
      {
        "prompt":
            " veículo motorizado, de duas ou três rodas, com ou sem carro lateral ",
        "value": "a"
      },
      {
        "prompt":
            "  veículo motorizado, para transporte de carga, que exceda a 3.500kg de peso bruto total (PBT) ",
        "value": "b"
      },
      {
        "prompt":
            "  veículo motorizado, que não exceda a oito lugares sem contar o condutor, e que não ultrapasse 3.500 kg de peso bruto total (PBT) ",
        "value": "c"
      },
      {
        "prompt":
            "  veículo motorizado, para transporte de passageiros, que tenha mais de oito lugares sem contar o condutor ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 469
  },
  {
    "question": "As colisões frontais ocorrem com mais frequência nas vias ",
    "right_answer": "c",
    "answers": [
      {"prompt": " de mão única ", "value": "a"},
      {"prompt": "  de trânsito rápido ", "value": "b"},
      {"prompt": "  de mão dupla ", "value": "c"},
      {"prompt": "  com canteiro central ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 470
  },
  {
    "question":
        "Por haver risco de causar acidente, é proibido ultrapassar outro veículo ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " pela faixa da esquerda em vias com mais de uma faixa ",
        "value": "a"
      },
      {"prompt": "  pela contramão em cruzamentos ", "value": "b"},
      {"prompt": "  em vias não pavimentadas ", "value": "c"},
      {"prompt": "  em vias urbanas arteriais e coletoras ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 471
  },
  {
    "question":
        "Alguns dos fatores de acidentes são: insônia, estresse, perda da capacidade auditiva e perda da concentração. Essas são condições adversas de: ",
    "right_answer": "x",
    "answers": [
      {"prompt": " veículo ", "value": "a"},
      {"prompt": "  condutor ", "value": "b"},
      {"prompt": "  trânsito ", "value": "c"},
      {"prompt": "  pedestre ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 472
  },
  {
    "question":
        "Quando o condutor nota que, mesmo dirigindo em linha reta, o veículo tende a ir para um dos lados, esse defeito pode ser consequência de ",
    "right_answer": "x",
    "answers": [
      {"prompt": " amortecedores em boas condições ", "value": "a"},
      {
        "prompt": "  falta de cambagem e de alinhamento da direção ",
        "value": "b"
      },
      {"prompt": "  pneus bem calibrados ", "value": "c"},
      {"prompt": "  defeito no sistema de tração do diferencial ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 473
  },
  {
    "question":
        "As principais características do sistema de transmissão automática é a dispensa do(a) ",
    "right_answer": "x",
    "answers": [
      {"prompt": " freio motor e seu pedal ", "value": "a"},
      {"prompt": "  freio de mão (freio de estacionamento) ", "value": "b"},
      {"prompt": "  cabo de embreagem do pedal ", "value": "c"},
      {"prompt": "  embreagem e seu pedal ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 474
  },
  {
    "question": "O condutor demonstra um comportamento seguro quando ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " imprime velocidade superior à permitida pela sinalização ao ultrapassar ",
        "value": "a"
      },
      {
        "prompt":
            "  ultrapassa veículos lentos em um cruzamento entre vias urbanas ",
        "value": "b"
      },
      {
        "prompt":
            "  tendo boa visibilidade, ultrapassa outro veículo na contramão sobre uma ponte ",
        "value": "c"
      },
      {
        "prompt":
            "  reduz a velocidade ao perceber que vai ser ultrapassado por outro veículo ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 475
  },
  {
    "question":
        "Se o condutor não adotar medidas preventivas, existem condições geradoras de risco que podem contribuir para causar acidentes de trânsito, entre elas ",
    "right_answer": "d",
    "answers": [
      {"prompt": " granizo, freios em bom estado e vento ", "value": "a"},
      {
        "prompt": "  faróis regulados, neblina e fumaça na pista ",
        "value": "b"
      },
      {
        "prompt": "  boa visibilidade, pneus descalibrados e óleo na pista ",
        "value": "c"
      },
      {"prompt": "  chuva, sono e buracos na via ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 476
  },
  {
    "question":
        "Em caso de acidente de trânsito em que a vítima apresenta um ferimento, a primeira providência a ser tomada pelo condutor é ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " limpar o ferimento para impedir que ocorra sangramento ",
        "value": "a"
      },
      {"prompt": "  remover a vítima para um lugar seguro ", "value": "b"},
      {
        "prompt": "  desinfetar o ferimento para evitar o risco de infecção ",
        "value": "c"
      },
      {
        "prompt":
            "  sinalizar a área do acidente e chamar o serviço de resgate especializado ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 477
  },
  {
    "question":
        "O condutor adota uma atitude preventiva e torna mais seguro o trânsito quando ",
    "right_answer": "c",
    "answers": [
      {
        "prompt":
            " atravessa o sinal do semáforo fechado com cautela para evitar colisões ou atropelamentos ",
        "value": "a"
      },
      {
        "prompt":
            "  para o veículo na pista após uma curva fechada e posiciona o triângulo próximo ao veículo ",
        "value": "b"
      },
      {
        "prompt":
            "  fica atento ao movimento de pedestres atravessando ou andando na pista de rolamento ",
        "value": "c"
      },
      {
        "prompt":
            "  buzina de forma estridente ao se aproximar de ciclista à sua frente para evitar atropelamento ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 478
  },
  {
    "question":
        "A via que se destina a receber e distribuir o fluxo das vias de trânsito rápido ou arterial, possibilitando a circulação em regiões urbanas, é definida como ",
    "right_answer": "x",
    "answers": [
      {"prompt": " via arterial ", "value": "a"},
      {"prompt": "  via local ", "value": "b"},
      {"prompt": "  via de trânsito rápido ", "value": "c"},
      {"prompt": "  via coletora ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 479
  },
  {
    "question":
        "O componente do sistema de transmissão que permite ao condutor ajustar, pela troca de marchas, a relação entre a rotação do motor e a velocidade das rodas é o ",
    "right_answer": "x",
    "answers": [
      {"prompt": " cabo da embreagem ou embreagem hidráulica ", "value": "a"},
      {"prompt": "  distribuidor ou bobina ", "value": "b"},
      {"prompt": "  câmbio ou platô ", "value": "c"},
      {"prompt": "  acelerador ou pedal ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 480
  },
  {
    "question":
        "A melhoria do convívio social no trânsito deve ser uma meta para todo condutor. Uma atitude que contribui para a melhoria dessa convivência é ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " não revidar uma atitude grosseira ou arriscada promovida contra si por outro condutor ",
        "value": "a"
      },
      {
        "prompt":
            "  parar o trânsito e sair do veículo em via pública para discutir com outro condutor a respeito de uma situação no trânsito ",
        "value": "b"
      },
      {
        "prompt":
            "  utilizar o veículo de forma a criar situações de risco para condutores transgressores, no intuito de educá-los ",
        "value": "c"
      },
      {
        "prompt":
            "  parar o veículo em local sujeito a risco de acidentes para conversar com pessoas conhecidas ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 481
  },
  {
    "question":
        "Trafegando em uma rodovia, em condições adversas de tempo, a atitude do condutor que reduz a segurança no trânsito é ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " aumentar a velocidade para ultrapassar outros veículos mais lentos ",
        "value": "a"
      },
      {
        "prompt":
            "  estacionar em um local seguro até que as condições do tempo melhorem ",
        "value": "b"
      },
      {
        "prompt":
            "  reduzir a velocidade adequando-a às condições locais de segurança ",
        "value": "c"
      },
      {
        "prompt":
            "  reduzir a velocidade e manter distância de seguimento do veiculo à frente ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 482
  },
  {
    "question":
        "Para que não ocorra a aquaplanagem ao passar sobre poças dágua, o condutor deve ",
    "right_answer": "a",
    "answers": [
      {
        "prompt": " reduzir a velocidade e usar apenas o freio motor ",
        "value": "a"
      },
      {"prompt": "  frear com intensidade e acelerar o veículo ", "value": "b"},
      {"prompt": "  acelerar o veículo para ganhar aderência ", "value": "c"},
      {"prompt": "  manter a velocidade e frear com intensidade ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 483
  },
  {
    "question":
        "A incidência de sol, ofuscando os olhos do condutor, reduz a visibilidade, o que pode ser responsável por um acidente. Essa é uma condição adversa relacionada com o(a) ",
    "right_answer": "c",
    "answers": [
      {"prompt": " condutor ", "value": "a"},
      {"prompt": "  veículo ", "value": "b"},
      {"prompt": "  clima e/ou ambiente ", "value": "c"},
      {"prompt": "  via ", "value": "d"}
    ],
    "category": "Meio ambiente",
    "id": 484
  },
  {
    "question":
        "São condições necessárias para um condutor demonstrar que dirige com segurança, entre outros fatores ",
    "right_answer": "c",
    "answers": [
      {
        "prompt": " conhecimento da legislação e agressividade ao volante ",
        "value": "a"
      },
      {"prompt": "  audácia e habilidade com o veículo ", "value": "b"},
      {"prompt": "  prudência e habilidade com o veículo ", "value": "c"},
      {"prompt": "  conhecimento de mecânica veicular e ousadia ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 485
  },
  {
    "question":
        "O órgão ambiental que regulamenta ações de redução da emissão de substâncias poluentes dos veículos automotores é o ",
    "right_answer": "x",
    "answers": [
      {"prompt": " Contran ", "value": "a"},
      {"prompt": "  Denatran ", "value": "b"},
      {"prompt": "  Detran ", "value": "c"},
      {"prompt": "  Conama ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 486
  },
  {
    "question":
        "Num acidente, ao atender um motociclista que bateu a cabeça e está aparentemente inconsciente, o recomendável é ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " retirar imediatamente o capacete do motociclista e mexer sua cabeça, se necessário ",
        "value": "a"
      },
      {
        "prompt":
            "  removê-lo imediatamente do local e aguardar a equipe de emergência ",
        "value": "b"
      },
      {
        "prompt":
            "  transportá-lo imediatamente ao hospital mais próximo do local do acidente ",
        "value": "c"
      },
      {
        "prompt": "  não movimentá-lo até a chegada da equipe de emergência ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 487
  },
  {
    "question":
        "Nas câmaras de resfriamento, o controle da temperatura de um motor é feito por um sistema que faz circular ",
    "right_answer": "d",
    "answers": [
      {"prompt": " o óleo pressionado pelas juntas ", "value": "a"},
      {"prompt": "  a água pressionada pela ventoinha ", "value": "b"},
      {"prompt": "  o óleo do motor resfriado pela ventoinha ", "value": "c"},
      {"prompt": "  a água pressionada por uma bomba ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 488
  },
  {
    "question": "Ao deparar-se com um acidente de trânsito, o condutor deve ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " sinalizar o local do acidente somente se estiver envolvido na ocorrência ",
        "value": "a"
      },
      {
        "prompt":
            "  continuar o seu trajeto, pois a responsabilidade pelos acidentes é das autoridades ",
        "value": "b"
      },
      {
        "prompt":
            "  manter ligada a chave de ignição dos veículos acidentados para que os faróis alertem os demais condutores ",
        "value": "c"
      },
      {
        "prompt":
            "  sinalizar o local do acidente e chamar a equipe de socorro ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 489
  },
  {
    "question":
        "O condutor habilitado na categoria \"B\" que dirigir uma motocicleta de sua propriedade, devidamente registrada e licenciada, cometerá infração e estará sujeito a multa, além de ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " processo criminal, apreensão da motocicleta e recolhimento da CNH ",
        "value": "a"
      },
      {
        "prompt": "  cassação do documento de habilitação e processo criminal ",
        "value": "b"
      },
      {
        "prompt":
            "  obrigação de comparecer à Delegacia de Polícia e recolhimento da CNH ",
        "value": "c"
      },
      {
        "prompt":
            "  retenção da moticicleta até apresentação de condutor habilitado na categoria permitida ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 490
  },
  {
    "question":
        "Quando envolvido em acidente sem vítima, o condutor que deixar de adotar providências para remover o veículo do local, quando isso for necessário para a segurança e fluidez do trânsito, terá como penalidade ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " suspensão do direito de dirigir e apreensão do veículo ",
        "value": "a"
      },
      {
        "prompt":
            "  suspensão do direito de dirigir, recolhimento da CNH e apreensão do veículo ",
        "value": "b"
      },
      {"prompt": "  multa e apreensão do veículo ", "value": "c"},
      {"prompt": "  multa, apenas ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 491
  },
  {
    "question":
        "É possível notar um bom nível de consciência ambiental quando ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " postos de combustível escoam a água de lavagem dos veículos para as sarjetas e bocas de lobo da via pública ",
        "value": "a"
      },
      {
        "prompt":
            "  passageiros de ônibus em movimento atiram pela janela uma latinha de cerveja ou outros objetos na via ",
        "value": "b"
      },
      {
        "prompt":
            "  se observam garrafas de PET e outros objetos misturados à vegetação à beira das rodovias ",
        "value": "c"
      },
      {
        "prompt":
            "  se observam lixeiras apropriadas e pisos limpos no interior e nos arredores de lanchonetes ou restaurantes à beira da estrada ",
        "value": "d"
      }
    ],
    "category": "Meio ambiente",
    "id": 492
  },
  {
    "question":
        "Segundo a legislação de trânsito, é proibido acionar a buzina no período compreendido ",
    "right_answer": "x",
    "answers": [
      {"prompt": " entre 24h00 e 6h00 ", "value": "a"},
      {"prompt": "  entre 22h00 e 7h00 ", "value": "b"},
      {"prompt": "  entre 21h00 e 6h00 ", "value": "c"},
      {"prompt": "  entre 22h00 e 6h00 ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 493
  },
  {
    "question":
        "Quando o farol baixo de um veículo que vem em sentido contrário ofusca os olhos do condutor com o qual ele cruza, é sinal de que o veículo apresenta ",
    "right_answer": "x",
    "answers": [
      {"prompt": " falha no sistema de suspensão ", "value": "a"},
      {
        "prompt": "  pneus com calibragem baixa do lado direito do veículo ",
        "value": "b"
      },
      {
        "prompt": "  existência de lâmpada de luz baixa queimada ",
        "value": "c"
      },
      {"prompt": "  falta de alinhamento e regulagem dos faróis ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 494
  },
  {
    "question": "Os fatores presentes na falta de estabilidade do veículo são ",
    "right_answer": "x",
    "answers": [
      {"prompt": " motor e sistema de câmbio ", "value": "a"},
      {"prompt": "  freios e amortecedores ", "value": "b"},
      {"prompt": "  suspensão e freios ", "value": "c"},
      {"prompt": "  suspensão e amortecedores ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 495
  },
  {
    "question": "A sinalização horizontal é composta por cinco cores ",
    "right_answer": "x",
    "answers": [
      {"prompt": " branca, preta, azul, marrom e amarela ", "value": "a"},
      {"prompt": "  azul, amarela, preta, branca e cinza ", "value": "b"},
      {"prompt": "  amarela, verde, vermelha, preta e branca ", "value": "c"},
      {"prompt": "  amarela, vermelha, branca, azul e preta ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 496
  },
  {
    "question":
        "Pessoas com deficiências, dirigindo sem seus aparelhos auxiliares, têm como medida administrativa: (CTB Art. 162, inciso VI) ",
    "right_answer": "d",
    "answers": [
      {
        "prompt":
            " remoção do veículo para o pátio do órgão público responsável e suspensão da CNH do condutor ",
        "value": "a"
      },
      {
        "prompt":
            "  recolhimento da CNH e suspensão permanente do direito de dirigir veículos automotivos ",
        "value": "b"
      },
      {
        "prompt":
            "  realização de exames de aptidão física e mental para avaliação das condições do condutor ",
        "value": "c"
      },
      {
        "prompt":
            "  retenção do veículo até o saneamento da irregularidade ou a apresentação de condutor habilitado ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 497
  },
  {
    "question":
        "Em se tratando de infrações, quando o veículo for de propriedade de pessoa jurídica (uma empresa), quem responde pela pontuação? ",
    "right_answer": "d",
    "answers": [
      {"prompt": " o diretor administrativo da empresa ", "value": "a"},
      {
        "prompt": "  o gerente responsável pela frota da empresa ",
        "value": "b"
      },
      {"prompt": "  o proprietário da empresa ", "value": "c"},
      {
        "prompt":
            "  o condutor infrator identificado em formulário próprio e enviado no prazo preestabelecido ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 498
  },
  {
    "question":
        "Um condutor dirige pela primeira vez em uma rodovia de mão dupla e está muito nervoso e inseguro, podendo se envolver em um acidente de trânsito. Essa é uma condição adversa relacionada com o(a) ",
    "right_answer": "d",
    "answers": [
      {"prompt": " via ", "value": "a"},
      {"prompt": "  clima e/ou ambiente ", "value": "b"},
      {"prompt": "  veículo ", "value": "c"},
      {"prompt": "  condutor ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 499
  },
  {
    "question":
        "Ao perceber a intenção do outro veículo em ultrapassá-lo, em via de duplo sentido de tráfego, para facilitar a ultrapassagem e propiciar maior segurança para todos, o condutor deve ",
    "right_answer": "d",
    "answers": [
      {
        "prompt": " manter a velocidade e deslocar-se para o acostamento ",
        "value": "a"
      },
      {
        "prompt":
            "  acionar a seta de direção para auxiliar o condutor que pretende ultrapassá-lo ",
        "value": "b"
      },
      {
        "prompt":
            "  manter a velocidade e se aproximar ao máximo do veículo da frente ",
        "value": "c"
      },
      {
        "prompt":
            "  manter-se em sua faixa de tráfego e reduzir ligeiramente a velocidade ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 500
  },
  {
    "question":
        "Ao se envolver em acidente com vítima, o condutor que deixar de adotar providências que contribuem para evitar perigo para o trânsito no local terá como penalidade (CTB Art. 176, inciso II) ",
    "right_answer": "c",
    "answers": [
      {"prompt": " apreensão do veículo ", "value": "a"},
      {"prompt": "  suspensão do direito de dirigir ", "value": "b"},
      {"prompt": "  multa e suspensão do direito de dirigir ", "value": "c"},
      {"prompt": "  multa, apenas ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 501
  },
  {
    "question": "Os quatro tempos de um motor de combustão interna são ",
    "right_answer": "c",
    "answers": [
      {"prompt": " alimentação, injeção, ignição e explosão ", "value": "a"},
      {
        "prompt": "  ignição, escapamento, compressão e alimentação ",
        "value": "b"
      },
      {
        "prompt": "  admissão, compressão, explosão e escapamento ",
        "value": "c"
      },
      {
        "prompt": "  admissão, lubrificação, explosão e escapamento ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 502
  },
  {
    "question":
        "Antes da circulação do veículo, o condutor deverá verificar o bom funcionamento das luzes de ",
    "right_answer": "x",
    "answers": [
      {"prompt": " faróis, freio e luzes internas, apenas ", "value": "a"},
      {"prompt": "  faróis, freio e marcha à ré, apenas ", "value": "b"},
      {
        "prompt":
            "  faróis, freio, pisca-alerta, placa e indicadores de mudança de direção e de marcha à ré ",
        "value": "c"
      },
      {"prompt": "  faróis, freio e pisca-alerta, apenas ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 503
  },
  {
    "question": "As vias rurais pavimentadas são definidas como ",
    "right_answer": "b",
    "answers": [
      {"prompt": " estradas ", "value": "a"},
      {"prompt": "  rodovias ", "value": "b"},
      {"prompt": "  vias coletoras ", "value": "c"},
      {"prompt": "  vias de trânsito rápido ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 504
  },
  {
    "question": "Entre as condições adversas de veículo estão ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " pneus gastos, freios desregulados, lâmpadas queimadas, ano e modelo do veículo ",
        "value": "a"
      },
      {
        "prompt":
            "  espelhos retrovisores deficientes, cinto de segurança defeituoso e marca do veículo ",
        "value": "b"
      },
      {
        "prompt":
            "  defeito nos equipamentos obrigatórios, nos limpadores de para-brisa e falta de buzina ",
        "value": "c"
      },
      {
        "prompt":
            "  ano, modelo do veículo, regulagem do motor e troca do filtro do ar condicionado ",
        "value": "d"
      }
    ],
    "category": "Mecânica básica",
    "id": 505
  },
  {
    "question":
        "Para o funcionamento das luzes externas do veículo com o motor desligado, é necessário que estejam em boas condições de uso a bateria, as lâmpadas e: ",
    "right_answer": "x",
    "answers": [
      {"prompt": " os fusíveis ", "value": "a"},
      {"prompt": "  as luzes indicadoras do painel ", "value": "b"},
      {"prompt": "  o motor de arranque ", "value": "c"},
      {"prompt": "  as velas de ignição ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 506
  },
  {
    "question":
        "Uma pessoa decide transportar, em seu próprio veículo, um motociclista vítima de acidente, antes de solicitar auxílio de equipes de emergência, mesmo possuindo formas de acionar os profissionais especializados. Esse tipo de procedimento ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " deve ser evitado porque pode agravar o estado da vítima e gerar outras complicações de saúde ",
        "value": "a"
      },
      {
        "prompt":
            "  é o recomendável, desde que seja transportado ainda vestido com o capacete de proteção ",
        "value": "b"
      },
      {
        "prompt":
            "  é o recomendável porque amplia a probabilidade de sobrevivência se a vítima for conduzida ao hospital mais próximo ",
        "value": "c"
      },
      {
        "prompt":
            "  deve ser estimulado porque dá maiores chances de sobrevivência graças à agilidade de atendimento ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 507
  },
  {
    "question":
        "Em uma via urbana de pista simples, com duplo sentido de circulação, para realizar conversão à esquerda, o condutor deve ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " acionar a seta e aguardar para fazer a conversão próximo da linha divisória da via ",
        "value": "a"
      },
      {
        "prompt":
            "  acender o farol alto com antecedência, não aguardar e fazer a conversão rapidamente ",
        "value": "b"
      },
      {
        "prompt":
            "  acionar a seta e aguardar para fazer a conversão do lado direito da via, próximo ao meio-fio ",
        "value": "c"
      },
      {
        "prompt":
            "  piscar os faróis algumas vezes para alertar os demais condutores e fazer a conversão ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 508
  },
  {
    "question":
        "Estacionando o veículo em ré, à noite, em uma garagem escura, o risco de colisão contra a parede pode aumentar devido à falta de visibilidade caso estejam queimadas as lâmpadas dos(as) ",
    "right_answer": "a",
    "answers": [
      {"prompt": " luzes de ré ", "value": "a"},
      {"prompt": "  luzes de freio ", "value": "b"},
      {"prompt": "  luzes de posição ", "value": "c"},
      {"prompt": "  faróis alto e baixo ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 509
  },
  {
    "question":
        "Qual o procedimento a ser adotado pelo condutor em caso de traumas em vítima de acidente de trânsito, antes da chegada da equipe de socorro? ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " remover a vítima após proteger os ferimentos ",
        "value": "a"
      },
      {
        "prompt":
            "  manter a vítima na posição em que se encontra no acidente ",
        "value": "b"
      },
      {
        "prompt": "  remover a vítima após imobilizar as fraturas ",
        "value": "c"
      },
      {
        "prompt":
            "  imobilizar a coluna em posição de decúbito dorsal, em caso de suspeita de trauma ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 510
  },
  {
    "question":
        "São situações de risco, devido a condições adversas relacionadas com o clima e/ou ambiente, os seguintes aspectos ",
    "right_answer": "b",
    "answers": [
      {
        "prompt":
            " sinalização horizontal apagada e vegetação obstruindo a sinalização vertical ",
        "value": "a"
      },
      {
        "prompt":
            "  fumaça produzida pela queima da vegetação e ventos fortes ",
        "value": "b"
      },
      {
        "prompt":
            "  curva acentuada não precedida de sinalização e chuva torrencial ",
        "value": "c"
      },
      {
        "prompt":
            "  neblina intensa à noite e pista com buracos, depressões e asfalto deteriorado ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 511
  },
  {
    "question": "Indique a afirmação que favorece a segurança no trânsito ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " o Manual do Proprietário do Veículo traz informações sobre o modelo e as características do veículo, mas não fornece informações sobre a manutenção dos componentes ",
        "value": "a"
      },
      {
        "prompt":
            "  os freios são os únicos componentes do veículo que necessitam de manutenção preventiva ",
        "value": "b"
      },
      {
        "prompt":
            "  o Manual do Proprietário do Veículo fornece informações importantes para a manutenção adequada do veículo ao longo do tempo ",
        "value": "c"
      },
      {
        "prompt":
            "  a manutenção preventiva dos componentes do veículo deve ser feita quando da sua quebra ou paralisação do seu funcionamento ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 512
  },
  {
    "question":
        "Uma das responsabilidades do condutor de motocicletas e ciclomotores é zelar pela segurança do passageiro que leva na garupa, especialmente daquele mais frágil. Por essa razão e pela legislação, é proibido transportar crianças menores de ",
    "right_answer": "d",
    "answers": [
      {"prompt": " 14 anos ", "value": "a"},
      {"prompt": "  12 anos ", "value": "b"},
      {"prompt": "  8 anos ", "value": "c"},
      {"prompt": "  10 anos ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 513
  },
  {
    "question":
        "Assinale a alternativa que indica medidas preventivas que devem ser adotadas para reduzir os impactos ambientais causados pela emissão de gases provocada pela combustão dos veículos automotores ",
    "right_answer": "c",
    "answers": [
      {
        "prompt":
            " manutenção periódica do radiador de água e do ar condicionado ",
        "value": "a"
      },
      {
        "prompt": "  retirada do catalisador e do miolo do silencioso ",
        "value": "b"
      },
      {
        "prompt":
            "  manutenção periódica do catalisador, da injeção eletrônica e do carburador ",
        "value": "c"
      },
      {
        "prompt": "  manutenção periódica do escapamento e do silencioso ",
        "value": "d"
      }
    ],
    "category": "Meio ambiente",
    "id": 514
  },
  {
    "question":
        "Ter o veículo imobilizado na via por falta de combustível tem como medida administrativa a (Art. 180 do CTB) ",
    "right_answer": "c",
    "answers": [
      {"prompt": " suspensão do direito de dirigir ", "value": "a"},
      {"prompt": "  apreensão do veículo ", "value": "b"},
      {"prompt": "  remoção do veículo ", "value": "c"},
      {"prompt": "  repreensão ao condutor ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 515
  },
  {
    "question":
        "A solidariedade e a cortesia podem ser observadas no trânsito quando o condutor ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " pisca os faróis em uma rodovia para os veículos em sentido contrário, a fim de alertá-los sobre a existência de fiscalização de trânsito ",
        "value": "a"
      },
      {
        "prompt":
            "  cede sua vez de passagem no cruzamento para um veículo que, em sentido contrário, sinaliza sua intenção de fazer a conversão permitida ",
        "value": "b"
      },
      {
        "prompt":
            "  circula em faixa exclusiva de ônibus, mas sai imediatamente dela assim que um ônibus se aproxima, evitando ser multado pela autoridade de trânsito ",
        "value": "c"
      },
      {
        "prompt":
            "  estaciona em vaga de idoso, mas retira seu veículo prontamente assim que solicitado pela autoridade de trânsito ou por outro usuário ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 516
  },
  {
    "question":
        "Quando estiver transitando à noite em uma via não iluminada, com tráfego de veículos nos dois sentidos, o condutor deverá usar a luz baixa do veículo. Esse procedimento é ",
    "right_answer": "x",
    "answers": [
      {
        "prompt":
            " incorreto, pois o mais seguro é utilizar luz alta para aumentar a visibilidade do condutor e dos motoristas dos demais veículos, reduzindo assim o risco de acidente ",
        "value": "a"
      },
      {
        "prompt":
            "  adequado, pois a luz alta pode ofuscar os olhos dos condutores nos dois sentidos de tráfego e aumentar o risco de acidente ",
        "value": "b"
      },
      {
        "prompt":
            "  arriscado, pois esse procedimento poderá ofuscar os olhos dos condutores nos dois sentidos de tráfego e aumentar o risco de acidente ",
        "value": "c"
      },
      {
        "prompt":
            "  incorreto, pois o recomendável para a segurança de todos é a utilização apenas das luzes de posição ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 517
  },
  {
    "question": "Considera-se infração de trânsito ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " dirigir veículo diferente da categoria à qual está habilitado de acordo com a legislação ",
        "value": "a"
      },
      {
        "prompt":
            "  parar para embarque de pessoas onde é proibido estacionar pela sinalização ",
        "value": "b"
      },
      {
        "prompt":
            "  estacionar o veículo a mais de 5 metros da esquina e fora da faixa de pedestres ",
        "value": "c"
      },
      {
        "prompt":
            "  ultrapassar outro veículo onde a marca da sinalização viária é amarela e tracejada ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 518
  },
  {
    "question":
        "As linhas de divisão de fluxos opostos que sinalizam proibição de ultrapassagem são ",
    "right_answer": "x",
    "answers": [
      {"prompt": " contínuas, simples ou duplas, na cor branca ", "value": "a"},
      {
        "prompt": "  contínuas, simples ou duplas, na cor amarela ",
        "value": "b"
      },
      {
        "prompt": "  tracejadas, simples ou duplas, na cor amarela ",
        "value": "c"
      },
      {
        "prompt": "  tracejadas, simples ou duplas, na cor branca ",
        "value": "d"
      }
    ],
    "category": "Legislação de trânsito",
    "id": 519
  },
  {
    "question":
        "Entre as alternativas a seguir, qual apresenta fatores que integram o que se conhece como \"condição adversa de via\"? ",
    "right_answer": "x",
    "answers": [
      {
        "prompt": " chuva, neblina e movimento intenso de veículos ",
        "value": "a"
      },
      {
        "prompt": "  falta de combustível, pneu furado e faróis queimados ",
        "value": "b"
      },
      {
        "prompt":
            "  desníveis, buracos na pista, trechos escorregadios e lombadas ",
        "value": "c"
      },
      {"prompt": "  vento forte e chuva de granizo ", "value": "d"}
    ],
    "category": "Direção defensiva",
    "id": 520
  },
  {
    "question":
        "A desobediência às ordens das autoridades e a seus agentes de trânsito terá como penalidade ",
    "right_answer": "a",
    "answers": [
      {"prompt": " multa ", "value": "a"},
      {"prompt": "  advertência pelo Detran ", "value": "b"},
      {"prompt": "  apreensão da CNH ", "value": "c"},
      {"prompt": "  suspensão do direito de dirigir ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 521
  },
  {
    "question": "O uso do cinto de segurança é importante para ",
    "right_answer": "a",
    "answers": [
      {
        "prompt":
            " evitar que os ocupantes do veículo, após parada súbita ou acidente, sejam projetados para a frente e se machuquem ",
        "value": "a"
      },
      {
        "prompt":
            "  as viagens em rodovias, onde a velocidade é sempre maior do que nas vias urbanas e os riscos de colisão grave são maiores ",
        "value": "b"
      },
      {
        "prompt":
            "  proteger os ocupantes dos bancos dianteiros, para evitar que se projetem para a frente, já que isso não ocorre com os ocupantes dos bancos traseiros ",
        "value": "c"
      },
      {
        "prompt":
            "  evitar que ocorram acidentes de trânsito, já que o uso do cinto de segurança demonstra o quanto o motorista é cuidadoso ao dirigir ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 522
  },
  {
    "question":
        "Fazer uso do facho de luz alta dos faróis em vias providas de iluminação pública tem como penalidade (Art. 224 do CTB) ",
    "right_answer": "x",
    "answers": [
      {"prompt": " retenção do veículo ", "value": "a"},
      {"prompt": "  recolhimento da CNH ", "value": "b"},
      {"prompt": "  multa ", "value": "c"},
      {"prompt": "  suspensão do direito de dirigir ", "value": "d"}
    ],
    "category": "Legislação de trânsito",
    "id": 523
  },
  {
    "question":
        "Uma pessoa foi atropelada e está caída no meio da rua. O que fazer em primeiro lugar? ",
    "right_answer": "a",
    "answers": [
      {
        "prompt": " sinalizar o local para evitar outros acidentes ",
        "value": "a"
      },
      {"prompt": "  tentar chamar algum parente da vítima ", "value": "b"},
      {"prompt": "  remover a pessoa para a calçada ", "value": "c"},
      {
        "prompt":
            "  parar o primeiro veículo e pedir ajuda para remover a vítima ",
        "value": "d"
      }
    ],
    "category": "Medicina de tráfego",
    "id": 524
  },
  {
    "question":
        "Para que a água seja forçada a circular entre o motor e o radiador é necessário o funcionamento adequado do seguinte equipamento ",
    "right_answer": "c",
    "answers": [
      {"prompt": " válvula de injeção da água ", "value": "a"},
      {"prompt": "  regulador de pressão da água ", "value": "b"},
      {"prompt": "  bomba-d'água ", "value": "c"},
      {"prompt": "  sensor de temperatura da água ", "value": "d"}
    ],
    "category": "Mecânica básica",
    "id": 525
  },
  {
    "question":
        "O condutor que contribui para uma forma de boa convivência social no trânsito ",
    "right_answer": "c",
    "answers": [
      {
        "prompt":
            " não observa as normas, mas cuida para não prejudicar os outros ",
        "value": "a"
      },
      {
        "prompt": "  é intolerante com quem comete erros no trânsito ",
        "value": "b"
      },
      {"prompt": "  respeita a legislação de trânsito ", "value": "c"},
      {
        "prompt": "  entra em discussão no trânsito a todo instante ",
        "value": "d"
      }
    ],
    "category": "Direção defensiva",
    "id": 526
  }
];
