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
 -10.32208;1.47196;-1.46352;,
 -11.64410;0.57054;-1.46352;,
 -11.64410;0.57054;1.55126;,
 -10.32208;1.47196;1.55126;,
 1.41628;1.47196;-1.46352;,
 1.41628;1.47196;1.55126;,
 1.88744;0.57054;1.55126;,
 1.88744;0.57054;-1.46352;,
 -10.32208;-3.14216;-1.46352;,
 1.41628;-3.14216;-1.46352;,
 1.41628;-3.14216;1.55126;,
 -10.32208;-3.14216;1.55126;,
 -10.32208;0.57054;2.43479;,
 1.41628;0.57054;2.43479;,
 1.41628;1.07840;2.08357;,
 -10.32208;1.07840;2.08357;,
 1.41628;0.57054;-2.33304;,
 -10.32208;0.57054;-2.33304;,
 -10.32208;1.07840;-1.88007;,
 1.41628;1.07840;-1.88007;,
 1.41628;-2.79744;-1.88007;,
 -10.32208;-2.79744;-1.88007;,
 1.41628;-2.79744;2.08357;,
 -10.32208;-2.79744;2.08357;,
 -10.32208;-2.37311;-2.33304;,
 -11.64410;-2.37311;-1.46352;,
 -11.64410;-2.37311;1.55126;,
 -10.32208;-2.37311;2.43479;,
 1.41628;-2.37311;2.43479;,
 1.88744;-2.37311;1.55126;,
 1.88744;-2.37311;-1.46352;,
 1.41628;-2.37311;-2.33304;;
 
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
  38;
  -0.139355;-0.743137;-0.654468;,
  -0.155801;-0.738191;0.656353;,
  -0.151161;0.688873;-0.708946;,
  -0.168374;0.685923;0.707927;,
  0.299437;0.664892;-0.684292;,
  0.317815;0.659790;0.680933;,
  0.286386;-0.719028;-0.633230;,
  0.305331;-0.711854;0.632484;,
  -0.249380;-0.907133;-0.338996;,
  0.302257;-0.863134;-0.404525;,
  0.000000;0.929215;-0.369540;,
  -0.280319;0.885501;-0.370553;,
  -0.259393;-0.915209;0.308394;,
  -0.290197;0.895339;0.337865;,
  0.000000;0.949762;0.312974;,
  0.493927;-0.825436;0.273298;,
  -0.274661;0.357236;-0.892717;,
  -0.776813;0.441086;-0.449449;,
  -0.786480;0.432982;0.440428;,
  -0.286363;0.323452;0.901873;,
  0.518792;0.284033;0.806338;,
  0.948996;0.220397;0.225458;,
  0.944012;0.229935;-0.236581;,
  0.509756;0.323790;-0.797063;,
  -0.269504;-0.397393;-0.877181;,
  -0.758723;-0.477344;-0.443263;,
  -0.787419;-0.261457;0.558222;,
  -0.280474;-0.362907;0.888613;,
  0.000000;-0.338859;0.940837;,
  0.940987;-0.252374;0.225500;,
  0.935420;-0.263151;-0.236095;,
  0.856385;-0.240295;-0.457015;,
  0.868852;0.445975;-0.214950;,
  0.881953;0.427907;0.197620;,
  0.872098;-0.220816;0.436676;,
  0.000000;-0.397707;-0.917513;,
  -0.502832;-0.864384;0.000000;,
  0.852697;-0.522406;-0.000000;;
  30;
  4;11,17,18,13;,
  4;10,11,13,14;,
  4;21,22,32,33;,
  4;8,9,15,12;,
  4;19,20,5,3;,
  4;23,16,2,4;,
  4;6,9,8,0;,
  4;4,32,22,23;,
  4;2,11,10,4;,
  4;16,17,11,2;,
  4;13,18,19,3;,
  4;14,13,3,5;,
  4;20,21,33,5;,
  4;12,15,7,1;,
  4;24,25,17,16;,
  4;18,17,25,26;,
  4;19,18,26,27;,
  4;27,28,20,19;,
  4;34,29,21,20;,
  4;29,30,22,21;,
  4;23,22,30,31;,
  4;35,24,16,23;,
  4;0,8,25,24;,
  4;36,25,8,12;,
  4;27,26,12,1;,
  4;1,7,28,27;,
  4;15,29,34,7;,
  4;37,30,29,15;,
  4;31,30,9,6;,
  4;6,0,24,35;;
 }
 MeshTextureCoords {
  32;
  0.294657;0.550343;,
  0.294657;0.576541;,
  0.209864;0.576541;,
  0.209864;0.550343;,
  0.294657;0.550343;,
  0.209864;0.550343;,
  0.209864;0.576541;,
  0.294657;0.576541;,
  0.294657;0.684442;,
  0.294657;0.684442;,
  0.209864;0.684442;,
  0.209864;0.684442;,
  0.185014;0.576541;,
  0.185014;0.576541;,
  0.194892;0.561781;,
  0.194892;0.561781;,
  0.319113;0.576541;,
  0.319113;0.576541;,
  0.306373;0.561781;,
  0.306373;0.561781;,
  0.306373;0.674424;,
  0.306373;0.674424;,
  0.194892;0.674424;,
  0.194892;0.674424;,
  0.319113;0.662092;,
  0.294657;0.662092;,
  0.209864;0.662092;,
  0.185014;0.662092;,
  0.185014;0.662092;,
  0.209864;0.662092;,
  0.294657;0.662092;,
  0.319113;0.662092;;
 }
}
