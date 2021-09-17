import Cocoa
import CreateML

let data = try MLDataTable(contentsOf: URL(fileURLWithPath: "/Users/oleksiivasyliev/Desktop/SwiftCourse/Twittermenti/twitter-sanders-apple3.csv"))

let(trainingData, testingData) = data.randomSplit(by: 0.8, seed: 5)

let sentimentClassifier = try MLTextClassifier(trainingData: trainingData, textColumn: "text", labelColumn: "class")

let evaluationMetrics = sentimentClassifier.evaluation(on: testingData, textColumn: "text", labelColumn: "class")

let evaluationAccuracy = (1.0 - evaluationMetrics.classificationError) * 100

let metadata = MLModelMetadata(author: "Oleksii VAsy;iev", shortDescription: "A model trained to classify sentiment on Tweeter", version: "1.0")

try sentimentClassifier.write(toFile: "/Users/oleksiivasyliev/Desktop/SwiftCourse/Twittermenti/TweetSentimentClassifier.mlmodel" )

try sentimentClassifier.prediction(from: "@Apple is a terrible company")
