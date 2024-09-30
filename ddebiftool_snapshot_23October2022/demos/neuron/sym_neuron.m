function varargout=sym_neuron(action,varargin)
%% Automatically generated with matlabFunction
% 
%#ok<*DEFNU,*INUSD,*INUSL>

switch action
  case 'ntau'
   varargout{1}=3;
   return
  case 'npar'
   varargout{1}=7;
   return
  case 'tp_del'
   varargout{1}=0;
   return
  case 'maxorder'
   varargout{1}=5;
   return
  case 'directional_derivative'
   varargout{1}=0;
   return
end
ind=varargin{1};
order=varargin{2};
nout=varargin{3};
f=str2func(sprintf('sym_neuron_%s_%d_%d',action,ind,order));
varargout=cell(nout,1);
[varargout{:}]=f(varargin{4:end});




function [out1,out2] = sym_neuron_rhs_1_0(x1_1,x2_1,x1_2,x2_2,x1_3,x2_3,x1_4,x2_4,kappa,beta,a12,a21,tau1,tau2,taus)
%SYM_NEURON_RHS_1_0
%    [OUT1,OUT2] = SYM_NEURON_RHS_1_0(X1_1,X2_1,X1_2,X2_2,X1_3,X2_3,X1_4,X2_4,KAPPA,BETA,A12,A21,TAU1,TAU2,TAUS)

%    This function was generated by the Symbolic Math Toolbox version 8.6.
%    23-Jun-2022 23:43:54

out1 = -kappa.*x1_1+a12.*tanh(x2_3)+beta.*tanh(x1_4);
if nargout > 1
    out2 = -kappa.*x2_1+a21.*tanh(x1_2)+beta.*tanh(x2_4);
end


function [out1,out2] = sym_neuron_rhs_1_1(x1_1,x2_1,x1_2,x2_2,x1_3,x2_3,x1_4,x2_4,kappa,beta,a12,a21,tau1,tau2,taus,x1_1_d,x2_1_d,x1_2_d,x2_2_d,x1_3_d,x2_3_d,x1_4_d,x2_4_d,kappa_d,beta_d,a12_d,a21_d,tau1_d,tau2_d,taus_d)
%SYM_NEURON_RHS_1_1
%    [OUT1,OUT2] = SYM_NEURON_RHS_1_1(X1_1,X2_1,X1_2,X2_2,X1_3,X2_3,X1_4,X2_4,KAPPA,BETA,A12,A21,TAU1,TAU2,TAUS,X1_1_D,X2_1_D,X1_2_D,X2_2_D,X1_3_D,X2_3_D,X1_4_D,X2_4_D,KAPPA_D,BETA_D,A12_D,A21_D,TAU1_D,TAU2_D,TAUS_D)

%    This function was generated by the Symbolic Math Toolbox version 8.6.
%    23-Jun-2022 23:43:54

t2 = tanh(x1_2);
t3 = tanh(x1_4);
t4 = tanh(x2_3);
out1 = a12_d.*t4+beta_d.*t3-kappa.*x1_1_d-kappa_d.*x1_1-a12.*x2_3_d.*(t4.^2-1.0)-beta.*x1_4_d.*(t3.^2-1.0);
if nargout > 1
    t5 = tanh(x2_4);
    out2 = a21_d.*t2+beta_d.*t5-kappa.*x2_1_d-kappa_d.*x2_1-a21.*x1_2_d.*(t2.^2-1.0)-beta.*x2_4_d.*(t5.^2-1.0);
end


function [out1,out2] = sym_neuron_rhs_1_2(x1_1,x2_1,x1_2,x2_2,x1_3,x2_3,x1_4,x2_4,kappa,beta,a12,a21,tau1,tau2,taus,x1_1_d,x2_1_d,x1_2_d,x2_2_d,x1_3_d,x2_3_d,x1_4_d,x2_4_d,x1_1_d_d,x2_1_d_d,x1_2_d_d,x2_2_d_d,x1_3_d_d,x2_3_d_d,x1_4_d_d,x2_4_d_d,kappa_d,beta_d,a12_d,a21_d,tau1_d,tau2_d,taus_d,kappa_d_d,beta_d_d,a12_d_d,a21_d_d,tau1_d_d,tau2_d_d,taus_d_d)
%SYM_NEURON_RHS_1_2
%    [OUT1,OUT2] = SYM_NEURON_RHS_1_2(X1_1,X2_1,X1_2,X2_2,X1_3,X2_3,X1_4,X2_4,KAPPA,BETA,A12,A21,TAU1,TAU2,TAUS,X1_1_D,X2_1_D,X1_2_D,X2_2_D,X1_3_D,X2_3_D,X1_4_D,X2_4_D,X1_1_D_D,X2_1_D_D,X1_2_D_D,X2_2_D_D,X1_3_D_D,X2_3_D_D,X1_4_D_D,X2_4_D_D,KAPPA_D,BETA_D,A12_D,A21_D,TAU1_D,TAU2_D,TAUS_D,KAPPA_D_D,BETA_D_D,A12_D_D,A21_D_D,TAU1_D_D,TAU2_D_D,TAUS_D_D)

