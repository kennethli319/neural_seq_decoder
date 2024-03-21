import argparse
import random
import os

def main(args):
    # take model name form argument
    model_name = str(args.modelName)
    print('Training model: ' + model_name)

    # set the arguments for the model
    args = vars(args)
    args['outputDir'] = './logs/speech_logs/' + model_name
    args['datasetPath'] = './data/ptDecoder_ctc'
    args['seqLen'] = 150
    args['maxTimeSeriesLen'] = 1200
    args['batchSize'] = 64
    args['lrStart'] = 0.02
    args['lrEnd'] = 0.02
    args['nUnits'] = 1024
    args['nBatch'] = 10000 #3000
    args['nLayers'] = 5
    # get a random seed
    args['seed'] = random.randint(0, 100)
    args['nClasses'] = 40
    args['nInputFeatures'] = 256
    args['dropout'] = 0.4
    args['whiteNoiseSD'] = 0.8
    args['constantOffsetSD'] = 0.2
    args['gaussianSmoothWidth'] = 2.0
    args['strideLen'] = 4
    args['kernelLen'] = 32
    args['bidirectional'] = True
    args['l2_decay'] = 1e-5

    from neural_decoder.neural_decoder_trainer import trainModel

    trainModel(args)

if __name__ == '__main__':

    parser = argparse.ArgumentParser(description='Train model')
    # model name
    parser.add_argument('-m', '--modelName', type=str, help='Name of the model')
    # gpu idx
    parser.add_argument('-g', '--gpuIdx', type=str, help='GPU index')

    args = parser.parse_args()

    # set CUDA VISIABLE DEVICES to a idle GPU
    os.environ["CUDA_VISIBLE_DEVICES"] = args.gpuIdx

    main(args)