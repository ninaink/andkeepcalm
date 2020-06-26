/* @pjs preload="help.png","help1.png","krug1.png"; */

PGraphics cursor, fin, save;
PImage krug, pic, caption, help;
PImage fon1, fon2, fon3;
PImage stick1, stick2, stick3, stick4, stick5, stick6, stick7, stick8, stick9;
PImage a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, 
q, r, s, t, u, v, w, x, y,  z, 
brus, erus, tv, ii, she, vrus, drus, yu, ya,
sh, che, cc, ff, prus, nrus, mrus, lrus, iii, irus, 
zz, zhe, io,  grus;
int randomit;
boolean saving = true;

int oldMX;
int oldMY;

boolean started = false;
boolean showhelp = false;

void setup()
{
  size(1080,766);
  noCursor();
 
  save = createGraphics (width, height);
  fin = createGraphics (width, height);
              
  fon1 = loadImage("fon1.png");
  fon2 = loadImage("fon2.png");
  fon3 = loadImage("fon3.png");
  krug = loadImage("krug.png");
  
  stick1 = loadImage("stick1.png");
  stick2 = loadImage("stick2.png");
  stick3 = loadImage("stick3.png");
  stick5 = loadImage("stick5.png");
  stick6 = loadImage("stick6.png");
  stick8 = loadImage("stick8.png");
  stick9 = loadImage("stick9.png");
  
  caption = loadImage("help.png");
  help = loadImage("help1.png");
  
  pic = krug;
  
  a = loadImage("a.png");
  b = loadImage("b.png");
  c = loadImage("c.png");
  d = loadImage("d.png");
  e=loadImage("e.png");
  f=loadImage("f.png");
  g=loadImage("g.png");
  h=loadImage("h.png");
  i=loadImage("i.png");
  j=loadImage("j.png");
  k=loadImage("k.png");
  l=loadImage("l.png");
  m=loadImage("m.png");
  n=loadImage("n.png");
  o=loadImage("o.png");
  p=loadImage("p.png");
  q=loadImage("q.png");
  r=loadImage("r.png");
  s=loadImage("s.png");
  t=loadImage("t.png");
  u=loadImage("u.png");
  v=loadImage("v.png");
  w=loadImage("e.png");
  x=loadImage("x.png");
  y=loadImage("y.png");
  z=loadImage("z.png");
 
  brus=loadImage("brus.png");
  erus=loadImage("erus.png");
  tv=loadImage("tv.png");
  ii=loadImage("ii.png");
  she=loadImage("she.png");
  vrus=loadImage("vrus.png");
  drus=loadImage("drus.png");
  yu=loadImage("yu.png");
  ya=loadImage("ya.png");
  sh=loadImage("sh.png");
  che=loadImage("che.png");
  cc=loadImage("cc.png");
  ff=loadImage("ff.png");
  prus=loadImage("prus.png");
  nrus=loadImage("nrus.png");
  mrus=loadImage("mrus.png");
  lrus=loadImage("lrus.png");
  iii=loadImage("iii.png");
  irus=loadImage("irus.png");
  zz=loadImage("zz.png");
  zhe=loadImage("zhe.png");
  io=loadImage("io.png");
  grus=loadImage("grus.png");
 
  randomit = int(random(0,4));
   
  fin.beginDraw(); 
  fin.image(caption, 0, 0);
  fin.endDraw();
  
  
}

void draw()
{
  
  background(0);
  
  float dif = dist(oldMX, oldMY, mouseX, mouseY);
  
  cursor = createGraphics (width, height);
  
  cursor.beginDraw();
  cursor.image(pic, mouseX, mouseY);
  cursor.endDraw();
  
  
  
  if (mousePressed && dif>0 && started)
  { 
    if (saving == true){
      
      saving = false;
      save.beginDraw();
      save.image(fin, 0, 0);
      save.endDraw();
    }
    oldMX = mouseX;
    oldMY = mouseY;
    
    fin.beginDraw();
    fin.image (cursor, 0, 0);
    fin.endDraw();
  }
 
 /////
 
  image(fin, 0, 0);
  
  if(started)
  {
  image(cursor, 0, 0);
  }
  
  if (showhelp == true)
  {
    image(help, 0, 0);
  }
}

void mouseReleased()
{
  
  saving = true;
  
}