%    This function was generated by the Symbolic Math Toolbox version 8.6.
%    23-Jun-2022 23:43:54

t2 = tanh(x1_2);
t3 = tanh(x1_4);
t4 = tanh(x2_3);
t5 = tanh(x2_4);
t6 = t2.^2;
t7 = t3.^2;
t8 = t4.^2;
t9 = t5.^2;
t10 = t6-1.0;
t11 = t7-1.0;
t12 = t8-1.0;
out1 = -kappa_d.*x1_1_d_d-kappa_d_d.*x1_1_d-a12_d.*t12.*x2_3_d_d-a12_d_d.*t12.*x2_3_d-beta_d.*t11.*x1_4_d_d-beta_d_d.*t11.*x1_4_d+a12.*t4.*t12.*x2_3_d.*x2_3_d_d.*2.0+beta.*t3.*t11.*x1_4_d.*x1_4_d_d.*2.0;
if nargout > 1
    t13 = t9-1.0;
    out2 = -kappa_d.*x2_1_d_d-kappa_d_d.*x2_1_d-a21_d.*t10.*x1_2_d_d-a21_d_d.*t10.*x1_2_d-beta_d.*t13.*x2_4_d_d-beta_d_d.*t13.*x2_4_d+a21.*t2.*t10.*x1_2_d.*x1_2_d_d.*2.0+beta.*t5.*t13.*x2_4_d.*x2_4_d_d.*2.0;
end


function [out1,out2] = sym_neuron_rhs_1_3(x1_1,x2_1,x1_2,x2_2,x1_3,x2_3,x1_4,x2_4,kappa,beta,a12,a21,tau1,tau2,taus,x1_1_d,x2_1_d,x1_2_d,x2_2_d,x1_3_d,x2_3_d,x1_4_d,x2_4_d,x1_1_d_d,x2_1_d_d,x1_2_d_d,x2_2_d_d,x1_3_d_d,x2_3_d_d,x1_4_d_d,x2_4_d_d,x1_1_d_d_d,x2_1_d_d_d,x1_2_d_d_d,x2_2_d_d_d,x1_3_d_d_d,x2_3_d_d_d,x1_4_d_d_d,x2_4_d_d_d,kappa_d,beta_d,a12_d,a21_d,tau1_d,tau2_d,taus_d,kappa_d_d,beta_d_d,a12_d_d,a21_d_d,tau1_d_d,tau2_d_d,taus_d_d,kappa_d_d_d,beta_d_d_d,a12_d_d_d,a21_d_d_d,tau1_d_d_d,tau2_d_d_d,taus_d_d_d)
%SYM_NEURON_RHS_1_3
%    [OUT1,OUT2] = SYM_NEURON_RHS_1_3(X1_1,X2_1,X1_2,X2_2,X1_3,X2_3,X1_4,X2_4,KAPPA,BETA,A12,A21,TAU1,TAU2,TAUS,X1_1_D,X2_1_D,X1_2_D,X2_2_D,X1_3_D,X2_3_D,X1_4_D,X2_4_D,X1_1_D_D,X2_1_D_D,X1_2_D_D,X2_2_D_D,X1_3_D_D,X2_3_D_D,X1_4_D_D,X2_4_D_D,X1_1_D_D_D,X2_1_D_D_D,X1_2_D_D_D,X2_2_D_D_D,X1_3_D_D_D,X2_3_D_D_D,X1_4_D_D_D,X2_4_D_D_D,KAPPA_D,BETA_D,A12_D,A21_D,TAU1_D,TAU2_D,TAUS_D,KAPPA_D_D,BETA_D_D,A12_D_D,A21_D_D,TAU1_D_D,TAU2_D_D,TAUS_D_D,KAPPA_D_D_D,BETA_D_D_D,A12_D_D_D,A21_D_D_D,TAU1_D_D_D,TAU2_D_D_D,TAUS_D_D_D)

