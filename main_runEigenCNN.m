%% Name: main_runEigenCNN.m
%
%  Perfrom a hyperspectral image denoiser, called Eigen-CNN, proposed in the following paper:
%
% Lina Zhuang, Michael K. Ng, Lianru Gao, and Zhicheng Wang,
%       "Eigen-CNN: Eigenimages Plus Eigennoise Level Maps Guided Network for
%        Hyperspectral Image Denoising,"
%        IEEE Transactions on Geoscience and Remote Sensing (2024).
%
%  URL: https://ieeexplore.ieee.org/abstract/document/10475370
%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% IMPORTANT NOTE:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%      Please install MatConvNet toolbox for your matlab software before run this matlab demo.
%
%      MatConvNet is an implementation of Convolutional Neural Networks (CNNs) for MATLAB.
%      The MatConvNet package  is available at the
%      matconvnet web page:  https://github.com/vlfeat/matconvnet?tab=readme-ov-file
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Author: Lina Zhuang (linazhuang@qq.com; zhuangln@aircas.ac.cn)
%         Sep., 2024
%%


clear;clc;close all;
addpath('EigenCNN');
addpath('datasets');
load('img_noisy.mat');
load('img_clean.mat');
k_subspace = 6;
spatialVariant = 0;
img_noisy = single(img_noisy);
img_clean = single(img_clean);

%%%%%%%%%%%%%%%%           Eigen-CNN        %%%%%%%%%%%%%%%%%%%%%%%%%

img_EigenCNN  = EigenCNN(img_noisy, k_subspace, spatialVariant  );


%%%%%%%%%%%%%%%%  show original and denoised image   %%%%%%%%%%%
sz = size(img_noisy);
Y_noisy = reshape(img_noisy, [], sz(3))';
Y_clean = reshape(img_clean, [], sz(3))';
Y_EigenCNN = reshape(img_EigenCNN, [], sz(3))';

figure(100);
set(gcf,'outerposition',get(0,'screensize'))

band_show=50;
img_band_show=img_noisy(:,:,band_show);
img_band_show_sort=sort(img_band_show(:));
cmin=img_band_show_sort(fix(size(img_band_show_sort,1)*0.02));
cmax=img_band_show_sort(fix(size(img_band_show_sort,1)*0.98));


subplot(1,2,1);
imshow(img_noisy(:,:,band_show),[cmin, cmax]);
title(['Noisy image, MPSNR = ',num2str(fix(MPSNR( Y_noisy, Y_clean))),' dB']);
subplot(1,2,2);
imshow(img_EigenCNN(:,:,band_show),[cmin, cmax]);
title(['Image (estimated by Eigen-CNN), MPSNR = ',num2str(fix(MPSNR( Y_EigenCNN, Y_clean))),' dB']);










