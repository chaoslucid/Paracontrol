function H = UniqueM(X)

% Establish size of data
[~, m] = size(X);

% Housekeeping
H = zeros(1,m);

for Column = 1:m
    % Assemble observed alphabet
    Alphabet = unique(X(:,Column));
    
	N=numel(Alphabet);
    if  all(isnan(X(:,Column)))
    N=-1;
    end
    % Housekeeping  	
    H(Column) = N;
end