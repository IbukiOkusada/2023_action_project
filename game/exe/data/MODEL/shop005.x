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
 118;
 79.94657;232.00296;-449.95421;,
 48.88503;232.00296;-449.95421;,
 48.88503;547.18761;-449.95421;,
 79.94657;547.18761;-449.95421;,
 79.94657;232.00296;434.49605;,
 79.94657;547.18761;434.49605;,
 48.88503;547.18761;434.49605;,
 48.88503;232.00296;434.49605;,
 79.94657;547.18761;105.89776;,
 79.94657;232.00296;105.89776;,
 79.94657;232.00296;-71.86559;,
 79.94657;547.18761;-71.86559;,
 79.94657;547.18761;105.89776;,
 79.94657;547.18761;-71.86559;,
 48.88503;547.18761;-71.86559;,
 48.88503;547.18761;105.89776;,
 48.88503;547.18761;105.89776;,
 48.88503;547.18761;-71.86559;,
 48.88503;232.00296;-71.86559;,
 48.88503;232.00296;105.89776;,
 79.94657;-3.46953;105.89776;,
 48.88503;-3.46953;105.89776;,
 48.88503;-3.46953;-71.86559;,
 79.94657;-3.46953;-71.86559;,
 79.94657;232.00296;-250.81724;,
 79.94657;232.00296;-449.95421;,
 79.94657;547.18761;-449.95421;,
 79.94657;547.18761;-250.81724;,
 79.94657;-3.46953;-250.81724;,
 48.88503;-3.46953;-250.81724;,
 48.88503;-3.46953;-449.95421;,
 79.94657;-3.46953;-449.95421;,
 79.94657;547.18761;-250.81724;,
 79.94657;547.18761;-449.95421;,
 48.88503;547.18761;-449.95421;,
 48.88503;547.18761;-250.81724;,
 48.88503;547.18761;-250.81724;,
 48.88503;547.18761;-449.95421;,
 48.88503;232.00296;-449.95421;,
 48.88503;232.00296;-250.81724;,
 79.94657;232.00296;280.79673;,
 79.94657;547.18761;280.79673;,
 79.94657;547.18761;434.49605;,
 79.94657;232.00296;434.49605;,
 79.94657;-3.46953;280.79673;,
 79.94657;-3.46953;434.49605;,
 48.88503;-3.46953;434.49605;,
 48.88503;-3.46953;280.79673;,
 79.94657;547.18761;280.79673;,
 48.88503;547.18761;280.79673;,
 48.88503;547.18761;434.49605;,
 48.88503;547.18761;280.79673;,
 48.88503;232.00296;280.79673;,
 48.88503;232.00296;434.49605;,
 48.88503;174.89209;-71.86559;,
 48.88503;-3.46953;-71.86559;,
 48.88503;-3.46953;105.89776;,
 48.88503;175.83253;105.89776;,
 48.88503;232.00296;105.89776;,
 48.88503;232.00296;-71.86559;,
 48.88503;232.00296;-250.81724;,
 48.88503;174.28269;-250.81724;,
 48.88503;-3.46953;-250.81724;,
 79.94657;174.34330;-250.81724;,
 79.94657;232.00296;-250.81724;,
 79.94657;232.00296;-71.86559;,
 79.94657;174.34330;-71.86559;,
 79.94657;174.34330;-250.81724;,
 79.94657;174.34330;-71.86559;,
 79.94657;-3.46953;-71.86559;,
 79.94657;-3.46953;-250.81724;,
 79.94657;-3.46953;-250.81724;,
 79.94657;-3.46953;-449.95421;,
 79.94657;174.34330;-449.95421;,
 79.94657;232.00296;-449.95421;,
 79.94657;232.00296;105.89776;,
 79.94657;174.34330;105.89776;,
 79.94657;174.34330;105.89776;,
 79.94657;-3.46953;105.89776;,
 79.94657;174.34330;-449.95421;,
 79.94657;-3.46953;-449.95421;,
 48.88503;-3.46953;-449.95421;,
 48.88503;174.34330;-449.95421;,
 48.88503;232.00296;-449.95421;,
 79.94657;232.00296;-449.95421;,
 79.94657;232.00296;280.79673;,
 79.94657;174.34330;280.79673;,
 79.94657;174.34330;280.79673;,
 79.94657;-3.46953;280.79673;,
 48.88503;174.34330;-449.95421;,
 48.88503;-3.46953;-449.95421;,
 48.88503;174.34330;-250.81724;,
 48.88503;232.00296;-449.95421;,
 79.94657;232.00296;434.49605;,
 79.94657;174.34330;434.49605;,
 79.94657;-3.46953;434.49605;,
 79.94657;-3.46953;280.79673;,
 79.94657;174.34330;434.49605;,
 79.94657;232.00296;434.49605;,
 48.88503;232.00296;434.49605;,
 48.88503;174.34330;434.49605;,
 48.88503;-3.46953;434.49605;,
 79.94657;-3.46953;434.49605;,
 48.88503;174.34330;434.49605;,
 48.88503;232.00296;434.49605;,
 48.88503;232.00296;280.79673;,
 48.88503;174.34330;280.79673;,
 48.88503;-3.46953;280.79673;,
 48.88503;-3.46953;434.49605;,
 48.88503;174.34330;105.89776;,
 82.71032;328.90669;-456.23404;,
 101.18571;328.90669;-456.23404;,
 101.18571;231.70542;-456.23404;,
 82.71032;231.70542;-456.23404;,
 101.18571;328.90669;440.77584;,
 101.18571;231.70542;440.77584;,
 82.71032;328.90669;440.77584;,
 82.71032;231.70542;440.77584;;
 
 52;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;12,13,14,15;,
 4;16,17,18,19;,
 4;20,21,22,23;,
 4;24,25,26,27;,
 4;24,27,11,10;,
 4;28,23,22,29;,
 4;28,29,30,31;,
 4;32,33,34,35;,
 4;32,35,14,13;,
 4;36,37,38,39;,
 4;36,39,18,17;,
 4;40,9,8,41;,
 4;40,41,42,43;,
 4;44,45,46,47;,
 4;44,47,21,20;,
 4;48,12,15,49;,
 4;48,49,50,42;,
 4;51,16,19,52;,
 4;51,52,53,50;,
 4;54,55,56,57;,
 4;54,57,58,59;,
 4;54,59,60,61;,
 4;54,61,62,55;,
 4;63,64,65,66;,
 4;67,68,69,70;,
 4;63,71,72,73;,
 4;63,73,74,64;,
 4;66,65,75,76;,
 4;68,77,78,69;,
 4;79,80,81,82;,
 4;79,82,83,84;,
 4;76,75,85,86;,
 4;77,87,88,78;,
 4;89,90,62,91;,
 4;89,91,60,92;,
 4;86,85,93,94;,
 4;86,94,95,96;,
 4;97,98,99,100;,
 4;97,100,101,102;,
 4;103,104,105,106;,
 4;103,106,107,108;,
 4;106,105,58,109;,
 4;106,109,56,107;,
 4;110,111,112,113;,
 4;111,114,115,112;,
 4;114,116,117,115;,
 4;116,110,113,117;,
 4;116,114,111,110;,
 4;113,112,115,117;;
 
 MeshMaterialList {
  5;
  52;
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
  2,
  2,
  2,
  2,
  2,
  1,
  2,
  2,
  2,
  1,
  4,
  4,
  2,
  1,
  2,
  2,
  2,
  2,
  4,
  4,
  2,
  2,
  2,
  2,
  3,
  3,
  3,
  3,
  3,
  3;;
  Material {
   0.772000;0.787200;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data\\TEXTURE\\field006.jpg";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data\\TEXTURE\\shop000.png";
   }
  }
  Material {
   0.800000;0.784314;0.771765;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.480000;0.470588;0.463059;;
   TextureFilename {
    "data\\TEXTURE\\block004.jpg";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data\\TEXTURE\\roof001.jpg";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.480000;0.480000;0.480000;;
   TextureFilename {
    "data\\TEXTURE\\block004.jpg";
   }
  }
 }
 MeshNormals {
  12;
  0.000000;0.000000;-1.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;;
  52;
  4;0,0,0,0;,
  4;2,2,2,2;,
  4;3,3,3,3;,
  4;4,4,4,4;,
  4;5,5,5,5;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;4,4,4,4;,
  4;4,4,4,4;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;3,3,3,3;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;4,4,4,4;,
  4;4,4,4,4;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;3,3,3,3;,
  4;3,3,3,3;,
  4;3,3,3,3;,
  4;3,3,3,3;,
  4;3,3,3,3;,
  4;3,3,3,3;,
  4;0,0,0,0;,
  4;0,0,0,0;,
  4;3,3,3,3;,
  4;3,3,3,3;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;3,3,3,3;,
  4;3,3,3,3;,
  4;2,2,2,2;,
  4;2,2,2,2;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;6,6,6,6;,
  4;7,7,7,7;,
  4;8,8,8,8;,
  4;9,9,9,9;,
  4;10,10,10,10;,
  4;11,11,11,11;;
 }
 MeshTextureCoords {
  118;
  1.000000;0.469610;,
  0.000000;0.469610;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.469610;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.469610;,
  0.794270;0.000000;,
  0.794270;0.469610;,
  0.225870;0.469610;,
  0.225870;0.000000;,
  1.000000;0.205730;,
  1.000000;0.774130;,
  0.000000;0.774130;,
  0.000000;0.205730;,
  0.205730;0.000000;,
  0.774130;0.000000;,
  0.774130;0.469610;,
  0.205730;0.469610;,
  1.000000;0.794270;,
  0.000000;0.794270;,
  0.000000;0.225870;,
  1.000000;0.225870;,
  0.131651;0.469610;,
  0.000000;0.469610;,
  0.000000;0.000000;,
  0.131651;0.000000;,
  1.000000;0.131651;,
  0.000000;0.131651;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.868349;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.868349;,
  0.868349;0.000000;,
  1.000000;0.000000;,
  1.000000;0.469610;,
  0.868349;0.469610;,
  0.848518;0.469610;,
  0.848518;0.000000;,
  1.000000;0.000000;,
  1.000000;0.469610;,
  1.000000;0.848518;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.848518;,
  1.000000;0.151482;,
  0.000000;0.151482;,
  0.000000;0.000000;,
  0.151482;0.000000;,
  0.151482;0.469610;,
  0.000000;0.469610;,
  1.483055;-0.158151;,
  1.483055;2.071369;,
  3.705097;2.071369;,
  3.705097;-0.169907;,
  3.705097;-0.872037;,
  1.483055;-0.872037;,
  -0.753840;-0.872037;,
  -0.753840;-0.150534;,
  -0.753840;2.071369;,
  -0.753840;-0.151291;,
  -0.753840;-0.872037;,
  1.483055;-0.872037;,
  1.483055;-0.151291;,
  -0.996110;0.000000;,
  0.010575;0.000000;,
  0.010575;1.000000;,
  -0.996110;1.000000;,
  -0.753840;2.071369;,
  -3.243052;2.071369;,
  -3.243052;-0.151291;,
  -3.243052;-0.872037;,
  3.705097;-0.872037;,
  3.705097;-0.151291;,
  1.010575;0.000000;,
  1.010575;1.000000;,
  -0.110582;-0.611291;,
  -0.110582;1.611369;,
  0.277687;1.611369;,
  0.277687;-0.611291;,
  0.277687;-1.332037;,
  -0.110582;-1.332037;,
  5.891334;-0.872037;,
  5.891334;-0.151291;,
  1.994462;0.000000;,
  1.994462;1.000000;,
  -3.243052;-0.151291;,
  -3.243052;2.071369;,
  -0.753840;-0.151291;,
  -3.243052;-0.872037;,
  7.812575;-0.872037;,
  7.812575;-0.151291;,
  7.812575;2.071369;,
  5.891334;2.071369;,
  -0.110582;-0.611291;,
  -0.110582;-1.332037;,
  0.277687;-1.332037;,
  0.277687;-0.611291;,
  0.277687;1.611369;,
  -0.110582;1.611369;,
  7.812575;-0.151291;,
  7.812575;-0.872037;,
  5.891334;-0.872037;,
  5.891334;-0.151291;,
  5.891334;2.071369;,
  7.812575;2.071369;,
  3.705097;-0.151291;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;;
 }
}