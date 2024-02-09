
/*(a)*/

proc contents data= sashelp.enso;
run;

/*(b)*/

title 'The first five observation out of 168';
proc print data=sashelp.enso (obs=5);
run;

/*(c)*/

ods graphics/imagemap = 0;
proc print data=sashelp.enso;
run;

/*(d)*/

proc sort data=sashelp.enso out=enso_sorted;
  by month;
run;

/*(e)*/

proc arima data=sashelp.enso;
  identify var=year;
  estimate q=1 method=ml;
  fit;
  forecast lead=12 interval=month out=myforecast;
run;

/*(f)*,(g),(h)*/

proc arima data=sashelp.enso;
  identify var=pressure(1);
  alpha=0.05;
  estimate p=2 q=2;
  forecast lead=12 interval=month;
run;

proc delete data=myforecast;
run;










