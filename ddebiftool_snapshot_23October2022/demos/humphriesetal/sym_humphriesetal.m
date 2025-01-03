function varargout=sym_humphriesetal(action,varargin)
%% Automatically generated with matlabFunction
% 
%#ok<*DEFNU,*INUSD,*INUSL>

switch action
  case 'ntau'
   varargout{1}=2;
   return
  case 'npar'
   varargout{1}=6;
   return
  case 'tp_del'
   varargout{1}=1;
   return
  case 'maxorder'
   varargout{1}=5;
   return
  case 'directional_derivative'
   varargout{1}=1;
   return
end
ind=varargin{1};
order=varargin{2};
nout=varargin{3};
f=str2func(sprintf('sym_humphriesetal_%s_%d_%d',action,ind,order));
varargout=cell(nout,1);
[varargout{:}]=f(varargin{4:end});




function out1 = sym_humphriesetal_rhs_1_0(x1,x2,x3,kappa1,kappa2,a1,a2,gamma,c,x1_d,x2_d,x3_d,kappa1_d,kappa2_d,a1_d,a2_d,gamma_d,c_d)
%SYM_HUMPHRIESETAL_RHS_1_0
%    OUT1 = SYM_HUMPHRIESETAL_RHS_1_0(X1,X2,X3,KAPPA1,KAPPA2,A1,A2,GAMMA,C,X1_D,X2_D,X3_D,KAPPA1_D,KAPPA2_D,A1_D,A2_D,GAMMA_D,C_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    30-Sep-2022 15:26:46

out1 = -gamma.*x1-kappa1.*x2-kappa2.*x3;


function out1 = sym_humphriesetal_rhs_1_1(x1,x2,x3,kappa1,kappa2,a1,a2,gamma,c,x1_d,x2_d,x3_d,kappa1_d,kappa2_d,a1_d,a2_d,gamma_d,c_d)
%SYM_HUMPHRIESETAL_RHS_1_1
%    OUT1 = SYM_HUMPHRIESETAL_RHS_1_1(X1,X2,X3,KAPPA1,KAPPA2,A1,A2,GAMMA,C,X1_D,X2_D,X3_D,KAPPA1_D,KAPPA2_D,A1_D,A2_D,GAMMA_D,C_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    30-Sep-2022 15:26:46

out1 = -gamma_d.*x1-gamma.*x1_d-kappa1_d.*x2-kappa2_d.*x3-kappa1.*x2_d-kappa2.*x3_d;


function out1 = sym_humphriesetal_rhs_1_2(x1,x2,x3,kappa1,kappa2,a1,a2,gamma,c,x1_d,x2_d,x3_d,kappa1_d,kappa2_d,a1_d,a2_d,gamma_d,c_d)
%SYM_HUMPHRIESETAL_RHS_1_2
%    OUT1 = SYM_HUMPHRIESETAL_RHS_1_2(X1,X2,X3,KAPPA1,KAPPA2,A1,A2,GAMMA,C,X1_D,X2_D,X3_D,KAPPA1_D,KAPPA2_D,A1_D,A2_D,GAMMA_D,C_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    30-Sep-2022 15:26:46

out1 = gamma_d.*x1_d.*-2.0-kappa1_d.*x2_d.*2.0-kappa2_d.*x3_d.*2.0;


function out1 = sym_humphriesetal_rhs_1_3(x1,x2,x3,kappa1,kappa2,a1,a2,gamma,c,x1_d,x2_d,x3_d,kappa1_d,kappa2_d,a1_d,a2_d,gamma_d,c_d)
%SYM_HUMPHRIESETAL_RHS_1_3
%    OUT1 = SYM_HUMPHRIESETAL_RHS_1_3(X1,X2,X3,KAPPA1,KAPPA2,A1,A2,GAMMA,C,X1_D,X2_D,X3_D,KAPPA1_D,KAPPA2_D,A1_D,A2_D,GAMMA_D,C_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    30-Sep-2022 15:26:47

out1 = 0.0;


function out1 = sym_humphriesetal_rhs_1_4(x1,x2,x3,kappa1,kappa2,a1,a2,gamma,c,x1_d,x2_d,x3_d,kappa1_d,kappa2_d,a1_d,a2_d,gamma_d,c_d)
%SYM_HUMPHRIESETAL_RHS_1_4
%    OUT1 = SYM_HUMPHRIESETAL_RHS_1_4(X1,X2,X3,KAPPA1,KAPPA2,A1,A2,GAMMA,C,X1_D,X2_D,X3_D,KAPPA1_D,KAPPA2_D,A1_D,A2_D,GAMMA_D,C_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    30-Sep-2022 15:26:47

out1 = 0.0;


function out1 = sym_humphriesetal_rhs_1_5(x1,x2,x3,kappa1,kappa2,a1,a2,gamma,c,x1_d,x2_d,x3_d,kappa1_d,kappa2_d,a1_d,a2_d,gamma_d,c_d)
%SYM_HUMPHRIESETAL_RHS_1_5
%    OUT1 = SYM_HUMPHRIESETAL_RHS_1_5(X1,X2,X3,KAPPA1,KAPPA2,A1,A2,GAMMA,C,X1_D,X2_D,X3_D,KAPPA1_D,KAPPA2_D,A1_D,A2_D,GAMMA_D,C_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    30-Sep-2022 15:26:47

out1 = 0.0;


function out1 = sym_humphriesetal_tau_1_0(x1,x2,x3,kappa1,kappa2,a1,a2,gamma,c,x1_d,x2_d,x3_d,kappa1_d,kappa2_d,a1_d,a2_d,gamma_d,c_d)
%SYM_HUMPHRIESETAL_TAU_1_0
%    OUT1 = SYM_HUMPHRIESETAL_TAU_1_0(X1,X2,X3,KAPPA1,KAPPA2,A1,A2,GAMMA,C,X1_D,X2_D,X3_D,KAPPA1_D,KAPPA2_D,A1_D,A2_D,GAMMA_D,C_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    30-Sep-2022 15:26:47

out1 = a1+c.*x1;


function out1 = sym_humphriesetal_tau_2_0(x1,x2,x3,kappa1,kappa2,a1,a2,gamma,c,x1_d,x2_d,x3_d,kappa1_d,kappa2_d,a1_d,a2_d,gamma_d,c_d)
%SYM_HUMPHRIESETAL_TAU_2_0
%    OUT1 = SYM_HUMPHRIESETAL_TAU_2_0(X1,X2,X3,KAPPA1,KAPPA2,A1,A2,GAMMA,C,X1_D,X2_D,X3_D,KAPPA1_D,KAPPA2_D,A1_D,A2_D,GAMMA_D,C_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    30-Sep-2022 15:26:47

out1 = a2+c.*x1;


function out1 = sym_humphriesetal_tau_1_1(x1,x2,x3,kappa1,kappa2,a1,a2,gamma,c,x1_d,x2_d,x3_d,kappa1_d,kappa2_d,a1_d,a2_d,gamma_d,c_d)
%SYM_HUMPHRIESETAL_TAU_1_1
%    OUT1 = SYM_HUMPHRIESETAL_TAU_1_1(X1,X2,X3,KAPPA1,KAPPA2,A1,A2,GAMMA,C,X1_D,X2_D,X3_D,KAPPA1_D,KAPPA2_D,A1_D,A2_D,GAMMA_D,C_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    30-Sep-2022 15:26:47

out1 = a1_d+c.*x1_d+c_d.*x1;


function out1 = sym_humphriesetal_tau_2_1(x1,x2,x3,kappa1,kappa2,a1,a2,gamma,c,x1_d,x2_d,x3_d,kappa1_d,kappa2_d,a1_d,a2_d,gamma_d,c_d)
%SYM_HUMPHRIESETAL_TAU_2_1
%    OUT1 = SYM_HUMPHRIESETAL_TAU_2_1(X1,X2,X3,KAPPA1,KAPPA2,A1,A2,GAMMA,C,X1_D,X2_D,X3_D,KAPPA1_D,KAPPA2_D,A1_D,A2_D,GAMMA_D,C_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    30-Sep-2022 15:26:47

out1 = a2_d+c.*x1_d+c_d.*x1;


function out1 = sym_humphriesetal_tau_1_2(x1,x2,x3,kappa1,kappa2,a1,a2,gamma,c,x1_d,x2_d,x3_d,kappa1_d,kappa2_d,a1_d,a2_d,gamma_d,c_d)
%SYM_HUMPHRIESETAL_TAU_1_2
%    OUT1 = SYM_HUMPHRIESETAL_TAU_1_2(X1,X2,X3,KAPPA1,KAPPA2,A1,A2,GAMMA,C,X1_D,X2_D,X3_D,KAPPA1_D,KAPPA2_D,A1_D,A2_D,GAMMA_D,C_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    30-Sep-2022 15:26:47

out1 = c_d.*x1_d.*2.0;


function out1 = sym_humphriesetal_tau_2_2(x1,x2,x3,kappa1,kappa2,a1,a2,gamma,c,x1_d,x2_d,x3_d,kappa1_d,kappa2_d,a1_d,a2_d,gamma_d,c_d)
%SYM_HUMPHRIESETAL_TAU_2_2
%    OUT1 = SYM_HUMPHRIESETAL_TAU_2_2(X1,X2,X3,KAPPA1,KAPPA2,A1,A2,GAMMA,C,X1_D,X2_D,X3_D,KAPPA1_D,KAPPA2_D,A1_D,A2_D,GAMMA_D,C_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    30-Sep-2022 15:26:47

out1 = c_d.*x1_d.*2.0;


function out1 = sym_humphriesetal_tau_1_3(x1,x2,x3,kappa1,kappa2,a1,a2,gamma,c,x1_d,x2_d,x3_d,kappa1_d,kappa2_d,a1_d,a2_d,gamma_d,c_d)
%SYM_HUMPHRIESETAL_TAU_1_3
%    OUT1 = SYM_HUMPHRIESETAL_TAU_1_3(X1,X2,X3,KAPPA1,KAPPA2,A1,A2,GAMMA,C,X1_D,X2_D,X3_D,KAPPA1_D,KAPPA2_D,A1_D,A2_D,GAMMA_D,C_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    30-Sep-2022 15:26:47

out1 = 0.0;


function out1 = sym_humphriesetal_tau_2_3(x1,x2,x3,kappa1,kappa2,a1,a2,gamma,c,x1_d,x2_d,x3_d,kappa1_d,kappa2_d,a1_d,a2_d,gamma_d,c_d)
%SYM_HUMPHRIESETAL_TAU_2_3
%    OUT1 = SYM_HUMPHRIESETAL_TAU_2_3(X1,X2,X3,KAPPA1,KAPPA2,A1,A2,GAMMA,C,X1_D,X2_D,X3_D,KAPPA1_D,KAPPA2_D,A1_D,A2_D,GAMMA_D,C_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    30-Sep-2022 15:26:48

out1 = 0.0;


function out1 = sym_humphriesetal_tau_1_4(x1,x2,x3,kappa1,kappa2,a1,a2,gamma,c,x1_d,x2_d,x3_d,kappa1_d,kappa2_d,a1_d,a2_d,gamma_d,c_d)
%SYM_HUMPHRIESETAL_TAU_1_4
%    OUT1 = SYM_HUMPHRIESETAL_TAU_1_4(X1,X2,X3,KAPPA1,KAPPA2,A1,A2,GAMMA,C,X1_D,X2_D,X3_D,KAPPA1_D,KAPPA2_D,A1_D,A2_D,GAMMA_D,C_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    30-Sep-2022 15:26:48

out1 = 0.0;


function out1 = sym_humphriesetal_tau_2_4(x1,x2,x3,kappa1,kappa2,a1,a2,gamma,c,x1_d,x2_d,x3_d,kappa1_d,kappa2_d,a1_d,a2_d,gamma_d,c_d)
%SYM_HUMPHRIESETAL_TAU_2_4
%    OUT1 = SYM_HUMPHRIESETAL_TAU_2_4(X1,X2,X3,KAPPA1,KAPPA2,A1,A2,GAMMA,C,X1_D,X2_D,X3_D,KAPPA1_D,KAPPA2_D,A1_D,A2_D,GAMMA_D,C_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    30-Sep-2022 15:26:48

out1 = 0.0;


function out1 = sym_humphriesetal_tau_1_5(x1,x2,x3,kappa1,kappa2,a1,a2,gamma,c,x1_d,x2_d,x3_d,kappa1_d,kappa2_d,a1_d,a2_d,gamma_d,c_d)
%SYM_HUMPHRIESETAL_TAU_1_5
%    OUT1 = SYM_HUMPHRIESETAL_TAU_1_5(X1,X2,X3,KAPPA1,KAPPA2,A1,A2,GAMMA,C,X1_D,X2_D,X3_D,KAPPA1_D,KAPPA2_D,A1_D,A2_D,GAMMA_D,C_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    30-Sep-2022 15:26:48

out1 = 0.0;


function out1 = sym_humphriesetal_tau_2_5(x1,x2,x3,kappa1,kappa2,a1,a2,gamma,c,x1_d,x2_d,x3_d,kappa1_d,kappa2_d,a1_d,a2_d,gamma_d,c_d)
%SYM_HUMPHRIESETAL_TAU_2_5
%    OUT1 = SYM_HUMPHRIESETAL_TAU_2_5(X1,X2,X3,KAPPA1,KAPPA2,A1,A2,GAMMA,C,X1_D,X2_D,X3_D,KAPPA1_D,KAPPA2_D,A1_D,A2_D,GAMMA_D,C_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    30-Sep-2022 15:26:48

out1 = 0.0;

