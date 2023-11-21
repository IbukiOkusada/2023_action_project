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
 60;
 -20.98776;26.66992;16.26669;,
 -12.03314;26.66992;-8.33606;,
 -12.03314;0.48827;-8.33606;,
 -20.98776;0.48827;16.26669;,
 -12.03314;26.66992;-8.33606;,
 12.56963;26.66992;0.61864;,
 12.56963;0.48827;0.61864;,
 -12.03314;0.48827;-8.33606;,
 12.56963;26.66992;0.61864;,
 3.61496;26.66992;25.22133;,
 3.61496;0.48827;25.22133;,
 12.56963;0.48827;0.61864;,
 3.61496;26.66992;25.22133;,
 -20.98776;26.66992;16.26669;,
 -20.98776;0.48827;16.26669;,
 3.61496;0.48827;25.22133;,
 -12.03314;26.66992;-8.33606;,
 -20.98776;26.66992;16.26669;,
 -20.98776;0.48827;16.26669;,
 -12.03314;0.48827;-8.33606;,
 -10.57349;26.66992;-23.96215;,
 10.33610;26.66992;-39.71872;,
 10.33610;0.48827;-39.71872;,
 -10.57349;0.48827;-23.96215;,
 10.33610;26.66992;-39.71872;,
 26.09265;26.66992;-18.80904;,
 26.09265;0.48827;-18.80904;,
 10.33610;0.48827;-39.71872;,
 26.09265;26.66992;-18.80904;,
 5.18303;26.66992;-3.05251;,
 5.18303;0.48827;-3.05251;,
 26.09265;0.48827;-18.80904;,
 5.18303;26.66992;-3.05251;,
 -10.57349;26.66992;-23.96215;,
 -10.57349;0.48827;-23.96215;,
 5.18303;0.48827;-3.05251;,
 10.33610;26.66992;-39.71872;,
 -10.57349;26.66992;-23.96215;,
 -10.57349;0.48827;-23.96215;,
 10.33610;0.48827;-39.71872;,
 -11.59164;49.10454;2.58876;,
 -4.03373;49.10454;-18.17652;,
 -4.03373;27.00667;-18.17652;,
 -11.59164;27.00667;2.58876;,
 -4.03373;49.10454;-18.17652;,
 16.73156;49.10454;-10.61855;,
 16.73156;27.00667;-10.61855;,
 -4.03373;27.00667;-18.17652;,
 16.73156;49.10454;-10.61855;,
 9.17361;49.10454;10.14666;,
 9.17361;27.00667;10.14666;,
 16.73156;27.00667;-10.61855;,
 9.17361;49.10454;10.14666;,
 -11.59164;49.10454;2.58876;,
 -11.59164;27.00667;2.58876;,
 9.17361;27.00667;10.14666;,
 -4.03373;49.10454;-18.17652;,
 -11.59164;49.10454;2.58876;,
 -11.59164;27.00667;2.58876;,
 -4.03373;27.00667;-18.17652;;
 
 18;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;12,13,14,15;,
 4;12,5,16,17;,
 4;18,19,6,15;,
 4;20,21,22,23;,
 4;24,25,26,27;,
 4;28,29,30,31;,
 4;32,33,34,35;,
 4;32,25,36,37;,
 4;38,39,26,35;,
 4;40,41,42,43;,
 4;44,45,46,47;,
 4;48,49,50,51;,
 4;52,53,54,55;,
 4;52,45,56,57;,
 4;58,59,46,55;;
 
 MeshMaterialList {
  1;
  18;
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
   0.545882;0.545882;0.545882;1.000000;;
   39.000000;
   0.400000;0.400000;0.400000;;
   0.429882;0.429882;0.429882;;
   TextureFilename {
    "data\\TEXTURE\\woodbox000.jpg";
   }
  }
 }
 MeshNormals {
  18;
  -0.939693;0.000000;-0.342018;,
  0.342021;0.000000;-0.939692;,
  0.939692;0.000000;0.342021;,
  -0.342019;0.000000;0.939693;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  -0.601817;0.000000;-0.798634;,
  0.798636;0.000000;-0.601814;,
  0.601815;0.000000;0.798635;,
  -0.798636;0.000000;0.601814;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  -0.939693;0.000000;-0.342019;,
  0.342021;0.000000;-0.939692;,
  0.939692;0.000000;0.342021;,
  -0.342019;0.000000;0.939693;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;;
  18;
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;3,3,3,3;,
  4;4,4,4,4;,
  4;5,5,5,5;,
  4;6,6,6,6;,
  4;7,7,7,7;,
  4;8,8,8,8;,
  4;9,9,9,9;,
  4;10,10,10,10;,
  4;11,11,11,11;,
  4;12,12,12,12;,
  4;13,13,13,13;,
  4;14,14,14,14;,
  4;15,15,15,15;,
  4;16,16,16,16;,
  4;17,17,17,17;;
 }
 MeshTextureCoords {
  60;
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;;
 }
}