%    This function was generated by the Symbolic Math Toolbox version 8.6.
%    23-Jun-2022 23:43:54

t2 = tanh(x1_2);
t3 = tanh(x1_4);
t4 = tanh(x2_3);
t5 = tanh(x2_4);
t6 = t2.^2;
t7 = t3.^2;
t8 = t4.^2;
t9 = t5.^2;
t10 = t6-1.0;
t11 = t7-1.0;
t12 = t8-1.0;
out1 = a12_d.*t4.*t12.*x2_3_d_d.*x2_3_d_d_d.*2.0+a12_d_d.*t4.*t12.*x2_3_d.*x2_3_d_d_d.*2.0+a12_d_d_d.*t4.*t12.*x2_3_d.*x2_3_d_d.*2.0+beta_d.*t3.*t11.*x1_4_d_d.*x1_4_d_d_d.*2.0+beta_d_d.*t3.*t11.*x1_4_d.*x1_4_d_d_d.*2.0+beta_d_d_d.*t3.*t11.*x1_4_d.*x1_4_d_d.*2.0-a12.*t12.^2.*x2_3_d.*x2_3_d_d.*x2_3_d_d_d.*2.0-beta.*t11.^2.*x1_4_d.*x1_4_d_d.*x1_4_d_d_d.*2.0-a12.*t8.*t12.*x2_3_d.*x2_3_d_d.*x2_3_d_d_d.*4.0-beta.*t7.*t11.*x1_4_d.*x1_4_d_d.*x1_4_d_d_d.*4.0;
if nargout > 1
    t13 = t9-1.0;
    out2 = a21_d.*t2.*t10.*x1_2_d_d.*x1_2_d_d_d.*2.0+a21_d_d.*t2.*t10.*x1_2_d.*x1_2_d_d_d.*2.0+a21_d_d_d.*t2.*t10.*x1_2_d.*x1_2_d_d.*2.0+beta_d.*t5.*t13.*x2_4_d_d.*x2_4_d_d_d.*2.0+beta_d_d.*t5.*t13.*x2_4_d.*x2_4_d_d_d.*2.0+beta_d_d_d.*t5.*t13.*x2_4_d.*x2_4_d_d.*2.0-a21.*t10.^2.*x1_2_d.*x1_2_d_d.*x1_2_d_d_d.*2.0-beta.*t13.^2.*x2_4_d.*x2_4_d_d.*x2_4_d_d_d.*2.0-a21.*t6.*t10.*x1_2_d.*x1_2_d_d.*x1_2_d_d_d.*4.0-beta.*t9.*t13.*x2_4_d.*x2_4_d_d.*x2_4_d_d_d.*4.0;
end


function [out1,out2] = sym_neuron_rhs_1_4(x1_1,x2_1,x1_2,x2_2,x1_3,x2_3,x1_4,x2_4,kappa,beta,a12,a21,tau1,tau2,taus,x1_1_d,x2_1_d,x1_2_d,x2_2_d,x1_3_d,x2_3_d,x1_4_d,x2_4_d,x1_1_d_d,x2_1_d_d,x1_2_d_d,x2_2_d_d,x1_3_d_d,x2_3_d_d,x1_4_d_d,x2_4_d_d,x1_1_d_d_d,x2_1_d_d_d,x1_2_d_d_d,x2_2_d_d_d,x1_3_d_d_d,x2_3_d_d_d,x1_4_d_d_d,x2_4_d_d_d,x1_1_d_d_d_d,x2_1_d_d_d_d,x1_2_d_d_d_d,x2_2_d_d_d_d,x1_3_d_d_d_d,x2_3_d_d_d_d,x1_4_d_d_d_d,x2_4_d_d_d_d,kappa_d,beta_d,a12_d,a21_d,tau1_d,tau2_d,taus_d,kappa_d_d,beta_d_d,a12_d_d,a21_d_d,tau1_d_d,tau2_d_d,taus_d_d,kappa_d_d_d,beta_d_d_d,a12_d_d_d,a21_d_d_d,tau1_d_d_d,tau2_d_d_d,taus_d_d_d,kappa_d_d_d_d,beta_d_d_d_d,a12_d_d_d_d,a21_d_d_d_d,tau1_d_d_d_d,tau2_d_d_d_d,taus_d_d_d_d)
%SYM_NEURON_RHS_1_4
%    [OUT1,OUT2] = SYM_NEURON_RHS_1_4(X1_1,X2_1,X1_2,X2_2,X1_3,X2_3,X1_4,X2_4,KAPPA,BETA,A12,A21,TAU1,TAU2,TAUS,X1_1_D,X2_1_D,X1_2_D,X2_2_D,X1_3_D,X2_3_D,X1_4_D,X2_4_D,X1_1_D_D,X2_1_D_D,X1_2_D_D,X2_2_D_D,X1_3_D_D,X2_3_D_D,X1_4_D_D,X2_4_D_D,X1_1_D_D_D,X2_1_D_D_D,X1_2_D_D_D,X2_2_D_D_D,X1_3_D_D_D,X2_3_D_D_D,X1_4_D_D_D,X2_4_D_D_D,X1_1_D_D_D_D,X2_1_D_D_D_D,X1_2_D_D_D_D,X2_2_D_D_D_D,X1_3_D_D_D_D,X2_3_D_D_D_D,X1_4_D_D_D_D,X2_4_D_D_D_D,KAPPA_D,BETA_D,A12_D,A21_D,TAU1_D,TAU2_D,TAUS_D,KAPPA_D_D,BETA_D_D,A12_D_D,A21_D_D,TAU1_D_D,TAU2_D_D,TAUS_D_D,KAPPA_D_D_D,BETA_D_D_D,A12_D_D_D,A21_D_D_D,TAU1_D_D_D,TAU2_D_D_D,TAUS_D_D_D,KAPPA_D_D_D_D,BETA_D_D_D_D,A12_D_D_D_D,A21_D_D_D_D,TAU1_D_D_D_D,TAU2_D_D_D_D,TAUS_D_D_D_D)

