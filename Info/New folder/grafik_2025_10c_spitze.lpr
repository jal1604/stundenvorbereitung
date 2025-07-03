program grafik_2025_10c_spitze;
uses crt, graph;

var treiber, modus: smallint;
    i,b,f:integer;
begin

  randomize;

  detectgraph (treiber, modus);
  initgraph (treiber, modus,'');

  repeat

  b:=random(250)+50;
  f:=random(15)+1;
  setcolor(f);

  for i:=1 to b do
  begin
  line(500,300,500,300-i);   //ls
  delay(10);
  end;

  for i:=1 to b do
  begin
  line(500,300-b,500+i,300-b);   //ow
  delay(10);
  end;

  for i:=1 to b do
  begin
  line(500+b,300-b,500+b,300-b+i);   //rs
  delay(10);
  end;

  for i:=1 to b do
  begin
  line(500+b,300,500+b-i,300);   //uw
  delay(10);
  end;

  for i:=1 to b do
  begin
  line(500,300,500+i,300-i);   //luro
  delay(10);
  end;

  for i:=1 to b div 2 do
  begin
  line(500+b,300-b,500+b-i,300-b-i);   //dr
  delay(10);
  end;

  for i:=1 to b div 2 do
  begin
  line(500+b-b div 2,300-b-b div 2,500+b-b div 2-i,300-b-b div 2+i);   //dl
  delay(10);
  end;

  for i:=1 to b do
  begin
  line(500,300-b,500+i,300-b+i);   //rolu
  delay(10);
  end;

  until keypressed;

  closegraph;

end.

