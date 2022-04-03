I = imread('4299Original.jpg');
[m,n,~]=size(I);
R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);
histogram(R);
[fr,xr] = ksdensity(R(:)); 
[fg,xg] = ksdensity(G(:)); 
[fb,xb] = ksdensity(B(:)); 
fr = fr.* (m*n);
fg = fg.* (m*n);
fb = fb.* (m*n);
figure;
hold on
plot(xr,fr,'r','LineWidth',2);
plot(xg,fg,'g','LineWidth',2);
plot(xb,fb,'b','LineWidth',2);
% cdfplot(fr);
% cdfplot(fg);
% cdfplot(fb);
hold off
box on
axis([0 255 0 12000])
xlabel('Intensity')
ylabel('Counts')
t = title('RGB Histograms');
