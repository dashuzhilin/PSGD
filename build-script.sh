rm -rf classes/*

javac -classpath /opt/hadoop/hadoop-core-0.20.203.0.jar -d classes/ PSGDRandomSplitter.java PSGDSplitterMapper.java PSGDSplitterReducer.java FloatArray.java ReaderWriterClass.java Tensor.java DenseTensor.java Matrix.java 
jar -cvf PSGDRandomSplitter.jar -C classes/ ./

rm -rf classes/*

javac -classpath /opt/hadoop/hadoop-core-0.20.203.0.jar -d classes/ PSGDCombiner.java PSGDCombinerMapper.java PSGDCombinerReducer.java FloatArray.java ReaderWriterClass.java Tensor.java DenseTensor.java Matrix.java 
jar -cvf PSGDCombiner.jar -C classes/ ./

rm -rf classes/*
