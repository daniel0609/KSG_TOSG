function [lon, lat] = zad1 (i)

fid = fopen('C:\Users\Daniel\Documents\WorkspaceMatlab\PrzeksztalcanieDanych\Zad1\format_10.geo');

lon = fscanf(fid, '%d %d %f');
disp('\n');
fclose(fid);
end