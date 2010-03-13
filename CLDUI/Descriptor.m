function Cdescriptor=Descriptor(I)
%I=imread('Lenna.jpg');
I=imresize(I,[512 512],'bicubic');
hsv=(360*rgb2hsv(I));
hue=hsv(:,:,1);
r=I(:,:,1);
g=I(:,:,2);
b=I(:,:,3);
[dif,sm]=RGB2HMMD(r,g,b);
Cdescriptor=colorstructure(hue,sm,dif);
Cdescriptor=reshape(Cdescriptor,1,64);