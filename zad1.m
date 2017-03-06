function [data, lon, lat] = zad1 (i)

fid = fopen('C:\Users\Daniel\Documents\WorkspaceMatlab\PrzeksztalcanieDanych\Zad1\format_1.geo');
deg = char(176)
min = char(39)
sec = char(34)
lon = 0;
lat = 0;
if(i == 1)
    data = fscanf(fid, ['%d' deg '%d' min '%f' sec 'N' '%d' deg '%d' min '%f' sec 'E']);
    [a, b] = size(data);
    a=a/6-1;
    for i=0:1:a
        k=i*6;
        l=i+1;
        lon(l) = data(1+k)+data(2+k)/60+data(3+k)/3600;
        lat(l) = data(4+k)+data(5+k)/60+data(6+k)/3600;
    end
end
%==========================================================================
if(i == 10)
    data = fscanf(fid, '%d %d %f  %d %d %f');
    [a, b] = size(data);
    a=a/6-1;
    for i=0:1:a
        k=i*6;
        l=i+1;
        lon(l) = data(1+k)+data(2+k)/60+data(3+k)/3600;
        lat(l) = data(4+k)+data(5+k)/60+data(6+k)/3600;
    end
end
fclose(fid);



end