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
 45;
 -19.40314;-0.01170;-14.71791;,
 -19.69603;0.69541;-14.71791;,
 -20.32443;0.69541;-7.43499;,
 -20.11732;-0.01170;-7.64210;,
 -20.40314;0.98830;-14.71791;,
 -20.82445;0.98830;-6.93499;,
 -21.11024;0.69541;-14.71791;,
 -21.32445;0.69541;-6.43499;,
 -21.40314;-0.01170;-14.71791;,
 -21.53156;-0.01170;-6.22789;,
 -21.11024;-0.71881;-14.71791;,
 -21.32445;-0.71881;-6.43499;,
 -20.40314;-1.01170;-14.71791;,
 -20.82445;-1.01170;-6.93499;,
 -19.69603;-0.71881;-14.71791;,
 -20.32443;-0.71881;-7.43499;,
 -19.40314;-0.01170;-14.71791;,
 -20.11732;-0.01170;-7.64210;,
 -11.41756;0.69541;-1.10377;,
 -11.41756;-0.01170;-1.39667;,
 -11.41756;0.98830;-0.39667;,
 -11.41756;0.69541;0.31044;,
 -11.41756;-0.01170;0.60333;,
 -11.41756;-0.71881;0.31044;,
 -11.41756;-1.01170;-0.39667;,
 -11.41756;-0.71881;-1.10377;,
 -11.41756;-0.01170;-1.39667;,
 -6.65093;0.69541;-0.81783;,
 -6.60003;-0.01170;-1.10627;,
 -6.77366;0.98830;-0.12148;,
 -6.89649;0.69541;0.57489;,
 -6.94734;-0.01170;0.86334;,
 -6.89649;-0.71881;0.57489;,
 -6.77366;-1.01170;-0.12148;,
 -6.65093;-0.71881;-0.81783;,
 -6.60003;-0.01170;-1.10627;,
 -0.01164;0.69541;-0.69208;,
 0.00372;-0.01170;-0.98457;,
 -0.04865;0.98830;0.01403;,
 -0.08564;0.69541;0.72022;,
 -0.10102;-0.01170;1.01265;,
 -0.08564;-0.71881;0.72022;,
 -0.04865;-1.01170;0.01403;,
 -0.01164;-0.71881;-0.69208;,
 0.00372;-0.01170;-0.98457;;
 
 64;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;6,8,9,7;,
 4;8,10,11,9;,
 4;10,12,13,11;,
 4;12,14,15,13;,
 4;14,16,17,15;,
 4;3,2,18,19;,
 4;2,5,20,18;,
 4;5,7,21,20;,
 4;7,9,22,21;,
 4;9,11,23,22;,
 4;11,13,24,23;,
 4;13,15,25,24;,
 4;15,17,26,25;,
 4;19,18,27,28;,
 4;18,20,29,27;,
 4;20,21,30,29;,
 4;21,22,31,30;,
 4;22,23,32,31;,
 4;23,24,33,32;,
 4;24,25,34,33;,
 4;25,26,35,34;,
 4;28,27,36,37;,
 4;27,29,38,36;,
 4;29,30,39,38;,
 4;30,31,40,39;,
 4;31,32,41,40;,
 4;32,33,42,41;,
 4;33,34,43,42;,
 4;34,35,44,43;,
 4;3,2,1,0;,
 4;2,5,4,1;,
 4;5,7,6,4;,
 4;7,9,8,6;,
 4;9,11,10,8;,
 4;11,13,12,10;,
 4;13,15,14,12;,
 4;15,17,16,14;,
 4;19,18,2,3;,
 4;18,20,5,2;,
 4;20,21,7,5;,
 4;21,22,9,7;,
 4;22,23,11,9;,
 4;23,24,13,11;,
 4;24,25,15,13;,
 4;25,26,17,15;,
 4;28,27,18,19;,
 4;27,29,20,18;,
 4;29,30,21,20;,
 4;30,31,22,21;,
 4;31,32,23,22;,
 4;32,33,24,23;,
 4;33,34,25,24;,
 4;34,35,26,25;,
 4;37,36,27,28;,
 4;36,38,29,27;,
 4;38,39,30,29;,
 4;39,40,31,30;,
 4;40,41,32,31;,
 4;41,42,33,32;,
 4;42,43,34,33;,
 4;43,44,35,34;;
 
 MeshMaterialList {
  3;
  64;
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2;;
  Material {
   0.000000;0.599200;0.135200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.000000;0.000000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.542400;0.542400;0.542400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  80;
  0.018682;0.000001;-0.999825;,
  0.013419;0.705524;-0.708559;,
  -0.000249;1.000000;-0.000036;,
  -0.015113;0.705568;0.708482;,
  -0.021569;0.000001;0.999767;,
  -0.015113;-0.705567;0.708482;,
  -0.000249;-1.000000;-0.000036;,
  0.013419;-0.705523;-0.708560;,
  0.995663;0.000001;0.093037;,
  0.754953;0.652628;0.064204;,
  0.003185;0.999965;0.007731;,
  -0.751490;0.659454;-0.019574;,
  -0.999792;0.000001;-0.020384;,
  -0.751490;-0.659454;-0.019574;,
  0.003185;-0.999965;0.007731;,
  0.754954;-0.652628;0.064204;,
  0.635156;0.717167;-0.286790;,
  0.002679;0.999987;0.004289;,
  -0.622841;0.717046;0.312913;,
  -0.889243;0.000001;0.457435;,
  -0.622841;-0.717045;0.312913;,
  0.002679;-0.999987;0.004289;,
  0.635157;-0.717166;-0.286790;,
  0.335472;0.000001;-0.942050;,
  0.238446;0.707140;-0.665655;,
  0.001160;0.999999;0.000463;,
  -0.231217;0.706701;0.668665;,
  -0.322951;0.000003;0.946416;,
  -0.231218;-0.706703;0.668662;,
  0.001160;-0.999999;0.000457;,
  0.238446;-0.707139;-0.665656;,
  0.039359;0.000001;-0.999225;,
  0.027913;0.705867;-0.707794;,
  -0.000047;1.000000;-0.000007;,
  -0.028233;0.705869;0.707780;,
  -0.039903;0.000003;0.999204;,
  -0.028233;-0.705871;0.707778;,
  -0.000047;-1.000000;-0.000013;,
  0.027913;-0.705867;-0.707794;,
  0.581250;0.000001;-0.813725;,
  -0.995663;-0.000001;-0.093037;,
  -0.635156;-0.717167;0.286790;,
  -0.754953;-0.652628;-0.064204;,
  -0.002679;-0.999987;-0.004289;,
  -0.003185;-0.999965;-0.007731;,
  0.622841;-0.717046;-0.312913;,
  0.751490;-0.659454;0.019574;,
  0.889243;-0.000001;-0.457435;,
  0.999792;-0.000001;0.020384;,
  0.622841;0.717045;-0.312913;,
  0.751490;0.659454;0.019574;,
  -0.002679;0.999987;-0.004289;,
  -0.003185;0.999965;-0.007731;,
  -0.635157;0.717166;0.286790;,
  -0.754954;0.652628;-0.064204;,
  -0.335472;-0.000001;0.942050;,
  -0.238446;-0.707140;0.665655;,
  -0.581250;-0.000001;0.813725;,
  -0.001160;-0.999999;-0.000463;,
  0.231217;-0.706701;-0.668665;,
  0.322951;-0.000003;-0.946416;,
  0.231218;0.706703;-0.668662;,
  -0.001160;0.999999;-0.000457;,
  -0.238446;0.707139;0.665656;,
  -0.039359;-0.000001;0.999225;,
  -0.027913;-0.705867;0.707794;,
  0.000047;-1.000000;0.000007;,
  0.028233;-0.705869;-0.707780;,
  0.039903;-0.000003;-0.999204;,
  0.028233;0.705871;-0.707778;,
  0.000047;1.000000;0.000013;,
  -0.027913;0.705867;0.707794;,
  -0.018682;-0.000001;0.999825;,
  -0.013419;-0.705524;0.708559;,
  0.000249;-1.000000;0.000036;,
  0.015113;-0.705568;-0.708482;,
  0.021569;-0.000001;-0.999767;,
  0.015113;0.705567;-0.708482;,
  0.000249;1.000000;0.000036;,
  -0.013419;0.705523;0.708560;;
  64;
  4;8,9,16,8;,
  4;9,10,17,16;,
  4;10,11,18,17;,
  4;11,12,19,18;,
  4;12,13,20,19;,
  4;13,14,21,20;,
  4;14,15,22,21;,
  4;15,8,8,22;,
  4;39,16,24,23;,
  4;16,17,25,24;,
  4;17,18,26,25;,
  4;18,19,27,26;,
  4;19,20,28,27;,
  4;20,21,29,28;,
  4;21,22,30,29;,
  4;22,39,23,30;,
  4;23,24,32,31;,
  4;24,25,33,32;,
  4;25,26,34,33;,
  4;26,27,35,34;,
  4;27,28,36,35;,
  4;28,29,37,36;,
  4;29,30,38,37;,
  4;30,23,31,38;,
  4;31,32,1,0;,
  4;32,33,2,1;,
  4;33,34,3,2;,
  4;34,35,4,3;,
  4;35,36,5,4;,
  4;36,37,6,5;,
  4;37,38,7,6;,
  4;38,31,0,7;,
  4;40,41,42,40;,
  4;41,43,44,42;,
  4;43,45,46,44;,
  4;45,47,48,46;,
  4;47,49,50,48;,
  4;49,51,52,50;,
  4;51,53,54,52;,
  4;53,40,40,54;,
  4;55,56,41,57;,
  4;56,58,43,41;,
  4;58,59,45,43;,
  4;59,60,47,45;,
  4;60,61,49,47;,
  4;61,62,51,49;,
  4;62,63,53,51;,
  4;63,55,57,53;,
  4;64,65,56,55;,
  4;65,66,58,56;,
  4;66,67,59,58;,
  4;67,68,60,59;,
  4;68,69,61,60;,
  4;69,70,62,61;,
  4;70,71,63,62;,
  4;71,64,55,63;,
  4;72,73,65,64;,
  4;73,74,66,65;,
  4;74,75,67,66;,
  4;75,76,68,67;,
  4;76,77,69,68;,
  4;77,78,70,69;,
  4;78,79,71,70;,
  4;79,72,64,71;;
 }
 MeshTextureCoords {
  45;
  0.500000;0.000000;,
  0.500000;0.125000;,
  0.625000;0.125000;,
  0.625000;0.000000;,
  0.500000;0.250000;,
  0.625000;0.250000;,
  0.500000;0.375000;,
  0.625000;0.375000;,
  0.500000;0.500000;,
  0.625000;0.500000;,
  0.500000;0.625000;,
  0.625000;0.625000;,
  0.500000;0.750000;,
  0.625000;0.750000;,
  0.500000;0.875000;,
  0.625000;0.875000;,
  0.500000;1.000000;,
  0.625000;1.000000;,
  0.750000;0.125000;,
  0.750000;0.000000;,
  0.750000;0.250000;,
  0.750000;0.375000;,
  0.750000;0.500000;,
  0.750000;0.625000;,
  0.750000;0.750000;,
  0.750000;0.875000;,
  0.750000;1.000000;,
  0.875000;0.125000;,
  0.875000;0.000000;,
  0.875000;0.250000;,
  0.875000;0.375000;,
  0.875000;0.500000;,
  0.875000;0.625000;,
  0.875000;0.750000;,
  0.875000;0.875000;,
  0.875000;1.000000;,
  1.000000;0.125000;,
  1.000000;0.000000;,
  1.000000;0.250000;,
  1.000000;0.375000;,
  1.000000;0.500000;,
  1.000000;0.625000;,
  1.000000;0.750000;,
  1.000000;0.875000;,
  1.000000;1.000000;;
 }
}