%    This function was generated by the Symbolic Math Toolbox version 8.6.
%    23-Jun-2022 23:43:55

t2 = tanh(x1_2);
t3 = tanh(x1_4);
t4 = tanh(x2_3);
t5 = tanh(x2_4);
t6 = t2.^2;
t7 = t3.^2;
t8 = t4.^2;
t9 = t5.^2;
t10 = t6-1.0;
t11 = t7-1.0;
t12 = t8-1.0;
t13 = t9-1.0;
t14 = t10.^2;
t15 = t11.^2;
t16 = t12.^2;
out1 = a12_d.*t16.*x2_3_d_d.*x2_3_d_d_d.*x2_3_d_d_d_d.*-2.0-a12_d_d.*t16.*x2_3_d.*x2_3_d_d_d.*x2_3_d_d_d_d.*2.0-a12_d_d_d.*t16.*x2_3_d.*x2_3_d_d.*x2_3_d_d_d_d.*2.0-a12_d_d_d_d.*t16.*x2_3_d.*x2_3_d_d.*x2_3_d_d_d.*2.0-beta_d.*t15.*x1_4_d_d.*x1_4_d_d_d.*x1_4_d_d_d_d.*2.0-beta_d_d.*t15.*x1_4_d.*x1_4_d_d_d.*x1_4_d_d_d_d.*2.0-beta_d_d_d.*t15.*x1_4_d.*x1_4_d_d.*x1_4_d_d_d_d.*2.0-beta_d_d_d_d.*t15.*x1_4_d.*x1_4_d_d.*x1_4_d_d_d.*2.0-a12_d.*t8.*t12.*x2_3_d_d.*x2_3_d_d_d.*x2_3_d_d_d_d.*4.0-a12_d_d.*t8.*t12.*x2_3_d.*x2_3_d_d_d.*x2_3_d_d_d_d.*4.0-a12_d_d_d.*t8.*t12.*x2_3_d.*x2_3_d_d.*x2_3_d_d_d_d.*4.0-a12_d_d_d_d.*t8.*t12.*x2_3_d.*x2_3_d_d.*x2_3_d_d_d.*4.0-beta_d.*t7.*t11.*x1_4_d_d.*x1_4_d_d_d.*x1_4_d_d_d_d.*4.0-beta_d_d.*t7.*t11.*x1_4_d.*x1_4_d_d_d.*x1_4_d_d_d_d.*4.0-beta_d_d_d.*t7.*t11.*x1_4_d.*x1_4_d_d.*x1_4_d_d_d_d.*4.0-beta_d_d_d_d.*t7.*t11.*x1_4_d.*x1_4_d_d.*x1_4_d_d_d.*4.0+a12.*t4.*t16.*x2_3_d.*x2_3_d_d.*x2_3_d_d_d.*x2_3_d_d_d_d.*1.6e+1+beta.*t3.*t15.*x1_4_d.*x1_4_d_d.*x1_4_d_d_d.*x1_4_d_d_d_d.*1.6e+1+a12.*t4.^3.*t12.*x2_3_d.*x2_3_d_d.*x2_3_d_d_d.*x2_3_d_d_d_d.*8.0+beta.*t3.^3.*t11.*x1_4_d.*x1_4_d_d.*x1_4_d_d_d.*x1_4_d_d_d_d.*8.0;
if nargout > 1
    t17 = t13.^2;
    out2 = a21_d.*t14.*x1_2_d_d.*x1_2_d_d_d.*x1_2_d_d_d_d.*-2.0-a21_d_d.*t14.*x1_2_d.*x1_2_d_d_d.*x1_2_d_d_d_d.*2.0-a21_d_d_d.*t14.*x1_2_d.*x1_2_d_d.*x1_2_d_d_d_d.*2.0-a21_d_d_d_d.*t14.*x1_2_d.*x1_2_d_d.*x1_2_d_d_d.*2.0-beta_d.*t17.*x2_4_d_d.*x2_4_d_d_d.*x2_4_d_d_d_d.*2.0-beta_d_d.*t17.*x2_4_d.*x2_4_d_d_d.*x2_4_d_d_d_d.*2.0-beta_d_d_d.*t17.*x2_4_d.*x2_4_d_d.*x2_4_d_d_d_d.*2.0-beta_d_d_d_d.*t17.*x2_4_d.*x2_4_d_d.*x2_4_d_d_d.*2.0-a21_d.*t6.*t10.*x1_2_d_d.*x1_2_d_d_d.*x1_2_d_d_d_d.*4.0-a21_d_d.*t6.*t10.*x1_2_d.*x1_2_d_d_d.*x1_2_d_d_d_d.*4.0-a21_d_d_d.*t6.*t10.*x1_2_d.*x1_2_d_d.*x1_2_d_d_d_d.*4.0-a21_d_d_d_d.*t6.*t10.*x1_2_d.*x1_2_d_d.*x1_2_d_d_d.*4.0-beta_d.*t9.*t13.*x2_4_d_d.*x2_4_d_d_d.*x2_4_d_d_d_d.*4.0-beta_d_d.*t9.*t13.*x2_4_d.*x2_4_d_d_d.*x2_4_d_d_d_d.*4.0-beta_d_d_d.*t9.*t13.*x2_4_d.*x2_4_d_d.*x2_4_d_d_d_d.*4.0-beta_d_d_d_d.*t9.*t13.*x2_4_d.*x2_4_d_d.*x2_4_d_d_d.*4.0+a21.*t2.*t14.*x1_2_d.*x1_2_d_d.*x1_2_d_d_d.*x1_2_d_d_d_d.*1.6e+1+beta.*t5.*t17.*x2_4_d.*x2_4_d_d.*x2_4_d_d_d.*x2_4_d_d_d_d.*1.6e+1+a21.*t2.^3.*t10.*x1_2_d.*x1_2_d_d.*x1_2_d_d_d.*x1_2_d_d_d_d.*8.0+beta.*t5.^3.*t13.*x2_4_d.*x2_4_d_d.*x2_4_d_d_d.*x2_4_d_d_d_d.*8.0;
