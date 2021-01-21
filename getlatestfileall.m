function latestfile = getlatestfileall(directory)
%This function returns the latest file from the directory passsed as input
%argument

%Get the directory contents
dirc = dir(directory);
% dirc.name
%Filter out all the folders.
% dirc = dirc(find(~cellfun(@isdir,{dirc(:).name})));
dirc=dirc(~ismember({dirc.name},{'.','..'}));
% dirc=dirc(contains({dirc.name},{'.xlsx','xls','.txt','.csv'}));
% dirc.name
%I contains the index to the biggest number which is the latest file
[~,I] = max([dirc(:).datenum]);
% dirc(I).name
newdir=strcat(directory,'\',dirc(I).name);

if isfolder(newdir)
   latestfile=getlatestfileall(newdir);
elseif contains(newdir,{'txt','csv','xls','xlsx'})
    latestfile = newdir;
   
end

end