img = imread('~/Desktop/TMA_0471_HE_08_2.tif');

%RGB-->LAB transformation
cform = makecform('srgb2lab');
lab = applycform(img,cform);

%Gaussian Blur
h = fspecial('gaussian',[5 5],2);
lab = imfilter(lab,h,'same');


%create a double 
ab = double(lab(:,:,1:3));
nrows = size(ab,1);
ncols = size(ab,2);
ab = reshape(ab,nrows*ncols,3);

nColors = 4;
% repeat the clustering 3 times to avoid local minima
[cluster_idx cluster_center] = kmeans(ab,nColors,'distance','sqEuclidean', 'Replicates',3);

pixel_labels = reshape(cluster_idx,nrows,ncols);
%nuclei=pixel_labels==1;
imshow(pixel_labels,[]), title('image labeled by cluster index');