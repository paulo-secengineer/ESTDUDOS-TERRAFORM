LAB de Import

- OBJETIVO: <Importar recursos existentes no Azure criado via portal para dentro do state do Terraform e os gerenciarem pelo >.

1 - Criar um Resource Group via portal [ok]
2 - Criar um Public IP via portal dentro do RG criado [ok]
3 - Coletar informações para importar os recursos para o Terraform [ok]
4 - Configurar o import Block para importar os recursos criados pelo portal [ok]
5 - Configurar o resource Block do recurso que temos que importar [ok]
6 - Utilizar comands basicos para planejar e importar os recursos do Azure para o state [ok]
6.1 - Adicionar uma Tag no RG via terraform e verifcar se deu certo  no portal[ok]
7 - Verificar se cosegue gerenciar o recurso via Terraform [ok]
8 - Utilizar o comand --generate-config-out para geração automatica de blocos de recursos [ok]
8.1 - foi criado o arquivo publicip-import.tf.
9 - Aplicar modificações via terraform nos recursos importados [OK]
9.1 - Adionado uma Tag no Public Ip via Terraform
10 -  Criar uma pasta pro arquivo gerado do Public Ip para depois criar um module para chamar [ok]
10.1 - Ecluir o arquivo generado e movido para a pasta public_ip [ok]
11 - Dar um Terraform Plan
11.1 - Deu erro, pois tive que mudar o endereço da chamada do modulo, pois como exlcui o arquivo gerado pelo Azure, o state tava com esse endereço antigo, tive que usar o state mv para direcionar para a pasta nova criada public_ip [ok]
12 -  Dei o Terraform Destroy e deu certo, entao o terraform conseguiu gerenciar todos os recursos importados do Azure [ok]