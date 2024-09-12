function  image_EigenCNN     = EigenCNN(img_noisy,k_subspace, spatialVariant)
%
%
% Input: -----------
% img_noisy        hyperspectral data set with (L x C x N),
%                where L, C, and N are the number of rows,
%                columns, and bands, respectively.
%
%
% k_subspace     dimension of spectral subspace (suggested value: 6)
%
%
% spatialVariant            0 --  spatial invariant noise.
%                           1 --  spatial variant noise. If spatialVariant
%                           is set to 0, the code handles an image with
%                           spatially invariant noise (the common case). If
%                           set to 1, the code handles an image with
%                           spatially variant noise (the special case).
%                            
%
% Output: -----------
% image_EigenCNN Denoised hyperspectral data with (L x C x N)
%
%
% ---------------------------- -------------------------------------------
% See more details in papers:
%   [1] Lina Zhuang, Michael K. Ng, Lianru Gao, and Zhicheng Wang,
%       "Eigen-CNN: Eigenimages Plus Eigennoise Level Maps Guided Network for
%        Hyperspectral Image Denoising,"
%        IEEE Transactions on Geoscience and Remote Sensing (2024). 
%        URL:https://ieeexplore.ieee.org/abstract/document/10475370
%
%   [2] Lina Zhuang and Jose M. Bioucas-Dias,
%       "Fast hyperspectral image denoising and inpainting based on low rank
%       and sparse representations," IEEE Journal of Selected
%       Topics in Applied Earth Observations and Remote Sensing, 2017.
%       URL: http://www.lx.it.pt/~bioucas/files/submitted_ieee_jstars_2017.pdf
%
%% -------------------------------------------------------------------------
%
% Copyright (Sep., 2024):
%             Lina Zhuang (linazhuang@qq.com; zhuangln@aircas.ac.cn)
%            
%
%
% Eigen-CNN is distributed under the terms of
% the GNU General Public License 2.0.
%
% Permission to use, copy, modify, and distribute this software for
% any purpose without fee is hereby granted, provided that this entire
% notice is included in all copies of any software which is or includes
% a copy or modification of this software and in all copies of the
% supporting documentation for such software.
% This software is being provided "as is", without any express or
% implied warranty.  In particular, the authors do not make any
% representation or warranty of any kind concerning the merchantability
% of this software or its fitness for any particular purpose."
% ---------------------------------------------------------------------


 
image_EigenCNN  = EigenCNN_core(img_noisy, k_subspace, spatialVariant);

 