filePathCut = 'C:\Users\tobias\Desktop\analysis\bataudio\AugSept2017\cut';
fileListCut = dir([filePathCut '\' '*.mat']);
filePathShort = 'C:\Users\tobias\Desktop\analysis\bataudio\AugSept2017\cut\short';
fileListShort = dir([filePathShort '\' '*.mat']);

for call_i = 1:length(fileListCut)
   load(fullfile(filePathCut,fileListCut(call_i).name),'cut');
   callLength = 1000 * (length(cut)/192000);
   if callLength <= 25
       movefile(fullfile(filePathCut,fileListCut(call_i).name),filePathShort);
   end
end