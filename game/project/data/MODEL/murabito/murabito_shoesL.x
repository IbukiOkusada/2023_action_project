xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 89;
 2.49265;-4.00187;-6.99021;,
 1.43497;-4.00187;-8.42578;,
 1.42238;-3.03537;-8.37528;,
 2.47062;-3.03537;-6.95254;,
 0.02707;-4.00187;-8.96230;,
 0.02707;-3.03537;-8.90701;,
 -1.38082;-4.00187;-8.53352;,
 -1.36823;-3.03537;-8.48202;,
 -2.38372;-4.00187;-6.87956;,
 -2.36217;-3.03537;-6.84288;,
 1.42238;-2.06886;-8.37528;,
 2.47062;-2.06886;-6.95254;,
 0.02707;-2.06886;-8.90701;,
 -1.36823;-2.06886;-8.48202;,
 -2.36217;-2.06886;-6.84288;,
 1.42238;-1.86042;-8.37528;,
 2.47062;-1.42885;-6.95254;,
 0.02707;-1.86042;-8.90701;,
 -1.36823;-1.86042;-8.48202;,
 -2.36217;-1.42885;-6.84288;,
 1.29703;-1.68232;-7.87226;,
 2.25109;-1.25075;-6.57733;,
 0.02707;-1.68232;-8.35621;,
 -1.24288;-1.68232;-7.96942;,
 -2.14753;-1.25075;-6.47755;,
 1.29703;-0.81123;-5.15463;,
 2.56698;-0.81123;-5.15463;,
 0.02707;-0.81123;-5.15463;,
 -1.24288;-0.81123;-5.15463;,
 -2.51284;-0.81123;-5.15463;,
 1.29703;-0.13585;-1.95304;,
 2.56698;-0.13585;-1.95304;,
 0.02707;-0.13585;-1.95304;,
 -1.24288;-0.13585;-1.95304;,
 -2.51284;-0.13585;-1.95304;,
 1.29703;-0.13585;1.24855;,
 2.56698;-0.13585;1.24855;,
 0.02707;-0.13585;1.24855;,
 -1.24288;-0.13585;1.24855;,
 -2.51284;-0.13585;1.24855;,
 1.29703;-0.13585;2.49342;,
 2.05940;-0.13585;2.07776;,
 0.02707;-0.13585;2.80410;,
 -1.24288;-0.13585;2.62323;,
 -1.97834;-0.13585;2.02549;,
 1.42238;-1.10236;3.01356;,
 2.26000;-1.10236;2.55684;,
 0.02707;-1.10236;3.35486;,
 -1.36823;-1.10236;3.15617;,
 -2.17628;-1.10236;2.49944;,
 1.42238;-2.06886;3.01356;,
 2.26000;-2.06886;2.55684;,
 0.02707;-2.06886;3.35486;,
 -1.36823;-2.06886;3.15617;,
 -2.17628;-2.06886;2.49944;,
 1.42238;-3.03537;3.01356;,
 2.26000;-3.03537;2.55684;,
 0.02707;-3.03537;3.35486;,
 -1.36823;-3.03537;3.15617;,
 -2.17628;-3.03537;2.49944;,
 1.43497;-4.00187;3.06577;,
 2.28014;-4.00187;2.60496;,
 0.02707;-4.00187;3.41017;,
 -1.38082;-4.00187;3.20967;,
 -2.19616;-4.00187;2.54704;,
 -2.78872;-4.00187;-1.86364;,
 -2.78872;-4.00187;-5.41298;,
 -2.78872;-4.00187;1.68569;,
 2.84286;-4.00187;-1.86364;,
 2.84286;-4.00187;1.68569;,
 2.84286;-4.00187;-5.41298;,
 -2.76354;-3.03537;1.64581;,
 -2.76354;-3.03537;-1.87180;,
 -2.76354;-3.03537;-5.38940;,
 -2.76354;-2.06886;1.64581;,
 -2.76354;-2.06886;-1.87180;,
 -2.76354;-2.06886;-5.38940;,
 -2.76354;-1.10236;1.64581;,
 -2.76354;-1.10236;-1.87180;,
 -2.76354;-1.10236;-5.38940;,
 2.81769;-3.03537;1.64581;,
 2.81769;-3.03537;-1.87180;,
 2.81769;-3.03537;-5.38940;,
 2.81769;-2.06886;1.64581;,
 2.81769;-2.06886;-1.87180;,
 2.81769;-2.06886;-5.38940;,
 2.81769;-1.10236;1.64581;,
 2.81769;-1.10236;-1.87180;,
 2.81769;-1.10236;-5.38940;;
 
 94;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;6,8,9,7;,
 4;3,2,10,11;,
 4;2,5,12,10;,
 4;5,7,13,12;,
 4;7,9,14,13;,
 4;11,10,15,16;,
 4;10,12,17,15;,
 4;12,13,18,17;,
 4;13,14,19,18;,
 4;16,15,20,21;,
 4;15,17,22,20;,
 4;17,18,23,22;,
 4;18,19,24,23;,
 4;21,20,25,26;,
 4;20,22,27,25;,
 4;22,23,28,27;,
 4;23,24,29,28;,
 4;26,25,30,31;,
 4;25,27,32,30;,
 4;27,28,33,32;,
 4;28,29,34,33;,
 4;31,30,35,36;,
 4;30,32,37,35;,
 4;32,33,38,37;,
 4;33,34,39,38;,
 4;36,35,40,41;,
 4;35,37,42,40;,
 4;37,38,43,42;,
 4;38,39,44,43;,
 4;41,40,45,46;,
 4;40,42,47,45;,
 4;42,43,48,47;,
 4;43,44,49,48;,
 4;46,45,50,51;,
 4;45,47,52,50;,
 4;47,48,53,52;,
 4;48,49,54,53;,
 4;51,50,55,56;,
 4;50,52,57,55;,
 4;52,53,58,57;,
 4;53,54,59,58;,
 4;56,55,60,61;,
 4;55,57,62,60;,
 4;57,58,63,62;,
 4;58,59,64,63;,
 3;65,66,67;,
 3;68,69,70;,
 3;66,8,67;,
 3;70,69,0;,
 3;8,6,67;,
 3;0,69,1;,
 3;67,6,64;,
 3;1,69,4;,
 3;64,6,63;,
 3;69,61,4;,
 3;61,60,4;,
 3;4,60,6;,
 3;60,62,6;,
 3;62,63,6;,
 4;67,64,59,71;,
 4;65,67,71,72;,
 4;66,65,72,73;,
 4;8,66,73,9;,
 4;71,59,54,74;,
 4;72,71,74,75;,
 4;73,72,75,76;,
 4;9,73,76,14;,
 4;74,54,49,77;,
 4;75,74,77,78;,
 4;76,75,78,79;,
 4;14,76,79,19;,
 4;77,49,44,39;,
 4;78,77,39,34;,
 4;79,78,34,29;,
 4;19,79,29,24;,
 4;61,69,80,56;,
 4;69,68,81,80;,
 4;68,70,82,81;,
 4;70,0,3,82;,
 4;56,80,83,51;,
 4;80,81,84,83;,
 4;81,82,85,84;,
 4;82,3,11,85;,
 4;51,83,86,46;,
 4;83,84,87,86;,
 4;84,85,88,87;,
 4;85,11,16,88;,
 4;46,86,36,41;,
 4;86,87,31,36;,
 4;87,88,26,31;,
 4;88,16,21,26;;
 
 MeshMaterialList {
  1;
  94;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data\\TEXTURE\\murabito002.png";
   }
  }
 }
 MeshNormals {
  95;
  0.909720;0.036861;-0.413584;,
  0.604476;0.049413;-0.795089;,
  0.034172;0.057093;-0.997784;,
  -0.612996;0.049983;-0.788504;,
  -0.917637;0.035492;-0.395831;,
  0.910175;0.018434;-0.413813;,
  0.604998;0.024715;-0.795844;,
  0.034205;0.028561;-0.999007;,
  -0.613516;0.025001;-0.789286;,
  -0.918067;0.017749;-0.396027;,
  0.910321;0.000000;-0.413902;,
  0.605149;0.000000;-0.796112;,
  0.034210;0.000000;-0.999415;,
  -0.613654;0.000000;-0.789575;,
  -0.918208;0.000000;-0.396098;,
  0.843959;0.323598;-0.427806;,
  0.034210;0.000000;-0.999415;,
  -0.613654;0.000000;-0.789575;,
  -0.918208;0.000000;-0.396098;,
  0.168314;0.929869;-0.327131;,
  0.057991;0.948781;-0.310568;,
  0.008304;0.955581;-0.294613;,
  -0.068195;0.949504;-0.306253;,
  -0.182866;0.925409;-0.331930;,
  0.143936;0.949395;-0.279163;,
  0.010417;0.968323;-0.249483;,
  0.002493;0.969732;-0.244159;,
  -0.013963;0.968251;-0.249589;,
  -0.142031;0.946130;-0.290974;,
  0.000000;0.994602;-0.103765;,
  0.000000;0.994602;-0.103765;,
  0.000000;0.994602;-0.103765;,
  0.000000;1.000000;0.000000;,
  0.672269;0.230915;0.703373;,
  0.350081;0.248506;0.903155;,
  0.047756;0.256404;0.965389;,
  -0.388748;0.252372;0.886106;,
  -0.716796;0.223149;0.660612;,
  0.689170;0.000000;0.724600;,
  0.361192;0.000000;0.932492;,
  0.049203;0.000000;0.998789;,
  -0.400400;0.000000;0.916341;,
  -0.734771;0.000000;0.678316;,
  0.688973;0.025190;0.724349;,
  0.361057;0.027514;0.932138;,
  0.049186;0.028540;0.998382;,
  -0.400261;0.027943;0.915975;,
  -0.734561;0.024235;0.678109;,
  0.688339;0.050363;0.723639;,
  0.360649;0.055006;0.931078;,
  0.049129;0.057055;0.997161;,
  -0.399810;0.055861;0.914894;,
  -0.733921;0.048456;0.677505;,
  0.000000;0.000000;-0.000000;,
  -0.954803;0.018552;0.296659;,
  -0.999915;0.013023;0.000000;,
  -0.990835;0.014540;-0.134289;,
  -0.954952;0.000000;0.296760;,
  -1.000000;0.000000;0.000000;,
  -0.990940;0.000000;-0.134308;,
  -0.941484;0.175039;0.288042;,
  -0.983293;0.181901;-0.006819;,
  -0.912554;0.367961;-0.178468;,
  0.962373;0.018120;0.271126;,
  0.999915;0.013018;0.000000;,
  0.993938;0.014268;-0.109014;,
  0.962519;0.000000;0.271214;,
  1.000000;0.000000;0.000000;,
  0.994039;0.000000;-0.109028;,
  0.949258;0.171426;0.263670;,
  0.983292;0.181907;-0.006819;,
  0.918012;0.365190;-0.154565;,
  0.073582;0.933427;-0.351141;,
  0.095063;0.939700;-0.328524;,
  0.011638;0.951429;-0.307648;,
  -0.108367;0.941302;-0.319699;,
  -0.265216;0.901639;-0.341625;,
  0.619452;0.448090;0.644589;,
  0.317091;0.480990;0.817375;,
  0.043143;0.494653;0.868019;,
  -0.352339;0.486523;0.799470;,
  -0.662787;0.434717;0.609700;,
  0.000000;-1.000000;0.000000;,
  -0.954326;0.037098;0.296455;,
  -0.999661;0.026044;0.000000;,
  -0.990522;0.029078;-0.134242;,
  -0.899033;0.344365;0.270465;,
  -0.933297;0.358854;-0.013453;,
  -0.886495;0.461965;-0.026731;,
  0.961911;0.036234;0.270949;,
  0.999661;0.026034;0.000000;,
  0.993635;0.028532;-0.108978;,
  0.907944;0.337587;0.248339;,
  0.933292;0.358865;-0.013453;,
  0.886488;0.461978;-0.026732;;
  94;
  4;0,1,6,5;,
  4;1,2,7,6;,
  4;2,3,8,7;,
  4;3,4,9,8;,
  4;5,6,11,10;,
  4;6,7,12,11;,
  4;7,8,13,12;,
  4;8,9,14,13;,
  4;10,11,11,15;,
  4;11,12,16,11;,
  4;12,13,17,16;,
  4;13,14,18,17;,
  4;72,73,20,19;,
  4;73,74,21,20;,
  4;74,75,22,21;,
  4;75,76,23,22;,
  4;19,20,25,24;,
  4;20,21,26,25;,
  4;21,22,27,26;,
  4;22,23,28,27;,
  4;24,25,30,29;,
  4;25,26,30,30;,
  4;26,27,29,30;,
  4;27,28,31,29;,
  4;29,30,32,32;,
  4;30,30,32,32;,
  4;30,29,32,32;,
  4;29,31,32,32;,
  4;32,32,32,32;,
  4;32,32,32,32;,
  4;32,32,32,32;,
  4;32,32,32,32;,
  4;77,78,34,33;,
  4;78,79,35,34;,
  4;79,80,36,35;,
  4;80,81,37,36;,
  4;33,34,39,38;,
  4;34,35,40,39;,
  4;35,36,41,40;,
  4;36,37,42,41;,
  4;38,39,44,43;,
  4;39,40,45,44;,
  4;40,41,46,45;,
  4;41,42,47,46;,
  4;43,44,49,48;,
  4;44,45,50,49;,
  4;45,46,51,50;,
  4;46,47,52,51;,
  3;53,53,53;,
  3;53,53,53;,
  3;82,82,82;,
  3;82,82,82;,
  3;82,82,82;,
  3;82,82,82;,
  3;82,82,82;,
  3;82,82,82;,
  3;82,82,82;,
  3;82,82,82;,
  3;82,82,82;,
  3;82,82,82;,
  3;82,82,82;,
  3;82,82,82;,
  4;83,52,47,54;,
  4;84,83,54,55;,
  4;85,84,55,56;,
  4;4,85,56,9;,
  4;54,47,42,57;,
  4;55,54,57,58;,
  4;56,55,58,59;,
  4;9,56,59,14;,
  4;57,42,37,60;,
  4;58,57,60,61;,
  4;59,58,61,62;,
  4;14,59,62,18;,
  4;60,37,81,86;,
  4;61,60,86,87;,
  4;62,61,87,88;,
  4;76,62,28,23;,
  4;48,89,63,43;,
  4;89,90,64,63;,
  4;90,91,65,64;,
  4;91,0,5,65;,
  4;43,63,66,38;,
  4;63,64,67,66;,
  4;64,65,68,67;,
  4;65,5,10,68;,
  4;38,66,69,33;,
  4;66,67,70,69;,
  4;67,68,71,70;,
  4;68,10,15,71;,
  4;33,69,92,77;,
  4;69,70,93,92;,
  4;70,71,94,93;,
  4;71,15,19,24;;
 }
 MeshTextureCoords {
  89;
  0.745460;0.973810;,
  0.765070;0.973810;,
  0.765300;0.940940;,
  0.745870;0.940940;,
  0.791160;0.973810;,
  0.791160;0.940940;,
  0.817250;0.973810;,
  0.817020;0.940940;,
  0.835840;0.973810;,
  0.835440;0.940940;,
  0.765300;0.908070;,
  0.745870;0.908070;,
  0.791160;0.908070;,
  0.817020;0.908070;,
  0.835440;0.908070;,
  0.765300;0.900980;,
  0.745870;0.886300;,
  0.791160;0.900980;,
  0.817020;0.900980;,
  0.835440;0.886300;,
  0.767620;0.894920;,
  0.749940;0.880240;,
  0.791160;0.894920;,
  0.814700;0.894920;,
  0.831460;0.880240;,
  0.767620;0.865290;,
  0.744090;0.865290;,
  0.791160;0.865290;,
  0.814700;0.865290;,
  0.838230;0.865290;,
  0.767620;0.842320;,
  0.744090;0.842320;,
  0.791160;0.842320;,
  0.814700;0.842320;,
  0.838230;0.842320;,
  0.767620;0.842320;,
  0.744090;0.842320;,
  0.791160;0.842320;,
  0.814700;0.842320;,
  0.838230;0.842320;,
  0.767620;0.842320;,
  0.753490;0.842320;,
  0.791160;0.842320;,
  0.814700;0.842320;,
  0.828330;0.842320;,
  0.765300;0.875190;,
  0.749780;0.875190;,
  0.791160;0.875190;,
  0.817020;0.875190;,
  0.831990;0.875190;,
  0.765300;0.908070;,
  0.749780;0.908070;,
  0.791160;0.908070;,
  0.817020;0.908070;,
  0.831990;0.908070;,
  0.765300;0.940940;,
  0.749780;0.940940;,
  0.791160;0.940940;,
  0.817020;0.940940;,
  0.831990;0.940940;,
  0.765070;0.973810;,
  0.749400;0.973810;,
  0.791160;0.973810;,
  0.817250;0.973810;,
  0.832360;0.973810;,
  0.843340;0.973810;,
  0.843340;0.973810;,
  0.843340;0.973810;,
  0.738970;0.973810;,
  0.738970;0.973810;,
  0.738970;0.973810;,
  0.842880;0.940940;,
  0.842880;0.940940;,
  0.842880;0.940940;,
  0.842880;0.908070;,
  0.842880;0.908070;,
  0.842880;0.908070;,
  0.842880;0.875190;,
  0.842880;0.875190;,
  0.842880;0.875190;,
  0.739440;0.940940;,
  0.739440;0.940940;,
  0.739440;0.940940;,
  0.739440;0.908070;,
  0.739440;0.908070;,
  0.739440;0.908070;,
  0.739440;0.875190;,
  0.739440;0.875190;,
  0.739440;0.875190;;
 }
}