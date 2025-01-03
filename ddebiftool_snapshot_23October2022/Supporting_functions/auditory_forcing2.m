function  branch_force=auditory_forcing2(branch,sig,in)
for n=1:length(branch.point)
    p=branch.point(n);
    sin_indx=5;
    mesh_dely=mod(p.mesh-p.parameter(in.TD)/p.period,1);
    yd=dde_coll_eva(p.profile,p.mesh,mesh_dely,p.degree); % evaluate yd at the time delays that is at (t-TD) ''in our model''
    y=p.profile; % solutions from the branch
    d=p.parameter(in.c)*(1-nthroot(p.parameter(in.df),p.parameter(in.m))); % rescale 'd'
    iA=zeros(1,length(y));
    iB=zeros(1,length(y));
    for i=1:length(y)
        %% Hopf normal form
        iA(i)=p.parameter(in.c)*sig(y(sin_indx,i))*sig(-yd(sin_indx,i))+...
            d*sig(-y(sin_indx,i))*sig(yd(sin_indx,i));
        iB(i)=d*sig(y(sin_indx,i))*sig(-yd(sin_indx,i))+...
            p.parameter(in.c)*sig(-y(sin_indx,i))*sig(yd(sin_indx,i));
    end
    branch.point(n).force=[iA;iB];
end
branch_force=branch;
end
%%