program grafik_2025_10x_final;
uses crt, graph;

var treiber, modus: smallint;
    xs,ys,b,i:integer;

begin

  randomize;

  detectgraph (treiber, modus);

  initgraph (treiber, modus,'');

  repeat

  b:=random(680)+20;
  xs:=random(1960-b)+1;
  ys:=random(1060-b-b div 2-1)+b+b div 2+1;

  setcolor(random(15)+1);
  for i:=b downto 0 do      //links senkrecht
  begin
       line(xs,ys,xs,ys-b+i);
       delay(0);
  end;

  setcolor(random(15)+1);
  for i:=0 to b do      //links oben rechts unten
  begin
       line(xs,ys-b,xs+i,ys-b+i);
       delay(0);
  end;

  setcolor(random(15)+1);
  for i:=0 to b do      //rechts senkrecht
  begin
       line(xs+b,ys,xs+b,ys-i);
       delay(0);
  end;

  setcolor(random(15)+1);
  for i:=b downto 0 do      //oben waagerecht
  begin
       line(xs+b,ys-b,xs+i,ys-b);
       delay(0);
  end;

  setcolor(random(15)+1);
  for i:=0 to b div 2 do      //linkes Dach
  begin
       line(xs,ys-b,xs+i,ys-b-i);
       delay(0);
  end;

  setcolor(random(15)+1);
  for i:=0 to b div 2 do      //rechtes Dach
  begin
       line(xs+b div 2,ys-b div 2-b,xs+b div 2+i,ys-b div 2-b+i);
       delay(0);
  end;

  setcolor(random(15)+1);
  for i:=0 to b do      //rechts oben links unten
  begin
       line(xs+b,ys-b,xs+b-i,ys-b+i);
       delay(0);
  end;

  setcolor(random(15)+1);
  for i:=0 to b do      //unten waagerecht
  begin
       line(xs,ys,xs+i,ys);
       delay(0);
  end;

  for i:=1 to 5000 do
  putpixel(random(b)+xs,ys-random(b),random(15)+1);  until keypressed;

  closegraph;

end.

