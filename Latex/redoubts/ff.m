net = feedforwardnet(50);
net.divideParam.trainRatio = 0.7;
net.divideParam.valRatio = 0.3;
net.trainParam.epochs = 500;
net.trainParam.max_fail = 500;
net.trainParam.min_grad = 0;
net = train(net, X', Y');
gensim(net);