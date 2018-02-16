function [  ] = TX_concatenate_data( filename,duration,data_set )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
fs = 1000;
data = sqdread(filename);

if exist('data_set')
    data_cat = sqdread(data_set);
    new_data = cat(1,data,data_cat);
else
data_cat = zeros(duration * fs, 192);
new_data = cat(1,data,data_cat);
end


sqdwrite('R0368a.sqd',['cat_' filename],new_data)

end


