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
 49;
 -3.33911;-6.04214;-2.84700;,
 -3.33911;0.03693;-2.84700;,
 -2.27841;0.03693;-3.82585;,
 -2.27841;-6.04214;-3.82585;,
 -0.30242;0.03693;-3.82585;,
 -0.30242;-6.04214;-3.82585;,
 1.67358;0.03693;-3.82585;,
 1.67358;-6.04214;-3.82585;,
 2.85144;0.03693;-2.97540;,
 2.85144;-6.04214;-2.97540;,
 -4.25440;0.03693;-1.91292;,
 -2.27841;0.03693;-1.91292;,
 -0.30242;0.03693;-1.91292;,
 1.67358;0.03693;-1.91292;,
 3.64957;0.03693;-1.91292;,
 -4.25440;0.03693;0.00000;,
 -2.27841;0.03693;0.00000;,
 -0.30242;0.03693;0.00000;,
 1.67358;0.03693;0.00000;,
 3.64957;0.03693;0.00000;,
 -4.25440;0.03693;1.91292;,
 -2.27841;0.03693;1.91292;,
 -0.30242;0.03693;1.91292;,
 1.67358;0.03693;1.91292;,
 3.64957;0.03693;1.91292;,
 -3.46021;0.03693;3.12283;,
 -2.27841;0.03693;3.82585;,
 -0.30242;0.03693;3.82585;,
 1.67358;0.03693;3.82585;,
 2.75690;0.03693;3.04805;,
 -3.46021;-6.04214;3.12283;,
 -2.27841;-6.04214;3.82585;,
 -0.30242;-6.04214;3.82585;,
 1.67358;-6.04214;3.82585;,
 2.75690;-6.04214;3.04805;,
 -4.25440;-6.04214;1.91292;,
 -2.27841;-6.04214;1.91292;,
 -0.30242;-6.04214;1.91292;,
 1.67358;-6.04214;1.91292;,
 3.64957;-6.04214;1.91292;,
 -4.25440;-6.04214;0.00000;,
 -2.27841;-6.04214;0.00000;,
 1.67358;-6.04214;-0.00000;,
 3.64957;-5.72703;-0.00000;,
 -4.25440;-6.04214;-1.91292;,
 -2.27841;-6.04214;-1.91292;,
 1.67358;-6.04214;-1.91292;,
 -0.30242;-6.04214;-1.91292;,
 3.64957;-6.04214;-1.91292;;
 
 50;
 4;0,1,2,3;,
 4;3,2,4,5;,
 4;5,4,6,7;,
 4;7,6,8,9;,
 4;1,10,11,2;,
 4;2,11,12,4;,
 4;4,12,13,6;,
 4;6,13,14,8;,
 4;10,15,16,11;,
 4;11,16,17,12;,
 4;12,17,18,13;,
 4;13,18,19,14;,
 4;15,20,21,16;,
 4;16,21,22,17;,
 4;17,22,23,18;,
 4;18,23,24,19;,
 4;20,25,26,21;,
 4;21,26,27,22;,
 4;22,27,28,23;,
 4;23,28,29,24;,
 4;25,30,31,26;,
 4;26,31,32,27;,
 4;27,32,33,28;,
 4;28,33,34,29;,
 4;30,35,36,31;,
 4;31,36,37,32;,
 4;32,37,38,33;,
 4;33,38,39,34;,
 4;35,40,41,36;,
 4;38,42,43,39;,
 4;40,44,45,41;,
 3;46,42,47;,
 3;42,38,47;,
 3;38,37,47;,
 3;37,36,47;,
 3;47,36,41;,
 3;41,45,47;,
 4;42,46,48,43;,
 4;44,0,3,45;,
 4;45,3,5,47;,
 4;47,5,7,46;,
 4;46,7,9,48;,
 4;39,24,29,34;,
 4;43,19,24,39;,
 4;48,14,19,43;,
 4;9,8,14,48;,
 4;30,25,20,35;,
 4;35,20,15,40;,
 4;40,15,10,44;,
 4;44,10,1,0;;
 
 MeshMaterialList {
  1;
  50;
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
  24;
  -0.696439;0.000000;-0.717616;,
  -0.364079;0.000000;-0.931368;,
  0.000000;0.000000;-1.000000;,
  0.307609;0.000000;-0.951513;,
  0.700391;0.000000;-0.713760;,
  0.000000;1.000000;0.000000;,
  -0.691300;0.000000;0.722568;,
  -0.265112;0.000000;0.964218;,
  0.000000;-0.000000;1.000000;,
  0.306339;0.000000;0.951922;,
  0.691487;0.000000;0.722389;,
  0.000000;-1.000000;-0.000000;,
  0.015659;-0.999747;-0.016175;,
  0.039169;-0.998413;-0.040461;,
  0.039201;-0.999231;-0.000000;,
  0.078471;-0.996916;-0.000000;,
  0.019577;-0.999604;0.020222;,
  0.039169;-0.998413;0.040461;,
  0.945001;0.000000;0.327066;,
  1.000000;0.000000;0.000000;,
  0.948562;0.000000;-0.316590;,
  -0.958120;0.000000;0.286366;,
  -1.000000;0.000000;0.000000;,
  -0.925812;0.000000;-0.377985;;
  50;
  4;0,0,1,1;,
  4;1,1,2,2;,
  4;2,2,3,3;,
  4;3,3,4,4;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;6,6,7,7;,
  4;7,7,8,8;,
  4;8,8,9,9;,
  4;9,9,10,10;,
  4;11,11,11,11;,
  4;11,11,11,11;,
  4;11,11,12,11;,
  4;11,12,13,11;,
  4;11,11,11,11;,
  4;12,14,15,13;,
  4;11,11,11,11;,
  3;16,14,11;,
  3;14,12,11;,
  3;12,11,11;,
  3;11,11,11;,
  3;11,11,11;,
  3;11,11,11;,
  4;14,16,17,15;,
  4;11,11,11,11;,
  4;11,11,11,11;,
  4;11,11,11,16;,
  4;16,11,11,17;,
  4;18,18,10,10;,
  4;19,19,18,18;,
  4;20,20,19,19;,
  4;4,4,20,20;,
  4;6,6,21,21;,
  4;21,21,22,22;,
  4;22,22,23,23;,
  4;23,23,0,0;;
 }
 MeshTextureCoords {
  49;
  0.969880;0.729220;,
  0.969880;0.608380;,
  0.953670;0.608380;,
  0.953670;0.729220;,
  0.923460;0.608380;,
  0.923460;0.729220;,
  0.893250;0.608380;,
  0.893250;0.729220;,
  0.875240;0.608380;,
  0.875240;0.729220;,
  0.983880;0.608380;,
  0.953670;0.608380;,
  0.923460;0.608380;,
  0.893250;0.608380;,
  0.863040;0.608380;,
  0.983880;0.608380;,
  0.953670;0.608380;,
  0.923460;0.608380;,
  0.893250;0.608380;,
  0.863040;0.608380;,
  0.983880;0.608380;,
  0.953670;0.608380;,
  0.923460;0.608380;,
  0.893250;0.608380;,
  0.863040;0.608380;,
  0.971740;0.608380;,
  0.953670;0.608380;,
  0.923460;0.608380;,
  0.893250;0.608380;,
  0.876690;0.608380;,
  0.971740;0.729220;,
  0.953670;0.729220;,
  0.923460;0.729220;,
  0.893250;0.729220;,
  0.876690;0.729220;,
  0.983880;0.729220;,
  0.953670;0.729220;,
  0.923460;0.729220;,
  0.893250;0.729220;,
  0.863040;0.729220;,
  0.983880;0.729220;,
  0.953670;0.729220;,
  0.893250;0.729220;,
  0.863040;0.722950;,
  0.983880;0.729220;,
  0.953670;0.729220;,
  0.893250;0.729220;,
  0.923460;0.729220;,
  0.863040;0.729220;;
 }
}
