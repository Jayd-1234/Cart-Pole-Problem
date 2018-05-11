clear net;
clear tempP;
tempP = [];
% for k = 1:2004 
%     P = [x(k,:);xdot(k,:);Y(k,:);thetadot(k,:)]; tempP = [tempP P]; 
% end
P = [x, xdot, Y, thetadot];
net = feedforwardnet(10);
net.divideParam.trainRatio = 0.7;
net.divideParam.valRatio = 0.3;
net.trainParam.epochs = 1000;
net.trainParam.max_fail = 1000;
net.trainParam.min_grad = 0;
net = train(net, X', P');