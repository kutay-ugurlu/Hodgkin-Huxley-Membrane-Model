function plot_propagation(matrices,targets,titles)

n_mat = length(matrices);
n_targets = length(targets);
n_titles = length(titles);

if ~(n_targets == n_mat)
    error('Axes does not match the data!');
end

if n_mat == 1
    if nargin == 1
        targets = gca;
    end
end

times = arrayfun(@(x) size(x{1},1),matrices);

if ~(sum(times-times(1))==0) % if All elements are not same
    error('Matrices have different time instances!');
end


for t = 1:times(1)
    for i = 1:n_mat
        matrix = matrices{i};
        min_mat = min(matrix,[],'all');
        max_mat = max(matrix,[],'all');
        plot(targets{i},matrix(t,:))
        title(targets{i},titles{i})
        ylim manual
        ylim(targets{i},[min_mat,max_mat])
    end
    drawnow
end
end
