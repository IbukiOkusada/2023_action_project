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
 -9.36049;0.67603;4.31066;,
 -9.36049;-4.84932;4.31066;,
 -8.71734;-4.84932;5.28410;,
 -8.71734;0.67603;5.28410;,
 9.05192;0.67603;4.31066;,
 7.43432;1.02729;4.31066;,
 7.43432;0.67603;5.67964;,
 8.67347;0.67603;5.28410;,
 9.05192;-4.84932;4.31066;,
 8.67347;-4.84932;5.28410;,
 7.43431;-6.21929;4.31066;,
 7.43431;-4.84932;5.67964;,
 8.67347;-4.84932;-5.06381;,
 7.43431;-4.84932;-5.68105;,
 7.43432;0.67603;-5.68105;,
 8.67347;0.67603;-5.06381;,
 -7.43822;1.02729;4.31066;,
 -7.43822;0.67603;5.67964;,
 -7.43824;-4.84932;5.67964;,
 -7.43824;-6.21929;4.31066;,
 -7.43824;-4.84932;-5.68105;,
 -7.43822;0.67603;-5.68105;,
 -8.71734;-4.84932;-5.06381;,
 -8.71734;0.67603;-5.06381;,
 -9.36049;-4.84932;-3.91248;,
 -7.43824;-6.21929;-3.91248;,
 7.43431;-6.21929;-3.91248;,
 9.05192;-4.84932;-3.91248;,
 9.05192;0.67603;-3.91248;,
 7.43432;1.02729;-3.91248;,
 -7.43822;1.02729;-3.91248;,
 -9.36049;0.67603;-3.91248;;
 
 30;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,4,7,9;,
 4;10,8,9,11;,
 4;6,11,9,7;,
 4;12,13,14,15;,
 4;5,16,17,6;,
 4;17,18,11,6;,
 4;19,10,11,18;,
 4;14,13,20,21;,
 4;16,0,3,17;,
 4;2,18,17,3;,
 4;1,19,18,2;,
 4;21,20,22,23;,
 4;24,25,19,1;,
 4;25,26,10,19;,
 4;26,27,8,10;,
 4;27,28,4,8;,
 4;28,29,5,4;,
 4;29,30,16,5;,
 4;30,31,0,16;,
 4;31,24,1,0;,
 4;20,25,24,22;,
 4;13,26,25,20;,
 4;12,27,26,13;,
 4;15,28,27,12;,
 4;14,29,28,15;,
 4;21,30,29,14;,
 4;23,31,30,21;,
 4;22,24,31,23;;
 
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
    "data\\TEXTURE\\UV\\player_UV.png";
   }
  }
 }
 MeshNormals {
  44;
  -0.654319;-0.294884;-0.696355;,
  -0.571875;-0.281158;0.770655;,
  -0.685638;0.000000;-0.727942;,
  -0.599937;0.000000;0.800047;,
  0.756326;-0.000000;-0.654195;,
  0.146109;0.975255;0.165924;,
  0.722176;-0.299448;-0.623533;,
  0.651966;-0.290978;0.700195;,
  0.229018;-0.000000;-0.973422;,
  0.073314;0.975385;0.207964;,
  0.210826;-0.410360;0.887219;,
  0.268593;-0.455849;-0.848563;,
  -0.222908;0.000000;-0.974839;,
  -0.064167;0.974155;0.216576;,
  -0.190975;-0.405666;0.893848;,
  -0.248083;-0.453190;-0.856197;,
  -0.827192;-0.460563;0.321923;,
  -0.267031;-0.900343;0.343624;,
  0.302603;-0.893365;0.332160;,
  0.867086;-0.434052;0.244459;,
  0.179875;0.980157;0.083295;,
  0.090502;0.990379;0.104682;,
  -0.077665;0.991000;0.109026;,
  -0.957691;0.000000;0.287798;,
  -0.840771;-0.465926;-0.275712;,
  -0.272634;-0.917492;-0.289620;,
  0.307026;-0.909779;-0.279351;,
  0.874968;-0.438332;-0.205660;,
  0.987420;0.000000;-0.158122;,
  0.092471;0.992298;-0.082421;,
  -0.079629;0.993097;-0.086120;,
  -0.158595;0.984579;-0.073832;,
  0.982864;0.000000;0.184334;,
  0.684919;-0.000000;0.728619;,
  0.153876;-0.000000;0.988090;,
  -0.149390;0.000000;0.988778;,
  -0.154585;0.983671;0.092170;,
  -0.128003;0.974651;0.183498;,
  0.183927;0.980703;-0.066280;,
  -0.967735;0.000000;-0.251969;,
  0.077617;0.983388;-0.164083;,
  0.154692;0.979076;-0.132215;,
  -0.068429;0.982811;-0.171466;,
  -0.136499;0.979639;-0.147228;;
  30;
  4;23,16,1,3;,
  4;20,21,9,5;,
  4;19,32,33,7;,
  4;18,19,7,10;,
  4;34,10,7,33;,
  4;6,11,8,4;,
  4;21,22,13,9;,
  4;35,14,10,34;,
  4;17,18,10,14;,
  4;8,11,15,12;,
  4;22,36,37,13;,
  4;1,14,35,3;,
  4;16,17,14,1;,
  4;12,15,0,2;,
  4;24,25,17,16;,
  4;25,26,18,17;,
  4;26,27,19,18;,
  4;27,28,32,19;,
  4;38,29,21,20;,
  4;29,30,22,21;,
  4;30,31,36,22;,
  4;39,24,16,23;,
  4;15,25,24,0;,
  4;11,26,25,15;,
  4;6,27,26,11;,
  4;4,28,27,6;,
  4;40,29,38,41;,
  4;42,30,29,40;,
  4;43,31,30,42;,
  4;0,24,39,2;;
 }
 MeshTextureCoords {
  32;
  0.773032;0.730383;,
  0.773032;0.821400;,
  0.777201;0.821400;,
  0.777201;0.730383;,
  0.892402;0.730383;,
  0.881915;0.724597;,
  0.881915;0.730383;,
  0.889948;0.730383;,
  0.892402;0.821400;,
  0.889948;0.821400;,
  0.881915;0.843967;,
  0.881915;0.821400;,
  0.889948;0.821400;,
  0.881915;0.821400;,
  0.881915;0.730383;,
  0.889948;0.730383;,
  0.785494;0.724597;,
  0.785494;0.730383;,
  0.785494;0.821400;,
  0.785494;0.843967;,
  0.785494;0.821400;,
  0.785494;0.730383;,
  0.777201;0.821400;,
  0.777201;0.730383;,
  0.773032;0.821400;,
  0.785494;0.843967;,
  0.881915;0.843967;,
  0.892402;0.821400;,
  0.892402;0.730383;,
  0.881915;0.724597;,
  0.785494;0.724597;,
  0.773032;0.730383;;
 }
}
