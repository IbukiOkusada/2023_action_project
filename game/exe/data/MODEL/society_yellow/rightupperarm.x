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
 32;
 7.17473;1.47195;1.56527;,
 8.00646;0.57053;1.56527;,
 8.00646;0.57053;-1.44951;,
 7.17473;1.47195;-1.44951;,
 -0.70713;1.47195;1.56527;,
 -0.70713;1.47195;-1.44951;,
 -1.00355;0.57053;-1.44951;,
 -1.00355;0.57053;1.56527;,
 7.17473;-3.14217;1.56527;,
 -0.70713;-3.14217;1.56527;,
 -0.70713;-3.14217;-1.44951;,
 7.17473;-3.14217;-1.44951;,
 7.17473;0.57053;-2.33304;,
 -0.70713;0.57053;-2.33304;,
 -0.70713;1.07839;-1.98182;,
 7.17473;1.07839;-1.98182;,
 -0.70713;0.57053;2.43479;,
 7.17473;0.57053;2.43479;,
 7.17473;1.07839;1.98182;,
 -0.70713;1.07839;1.98182;,
 -0.70713;-2.79745;1.98182;,
 7.17473;-2.79745;1.98182;,
 -0.70713;-2.79745;-1.98182;,
 7.17473;-2.79745;-1.98182;,
 7.17473;-2.37312;2.43479;,
 8.00646;-2.37312;1.56527;,
 8.00646;-2.37312;-1.44951;,
 7.17473;-2.37312;-2.33304;,
 -0.70713;-2.37312;-2.33304;,
 -1.00355;-2.37312;-1.44951;,
 -1.00355;-2.37312;1.56527;,
 -0.70713;-2.37312;2.43479;;
 
 30;
 4;0,1,2,3;,
 4;4,0,3,5;,
 4;6,7,4,5;,
 4;8,9,10,11;,
 4;12,13,14,15;,
 4;16,17,18,19;,
 4;20,9,8,21;,
 4;19,4,7,16;,
 4;18,0,4,19;,
 4;17,1,0,18;,
 4;3,2,12,15;,
 4;5,3,15,14;,
 4;13,6,5,14;,
 4;11,10,22,23;,
 4;24,25,1,17;,
 4;2,1,25,26;,
 4;12,2,26,27;,
 4;27,28,13,12;,
 4;28,29,6,13;,
 4;29,30,7,6;,
 4;16,7,30,31;,
 4;31,24,17,16;,
 4;21,8,25,24;,
 4;26,25,8,11;,
 4;27,26,11,23;,
 4;23,22,28,27;,
 4;10,29,28,22;,
 4;9,30,29,10;,
 4;31,30,9,20;,
 4;20,21,24,31;;
 
 MeshMaterialList {
  1;
  30;
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
    "data\\TEXTURE\\UV\\society_yellow_UV.png";
   }
  }
 }
 MeshNormals {
  44;
  0.202280;-0.734947;0.647253;,
  0.222125;-0.728772;-0.647728;,
  0.216418;0.680358;0.700197;,
  0.236496;0.676124;-0.697800;,
  0.000000;0.696889;0.717179;,
  0.000000;0.695846;-0.718191;,
  0.000000;-0.750457;0.660919;,
  0.000000;-0.747148;-0.664657;,
  0.353888;-0.875073;0.330167;,
  0.000000;-0.940852;0.338818;,
  0.000000;0.929215;0.369539;,
  0.388508;0.848458;0.359417;,
  0.365327;-0.882433;-0.296393;,
  0.399181;0.857921;-0.323461;,
  0.000000;0.949762;-0.312974;,
  0.000000;-0.959001;-0.283403;,
  0.382387;0.346392;0.856617;,
  0.868494;0.346371;0.354605;,
  0.876912;0.336495;-0.343215;,
  0.394937;0.309566;-0.864982;,
  0.000000;0.297929;-0.954588;,
  -0.977815;0.146326;-0.149890;,
  -0.975276;0.153840;0.158651;,
  0.000000;0.356170;0.934421;,
  0.376628;-0.387304;0.841515;,
  0.853360;-0.384838;0.351678;,
  0.862228;-0.374093;-0.341492;,
  0.388791;-0.349858;-0.852315;,
  0.000000;-0.338859;-0.940837;,
  -0.973909;-0.170029;-0.150307;,
  -0.970969;-0.178759;0.158950;,
  -0.934230;-0.170089;0.313504;,
  -0.940885;0.303697;0.150010;,
  -0.947706;0.288971;-0.135457;,
  -0.910492;0.288131;0.296622;,
  -0.938527;0.145621;0.312987;,
  -0.946185;0.131212;-0.295833;,
  -0.927542;0.260100;-0.268354;,
  -0.942651;-0.153356;-0.296465;,
  0.000000;-0.397707;0.917513;,
  -0.932655;-0.334499;-0.135147;,
  -0.914598;-0.303030;-0.267739;,
  -0.924259;-0.351372;0.149273;,
  -0.894700;-0.335217;0.295197;;
  30;
  4;11,17,18,13;,
  4;10,11,13,14;,
  4;21,22,32,33;,
  4;8,9,15,12;,
  4;19,20,5,3;,
  4;23,16,2,4;,
  4;6,9,8,0;,
  4;34,32,22,35;,
  4;2,11,10,4;,
  4;16,17,11,2;,
  4;13,18,19,3;,
  4;14,13,3,5;,
  4;36,21,33,37;,
  4;12,15,7,1;,
  4;24,25,17,16;,
  4;18,17,25,26;,
  4;19,18,26,27;,
  4;27,28,20,19;,
  4;38,29,21,36;,
  4;29,30,22,21;,
  4;35,22,30,31;,
  4;39,24,16,23;,
  4;0,8,25,24;,
  4;26,25,8,12;,
  4;27,26,12,1;,
  4;1,7,28,27;,
  4;40,29,38,41;,
  4;42,30,29,40;,
  4;31,30,42,43;,
  4;6,0,24,39;;
 }
 MeshTextureCoords {
  32;
  0.210479;0.831079;,
  0.210479;0.859342;,
  0.301955;0.859342;,
  0.301955;0.831079;,
  0.210479;0.831079;,
  0.301955;0.831079;,
  0.301955;0.859342;,
  0.210479;0.859342;,
  0.210479;0.975748;,
  0.210479;0.975748;,
  0.301955;0.975748;,
  0.301955;0.975748;,
  0.328764;0.859342;,
  0.328764;0.859342;,
  0.318107;0.843419;,
  0.318107;0.843419;,
  0.184095;0.859342;,
  0.184095;0.859342;,
  0.197839;0.843419;,
  0.197839;0.843419;,
  0.197839;0.964940;,
  0.197839;0.964940;,
  0.318107;0.964940;,
  0.318107;0.964940;,
  0.184095;0.951636;,
  0.210479;0.951636;,
  0.301955;0.951636;,
  0.328764;0.951636;,
  0.328764;0.951636;,
  0.301955;0.951636;,
  0.210479;0.951636;,
  0.184095;0.951636;;
 }
}