void keyPressed()
{
  
 if(key == CODED){ 
 if(keyCode == CONTROL) //
    {
      started = true;
      randomit = int(random(0,3));
   
    fin.beginDraw(); 
    if (randomit == 0)
    {
      fin.image (fon1, 0,0) ;
    }
    else if (randomit == 1)
    {
      fin.image (fon2, 0,0) ;
    }
    else if (randomit == 2)
    {
      fin.image (fon3, 0,0) ;
    }
    else
    {
      fin.image (fon3, 0,0) ;
    }
    
    fin.endDraw();
    }
 }
  
  if (key == BACKSPACE)
  {
    
    fin.beginDraw();
    fin.image(save, 0, 0);
    fin.endDraw(); 
    
    
}
  
  if (key == TAB)
  {
    if (showhelp==true)
    {
      showhelp = false;
    } else
    {
      showhelp = true;
    }
  }
  
  if (key == 'a' || key == 'A' || key == 'а' || key == 'А')
  {
    pic = a;
  }
  
  if (key == 'b' || key == 'B' || key == 'ь' || key == 'Ь')
  {
    pic = b;
  }
  
   if (key == 'c' || key == 'C' || key == 'с' || key == 'С')
  {
    pic = c; 
  }
  
  if (key == 'd' || key == 'D')
  {
    pic = d;
  }
  
  if (key == 'e' || key == 'E' || key == 'е' || key == 'Е')
  {
    pic = e;
  }
  
  if (key == 'f' || key == 'F')
  {
    pic = f;
  }
  
  if (key == 'g' || key == 'G')
  {
    pic = g; 
  }
  
  if (key == 'h' || key == 'H')
  {
    pic = h;
  }
  
  if (key == 'i' || key == 'I')
  {
    pic = i;
  }
  
  if (key == 'j' || key == 'J')
  {
    pic = j;
  }
  
  if (key == 'k' || key == 'K' || key == 'к' || key == 'К')
  {
    pic = k;
    
  }
  
  if (key == 'l' || key == 'L')
  {
    pic = l;
  }
  
  if (key == 'm' || key == 'M' || key == 'т' || key == 'Т')
  {
    pic = m;
  }
  
  if (key == 'n' || key == 'N')
  {
    pic = n;
  }
  
  if (key == 'o' || key == 'O'|| key == 'о'|| key == 'О')
  {
    pic = o;
  }
  
   if (key == 'p' || key == 'P' || key == 'р' || key == 'Р')
  {
    pic = p;
  }
  
  if (key == 'q' || key == 'Q')
  {
    pic = q;
  }
  
  if (key == 'r' || key == 'R')
  {
    pic = r;
  }
  
  if (key == 's' || key == 'S')
  {
    pic = s;
  }
  
  if (key == 't' || key == 'T')
  {
    pic = t;
  }
  
  if (key == 'u' || key == 'U')
  {
    pic = u;
  }
  
  if (key == 'v' || key == 'V')
  {
    pic = v;
  }
  
  if (key == 'x' || key == 'X' || key == 'х' || key == 'Х')
  {
    pic = x;
  }
  
  if (key == 'Y' || key == 'y' || key == 'у'|| key == 'У')
  {
    pic = y;
  }
  
  if (key == 'z' || key == 'Z')
  {
    pic = z;
  }
  
  
  if (key == 'б' || key == 'Б')
  {
    pic = brus;
  }
  
  if (key == 'э' || key == 'Э')
  {
    pic = erus;
  }
  
  if (key == 'ъ' || key == 'Ъ')
  {
    pic = tv;
  }
  
  if (key == 'ы' || key == 'Ы')
  {
    pic = ii;
  }
  
  if (key == 'щ' || key == 'Щ')
  {
    pic = she;
  }
  
  if (key == 'в' || key == 'В')
  {
    pic = vrus;
  }
  
  if (key == 'д' || key == 'Д')
  {
    pic = drus;
  }
  
  if (key == 'ю' || key == 'Ю')
  {
    pic = yu;
  }
  
  if (key == 'я' || key == 'Я')
  {
    pic = ya;
  }
  
  if (key == 'ш' || key == 'Ш')
  {
    pic = sh;
  }
  
  if (key == 'ч' || key == 'Ч')
  {
    pic = che;
  }
  
  if (key == 'ц' || key == 'Ц')
  {
    pic = cc;
  }
  
  if (key == 'ф' || key == 'Ф')
  {
    pic = ff;
  }
  
  if (key == 'п' || key == 'П')
  {
    pic = prus;
  }
  
  if (key == 'н' || key == 'Н')
  {
    pic = nrus;
  }
  
   if (key == 'м' || key == 'М')
  {
    pic = mrus;
  }
  
  if (key == 'л' || key == 'Л')
  {
    pic = lrus;
  }
  
  if (key == 'й' || key == 'Й')
  {
    pic = iii;
  }
  
  if (key == 'и' || key == 'И')
  {
    pic = irus;
  }
  
  if (key == 'з' || key == 'З')
  {
    pic = zz;
  }
  
  if (key == 'ж' || key == 'Ж')
  {
    pic = zhe;
  }

  if (key == 'ё' || key == 'Ё')
  {
    pic = io;
  }
  
  if (key == 'г' || key == 'Г')
  {
    pic = grus;
  }

  if (key == '2')
  {
    pic = stick1;
  }
  
  if (key == '3')
  {
    pic = stick2;
  }
  
  if (key == '4')
  {
    pic = stick5;
  }
  
  if (key == '5')
  {
    pic = stick6;
  }
  
  if (key == '6')
  {
    pic = stick9;
  }
  
  if (key == '7')
  {
    pic = stick3;
  }
  
  if (key == '8')
  {
    pic = stick8;
  }
  
  if (key == '1')
  {
    pic = krug;
  }
  
  if (key == '9')
  {
    fin.save("calmstory.jpg");
  }
}
