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
 314;
 7.41668;-36.06030;-1.97419;,
 7.95524;-36.06030;-1.58290;,
 8.04574;-0.15829;-1.86142;,
 7.65361;-0.15829;-2.14633;,
 8.62094;-36.06030;-1.58290;,
 8.53045;-0.15829;-1.86142;,
 9.15950;-36.06030;-1.97419;,
 8.92258;-0.15829;-2.14633;,
 9.36522;-36.06030;-2.60730;,
 9.07236;-0.15829;-2.60730;,
 9.15950;-36.06030;-3.24041;,
 8.92258;-0.15829;-3.06829;,
 8.62094;-36.06030;-3.63170;,
 8.53045;-0.15829;-3.35318;,
 7.95524;-36.06030;-3.63170;,
 8.04574;-0.15829;-3.35318;,
 7.41668;-36.06030;-3.24041;,
 7.65361;-0.15829;-3.06829;,
 7.21098;-36.06030;-2.60730;,
 7.50382;-0.15829;-2.60730;,
 7.41668;-36.06030;-1.97419;,
 7.65361;-0.15829;-2.14633;,
 7.95524;-36.06030;-1.58290;,
 7.41668;-36.06030;-1.97419;,
 8.28810;-36.06030;-2.60730;,
 8.62094;-36.06030;-1.58290;,
 9.15950;-36.06030;-1.97419;,
 9.36522;-36.06030;-2.60730;,
 9.15950;-36.06030;-3.24041;,
 8.62094;-36.06030;-3.63170;,
 7.95524;-36.06030;-3.63170;,
 7.41668;-36.06030;-3.24041;,
 7.21098;-36.06030;-2.60730;,
 7.65361;-0.15829;-2.14633;,
 8.04574;-0.15829;-1.86142;,
 8.28810;-0.15829;-2.60730;,
 8.53045;-0.15829;-1.86142;,
 8.92258;-0.15829;-2.14633;,
 9.07236;-0.15829;-2.60730;,
 8.92258;-0.15829;-3.06829;,
 8.53045;-0.15829;-3.35318;,
 8.04574;-0.15829;-3.35318;,
 7.65361;-0.15829;-3.06829;,
 7.50382;-0.15829;-2.60730;,
 9.67867;-36.91968;24.64143;,
 6.23752;-36.91968;29.85104;,
 6.23752;-35.95611;29.85104;,
 9.67867;-35.95611;24.64143;,
 6.23752;-36.62841;33.90745;,
 9.67867;-36.62841;33.90745;,
 6.23752;-37.59199;33.90745;,
 9.67867;-37.59199;33.90745;,
 6.23752;-36.91968;29.85104;,
 9.67867;-36.91968;24.64143;,
 6.23752;-37.59199;33.90745;,
 6.23752;-36.62841;33.90745;,
 9.67867;-37.59199;33.90745;,
 9.67867;-36.62841;33.90745;,
 9.80656;-37.37475;29.74745;,
 5.76460;-37.37475;29.74745;,
 5.76460;-35.67437;29.74745;,
 9.80656;-35.67437;29.74745;,
 9.80656;-33.65034;31.52852;,
 5.76460;-33.65034;31.52852;,
 5.76460;-33.65034;35.10167;,
 9.80656;-33.65034;35.10167;,
 9.80656;-35.59825;36.98108;,
 5.76460;-35.59825;36.98108;,
 5.76460;-36.52958;36.98108;,
 9.80656;-36.52958;36.98108;,
 9.80656;-34.52033;35.10167;,
 5.76460;-34.52033;35.10167;,
 5.76460;-34.52033;31.52852;,
 9.80656;-34.52033;31.52852;,
 5.76460;-33.65034;31.52852;,
 5.76460;-34.52033;31.52852;,
 5.76460;-34.52033;35.10167;,
 5.76460;-33.65034;35.10167;,
 9.80656;-33.65034;35.10167;,
 9.80656;-34.52033;35.10167;,
 9.80656;-34.52033;31.52852;,
 9.80656;-33.65034;31.52852;,
 5.76460;-37.37475;29.74745;,
 9.80656;-37.37475;29.74745;,
 5.76460;-36.52958;36.98108;,
 5.76460;-35.59825;36.98108;,
 9.80656;-36.52958;36.98108;,
 9.80656;-35.59825;36.98108;,
 -1.07757;0.84638;-2.48168;,
 -1.07757;0.29850;-2.08364;,
 1.61705;0.29850;-2.08364;,
 1.61705;0.84638;-2.48168;,
 -1.07757;-0.37869;-2.08364;,
 1.61705;-0.37869;-2.08364;,
 -1.07757;-0.92655;-2.48168;,
 1.61705;-0.92655;-2.48168;,
 -1.07757;-1.13581;-3.12573;,
 1.61705;-1.13581;-3.12573;,
 -1.07757;-0.92655;-3.76978;,
 1.61705;-0.92655;-3.76978;,
 -1.07757;-0.37868;-4.16782;,
 1.61705;-0.37868;-4.16782;,
 -1.07757;0.29852;-4.16782;,
 1.61705;0.29852;-4.16782;,
 -1.07757;0.84638;-3.76978;,
 1.61705;0.84638;-3.76978;,
 -1.07757;1.05563;-3.12573;,
 1.61705;1.05563;-3.12573;,
 -1.07757;0.84638;-2.48168;,
 1.61705;0.84638;-2.48168;,
 5.84313;0.24045;-2.26234;,
 5.84313;0.69435;-2.59212;,
 5.84313;-0.32062;-2.26234;,
 5.84313;-0.77452;-2.59212;,
 5.84313;-0.94790;-3.12573;,
 5.84313;-0.77452;-3.65933;,
 5.84313;-0.32062;-3.98912;,
 5.84313;0.24045;-3.98912;,
 5.84313;0.69435;-3.65933;,
 5.84313;0.86772;-3.12573;,
 5.84313;0.69435;-2.59212;,
 7.71794;0.17301;-2.46988;,
 7.71794;0.51780;-2.72039;,
 7.71794;-0.25318;-2.46988;,
 7.71794;-0.59798;-2.72039;,
 7.71794;-0.72968;-3.12573;,
 7.71794;-0.59798;-3.53107;,
 7.71794;-0.25318;-3.78158;,
 7.71794;0.17301;-3.78158;,
 7.71794;0.51780;-3.53107;,
 7.71794;0.64950;-3.12573;,
 7.71794;0.51780;-2.72039;,
 8.98928;0.17301;-2.46988;,
 8.98928;0.51780;-2.72039;,
 8.98928;-0.25318;-2.46988;,
 8.98928;-0.59798;-2.72039;,
 8.98928;-0.72968;-3.12573;,
 8.98928;-0.59798;-3.53107;,
 8.98928;-0.25318;-3.78158;,
 8.98928;0.17301;-3.78158;,
 8.98928;0.51780;-3.53107;,
 8.98928;0.64950;-3.12573;,
 8.98928;0.51780;-2.72039;,
 10.86410;0.24045;-2.26234;,
 10.86410;0.69435;-2.59212;,
 10.86410;-0.32062;-2.26234;,
 10.86410;-0.77452;-2.59212;,
 10.86410;-0.94790;-3.12573;,
 10.86410;-0.77452;-3.65933;,
 10.86410;-0.32062;-3.98912;,
 10.86410;0.24045;-3.98912;,
 10.86410;0.69435;-3.65933;,
 10.86410;0.86772;-3.12573;,
 10.86410;0.69435;-2.59212;,
 15.09016;0.29850;-2.08364;,
 15.09016;0.84638;-2.48168;,
 15.09016;-0.37869;-2.08364;,
 15.09016;-0.92655;-2.48168;,
 15.09016;-1.13581;-3.12573;,
 15.09016;-0.92655;-3.76978;,
 15.09016;-0.37868;-4.16782;,
 15.09016;0.29852;-4.16782;,
 15.09016;0.84638;-3.76978;,
 15.09016;1.05563;-3.12573;,
 15.09016;0.84638;-2.48168;,
 17.78479;0.29850;-2.08364;,
 17.78479;0.84638;-2.48168;,
 17.78479;-0.37869;-2.08364;,
 17.78479;-0.92655;-2.48168;,
 17.78479;-1.13581;-3.12573;,
 17.78479;-0.92655;-3.76978;,
 17.78479;-0.37868;-4.16782;,
 17.78479;0.29852;-4.16782;,
 17.78479;0.84638;-3.76978;,
 17.78479;1.05563;-3.12573;,
 17.78479;0.84638;-2.48168;,
 -1.07757;0.29850;-2.08364;,
 -1.07757;0.84638;-2.48168;,
 -1.07757;-0.04009;-3.12573;,
 -1.07757;-0.37869;-2.08364;,
 -1.07757;-0.92655;-2.48168;,
 -1.07757;-1.13581;-3.12573;,
 -1.07757;-0.92655;-3.76978;,
 -1.07757;-0.37868;-4.16782;,
 -1.07757;0.29852;-4.16782;,
 -1.07757;0.84638;-3.76978;,
 -1.07757;1.05563;-3.12573;,
 17.78479;0.84638;-2.48168;,
 17.78479;0.29850;-2.08364;,
 17.78479;-0.04009;-3.12573;,
 17.78479;-0.37869;-2.08364;,
 17.78479;-0.92655;-2.48168;,
 17.78479;-1.13581;-3.12573;,
 17.78479;-0.92655;-3.76978;,
 17.78479;-0.37868;-4.16782;,
 17.78479;0.29852;-4.16782;,
 17.78479;0.84638;-3.76978;,
 17.78479;1.05563;-3.12573;,
 7.21672;-33.55584;-0.09259;,
 7.21672;-35.38554;1.23676;,
 8.83597;-35.38554;1.23676;,
 8.83597;-33.55584;-0.09259;,
 7.21672;-37.64715;1.23676;,
 8.83597;-37.64715;1.23676;,
 7.21672;-39.47684;-0.09259;,
 8.83597;-39.47684;-0.09259;,
 7.21672;-40.17572;-2.24351;,
 8.83597;-40.17572;-2.24351;,
 7.21672;-39.47684;-4.39444;,
 8.83597;-39.47684;-4.39444;,
 7.21672;-37.64715;-5.72379;,
 8.83597;-37.64715;-5.72379;,
 7.21672;-35.38554;-5.72379;,
 8.83597;-35.38554;-5.72379;,
 7.21672;-33.55584;-4.39444;,
 8.83597;-33.55584;-4.39444;,
 7.21672;-32.85696;-2.24351;,
 8.83597;-32.85696;-2.24351;,
 7.21672;-33.55584;-0.09259;,
 8.83597;-33.55584;-0.09259;,
 7.21672;-35.38554;1.23676;,
 7.21672;-33.55584;-0.09259;,
 7.21672;-36.51634;-2.24351;,
 7.21672;-37.64715;1.23676;,
 7.21672;-39.47684;-0.09259;,
 7.21672;-40.17572;-2.24351;,
 7.21672;-39.47684;-4.39444;,
 7.21672;-37.64715;-5.72379;,
 7.21672;-35.38554;-5.72379;,
 7.21672;-33.55584;-4.39444;,
 7.21672;-32.85696;-2.24351;,
 8.83597;-33.55584;-0.09259;,
 8.83597;-35.38554;1.23676;,
 8.83597;-36.51634;-2.24351;,
 8.83597;-37.64715;1.23676;,
 8.83597;-39.47684;-0.09259;,
 8.83597;-40.17572;-2.24351;,
 8.83597;-39.47684;-4.39444;,
 8.83597;-37.64715;-5.72379;,
 8.83597;-35.38554;-5.72379;,
 8.83597;-33.55584;-4.39444;,
 8.83597;-32.85696;-2.24351;,
 11.31980;-34.97874;2.36639;,
 4.59639;-34.97874;2.36639;,
 4.59639;-33.09609;2.36639;,
 11.31980;-33.09609;2.36639;,
 4.59639;-35.64637;31.15623;,
 11.31980;-35.64637;31.15623;,
 4.59639;-37.52903;31.15623;,
 11.31980;-37.52903;31.15623;,
 4.59639;-34.97874;2.36639;,
 11.31980;-34.97874;2.36639;,
 4.59639;-37.52903;31.15623;,
 4.59639;-35.64637;31.15623;,
 11.31980;-37.52903;31.15623;,
 11.31980;-35.64637;31.15623;,
 9.84568;-27.07940;-3.66095;,
 6.69006;-27.07940;-3.66095;,
 6.69006;-25.74816;-2.32971;,
 9.84568;-25.74816;-2.32971;,
 6.69006;-33.44595;6.60483;,
 9.84568;-33.44595;6.60483;,
 6.69006;-34.77719;5.27359;,
 9.84568;-34.77719;5.27359;,
 6.69006;-27.07940;-3.66095;,
 9.84568;-27.07940;-3.66095;,
 6.69006;-34.77719;5.27359;,
 6.69006;-33.44595;6.60483;,
 9.84568;-34.77719;5.27359;,
 9.84568;-33.44595;6.60483;,
 7.53582;-35.58115;35.02972;,
 7.53582;-36.68970;35.83514;,
 8.51688;-36.68970;35.83514;,
 8.51688;-35.58115;35.02972;,
 7.53582;-38.05996;35.83514;,
 8.51688;-38.05996;35.83514;,
 7.53582;-39.16851;35.02972;,
 8.51688;-39.16851;35.02972;,
 7.53582;-39.59194;33.72655;,
 8.51688;-39.59194;33.72655;,
 7.53582;-39.16851;32.42335;,
 8.51688;-39.16851;32.42335;,
 7.53582;-38.05996;31.61793;,
 8.51688;-38.05996;31.61793;,
 7.53582;-36.68970;31.61793;,
 8.51688;-36.68970;31.61793;,
 7.53582;-35.58115;32.42335;,
 8.51688;-35.58115;32.42335;,
 7.53582;-35.15772;33.72655;,
 8.51688;-35.15772;33.72655;,
 7.53582;-35.58115;35.02972;,
 8.51688;-35.58115;35.02972;,
 7.53582;-36.68970;35.83514;,
 7.53582;-35.58115;35.02972;,
 7.53582;-37.37484;33.72655;,
 7.53582;-38.05996;35.83514;,
 7.53582;-39.16851;35.02972;,
 7.53582;-39.59194;33.72655;,
 7.53582;-39.16851;32.42335;,
 7.53582;-38.05996;31.61793;,
 7.53582;-36.68970;31.61793;,
 7.53582;-35.58115;32.42335;,
 7.53582;-35.15772;33.72655;,
 8.51688;-35.58115;35.02972;,
 8.51688;-36.68970;35.83514;,
 8.51688;-37.37484;33.72655;,
 8.51688;-38.05996;35.83514;,
 8.51688;-39.16851;35.02972;,
 8.51688;-39.59194;33.72655;,
 8.51688;-39.16851;32.42335;,
 8.51688;-38.05996;31.61793;,
 8.51688;-36.68970;31.61793;,
 8.51688;-35.58115;32.42335;,
 8.51688;-35.15772;33.72655;;
 
 212;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;6,8,9,7;,
 4;8,10,11,9;,
 4;10,12,13,11;,
 4;12,14,15,13;,
 4;14,16,17,15;,
 4;16,18,19,17;,
 4;18,20,21,19;,
 3;22,23,24;,
 3;25,22,24;,
 3;26,25,24;,
 3;27,26,24;,
 3;28,27,24;,
 3;29,28,24;,
 3;30,29,24;,
 3;31,30,24;,
 3;32,31,24;,
 3;23,32,24;,
 3;33,34,35;,
 3;34,36,35;,
 3;36,37,35;,
 3;37,38,35;,
 3;38,39,35;,
 3;39,40,35;,
 3;40,41,35;,
 3;41,42,35;,
 3;42,43,35;,
 3;43,33,35;,
 4;44,45,46,47;,
 4;47,46,48,49;,
 4;49,48,50,51;,
 4;51,50,52,53;,
 4;45,54,55,46;,
 4;56,44,47,57;,
 4;58,59,60,61;,
 4;62,63,64,65;,
 4;66,67,68,69;,
 4;70,71,72,73;,
 4;74,75,76,77;,
 4;78,79,80,81;,
 4;61,60,63,62;,
 4;59,75,74,60;,
 4;73,72,82,83;,
 4;81,80,58,61;,
 4;69,68,71,70;,
 4;77,76,84,85;,
 4;65,64,67,66;,
 4;86,79,78,87;,
 4;88,89,90,91;,
 4;89,92,93,90;,
 4;92,94,95,93;,
 4;94,96,97,95;,
 4;96,98,99,97;,
 4;98,100,101,99;,
 4;100,102,103,101;,
 4;102,104,105,103;,
 4;104,106,107,105;,
 4;106,108,109,107;,
 4;91,90,110,111;,
 4;90,93,112,110;,
 4;93,95,113,112;,
 4;95,97,114,113;,
 4;97,99,115,114;,
 4;99,101,116,115;,
 4;101,103,117,116;,
 4;103,105,118,117;,
 4;105,107,119,118;,
 4;107,109,120,119;,
 4;111,110,121,122;,
 4;110,112,123,121;,
 4;112,113,124,123;,
 4;113,114,125,124;,
 4;114,115,126,125;,
 4;115,116,127,126;,
 4;116,117,128,127;,
 4;117,118,129,128;,
 4;118,119,130,129;,
 4;119,120,131,130;,
 4;122,121,132,133;,
 4;121,123,134,132;,
 4;123,124,135,134;,
 4;124,125,136,135;,
 4;125,126,137,136;,
 4;126,127,138,137;,
 4;127,128,139,138;,
 4;128,129,140,139;,
 4;129,130,141,140;,
 4;130,131,142,141;,
 4;133,132,143,144;,
 4;132,134,145,143;,
 4;134,135,146,145;,
 4;135,136,147,146;,
 4;136,137,148,147;,
 4;137,138,149,148;,
 4;138,139,150,149;,
 4;139,140,151,150;,
 4;140,141,152,151;,
 4;141,142,153,152;,
 4;144,143,154,155;,
 4;143,145,156,154;,
 4;145,146,157,156;,
 4;146,147,158,157;,
 4;147,148,159,158;,
 4;148,149,160,159;,
 4;149,150,161,160;,
 4;150,151,162,161;,
 4;151,152,163,162;,
 4;152,153,164,163;,
 4;155,154,165,166;,
 4;154,156,167,165;,
 4;156,157,168,167;,
 4;157,158,169,168;,
 4;158,159,170,169;,
 4;159,160,171,170;,
 4;160,161,172,171;,
 4;161,162,173,172;,
 4;162,163,174,173;,
 4;163,164,175,174;,
 3;176,177,178;,
 3;179,176,178;,
 3;180,179,178;,
 3;181,180,178;,
 3;182,181,178;,
 3;183,182,178;,
 3;184,183,178;,
 3;185,184,178;,
 3;186,185,178;,
 3;177,186,178;,
 3;187,188,189;,
 3;188,190,189;,
 3;190,191,189;,
 3;191,192,189;,
 3;192,193,189;,
 3;193,194,189;,
 3;194,195,189;,
 3;195,196,189;,
 3;196,197,189;,
 3;197,187,189;,
 4;198,199,200,201;,
 4;199,202,203,200;,
 4;202,204,205,203;,
 4;204,206,207,205;,
 4;206,208,209,207;,
 4;208,210,211,209;,
 4;210,212,213,211;,
 4;212,214,215,213;,
 4;214,216,217,215;,
 4;216,218,219,217;,
 3;220,221,222;,
 3;223,220,222;,
 3;224,223,222;,
 3;225,224,222;,
 3;226,225,222;,
 3;227,226,222;,
 3;228,227,222;,
 3;229,228,222;,
 3;230,229,222;,
 3;221,230,222;,
 3;231,232,233;,
 3;232,234,233;,
 3;234,235,233;,
 3;235,236,233;,
 3;236,237,233;,
 3;237,238,233;,
 3;238,239,233;,
 3;239,240,233;,
 3;240,241,233;,
 3;241,231,233;,
 4;242,243,244,245;,
 4;245,244,246,247;,
 4;247,246,248,249;,
 4;249,248,250,251;,
 4;243,252,253,244;,
 4;254,242,245,255;,
 4;256,257,258,259;,
 4;259,258,260,261;,
 4;261,260,262,263;,
 4;263,262,264,265;,
 4;257,266,267,258;,
 4;268,256,259,269;,
 4;270,271,272,273;,
 4;271,274,275,272;,
 4;274,276,277,275;,
 4;276,278,279,277;,
 4;278,280,281,279;,
 4;280,282,283,281;,
 4;282,284,285,283;,
 4;284,286,287,285;,
 4;286,288,289,287;,
 4;288,290,291,289;,
 3;292,293,294;,
 3;295,292,294;,
 3;296,295,294;,
 3;297,296,294;,
 3;298,297,294;,
 3;299,298,294;,
 3;300,299,294;,
 3;301,300,294;,
 3;302,301,294;,
 3;293,302,294;,
 3;303,304,305;,
 3;304,306,305;,
 3;306,307,305;,
 3;307,308,305;,
 3;308,309,305;,
 3;309,310,305;,
 3;310,311,305;,
 3;311,312,305;,
 3;312,313,305;,
 3;313,303,305;;
 
 MeshMaterialList {
  3;
  212;
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
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
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
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
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
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
   0.000000;0.439200;0.552000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.724800;0.724800;0.724800;1.000000;;
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
 }
 MeshNormals {
  126;
  -0.808991;0.008157;0.587764;,
  -0.309006;0.008157;0.951025;,
  0.309006;0.008157;0.951025;,
  0.808992;0.008157;0.587763;,
  0.999967;0.008157;-0.000001;,
  0.808988;0.008157;-0.587769;,
  0.309001;0.008157;-0.951027;,
  -0.309000;0.008157;-0.951027;,
  -0.808987;0.008157;-0.587770;,
  -0.999967;0.008157;-0.000001;,
  0.000000;-1.000000;-0.000000;,
  0.000000;1.000000;0.000000;,
  -0.834403;0.000000;-0.551155;,
  -0.957706;0.000000;-0.287747;,
  0.054590;0.991510;0.118020;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.353039;-0.935609;,
  0.000000;0.374402;0.927266;,
  0.000000;0.911212;-0.411939;,
  0.000000;-0.874463;0.485092;,
  0.000000;-0.917365;-0.398047;,
  0.000000;0.920419;0.390934;,
  0.000000;0.809016;0.587787;,
  0.000000;0.309009;0.951059;,
  0.000000;-0.309014;0.951057;,
  0.000000;-0.809019;0.587782;,
  0.000000;-0.809016;-0.587787;,
  0.000000;-0.309009;-0.951059;,
  0.000000;0.309014;-0.951057;,
  0.000000;0.809019;-0.587782;,
  0.022217;0.808818;0.587640;,
  0.022216;0.308936;0.950823;,
  0.022216;-0.308940;0.950822;,
  0.022217;-0.808820;0.587637;,
  0.022217;-0.999753;-0.000000;,
  0.022217;-0.808818;-0.587640;,
  0.022216;-0.308936;-0.950823;,
  0.022216;0.308940;-0.950822;,
  0.022217;0.808820;-0.587637;,
  0.022217;0.999753;0.000000;,
  0.080079;0.806421;0.585895;,
  0.080078;0.308025;0.948002;,
  0.080078;-0.308026;0.948002;,
  0.080079;-0.806422;0.585894;,
  0.080079;-0.996789;-0.000000;,
  0.080079;-0.806421;-0.585895;,
  0.080078;-0.308025;-0.948002;,
  0.080078;0.308026;-0.948002;,
  0.080079;0.806422;-0.585894;,
  0.080079;0.996789;0.000000;,
  0.057923;0.807661;0.586796;,
  0.057924;0.308499;0.949459;,
  0.057924;-0.308499;0.949459;,
  0.057923;-0.807661;0.586796;,
  0.057923;-0.998321;-0.000000;,
  0.057923;-0.807661;-0.586796;,
  0.057924;-0.308499;-0.949459;,
  0.057924;0.308499;-0.949459;,
  0.057923;0.807661;-0.586796;,
  0.057923;0.998321;0.000000;,
  -0.057923;0.807661;0.586796;,
  -0.057923;0.308499;0.949459;,
  -0.057923;-0.308499;0.949459;,
  -0.057923;-0.807661;0.586796;,
  -0.057923;-0.998321;0.000000;,
  -0.057923;-0.807661;-0.586796;,
  -0.057923;-0.308499;-0.949459;,
  -0.057923;0.308499;-0.949459;,
  -0.057923;0.807661;-0.586796;,
  -0.057923;0.998321;0.000000;,
  -0.080078;0.806421;0.585895;,
  -0.080078;0.308025;0.948002;,
  -0.080078;-0.308026;0.948002;,
  -0.080079;-0.806422;0.585894;,
  -0.080078;-0.996789;0.000000;,
  -0.080078;-0.806421;-0.585895;,
  -0.080078;-0.308025;-0.948002;,
  -0.080078;0.308026;-0.948002;,
  -0.080079;0.806422;-0.585894;,
  -0.080078;0.996789;0.000000;,
  -0.022217;0.808818;0.587640;,
  -0.022216;0.308936;0.950823;,
  -0.022216;-0.308940;0.950822;,
  -0.022217;-0.808820;0.587637;,
  -0.022217;-0.999753;0.000000;,
  -0.022217;-0.808818;-0.587640;,
  -0.022216;-0.308936;-0.950823;,
  -0.022216;0.308940;-0.950822;,
  -0.022217;0.808820;-0.587637;,
  -0.022217;0.999753;0.000000;,
  0.000000;-0.309014;0.951057;,
  0.000000;-0.809019;0.587782;,
  0.000000;0.309014;-0.951057;,
  0.000000;0.809019;-0.587782;,
  -1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.809017;0.587785;,
  0.000000;0.309016;0.951057;,
  0.000000;-0.309017;0.951056;,
  0.000000;-0.809017;0.587786;,
  0.000000;-1.000000;0.000000;,
  0.000000;-0.809017;-0.587785;,
  0.000000;-0.309017;-0.951056;,
  0.000000;0.309017;-0.951057;,
  0.000000;0.809017;-0.587785;,
  0.000000;1.000000;0.000000;,
  0.000000;0.996099;0.088237;,
  0.000000;0.707107;-0.707106;,
  0.000000;0.757594;0.652726;,
  0.000000;-0.707107;0.707107;,
  0.000000;0.809016;0.587786;,
  0.000000;0.309017;0.951057;,
  0.000000;-0.309018;0.951056;,
  0.000000;-0.809017;0.587785;,
  0.000000;-1.000000;0.000002;,
  0.000000;-0.809019;-0.587782;,
  0.000000;-0.309019;-0.951056;,
  0.000000;0.309018;-0.951056;,
  0.000000;0.809018;-0.587784;,
  0.000000;1.000000;0.000002;,
  -0.054590;-0.991509;-0.118021;,
  0.000000;-0.529371;0.848390;,
  0.000000;-0.683117;-0.730309;,
  0.000000;-0.996099;-0.088238;,
  0.000000;-0.757594;-0.652726;;
  212;
  4;0,1,1,0;,
  4;1,2,2,1;,
  4;2,3,3,2;,
  4;3,4,4,3;,
  4;4,5,5,4;,
  4;5,6,6,5;,
  4;6,7,7,6;,
  4;7,8,8,7;,
  4;8,9,9,8;,
  4;9,0,0,9;,
  3;10,10,10;,
  3;10,10,10;,
  3;10,10,10;,
  3;10,10,10;,
  3;10,10,10;,
  3;10,10,10;,
  3;10,10,10;,
  3;10,10,10;,
  3;10,10,10;,
  3;10,10,10;,
  3;11,11,11;,
  3;11,11,11;,
  3;11,11,11;,
  3;11,11,11;,
  3;11,11,11;,
  3;11,11,11;,
  3;11,11,11;,
  3;11,11,11;,
  3;11,11,11;,
  3;11,11,11;,
  4;12,13,13,12;,
  4;14,14,14,14;,
  4;15,15,15,15;,
  4;121,121,121,121;,
  4;13,95,95,13;,
  4;96,96,96,96;,
  4;16,16,17,17;,
  4;19,19,22,22;,
  4;18,18,15,15;,
  4;21,21,20,20;,
  4;95,95,95,95;,
  4;96,96,96,96;,
  4;17,17,19,19;,
  4;95,95,95,95;,
  4;20,20,122,122;,
  4;96,96,96,96;,
  4;123,123,21,21;,
  4;95,95,95,95;,
  4;22,22,18,18;,
  4;96,96,96,96;,
  4;23,24,32,31;,
  4;24,25,33,32;,
  4;25,26,34,33;,
  4;26,10,35,34;,
  4;10,27,36,35;,
  4;27,28,37,36;,
  4;28,29,38,37;,
  4;29,30,39,38;,
  4;30,11,40,39;,
  4;11,23,31,40;,
  4;31,32,42,41;,
  4;32,33,43,42;,
  4;33,34,44,43;,
  4;34,35,45,44;,
  4;35,36,46,45;,
  4;36,37,47,46;,
  4;37,38,48,47;,
  4;38,39,49,48;,
  4;39,40,50,49;,
  4;40,31,41,50;,
  4;41,42,52,51;,
  4;42,43,53,52;,
  4;43,44,54,53;,
  4;44,45,55,54;,
  4;45,46,56,55;,
  4;46,47,57,56;,
  4;47,48,58,57;,
  4;48,49,59,58;,
  4;49,50,60,59;,
  4;50,41,51,60;,
  4;51,52,62,61;,
  4;52,53,63,62;,
  4;53,54,64,63;,
  4;54,55,65,64;,
  4;55,56,66,65;,
  4;56,57,67,66;,
  4;57,58,68,67;,
  4;58,59,69,68;,
  4;59,60,70,69;,
  4;60,51,61,70;,
  4;61,62,72,71;,
  4;62,63,73,72;,
  4;63,64,74,73;,
  4;64,65,75,74;,
  4;65,66,76,75;,
  4;66,67,77,76;,
  4;67,68,78,77;,
  4;68,69,79,78;,
  4;69,70,80,79;,
  4;70,61,71,80;,
  4;71,72,82,81;,
  4;72,73,83,82;,
  4;73,74,84,83;,
  4;74,75,85,84;,
  4;75,76,86,85;,
  4;76,77,87,86;,
  4;77,78,88,87;,
  4;78,79,89,88;,
  4;79,80,90,89;,
  4;80,71,81,90;,
  4;81,82,24,23;,
  4;82,83,91,24;,
  4;83,84,92,91;,
  4;84,85,10,92;,
  4;85,86,27,10;,
  4;86,87,28,27;,
  4;87,88,93,28;,
  4;88,89,94,93;,
  4;89,90,11,94;,
  4;90,81,23,11;,
  3;95,95,95;,
  3;95,95,95;,
  3;95,95,95;,
  3;95,95,95;,
  3;95,95,95;,
  3;95,95,95;,
  3;95,95,95;,
  3;95,95,95;,
  3;95,95,95;,
  3;95,95,95;,
  3;96,96,96;,
  3;96,96,96;,
  3;96,96,96;,
  3;96,96,96;,
  3;96,96,96;,
  3;96,96,96;,
  3;96,96,96;,
  3;96,96,96;,
  3;96,96,96;,
  3;96,96,96;,
  4;97,98,98,97;,
  4;98,99,99,98;,
  4;99,100,100,99;,
  4;100,101,101,100;,
  4;101,102,102,101;,
  4;102,103,103,102;,
  4;103,104,104,103;,
  4;104,105,105,104;,
  4;105,106,106,105;,
  4;106,97,97,106;,
  3;95,95,95;,
  3;95,95,95;,
  3;95,95,95;,
  3;95,95,95;,
  3;95,95,95;,
  3;95,95,95;,
  3;95,95,95;,
  3;95,95,95;,
  3;95,95,95;,
  3;95,95,95;,
  3;96,96,96;,
  3;96,96,96;,
  3;96,96,96;,
  3;96,96,96;,
  3;96,96,96;,
  3;96,96,96;,
  3;96,96,96;,
  3;96,96,96;,
  3;96,96,96;,
  3;96,96,96;,
  4;16,16,16,16;,
  4;107,107,107,107;,
  4;15,15,15,15;,
  4;124,124,124,124;,
  4;95,95,95,95;,
  4;96,96,96,96;,
  4;108,108,108,108;,
  4;109,109,109,109;,
  4;110,110,110,110;,
  4;125,125,125,125;,
  4;95,95,95,95;,
  4;96,96,96,96;,
  4;111,112,112,111;,
  4;112,113,113,112;,
  4;113,114,114,113;,
  4;114,115,115,114;,
  4;115,116,116,115;,
  4;116,117,117,116;,
  4;117,118,118,117;,
  4;118,119,119,118;,
  4;119,120,120,119;,
  4;120,111,111,120;,
  3;95,95,95;,
  3;95,95,95;,
  3;95,95,95;,
  3;95,95,95;,
  3;95,95,95;,
  3;95,95,95;,
  3;95,95,95;,
  3;95,95,95;,
  3;95,95,95;,
  3;95,95,95;,
  3;96,96,96;,
  3;96,96,96;,
  3;96,96,96;,
  3;96,96,96;,
  3;96,96,96;,
  3;96,96,96;,
  3;96,96,96;,
  3;96,96,96;,
  3;96,96,96;,
  3;96,96,96;;
 }
 MeshTextureCoords {
  314;
  0.375000;0.687500;,
  0.400000;0.687500;,
  0.400000;0.311560;,
  0.375000;0.311560;,
  0.425000;0.687500;,
  0.425000;0.311560;,
  0.450000;0.687500;,
  0.450000;0.311560;,
  0.475000;0.687500;,
  0.475000;0.311560;,
  0.500000;0.687500;,
  0.500000;0.311560;,
  0.525000;0.687500;,
  0.525000;0.311560;,
  0.550000;0.687500;,
  0.550000;0.311560;,
  0.575000;0.687500;,
  0.575000;0.311560;,
  0.600000;0.687500;,
  0.600000;0.311560;,
  0.625000;0.687500;,
  0.625000;0.311560;,
  0.548280;0.992350;,
  0.626410;0.935590;,
  0.500000;0.850000;,
  0.451720;0.992350;,
  0.373590;0.935590;,
  0.343750;0.843750;,
  0.373590;0.751910;,
  0.451720;0.695150;,
  0.548280;0.695150;,
  0.626410;0.751910;,
  0.656250;0.843750;,
  0.626410;0.064410;,
  0.548280;0.007650;,
  0.500000;0.162500;,
  0.451720;0.007650;,
  0.373590;0.064410;,
  0.343750;0.156250;,
  0.373590;0.248090;,
  0.451720;0.304850;,
  0.548280;0.304850;,
  0.626410;0.248090;,
  0.656250;0.156250;,
  0.375000;1.000000;,
  0.625000;1.000000;,
  0.625000;0.750000;,
  0.375000;0.750000;,
  0.625000;0.500000;,
  0.375000;0.500000;,
  0.625000;0.250000;,
  0.375000;0.250000;,
  0.625000;0.000000;,
  0.375000;0.000000;,
  0.875000;1.000000;,
  0.875000;0.750000;,
  0.125000;1.000000;,
  0.125000;0.750000;,
  0.375000;1.000000;,
  0.625000;1.000000;,
  0.625000;0.750000;,
  0.375000;0.750000;,
  0.375000;0.713270;,
  0.625000;0.713270;,
  0.625000;0.556820;,
  0.375000;0.556820;,
  0.375000;0.500000;,
  0.625000;0.500000;,
  0.625000;0.250000;,
  0.375000;0.250000;,
  0.375000;0.193180;,
  0.625000;0.193180;,
  0.625000;0.036730;,
  0.375000;0.036730;,
  0.661730;0.750000;,
  0.661730;1.000000;,
  0.818180;1.000000;,
  0.818180;0.750000;,
  0.181820;0.750000;,
  0.181820;1.000000;,
  0.338270;1.000000;,
  0.338270;0.750000;,
  0.625000;0.000000;,
  0.375000;0.000000;,
  0.875000;1.000000;,
  0.875000;0.750000;,
  0.125000;1.000000;,
  0.125000;0.750000;,
  0.375000;0.687500;,
  0.400000;0.687500;,
  0.400000;0.633790;,
  0.375000;0.633790;,
  0.425000;0.687500;,
  0.425000;0.633790;,
  0.450000;0.687500;,
  0.450000;0.633790;,
  0.475000;0.687500;,
  0.475000;0.633790;,
  0.500000;0.687500;,
  0.500000;0.633790;,
  0.525000;0.687500;,
  0.525000;0.633790;,
  0.550000;0.687500;,
  0.550000;0.633790;,
  0.575000;0.687500;,
  0.575000;0.633790;,
  0.600000;0.687500;,
  0.600000;0.633790;,
  0.625000;0.687500;,
  0.625000;0.633790;,
  0.400000;0.580090;,
  0.375000;0.580090;,
  0.425000;0.580090;,
  0.450000;0.580090;,
  0.475000;0.580090;,
  0.500000;0.580090;,
  0.525000;0.580090;,
  0.550000;0.580090;,
  0.575000;0.580090;,
  0.600000;0.580090;,
  0.625000;0.580090;,
  0.400000;0.526380;,
  0.375000;0.526380;,
  0.425000;0.526380;,
  0.450000;0.526380;,
  0.475000;0.526380;,
  0.500000;0.526380;,
  0.525000;0.526380;,
  0.550000;0.526380;,
  0.575000;0.526380;,
  0.600000;0.526380;,
  0.625000;0.526380;,
  0.400000;0.472680;,
  0.375000;0.472680;,
  0.425000;0.472680;,
  0.450000;0.472680;,
  0.475000;0.472680;,
  0.500000;0.472680;,
  0.525000;0.472680;,
  0.550000;0.472680;,
  0.575000;0.472680;,
  0.600000;0.472680;,
  0.625000;0.472680;,
  0.400000;0.418970;,
  0.375000;0.418970;,
  0.425000;0.418970;,
  0.450000;0.418970;,
  0.475000;0.418970;,
  0.500000;0.418970;,
  0.525000;0.418970;,
  0.550000;0.418970;,
  0.575000;0.418970;,
  0.600000;0.418970;,
  0.625000;0.418970;,
  0.400000;0.365270;,
  0.375000;0.365270;,
  0.425000;0.365270;,
  0.450000;0.365270;,
  0.475000;0.365270;,
  0.500000;0.365270;,
  0.525000;0.365270;,
  0.550000;0.365270;,
  0.575000;0.365270;,
  0.600000;0.365270;,
  0.625000;0.365270;,
  0.400000;0.311560;,
  0.375000;0.311560;,
  0.425000;0.311560;,
  0.450000;0.311560;,
  0.475000;0.311560;,
  0.500000;0.311560;,
  0.525000;0.311560;,
  0.550000;0.311560;,
  0.575000;0.311560;,
  0.600000;0.311560;,
  0.625000;0.311560;,
  0.548280;0.992350;,
  0.626410;0.935590;,
  0.500000;0.850000;,
  0.451720;0.992350;,
  0.373590;0.935590;,
  0.343750;0.843750;,
  0.373590;0.751910;,
  0.451720;0.695150;,
  0.548280;0.695150;,
  0.626410;0.751910;,
  0.656250;0.843750;,
  0.626410;0.064410;,
  0.548280;0.007650;,
  0.500000;0.162500;,
  0.451720;0.007650;,
  0.373590;0.064410;,
  0.343750;0.156250;,
  0.373590;0.248090;,
  0.451720;0.304850;,
  0.548280;0.304850;,
  0.626410;0.248090;,
  0.656250;0.156250;,
  0.375000;0.687500;,
  0.400000;0.687500;,
  0.400000;0.311560;,
  0.375000;0.311560;,
  0.425000;0.687500;,
  0.425000;0.311560;,
  0.450000;0.687500;,
  0.450000;0.311560;,
  0.475000;0.687500;,
  0.475000;0.311560;,
  0.500000;0.687500;,
  0.500000;0.311560;,
  0.525000;0.687500;,
  0.525000;0.311560;,
  0.550000;0.687500;,
  0.550000;0.311560;,
  0.575000;0.687500;,
  0.575000;0.311560;,
  0.600000;0.687500;,
  0.600000;0.311560;,
  0.625000;0.687500;,
  0.625000;0.311560;,
  0.548280;0.992350;,
  0.626410;0.935590;,
  0.500000;0.850000;,
  0.451720;0.992350;,
  0.373590;0.935590;,
  0.343750;0.843750;,
  0.373590;0.751910;,
  0.451720;0.695150;,
  0.548280;0.695150;,
  0.626410;0.751910;,
  0.656250;0.843750;,
  0.626410;0.064410;,
  0.548280;0.007650;,
  0.500000;0.162500;,
  0.451720;0.007650;,
  0.373590;0.064410;,
  0.343750;0.156250;,
  0.373590;0.248090;,
  0.451720;0.304850;,
  0.548280;0.304850;,
  0.626410;0.248090;,
  0.656250;0.156250;,
  0.375000;1.000000;,
  0.625000;1.000000;,
  0.625000;0.750000;,
  0.375000;0.750000;,
  0.625000;0.500000;,
  0.375000;0.500000;,
  0.625000;0.250000;,
  0.375000;0.250000;,
  0.625000;0.000000;,
  0.375000;0.000000;,
  0.875000;1.000000;,
  0.875000;0.750000;,
  0.125000;1.000000;,
  0.125000;0.750000;,
  0.375000;1.000000;,
  0.625000;1.000000;,
  0.625000;0.750000;,
  0.375000;0.750000;,
  0.625000;0.500000;,
  0.375000;0.500000;,
  0.625000;0.250000;,
  0.375000;0.250000;,
  0.625000;0.000000;,
  0.375000;0.000000;,
  0.875000;1.000000;,
  0.875000;0.750000;,
  0.125000;1.000000;,
  0.125000;0.750000;,
  0.375000;0.687500;,
  0.400000;0.687500;,
  0.400000;0.311560;,
  0.375000;0.311560;,
  0.425000;0.687500;,
  0.425000;0.311560;,
  0.450000;0.687500;,
  0.450000;0.311560;,
  0.475000;0.687500;,
  0.475000;0.311560;,
  0.500000;0.687500;,
  0.500000;0.311560;,
  0.525000;0.687500;,
  0.525000;0.311560;,
  0.550000;0.687500;,
  0.550000;0.311560;,
  0.575000;0.687500;,
  0.575000;0.311560;,
  0.600000;0.687500;,
  0.600000;0.311560;,
  0.625000;0.687500;,
  0.625000;0.311560;,
  0.548280;0.992350;,
  0.626410;0.935590;,
  0.500000;0.850000;,
  0.451720;0.992350;,
  0.373590;0.935590;,
  0.343750;0.843750;,
  0.373590;0.751910;,
  0.451720;0.695150;,
  0.548280;0.695150;,
  0.626410;0.751910;,
  0.656250;0.843750;,
  0.626410;0.064410;,
  0.548280;0.007650;,
  0.500000;0.162500;,
  0.451720;0.007650;,
  0.373590;0.064410;,
  0.343750;0.156250;,
  0.373590;0.248090;,
  0.451720;0.304850;,
  0.548280;0.304850;,
  0.626410;0.248090;,
  0.656250;0.156250;;
 }
}