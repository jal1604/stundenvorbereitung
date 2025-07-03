program grafik_2025_10x;
uses crt, graph;

var treiber, modus: smallint;

begin

  detectgraph (treiber, modus);
  initgraph (treiber, modus,'');

  line(500,200,500,300);   //ls

  readkey;

  closegraph;

end.

