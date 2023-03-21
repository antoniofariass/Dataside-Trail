from pyspark.sql import SparkSession

if __name__  == '__main__':
    spark = SparkSession.builder.appName('Streaming').getOrCreate()

    jsonschema = 'nome STRING, postagem STRING, data INT'

    df = spark.readStream.schema(jsonschema).json('streaming')

    diretorio = '/home/temp'

    stcal = df.writeStream.format('console').outputMode('append').trigger(processingTime='5 seconds').option('checkpointLocation', diretorio).start()

