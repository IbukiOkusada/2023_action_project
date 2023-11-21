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
 40;
 -4.69933;0.00000;2.51894;,
 -4.69933;-11.92904;2.51894;,
 -3.85041;-11.92904;4.01633;,
 -3.85041;0.00000;4.01633;,
 4.43497;-0.00000;2.51894;,
 2.85823;0.55809;2.51894;,
 2.85823;-0.00000;4.53768;,
 3.85041;-0.00000;4.01633;,
 4.43497;-11.92904;2.51894;,
 3.85041;-11.92904;4.01633;,
 2.85823;-12.60889;2.51894;,
 2.85823;-11.92904;4.53768;,
 3.85041;-11.92904;-4.01633;,
 2.85823;-11.92904;-4.81430;,
 2.85823;0.00000;-4.81430;,
 3.85041;0.00000;-4.01633;,
 -2.86985;0.55809;2.51894;,
 -2.86985;0.00000;4.53768;,
 -2.86985;-11.92904;4.53768;,
 -2.86985;-12.60889;2.51894;,
 -2.86985;-11.92904;-4.81430;,
 -2.86985;0.00000;-4.81430;,
 -3.85041;-11.92904;-4.01633;,
 -3.85041;0.00000;-4.01633;,
 -4.69933;-11.92904;-2.85251;,
 -2.86985;-12.60889;-2.85251;,
 2.85823;-12.60889;-2.85251;,
 4.43497;-11.92904;-2.85251;,
 4.43497;-11.92904;-2.85251;,
 4.43497;0.00000;-2.85251;,
 4.43497;-0.00000;2.51894;,
 4.43497;-11.92904;2.51894;,
 4.43497;0.00000;-2.85251;,
 2.85823;0.55809;-2.85251;,
 -2.86985;0.55809;-2.85251;,
 -4.69933;0.00000;-2.85251;,
 -4.69933;0.00000;-2.85251;,
 -4.69933;-11.92904;-2.85251;,
 -4.69933;-11.92904;2.51894;,
 -4.69933;0.00000;2.51894;;
 
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
 4;28,29,30,31;,
 4;32,33,5,4;,
 4;33,34,16,5;,
 4;34,35,0,16;,
 4;36,37,38,39;,
 4;20,25,24,22;,
 4;13,26,25,20;,
 4;12,27,26,13;,
 4;15,32,27,12;,
 4;14,33,32,15;,
 4;21,34,33,14;,
 4;23,35,34,21;,
 4;22,24,35,23;;
 
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
  -0.725557;0.000000;-0.688162;,
  -0.697469;0.000000;0.716615;,
  0.777909;0.000000;-0.628377;,
  0.236412;0.951285;0.197904;,
  0.745448;0.000000;0.666564;,
  0.332229;0.000000;-0.943199;,
  0.119114;0.964921;0.233965;,
  0.142089;-0.949233;0.280656;,
  -0.334945;0.000000;-0.942238;,
  -0.108131;0.964256;0.241904;,
  -0.241913;0.000000;0.970298;,
  -0.966934;0.000000;0.255027;,
  -0.154657;-0.976955;0.147108;,
  0.173784;-0.974416;0.142518;,
  0.982734;0.000000;0.185023;,
  0.286791;0.952806;0.099560;,
  0.145159;0.982318;0.118241;,
  -0.128750;0.984122;0.122174;,
  -0.326539;-0.934404;-0.142342;,
  -0.165853;-0.973682;-0.156324;,
  0.184958;-0.971174;-0.150369;,
  0.362633;-0.922874;-0.129614;,
  0.973040;0.000000;-0.230638;,
  0.154703;0.980005;-0.125126;,
  -0.138341;0.981787;-0.130216;,
  -0.273711;0.954320;-0.119813;,
  0.341478;-0.932317;0.119068;,
  0.281098;-0.930191;0.236072;,
  0.239551;0.000000;0.970884;,
  -0.129116;-0.948294;0.289945;,
  -0.255015;0.960899;0.107889;,
  -0.214932;0.952811;0.214373;,
  -0.304983;-0.943577;0.129023;,
  -0.255970;-0.932267;0.255651;,
  0.305178;0.946020;-0.109144;,
  -0.950765;0.000000;-0.309913;,
  -0.150727;-0.939322;-0.308149;,
  -0.297969;-0.912054;-0.281731;,
  0.163687;-0.940968;-0.296288;,
  0.322826;-0.910924;-0.256904;,
  0.137755;0.958995;-0.247695;,
  0.272803;0.937302;-0.216897;,
  -0.126849;0.957821;-0.257854;,
  -0.251623;0.938139;-0.237867;;
  30;
  4;11,11,1,1;,
  4;15,16,6,3;,
  4;14,14,4,4;,
  4;13,26,27,7;,
  4;28,28,4,4;,
  4;2,5,5,2;,
  4;16,17,9,6;,
  4;10,10,28,28;,
  4;12,13,7,29;,
  4;5,5,8,8;,
  4;17,30,31,9;,
  4;1,10,10,1;,
  4;32,12,29,33;,
  4;8,8,0,0;,
  4;18,19,12,32;,
  4;19,20,13,12;,
  4;20,21,26,13;,
  4;22,22,14,14;,
  4;34,23,16,15;,
  4;23,24,17,16;,
  4;24,25,30,17;,
  4;35,35,11,11;,
  4;36,19,18,37;,
  4;38,20,19,36;,
  4;39,21,20,38;,
  4;2,22,22,2;,
  4;40,23,34,41;,
  4;42,24,23,40;,
  4;43,25,24,42;,
  4;0,35,35,0;;
 }
 MeshTextureCoords {
  40;
  0.811473;0.723112;,
  0.811473;0.837661;,
  0.823224;0.837661;,
  0.823224;0.723112;,
  0.937910;0.723112;,
  0.916085;0.717753;,
  0.916085;0.723112;,
  0.929819;0.723112;,
  0.937910;0.837661;,
  0.929819;0.837661;,
  0.916085;0.844190;,
  0.916085;0.837661;,
  0.929819;0.837661;,
  0.916085;0.837661;,
  0.916085;0.723112;,
  0.929819;0.723112;,
  0.836797;0.717753;,
  0.836797;0.723112;,
  0.836797;0.837661;,
  0.836797;0.844190;,
  0.836797;0.837661;,
  0.836797;0.723112;,
  0.823224;0.837661;,
  0.823224;0.723112;,
  0.811473;0.837661;,
  0.836797;0.844190;,
  0.916085;0.844190;,
  0.937910;0.837661;,
  0.835856;0.842985;,
  0.835856;0.715468;,
  0.913596;0.715468;,
  0.913596;0.842985;,
  0.937910;0.723112;,
  0.916085;0.717753;,
  0.836797;0.717753;,
  0.811473;0.723112;,
  0.844010;0.715468;,
  0.844010;0.842985;,
  0.921750;0.842985;,
  0.921750;0.715468;;
 }
}