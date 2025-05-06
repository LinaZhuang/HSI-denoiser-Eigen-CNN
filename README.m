%%  The code and data herein distributed reproduces the results published in
%  the paper 
%
%  Lina Zhuang, Michael K. Ng, Lianru Gao, and Zhicheng Wang,
%       "Eigen-CNN: Eigenimages Plus Eigennoise Level Maps Guided Network for
%        Hyperspectral Image Denoising,"
%        IEEE Transactions on Geoscience and Remote Sensing (2024).
%
%  URL: https://ieeexplore.ieee.org/abstract/document/10475370
%
%%  Notes:
%
%   1) Package instalation: unzip the files to a directory and run the
%   script of "main_runEigenCNN.m", which reproduce the 
%    results of Eigen-CNN reported in above paper.
%
%
%   2) MatConvNet toolbox must be installed before running this demo.
%      MatConvNet is an implementation of Convolutional Neural Networks
%      (CNNs) for MATLAB. The MatConvNet package  is available at the
%      matconvnet web page:
%      https://github.com/vlfeat/matconvnet?tab=readme-ov-file
%
%
%   3)  EigenCNN.m FastHyIn.m  script implents the respective algorithm.
%      
%% ACKNOWLEDGMENTS
%
% The authors acknowledge the following individuals and organisations:
%
%
%   - Prof. Paolo Gamba from Pavia university, 
%     for making the Pavia Centre data set available to the community.
%
%   - Prof. David Landgrebe and Larry Biehl from Purdue University, 
%     for making the Washington DC Mall data set available to the community.
%

 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Author: Lina Zhuang, Sep. 2024
%



MatConvNetをGPUでCompileしようと思うとエラーが出まくる
大体'--std=c++11'とDEDEBUGみたいなやつ

CPUバージョンならコンパイルできるが、今度はEigenCNN_core.pでエラーが起きる
ChatGPTによると、勝手にGPUで扱われているらしい

詰み。
