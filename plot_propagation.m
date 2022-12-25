function plot_propagation(matrices,targets,titles,UI_obj)

n_mat = length(matrices);
n_targets = length(targets);
n_titles = length(titles);

if ~(n_targets == n_mat) || ~(n_targets == n_titles)
    error('Input sizes do not match the data!');
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

t_total = times(1);
for t = 1:t_total
    UI_obj.Text = [num2str(t/t_total*100,3),"% completed."];
    if t == 1
        for j = 1:n_mat
            matrix = matrices{j};
            min_mat = min(matrix,[],'all');
            max_mat = max(matrix,[],'all');
            if min_mat == max_mat
                min_mat = 0.9*min_mat;
                max_mat = 1.1*max_mat;
            end
            ylim manual
            ylim(targets{j},[min_mat,max_mat])
        end
    end
    for i = 1:n_mat
        plot(targets{i},matrices{i}(t,:),'Linewidth',3)
        title(targets{i},titles{i})
    end
    drawnow
end
end
