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
 46;
 -9.70517;22.54074;0.00000;,
 -4.85258;22.54074;-8.40492;,
 -4.85258;-1.88095;-8.40492;,
 -9.70517;-1.88095;0.00000;,
 4.85258;22.54074;-8.40492;,
 4.85258;-1.88095;-8.40492;,
 9.70517;22.54074;0.00000;,
 9.70517;-1.88095;0.00000;,
 4.85258;22.54074;8.40492;,
 4.85258;-1.88095;8.40492;,
 -4.85258;22.54074;8.40492;,
 -4.85258;-1.88095;8.40492;,
 -9.70517;22.54074;0.00000;,
 -9.70517;-1.88095;0.00000;,
 0.00000;22.54074;0.00000;,
 0.00000;22.54074;0.00000;,
 0.00000;22.54074;0.00000;,
 0.00000;22.54074;0.00000;,
 0.00000;22.54074;0.00000;,
 0.00000;22.54074;0.00000;,
 0.00000;-1.88095;0.00000;,
 0.00000;-1.88095;0.00000;,
 0.00000;-1.88095;0.00000;,
 0.00000;-1.88095;0.00000;,
 0.00000;-1.88095;0.00000;,
 0.00000;-1.88095;0.00000;,
 -153.81615;204.66043;14.32045;,
 -153.81615;204.66043;-14.32044;,
 -153.81615;11.47324;-14.32044;,
 -153.81615;11.47324;14.32045;,
 -153.81615;204.66043;-14.32044;,
 153.81615;204.66043;-14.32045;,
 153.81615;11.47324;-14.32045;,
 -153.81615;11.47324;-14.32044;,
 153.81615;204.66043;-14.32045;,
 153.81615;204.66043;14.32044;,
 153.81615;11.47324;14.32044;,
 153.81615;11.47324;-14.32045;,
 153.81615;204.66043;14.32044;,
 -153.81615;204.66043;14.32045;,
 -153.81615;11.47324;14.32045;,
 153.81615;11.47324;14.32044;,
 -153.81615;204.66043;-14.32044;,
 -153.81615;204.66043;14.32045;,
 -153.81615;11.47324;14.32045;,
 -153.81615;11.47324;-14.32044;;
 
 24;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;6,8,9,7;,
 4;8,10,11,9;,
 4;10,12,13,11;,
 3;14,1,0;,
 3;15,4,1;,
 3;16,6,4;,
 3;17,8,6;,
 3;18,10,8;,
 3;19,12,10;,
 3;20,3,2;,
 3;21,2,5;,
 3;22,5,7;,
 3;23,7,9;,
 3;24,9,11;,
 3;25,11,13;,
 4;26,27,28,29;,
 4;30,31,32,33;,
 4;34,35,36,37;,
 4;38,39,40,41;,
 4;38,31,42,43;,
 4;44,45,32,41;;
 
 MeshMaterialList {
  3;
  24;
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
  1,
  2,
  1,
  2,
  1,
  1;;
  Material {
   0.276078;0.081569;0.000000;1.000000;;
   5.000000;
   1.000000;1.000000;1.000000;;
   0.345098;0.101961;0.000000;;
  }
  Material {
   0.454902;0.454902;0.454902;1.000000;;
   5.000000;
   1.000000;1.000000;1.000000;;
   0.568627;0.568627;0.568627;;
   TextureFilename {
    "data\\TEXTURE\\board000.jpg";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.970000;0.970000;0.970000;;
   TextureFilename {
    "data\\TEXTURE\\tutorial006.jpg";
   }
  }
 }
 MeshNormals {
  12;
  0.000000;1.000000;0.000000;,
  -0.866026;0.000000;-0.500000;,
  0.000000;0.000000;-1.000000;,
  0.866026;0.000000;-0.500000;,
  0.866026;0.000000;0.500000;,
  0.000000;0.000000;1.000000;,
  0.000000;-1.000000;-0.000000;,
  -1.000000;0.000000;0.000000;,
  -0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  -0.866025;0.000000;0.500000;,
  0.000000;0.000000;1.000000;;
  24;
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;3,3,3,3;,
  4;4,4,4,4;,
  4;5,5,5,5;,
  4;10,10,10,10;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;6,6,6;,
  3;6,6,6;,
  3;6,6,6;,
  3;6,6,6;,
  3;6,6,6;,
  3;6,6,6;,
  4;7,7,7,7;,
  4;8,8,8,8;,
  4;9,9,9,9;,
  4;11,11,11,11;,
  4;0,0,0,0;,
  4;6,6,6,6;;
 }
 MeshTextureCoords {
  46;
  0.000000;0.000000;,
  0.166667;0.000000;,
  0.166667;1.000000;,
  0.000000;1.000000;,
  0.333333;0.000000;,
  0.333333;1.000000;,
  0.500000;0.000000;,
  0.500000;1.000000;,
  0.666667;0.000000;,
  0.666667;1.000000;,
  0.833333;0.000000;,
  0.833333;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.083333;0.000000;,
  0.250000;0.000000;,
  0.416667;0.000000;,
  0.583333;0.000000;,
  0.750000;0.000000;,
  0.916667;0.000000;,
  0.083333;1.000000;,
  0.250000;1.000000;,
  0.416667;1.000000;,
  0.583333;1.000000;,
  0.750000;1.000000;,
  0.916667;1.000000;,
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
