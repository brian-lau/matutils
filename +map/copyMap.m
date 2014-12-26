% Make a new containers.Map by copying selected key/value pairs
% from another
% copyKeys must be cell array of valid keys, 
% newKeys must have the same size as copyKeys
function newMap = copyMap(map,copyKeys,newKeys)

if nargin < 3
   newKeys = copyKeys;
end

% for i = 1:length(copyKeys)
%    vals{i} = map(copyKeys{i});
% end
vals = map.values(copyKeys);

newMap = containers.Map(newKeys,vals);
