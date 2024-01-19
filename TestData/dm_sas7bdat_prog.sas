/*************************************************************************************************************
*  Program:     /programs/dm_sas7bdat_prog.sas
*  Description: Program to generate deliverable - dm.sas7bdat
*  Author:      Standard for Study specific template for transformation
*  $SCE INPUT FILE   ../data/raw_dm.sas7bdat
*  $SCE INPUT FILE   ../data/input.txt
*  $SCE OUTPUT FILE   ../data/dm.sas7bdat
*  $SCE OUTPUT FILE  ./dm_sas7bdat_prog.log
*  $SCE OUTPUT FILE  ./dm_sas7bdat_prog.lst
*************************************************************************************************************/
/* comments */
Libname raw '../data';
Libname sdtm  '../data/';

data sdtm.dm;
set raw.raw_dm;

proc contents data=sdtm.dm;
run;
