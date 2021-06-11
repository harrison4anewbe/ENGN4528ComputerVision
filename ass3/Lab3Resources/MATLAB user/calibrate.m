% CLAB3 


%   
I = imread('stereo2012a.jpg');

imshow(I);
display('click mouse for 6 features...')
uv = ginput(6);    % Graphical user interface to get 6 points
display(uv);



function C = calibrate(im, XYZ, uv)
%% TASK 1: CALIBRATE
%
% Function to perform camera calibration
%
% Usage:   K = calibrate(image, XYZ, uv)
%
%   Where:   image - is the image of the calibration target.
%            XYZ - is a N x 3 array of  XYZ coordinates
%                  of the calibration target points. 
%            uv  - is a N x 2 array of the image coordinates
%                  of the calibration target points.
%            K   - is the 3 x 4 camera calibration matrix.
%  The variable N should be an integer greater than or equal to 6.
%
%  This function plots the uv coordinates onto the image of the calibration
%  target. 
%
%  It also projects the XYZ coordinates back into image coordinates using
%  the calibration matrix and plots these points too as 
%  a visual check on the accuracy of the calibration process.
%
%  Lines from the origin to the vanishing points in the X, Y and Z
%  directions are overlaid on the image. 
%
%  The mean squared error between the positions of the uv coordinates 
%  and the projected XYZ coordinates is also reported.
%
%  The function should also report the error in satisfying the 
%  camera calibration matrix constraints.



end


function H = homography(u2Trans, v2Trans, uBase, vBase)
%% TASK 2: 
% Computes the homography H applying the Direct Linear Transformation 
% The transformation is such that 
% p = H p' , i.e.,:  
% (uBase, vBase, 1)'=H*(u2Trans , v2Trans, 1)' 
% 
% INPUTS: 
% u2Trans, v2Trans - vectors with coordinates u and v of the transformed image point (p') 
% uBase, vBase - vectors with coordinates u and v of the original base image point p  
% 
% OUTPUT 
% H - a 3x3 Homography matrix  
% 
% your name, date 



end

function [R,Q] = rq(A)
%% RQ factorisation

[q,r]=qr(A');       % Matlab has QR decomposition but not RQ decomposition  
                    % with Q: orthonormal and R: upper triangle. Apply QR
                    % for the A-transpose, then A = (qr)^T = r^T*q^T = RQ
R=r';
Q=q';
end
