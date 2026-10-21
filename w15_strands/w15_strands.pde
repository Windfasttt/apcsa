String s0 = "tcgcagctcgaaccactatg";
String s1 = "agcgtcgagcttggtgatac";
String s2 = "atcgtccagctatgtgatac";
String s3 = "caatcacctgagtatcgcga";

//int NUC_SIZE = 30;

void setup() {
  size(800, 200);
  background(0);
  textAlign(CENTER, CENTER);

  //strandCompare(s0, s1, 0, 0, NUC_SIZE);

  //strandCompare(s0, s2, 0, NUC_SIZE*3, NUC_SIZE);

  ////strandMatch tests
  //println(strandMatch(s0, s1)); //correct match
  //println(strandMatch(s0, s0)); //strand should not match itself
  //println(strandMatch(s0, s2)); //mismatch
}//setup

void drawBase(char base, int x, int y, int sz){
  if(base == 'A'){
   fill(baseColor('A'));
   textAlign(CENTER);
   text("A", x, y);
  }
  if(base == 'T'){
   fill(baseColor('T'));
   textAlign(CENTER);
   text("T", x, y);
  }
  if(base == 'C'){
   fill(baseColor('C'));
   textAlign(CENTER);
   text("C", x, y);
  }
  if(base == 'G'){
   fill(baseColor('G'));
   textAlign(CENTER);
   text("G", x, y);
  }
  square(x, y, sz);
}

void drawStrand(String dna, int x, int y, int sz){
  
}

color baseColor(char c) {
  color col = color(0);
  if (c == 'A') {
    col = #fa3737;
  }
  else if (c == 'T') {
    col = #7c0000;
  }
  else if (c == 'C') {
    col = #85C0F9;
  }
  else if (c == 'G') {
    col = #0F2080;
  }
  return col;
}