end


function [out1,out2] = sym_neuron_rhs_1_5(x1_1,x2_1,x1_2,x2_2,x1_3,x2_3,x1_4,x2_4,kappa,beta,a12,a21,tau1,tau2,taus,x1_1_d,x2_1_d,x1_2_d,x2_2_d,x1_3_d,x2_3_d,x1_4_d,x2_4_d,x1_1_d_d,x2_1_d_d,x1_2_d_d,x2_2_d_d,x1_3_d_d,x2_3_d_d,x1_4_d_d,x2_4_d_d,x1_1_d_d_d,x2_1_d_d_d,x1_2_d_d_d,x2_2_d_d_d,x1_3_d_d_d,x2_3_d_d_d,x1_4_d_d_d,x2_4_d_d_d,x1_1_d_d_d_d,x2_1_d_d_d_d,x1_2_d_d_d_d,x2_2_d_d_d_d,x1_3_d_d_d_d,x2_3_d_d_d_d,x1_4_d_d_d_d,x2_4_d_d_d_d,x1_1_d_d_d_d_d,x2_1_d_d_d_d_d,x1_2_d_d_d_d_d,x2_2_d_d_d_d_d,x1_3_d_d_d_d_d,x2_3_d_d_d_d_d,x1_4_d_d_d_d_d,x2_4_d_d_d_d_d,kappa_d,beta_d,a12_d,a21_d,tau1_d,tau2_d,taus_d,kappa_d_d,beta_d_d,a12_d_d,a21_d_d,tau1_d_d,tau2_d_d,taus_d_d,kappa_d_d_d,beta_d_d_d,a12_d_d_d,a21_d_d_d,tau1_d_d_d,tau2_d_d_d,taus_d_d_d,kappa_d_d_d_d,beta_d_d_d_d,a12_d_d_d_d,a21_d_d_d_d,tau1_d_d_d_d,tau2_d_d_d_d,taus_d_d_d_d,kappa_d_d_d_d_d,beta_d_d_d_d_d,a12_d_d_d_d_d,a21_d_d_d_d_d,tau1_d_d_d_d_d,tau2_d_d_d_d_d,taus_d_d_d_d_d)
%SYM_NEURON_RHS_1_5
%    [OUT1,OUT2] = SYM_NEURON_RHS_1_5(X1_1,X2_1,X1_2,X2_2,X1_3,X2_3,X1_4,X2_4,KAPPA,BETA,A12,A21,TAU1,TAU2,TAUS,X1_1_D,X2_1_D,X1_2_D,X2_2_D,X1_3_D,X2_3_D,X1_4_D,X2_4_D,X1_1_D_D,X2_1_D_D,X1_2_D_D,X2_2_D_D,X1_3_D_D,X2_3_D_D,X1_4_D_D,X2_4_D_D,X1_1_D_D_D,X2_1_D_D_D,X1_2_D_D_D,X2_2_D_D_D,X1_3_D_D_D,X2_3_D_D_D,X1_4_D_D_D,X2_4_D_D_D,X1_1_D_D_D_D,X2_1_D_D_D_D,X1_2_D_D_D_D,X2_2_D_D_D_D,X1_3_D_D_D_D,X2_3_D_D_D_D,X1_4_D_D_D_D,X2_4_D_D_D_D,X1_1_D_D_D_D_D,X2_1_D_D_D_D_D,X1_2_D_D_D_D_D,X2_2_D_D_D_D_D,X1_3_D_D_D_D_D,X2_3_D_D_D_D_D,X1_4_D_D_D_D_D,X2_4_D_D_D_D_D,KAPPA_D,BETA_D,A12_D,A21_D,TAU1_D,TAU2_D,TAUS_D,KAPPA_D_D,BETA_D_D,A12_D_D,A21_D_D,TAU1_D_D,TAU2_D_D,TAUS_D_D,KAPPA_D_D_D,BETA_D_D_D,A12_D_D_D,A21_D_D_D,TAU1_D_D_D,TAU2_D_D_D,TAUS_D_D_D,KAPPA_D_D_D_D,BETA_D_D_D_D,A12_D_D_D_D,A21_D_D_D_D,TAU1_D_D_D_D,TAU2_D_D_D_D,TAUS_D_D_D_D,KAPPA_D_D_D_D_D,BETA_D_D_D_D_D,A12_D_D_D_D_D,A21_D_D_D_D_D,TAU1_D_D_D_D_D,TAU2_D_D_D_D_D,TAUS_D_D_D_D_D)

