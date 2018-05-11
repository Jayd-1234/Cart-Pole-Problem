net = feedforwardnet(50);
net.divideParam.trainRatio = 0.7;
net.divideParam.valRatio = 0.3;
net.trainParam.epochs = 500;
net.trainParam.max_fail = 500;
net.trainParam.min_grad = 0;
net = train(net, X', Y');
gensim(net);

% plot(D1)
% hold on
% plot(D)

% plot(error)

% rbf = newrb(X', D');

% C=num2cell(X)
% T=num2cell(D)
% net = elmannet(100:200,100);
% net.divideParam.trainRatio = 0.7;
% net.divideParam.valRatio = 0.3;
% net.trainParam.epochs = 50;
% net.trainParam.max_fail = 500;
% net.trainParam.min_grad = 0;
% [Xs,Xi,Ai,Ts] = preparets(net,C',T');
% net = train(net,Xs,Ts,Xi,Ai);

% clear net;
% clear tempP;
% tempP = [];
% % for k = 1:2004 
% %     P = [x(k,:);xdot(k,:);Y(k,:);thetadot(k,:)]; tempP = [tempP P]; 
% % end
% P = [x, xdot, Y, thetadot];
% net = feedforwardnet(10);
% net.divideParam.trainRatio = 0.7;
% net.divideParam.valRatio = 0.3;
% net.trainParam.epochs = 1000;
% net.trainParam.max_fail = 1000;
% net.trainParam.min_grad = 0;
% net = train(net, X', P');
