# Matrix
Matrix Multiply using hadoop

Features
---
1. Faz a multiplicacao distribuida de uma matriz muito grande

Roteiro de execução
---
Faça a configuração do Cluster do Hadoop com 3 nós usando containers Docker disponível em https://github.com/topicos-sistemas-distribuidos/hadoop-cluster-docker

1. Vá até o nó master do hadoop. 

Obs: Inicie o hdfs e o yarn. É preciso garantir que o nó master tenha instalado o git, o maven e um editor de texto.  

Para iniciar o Hadoop no master e nos nós slaves:
```
./start-hadoop.sh
```
Instalação do Git, Vim, e Maven:
```
apt-get update && apt-get install -y git vim maven
```

2. Faça o clone desse repositório no nó master.
```
$ git clone https://github.com/topicos-sistemas-distribuidos/matrix.git
```

3. Execute o script de acordo com a feature compilada
```
$./my-matrix.sh -MatrixMultiply
```
Obs: Os scripts precisam de permissão para executar. Por exemplo: chmod +x my-matrix.sh

Para a execução do my-matrix.sh - O output deverá ser um arquivo com a matriz resultado

4. Para listar os arquivos do HDFS:
```
hdfs dfs -ls
```

5. Para visualizar o arquivo de saida gerado: 
```
hdfs dfs -cat output-MatrixMultiply/part-r-00000
```
