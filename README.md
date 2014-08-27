DevOps
======
Gene Kim, autor do livro The Phoenix Project, realizou um debate com Steven Witkop, John Skovron e Elis Booker sobre 
como plataforma como serviço (PaaS) se encaixa no processo de DevOps. Elis Booker ajudou a discussão com perguntas 
sobre DevOps, derrubando mitos sobre nuvens privadas e como começar a utilizá-las.

Gene Kim descreveu a teoria das restrições e suas aplicação em DevOps; também indicou restrições em desenvolvimento de 
software que, segundo ele, devem ser abordadas em sequência:

    Provisionamento de ambientes/implantação;
    Configuração de testes e ambiente para execução de testes;
    Mudanças de arquitetura;
    Gerência de desenvolvimento e de produtos.


A automação e a orquestração são o que permite ao DevOps fazer entregas com maior qualidade, de forma mais veloz e com 
menos recursos humanos. Todos os recursos e indivíduos envolvidos no projeto desempenham algum papel em automatizar as 
etapas do ciclo de vida do gerenciamento de serviços. Exemplos incluem gerenciamento de patches, construção contínua, 
provisionamento de máquinas virtuais, implantação de aplicações e gerenciamento de identidade, além de backup e monitoração. Quanto maior o grau de automação, mais eficiente é a organização do DevOps. A automação também é elemento fundamental para a disponibilização de auto-serviços para a empresa. Permitir que o negócio produza mais, faz com que as equipes se sintam mais protagonistas e torna a TI mais responsiva às suas necessidades. A TI ganha liberdade para construir e automatizar outros serviços. Cria-se um cenário ganha-ganha.

1 - Métricas por todos os lados
  R. Quais? Que ferramentas? 
2 - Documentação da infraestrutura
  R. Quais? Que ferramentas? 
3 - Ambientes de desenvolvimentos e produção espelhados
  R. Vagrant, Chef e Puppet (Eu vejo isso com o LXC e o Ansible)
4 - DevOps no horário comercial
5 - Mitigando os riscos de desenvolvedores fazendo operações


Entendimentos 

Continuous Integration (A cada biuld (chek-in) do código é compilado e implantodo constante em um 
servidor distribuido. Utilizaão de ALM - Application Lify-cicle Management. 
R. Como funciona? Que ferramentas? Métricas de qualidade. Requisito funcionais
Continuous Deploy (Integração contínua) o usuário não tem garantia da entrega
R. Como funciona? Que ferramentas? 
Continuous Delivery (Foco do negócio) o usuário recebe a garantia da disponibilização da nova funcionalidade.
R. Como funciona? Que ferramentas? Métricas de ambiente. Requisito não funcionais

Precisamos ver algumas metodologias ageis ... 
R. Quais? Que ferramentas? 



DEVOPS:
Características da cultura DevOps
Para entender a cultura devops sem fazer um texto muito longo, vou pontuar as suas principais características:
Patrick Debois (foi quem cunhou o termo) diz que DevOPs essencialmente é uma cultura, e a descreve utilizando 4 eixos, 
são eles:

    Cultura
        Colaboração
        Fim das divisões
        Relação saudável entre as áreas
        Mudança de comportamento
        
    Automação
        Deploy
        Controle
        Monitoração
        Gerência de configuração
        Orquestração
        
    Avaliação
        Métricas
        Medições
        Performance
        Logs e integração
        
    Compartilhamento
        O feedback é tudo
        Boa comunicação entre a equipe
        
  Um ambiente DevOps deve ter/possuir/oferecer/permitir:
    Infraestrutura como código
    Orquestração de servidores
    Gerência de configurações
    Provisionamento dinâmico de ambientes
    Controle de versões compartilhado entre infra e devel
    Ambiente de desenvolvimento, teste e produção (no mínimo)
    O ambiente de devel deve possibilitar TDD
    Infra deve participar dos projetos desde o início [1]
    Infra deve participar das reuniões de devel [2]
    Devel deve participar das reuniões de infra [3]
    Ambiente de entrega contínua [4]
    Os desenvolvedores devem conseguir fazer o deploy sem interferência da infra [5]
    Monitoramento eficaz com processamento adequado dos eventos e métricas
    Capacidade de resposta rápida a incidentes e problemas
    Backup e restore confiável


1 - Desenvolvimento ágil (Ver as metodologias ágeis)

2 - Infraesturura ágil (Infraesturura ágil)
  Basicamente temos três tipos de ferramentas, são elas:  
    - Orquestradores (Fabric, Capistano, Func e Mcollective)
    - Ferramentas para gerenciamento de configurações (Algumas delas são Puppet, Chef, Cfegine e Salt)
    - Ferramentas para bootstrapping e provisionamento (ferramentas como o Kickstart, Cobbler e ansible que atuam neste segmento.)

  Equipe de infraestrutura ágil (inspirado no kanban):
  Equipes que trabalham com infraestrutura ágil também precisam de um método diferenciado de organização, normalmente 
  estas equipes estão trabalhando seguindo estes eixos:

    Gerenciamento da infra (VAGRANT)
    Ambientes temporários (container ou virtualização : LXC, DOCKER, OpenVZ ou ProxMox)
    Provisionamento (Chef, Puppet ou Ansible)
    Versionamento do código e arquivos de configuração (git - gitlab)
    execução de teste no ambiente (Cucumber)
    Organização de atividades de forma visual (KANBAN BOARD o LOGSTASH)
    Pipeline de entrega (jenkins)
    Trabalho em pares
    Divisão das atividades em sprints
    Reuniões ágeis diárias (standup meeting de 10 minutos - em pé)
    Reuniões ágeis periódicas (retrospectiva e planejamento de sprints).
    Painel do DevOps
    Colaboração
    
    Tipo de ferramenta	                Ferramentas
    ---------------------------------   -------------------------------------------------------------------
    Automação da infraestrutura	        Bcfg2, CFEngine, Chef, CloudFormation, IBM Tivoli, Puppet
    Automação da implementação	        Capistrano, ControlTier, Func, Glu, RunDeck
    Infraestrutura como serviço	Amazon  Web Services, CloudStack, IBM SmartCloud, OpenStack, Rackspace
    Automação do desenvolvimento	      Ant, Maven, Rake, Gradle
    Automação dos testes	J             Unit, Selenium, Cucumber, easyb
    Controle de versão	                Subversion, Git, IBM Rational ClearCase
    Integração contínua	                Jenkins, CruiseControl, IBM Rational BuildForge 
    Gerenciamento de projetos           Redmine
    Qualidade de código                 Sonar, EMMA
    Monitoramento de aplicações         Openshift Metrics, JON, JavaMelody
    ---------------------------------   -------------------------------------------------------------------
    
    Provisionamento (conceito "indepotente")
    http://www.dualtec.com.br/blog/2014/02/18/as-ferramentas-de-trabalho-do-devops/#rmcl
    http://devopsbr.com/2013/10/23/devops-na-pratica-comecando-a-trabalhar-com-o-chef/
    http://devopsbr.com/2014/04/29/aprenda-a-trabalhar-com-chef/
  
