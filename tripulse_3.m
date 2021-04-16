function ftri_3 = tripulse_3(x)
%TRIPULSE_3
%    FTRI_3 = TRIPULSE_3(X)

%    This function was generated by the Symbolic Math Toolbox version 8.7.
%    16-Apr-2021 09:10:44

t2 = x./2.0;
ftri_3 = -(t2-1.0).*rectangularPulse(0.0,1.0,-t2+1.0);
