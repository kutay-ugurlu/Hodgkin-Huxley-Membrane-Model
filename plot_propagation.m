function plot_propagation(matrix,target)

if nargin == 1
    target = gca;
end

[t,~] = size(matrix);

for i = 1:t
    plot(target,matrix(i,:))
    pause(0.001)
    title([num2str(i/t*100,3),'% completed.'])
    drawnow
end
end
