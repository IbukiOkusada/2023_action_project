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
 56;
 11.91456;2.83441;3.08663;,
 12.51291;2.17768;3.20097;,
 12.51291;2.17768;-3.33663;,
 11.91456;2.83441;-3.23107;,
 -0.48064;2.83441;3.08663;,
 0.26551;3.37686;3.20097;,
 0.26551;3.37686;-3.33663;,
 -0.48064;2.83441;-3.23107;,
 -1.08836;2.17768;3.20097;,
 -1.08836;2.17768;-3.33663;,
 0.26552;-3.58417;3.20097;,
 -0.48064;-3.06036;3.08663;,
 -0.48064;-3.06036;-3.23107;,
 0.26552;-3.58417;-3.33663;,
 0.66523;2.83441;-4.16620;,
 0.26551;2.17768;-4.45986;,
 -0.35406;2.17768;-3.80239;,
 0.09109;2.83441;-3.68115;,
 -0.35406;2.17768;3.40578;,
 0.26551;2.17768;4.07061;,
 0.66523;2.83441;3.76959;,
 0.09109;2.83441;3.28454;,
 11.04304;3.37686;3.20097;,
 11.04304;3.37686;-3.33663;,
 10.65251;2.83441;-4.16620;,
 11.04304;2.17768;-4.45986;,
 11.04304;-3.58417;3.20097;,
 11.04304;-3.58417;-3.33663;,
 11.04304;2.17768;4.07061;,
 10.65251;2.83441;3.76959;,
 11.78797;2.17768;-3.80239;,
 11.34282;2.83441;-3.68115;,
 11.91456;-3.06036;3.08663;,
 11.91456;-3.06036;-3.23107;,
 11.78797;2.17768;3.40578;,
 11.34282;2.83441;3.28454;,
 12.51291;-2.55286;3.20097;,
 12.51291;-2.55286;-3.33663;,
 11.78797;-2.55286;-3.80239;,
 11.04304;-2.77881;-4.45986;,
 0.26552;-2.77881;-4.45986;,
 -0.35406;-2.77881;-3.80239;,
 -1.08836;-2.77881;3.20097;,
 -1.08836;-2.77881;-3.33663;,
 -0.35406;-2.77881;3.40578;,
 0.26552;-2.77881;4.07061;,
 11.04304;-2.77881;4.07061;,
 11.78797;-2.55286;3.40578;,
 11.34282;-3.06036;-3.68115;,
 10.65251;-3.06036;-4.16620;,
 0.66524;-3.06036;-4.16620;,
 0.09109;-3.06036;-3.68115;,
 0.09109;-3.06036;3.28454;,
 0.66524;-3.06036;3.76959;,
 10.65251;-3.06036;3.76959;,
 11.34282;-3.06036;3.28454;;
 
 54;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,4,7,9;,
 4;10,11,12,13;,
 4;14,15,16,17;,
 4;18,19,20,21;,
 4;5,22,23,6;,
 4;24,25,15,14;,
 4;26,10,13,27;,
 4;20,19,28,29;,
 4;22,0,3,23;,
 4;30,25,24,31;,
 4;32,26,27,33;,
 4;29,28,34,35;,
 4;1,36,37,2;,
 4;38,39,25,30;,
 4;15,25,39,40;,
 4;16,15,40,41;,
 4;42,8,9,43;,
 4;44,45,19,18;,
 4;28,19,45,46;,
 4;34,28,46,47;,
 4;36,32,33,37;,
 4;48,49,39,38;,
 4;40,39,49,50;,
 4;41,40,50,51;,
 4;11,42,43,12;,
 4;52,53,45,44;,
 4;46,45,53,54;,
 4;47,46,54,55;,
 4;54,26,32,55;,
 4;53,10,26,54;,
 4;52,11,10,53;,
 4;44,42,11,52;,
 4;18,8,42,44;,
 4;21,4,8,18;,
 4;20,5,4,21;,
 4;29,22,5,20;,
 4;35,0,22,29;,
 4;34,1,0,35;,
 4;47,36,1,34;,
 4;55,32,36,47;,
 4;27,13,50,49;,
 4;33,27,49,48;,
 4;37,33,48,38;,
 4;2,37,38,30;,
 4;3,2,30,31;,
 4;23,3,31,24;,
 4;6,23,24,14;,
 4;7,6,14,17;,
 4;9,7,17,16;,
 4;43,9,16,41;,
 4;12,43,41,51;,
 4;13,12,51,50;;
 
 MeshMaterialList {
  1;
  54;
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
    "data\\TEXTURE\\UV\\society_UV.png";
   }
  }
 }
 MeshNormals {
  68;
  0.395758;-0.553571;0.732758;,
  0.459557;-0.680389;-0.570857;,
  0.412763;0.433758;0.800925;,
  0.493581;0.567457;-0.659068;,
  -0.450190;0.416241;0.789982;,
  -0.529464;0.549133;-0.646623;,
  -0.371769;-0.641002;0.671494;,
  -0.412982;-0.758062;-0.504765;,
  -0.276866;0.526252;0.803993;,
  -0.290033;0.632733;-0.718004;,
  -0.229641;-0.779119;-0.583300;,
  -0.223816;-0.692261;0.686062;,
  0.246982;0.535839;0.807389;,
  0.258343;0.642049;-0.721825;,
  0.235482;-0.771918;-0.590501;,
  0.231144;-0.683483;0.692404;,
  0.457503;0.242929;0.855381;,
  0.578647;0.274771;-0.767898;,
  0.323899;0.260498;-0.909522;,
  -0.362037;0.270134;-0.892164;,
  -0.609935;0.281055;-0.740937;,
  -0.492448;0.250547;0.833499;,
  -0.363735;0.273701;0.890384;,
  0.325652;0.264085;0.907860;,
  0.456167;-0.337411;0.823447;,
  0.575142;-0.372233;-0.728461;,
  0.326081;-0.431456;-0.841140;,
  -0.326482;-0.465660;-0.822538;,
  -0.560736;-0.471189;-0.680850;,
  -0.452623;-0.437644;0.776917;,
  -0.283452;-0.282973;0.916287;,
  0.327931;-0.435553;0.838305;,
  0.527948;-0.702137;0.477780;,
  0.188786;-0.950110;0.248296;,
  -0.309024;-0.839959;0.446063;,
  -0.434519;-0.865713;0.248464;,
  -1.000000;0.000000;0.000000;,
  -0.931118;0.364717;0.000000;,
  -0.676162;0.666243;0.314524;,
  -0.218609;0.941466;0.256617;,
  0.276462;0.853136;0.442411;,
  0.569891;0.654553;0.496773;,
  0.932523;0.361111;0.000000;,
  0.907424;-0.420217;-0.000000;,
  -0.300610;-0.897957;-0.321413;,
  0.262703;-0.913732;-0.309968;,
  0.550182;-0.766286;-0.331821;,
  0.794527;-0.412178;-0.445910;,
  0.851792;0.451251;-0.266125;,
  0.597725;0.719739;-0.353131;,
  0.269226;0.909293;-0.317339;,
  -0.307330;0.893076;-0.328578;,
  -0.627707;0.690800;-0.358859;,
  -0.817133;0.352290;-0.456274;,
  -0.770540;-0.334156;-0.542779;,
  -0.486770;-0.823570;-0.291182;,
  -0.343888;-0.861304;0.374026;,
  -0.420367;-0.907354;0.000000;,
  -0.369403;-0.845802;0.384916;,
  0.420243;-0.372517;0.827422;,
  -0.471711;-0.289935;0.832722;,
  -0.277615;0.191834;0.941345;,
  -0.268664;0.000000;0.963234;,
  -0.276194;0.376501;0.884287;,
  -0.473160;0.280785;0.835033;,
  0.280009;0.191600;0.940683;,
  0.276709;-0.239467;0.930638;,
  0.540534;0.000000;-0.841322;;
  54;
  4;41,42,48,49;,
  4;38,39,51,52;,
  4;37,38,52,53;,
  4;34,35,55,44;,
  4;9,19,20,5;,
  4;21,22,8,4;,
  4;39,40,50,51;,
  4;13,18,19,9;,
  4;33,34,44,45;,
  4;8,22,23,12;,
  4;40,41,49,50;,
  4;17,18,13,3;,
  4;32,33,45,46;,
  4;12,23,16,2;,
  4;42,43,47,48;,
  4;25,26,18,17;,
  4;19,18,26,27;,
  4;20,19,27,28;,
  4;36,37,53,54;,
  4;29,30,22,21;,
  4;23,22,30,31;,
  4;16,23,31,24;,
  4;43,32,46,47;,
  4;1,14,26,25;,
  4;27,26,14,10;,
  4;28,27,10,7;,
  4;35,56,57,55;,
  4;6,11,58,29;,
  4;31,30,11,15;,
  4;24,31,15,0;,
  4;15,59,32,0;,
  4;11,34,33,15;,
  4;6,60,34,11;,
  4;29,56,35,6;,
  4;21,61,62,29;,
  4;4,63,61,21;,
  4;8,64,38,4;,
  4;12,40,39,8;,
  4;2,41,40,12;,
  4;16,65,41,2;,
  4;24,66,65,16;,
  4;0,32,66,24;,
  4;45,44,10,14;,
  4;46,45,14,1;,
  4;47,46,1,25;,
  4;67,47,25,17;,
  4;49,48,17,3;,
  4;50,49,3,13;,
  4;51,50,13,9;,
  4;52,51,9,5;,
  4;53,52,5,20;,
  4;54,53,20,28;,
  4;55,54,28,7;,
  4;44,55,7,10;;
 }
 MeshTextureCoords {
  56;
  0.811738;0.061824;,
  0.809563;0.077135;,
  0.933935;0.077135;,
  0.931927;0.061824;,
  0.811738;0.061824;,
  0.809563;0.049178;,
  0.933935;0.049178;,
  0.931927;0.061824;,
  0.809563;0.077135;,
  0.933935;0.077135;,
  0.809563;0.211463;,
  0.811738;0.199251;,
  0.931927;0.199251;,
  0.933935;0.211463;,
  0.949717;0.061824;,
  0.955303;0.077135;,
  0.942795;0.077135;,
  0.940489;0.061824;,
  0.805666;0.077135;,
  0.793018;0.077135;,
  0.798745;0.061824;,
  0.807973;0.061824;,
  0.809563;0.049178;,
  0.933935;0.049178;,
  0.949717;0.061824;,
  0.955303;0.077135;,
  0.809563;0.211463;,
  0.933935;0.211463;,
  0.793018;0.077135;,
  0.798745;0.061824;,
  0.942795;0.077135;,
  0.940489;0.061824;,
  0.811738;0.199251;,
  0.931927;0.199251;,
  0.805666;0.077135;,
  0.807973;0.061824;,
  0.809563;0.187419;,
  0.933935;0.187419;,
  0.942795;0.187419;,
  0.955303;0.192687;,
  0.955303;0.192687;,
  0.942795;0.192687;,
  0.809563;0.192687;,
  0.933935;0.192687;,
  0.805666;0.192687;,
  0.793018;0.192687;,
  0.793018;0.192687;,
  0.805666;0.187419;,
  0.940489;0.199251;,
  0.949717;0.199251;,
  0.949717;0.199251;,
  0.940489;0.199251;,
  0.807973;0.199251;,
  0.798745;0.199251;,
  0.798745;0.199251;,
  0.807973;0.199251;;
 }
}
