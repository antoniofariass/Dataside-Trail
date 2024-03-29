from pyspark.sql import SparkSession
from pyspark.sql.functions import *

if __name__ == "__main__":
    spark = SparkSession.builder.appName("Exemplo").getOrCreate()
    arqschema = 'id INT, nome STRING, status STRING, cidade STRING, vendas INT, data STRING'
    despachantes = spark.read.csv('despachante.csv', header=False, schema=arqschema)
    calculo = despachantes.select('data').groupBy('data').count()
    calculo.write.format('console').save()
    spark.show()