%    This function was generated by the Symbolic Math Toolbox version 8.6.
%    23-Jun-2022 23:43:56

t2 = tanh(x1_2);
t3 = tanh(x1_4);
t4 = tanh(x2_3);
t5 = tanh(x2_4);
t6 = t2.^2;
t7 = t2.^3;
t8 = t3.^2;
t9 = t3.^3;
t10 = t4.^2;
t11 = t4.^3;
t12 = t5.^2;
t13 = t5.^3;
t14 = t6-1.0;
t15 = t8-1.0;
t16 = t10-1.0;
t17 = t12-1.0;
t18 = t14.^2;
t19 = t15.^2;
t20 = t16.^2;
out1 = a12_d.*t4.*t20.*x2_3_d_d.*x2_3_d_d_d.*x2_3_d_d_d_d.*x2_3_d_d_d_d_d.*1.6e+1+a12_d_d.*t4.*t20.*x2_3_d.*x2_3_d_d_d.*x2_3_d_d_d_d.*x2_3_d_d_d_d_d.*1.6e+1+a12_d_d_d.*t4.*t20.*x2_3_d.*x2_3_d_d.*x2_3_d_d_d_d.*x2_3_d_d_d_d_d.*1.6e+1+a12_d_d_d_d.*t4.*t20.*x2_3_d.*x2_3_d_d.*x2_3_d_d_d.*x2_3_d_d_d_d_d.*1.6e+1+a12_d_d_d_d_d.*t4.*t20.*x2_3_d.*x2_3_d_d.*x2_3_d_d_d.*x2_3_d_d_d_d.*1.6e+1+a12_d.*t11.*t16.*x2_3_d_d.*x2_3_d_d_d.*x2_3_d_d_d_d.*x2_3_d_d_d_d_d.*8.0+a12_d_d.*t11.*t16.*x2_3_d.*x2_3_d_d_d.*x2_3_d_d_d_d.*x2_3_d_d_d_d_d.*8.0+a12_d_d_d.*t11.*t16.*x2_3_d.*x2_3_d_d.*x2_3_d_d_d_d.*x2_3_d_d_d_d_d.*8.0+a12_d_d_d_d.*t11.*t16.*x2_3_d.*x2_3_d_d.*x2_3_d_d_d.*x2_3_d_d_d_d_d.*8.0+a12_d_d_d_d_d.*t11.*t16.*x2_3_d.*x2_3_d_d.*x2_3_d_d_d.*x2_3_d_d_d_d.*8.0+beta_d.*t3.*t19.*x1_4_d_d.*x1_4_d_d_d.*x1_4_d_d_d_d.*x1_4_d_d_d_d_d.*1.6e+1+beta_d_d.*t3.*t19.*x1_4_d.*x1_4_d_d_d.*x1_4_d_d_d_d.*x1_4_d_d_d_d_d.*1.6e+1+beta_d_d_d.*t3.*t19.*x1_4_d.*x1_4_d_d.*x1_4_d_d_d_d.*x1_4_d_d_d_d_d.*1.6e+1+beta_d_d_d_d.*t3.*t19.*x1_4_d.*x1_4_d_d.*x1_4_d_d_d.*x1_4_d_d_d_d_d.*1.6e+1+beta_d_d_d_d_d.*t3.*t19.*x1_4_d.*x1_4_d_d.*x1_4_d_d_d.*x1_4_d_d_d_d.*1.6e+1+beta_d.*t9.*t15.*x1_4_d_d.*x1_4_d_d_d.*x1_4_d_d_d_d.*x1_4_d_d_d_d_d.*8.0+beta_d_d.*t9.*t15.*x1_4_d.*x1_4_d_d_d.*x1_4_d_d_d_d.*x1_4_d_d_d_d_d.*8.0+beta_d_d_d.*t9.*t15.*x1_4_d.*x1_4_d_d.*x1_4_d_d_d_d.*x1_4_d_d_d_d_d.*8.0+beta_d_d_d_d.*t9.*t15.*x1_4_d.*x1_4_d_d.*x1_4_d_d_d.*x1_4_d_d_d_d_d.*8.0+beta_d_d_d_d_d.*t9.*t15.*x1_4_d.*x1_4_d_d.*x1_4_d_d_d.*x1_4_d_d_d_d.*8.0-a12.*t16.^3.*x2_3_d.*x2_3_d_d.*x2_3_d_d_d.*x2_3_d_d_d_d.*x2_3_d_d_d_d_d.*1.6e+1-beta.*t15.^3.*x1_4_d.*x1_4_d_d.*x1_4_d_d_d.*x1_4_d_d_d_d.*x1_4_d_d_d_d_d.*1.6e+1-a12.*t10.*t20.*x2_3_d.*x2_3_d_d.*x2_3_d_d_d.*x2_3_d_d_d_d.*x2_3_d_d_d_d_d.*8.8e+1-beta.*t8.*t19.*x1_4_d.*x1_4_d_d.*x1_4_d_d_d.*x1_4_d_d_d_d.*x1_4_d_d_d_d_d.*8.8e+1-a12.*t10.^2.*t16.*x2_3_d.*x2_3_d_d.*x2_3_d_d_d.*x2_3_d_d_d_d.*x2_3_d_d_d_d_d.*1.6e+1-beta.*t8.^2.*t15.*x1_4_d.*x1_4_d_d.*x1_4_d_d_d.*x1_4_d_d_d_d.*x1_4_d_d_d_d_d.*1.6e+1;
if nargout > 1
    t21 = t17.^2;
    out2 = a21_d.*t2.*t18.*x1_2_d_d.*x1_2_d_d_d.*x1_2_d_d_d_d.*x1_2_d_d_d_d_d.*1.6e+1+a21_d_d.*t2.*t18.*x1_2_d.*x1_2_d_d_d.*x1_2_d_d_d_d.*x1_2_d_d_d_d_d.*1.6e+1+a21_d_d_d.*t2.*t18.*x1_2_d.*x1_2_d_d.*x1_2_d_d_d_d.*x1_2_d_d_d_d_d.*1.6e+1+a21_d_d_d_d.*t2.*t18.*x1_2_d.*x1_2_d_d.*x1_2_d_d_d.*x1_2_d_d_d_d_d.*1.6e+1+a21_d_d_d_d_d.*t2.*t18.*x1_2_d.*x1_2_d_d.*x1_2_d_d_d.*x1_2_d_d_d_d.*1.6e+1+a21_d.*t7.*t14.*x1_2_d_d.*x1_2_d_d_d.*x1_2_d_d_d_d.*x1_2_d_d_d_d_d.*8.0+a21_d_d.*t7.*t14.*x1_2_d.*x1_2_d_d_d.*x1_2_d_d_d_d.*x1_2_d_d_d_d_d.*8.0+a21_d_d_d.*t7.*t14.*x1_2_d.*x1_2_d_d.*x1_2_d_d_d_d.*x1_2_d_d_d_d_d.*8.0+a21_d_d_d_d.*t7.*t14.*x1_2_d.*x1_2_d_d.*x1_2_d_d_d.*x1_2_d_d_d_d_d.*8.0+a21_d_d_d_d_d.*t7.*t14.*x1_2_d.*x1_2_d_d.*x1_2_d_d_d.*x1_2_d_d_d_d.*8.0+beta_d.*t5.*t21.*x2_4_d_d.*x2_4_d_d_d.*x2_4_d_d_d_d.*x2_4_d_d_d_d_d.*1.6e+1+beta_d_d.*t5.*t21.*x2_4_d.*x2_4_d_d_d.*x2_4_d_d_d_d.*x2_4_d_d_d_d_d.*1.6e+1+beta_d_d_d.*t5.*t21.*x2_4_d.*x2_4_d_d.*x2_4_d_d_d_d.*x2_4_d_d_d_d_d.*1.6e+1+beta_d_d_d_d.*t5.*t21.*x2_4_d.*x2_4_d_d.*x2_4_d_d_d.*x2_4_d_d_d_d_d.*1.6e+1+beta_d_d_d_d_d.*t5.*t21.*x2_4_d.*x2_4_d_d.*x2_4_d_d_d.*x2_4_d_d_d_d.*1.6e+1+beta_d.*t13.*t17.*x2_4_d_d.*x2_4_d_d_d.*x2_4_d_d_d_d.*x2_4_d_d_d_d_d.*8.0+beta_d_d.*t13.*t17.*x2_4_d.*x2_4_d_d_d.*x2_4_d_d_d_d.*x2_4_d_d_d_d_d.*8.0+beta_d_d_d.*t13.*t17.*x2_4_d.*x2_4_d_d.*x2_4_d_d_d_d.*x2_4_d_d_d_d_d.*8.0+beta_d_d_d_d.*t13.*t17.*x2_4_d.*x2_4_d_d.*x2_4_d_d_d.*x2_4_d_d_d_d_d.*8.0+beta_d_d_d_d_d.*t13.*t17.*x2_4_d.*x2_4_d_d.*x2_4_d_d_d.*x2_4_d_d_d_d.*8.0-a21.*t14.^3.*x1_2_d.*x1_2_d_d.*x1_2_d_d_d.*x1_2_d_d_d_d.*x1_2_d_d_d_d_d.*1.6e+1-beta.*t17.^3.*x2_4_d.*x2_4_d_d.*x2_4_d_d_d.*x2_4_d_d_d_d.*x2_4_d_d_d_d_d.*1.6e+1-a21.*t6.*t18.*x1_2_d.*x1_2_d_d.*x1_2_d_d_d.*x1_2_d_d_d_d.*x1_2_d_d_d_d_d.*8.8e+1-beta.*t12.*t21.*x2_4_d.*x2_4_d_d.*x2_4_d_d_d.*x2_4_d_d_d_d.*x2_4_d_d_d_d_d.*8.8e+1-a21.*t6.^2.*t14.*x1_2_d.*x1_2_d_d.*x1_2_d_d_d.*x1_2_d_d_d_d.*x1_2_d_d_d_d_d.*1.6e+1-beta.*t12.^2.*t17.*x2_4_d.*x2_4_d_d.*x2_4_d_d_d.*x2_4_d_d_d_d.*x2_4_d_d_d_d_d.*1.6e+1;
end
