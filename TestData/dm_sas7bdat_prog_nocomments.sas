Libname raw '../data';
Libname sdtm  '../data/';

data sdtm.dm;
set raw.raw_dm;

proc contents data=sdtm.dm;
run;
