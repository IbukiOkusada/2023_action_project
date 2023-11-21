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
 348;
 36.57707;31.46864;14.62588;,
 36.57707;45.64471;14.65032;,
 36.57707;45.58757;15.94399;,
 36.57707;31.41151;15.91960;,
 36.57707;45.64471;14.65032;,
 33.06888;45.64471;14.65032;,
 33.06888;45.58757;15.94399;,
 36.57707;45.58757;15.94399;,
 33.06888;45.64471;14.65032;,
 33.06888;31.46864;14.62588;,
 33.06888;31.41151;15.91960;,
 33.06888;45.58757;15.94399;,
 36.57707;31.46864;14.62588;,
 33.06888;31.46864;14.62588;,
 33.06888;31.41151;15.91960;,
 36.57707;31.41151;15.91960;,
 36.57707;27.71048;12.34856;,
 33.06888;27.71048;12.34856;,
 33.06888;31.46864;14.62588;,
 36.57707;31.46864;14.62588;,
 36.57707;26.64641;13.30174;,
 36.57707;31.41151;15.91960;,
 33.06888;26.64641;13.30174;,
 33.06888;31.41151;15.91960;,
 36.57707;22.49812;8.19691;,
 33.06888;22.49812;8.19691;,
 36.57707;21.08378;8.76276;,
 33.06888;21.08378;8.76276;,
 36.57707;20.37020;3.98034;,
 33.06888;20.37020;3.98034;,
 36.57707;18.15739;3.88817;,
 33.06888;18.15739;3.88817;,
 36.57707;20.44329;-7.33248;,
 33.06888;20.44329;-7.33248;,
 36.57707;18.23056;-7.42465;,
 33.06888;18.23056;-7.42465;,
 36.57707;17.59354;-12.74202;,
 33.06888;17.59354;-12.74202;,
 36.57707;15.38080;-12.83418;,
 33.06888;15.38080;-12.83418;,
 36.44243;7.50943;-4.28191;,
 33.20337;7.50943;-4.28191;,
 36.44243;7.47699;0.73577;,
 33.20337;7.47699;0.73577;,
 36.44243;0.63362;-14.92625;,
 33.20337;0.63362;-14.92625;,
 36.44243;0.60429;11.35428;,
 33.20337;0.60429;11.35428;,
 -35.55759;31.41151;15.91960;,
 -35.55759;45.58757;15.94399;,
 -35.55759;45.64471;14.65032;,
 -35.55759;31.46864;14.62588;,
 -35.55759;45.58757;15.94399;,
 -32.04943;45.58757;15.94399;,
 -32.04943;45.64471;14.65032;,
 -35.55759;45.64471;14.65032;,
 -32.04943;45.58757;15.94399;,
 -32.04943;31.41151;15.91960;,
 -32.04943;31.46864;14.62588;,
 -32.04943;45.64471;14.65032;,
 -32.04943;31.46864;14.62588;,
 -35.55759;31.46864;14.62588;,
 -35.55759;31.41151;15.91960;,
 -32.04943;31.41151;15.91960;,
 -35.55759;31.46864;14.62588;,
 -32.04943;31.46864;14.62588;,
 -32.04943;27.71048;12.34856;,
 -35.55759;27.71048;12.34856;,
 -35.55759;31.41151;15.91960;,
 -35.55759;26.64641;13.30174;,
 -32.04943;31.41151;15.91960;,
 -32.04943;26.64641;13.30174;,
 -32.04943;22.49812;8.19691;,
 -35.55759;22.49812;8.19691;,
 -35.55759;21.08378;8.76276;,
 -32.04943;21.08378;8.76276;,
 -32.04943;20.37020;3.98034;,
 -35.55759;20.37020;3.98034;,
 -35.55759;18.15739;3.88817;,
 -32.04943;18.15739;3.88817;,
 -32.04943;20.44329;-7.33248;,
 -35.55759;20.44329;-7.33248;,
 -35.55759;18.23056;-7.42465;,
 -32.04943;18.23056;-7.42465;,
 -32.04943;17.59354;-12.74202;,
 -35.55759;17.59354;-12.74202;,
 -35.55759;15.38080;-12.83418;,
 -32.04943;15.38080;-12.83418;,
 -32.18396;7.50943;-4.28191;,
 -35.42303;7.50943;-4.28191;,
 -35.42303;7.47699;0.73577;,
 -32.18396;7.47699;0.73577;,
 -32.18396;0.63362;-14.92625;,
 -35.42303;0.63362;-14.92625;,
 -35.42303;0.60429;11.35428;,
 -32.18396;0.60429;11.35428;,
 -40.29911;23.34603;-8.06668;,
 40.33532;23.34603;-8.06668;,
 40.33532;20.27991;-8.06668;,
 -40.29911;20.27991;-8.06668;,
 40.33532;23.34603;-2.59836;,
 40.33532;20.27991;-2.59836;,
 -40.29911;23.34603;-2.59836;,
 -40.29911;20.27991;-2.59836;,
 -40.29911;23.34603;-1.55736;,
 40.33532;23.34603;-1.55736;,
 40.33532;20.27991;-1.55736;,
 -40.29911;20.27991;-1.55736;,
 40.33532;23.34603;3.91097;,
 40.33532;20.27991;3.91097;,
 -40.29911;23.34603;3.91097;,
 -40.29911;20.27991;3.91097;,
 -40.29911;23.20628;4.48883;,
 40.33532;23.20628;4.48883;,
 40.33532;20.64952;5.88207;,
 -40.29911;20.64952;5.88207;,
 40.33532;26.87251;9.04881;,
 40.33532;24.31569;10.44195;,
 -40.29911;26.87251;9.04881;,
 -40.29911;24.31569;10.44195;,
 -40.29911;27.42012;9.40458;,
 40.33532;27.42012;9.40458;,
 40.33532;25.95710;11.62283;,
 -40.29911;25.95710;11.62283;,
 40.33532;30.66263;12.01384;,
 40.33532;29.19970;14.23210;,
 -40.29911;30.66263;12.01384;,
 -40.29911;29.19970;14.23210;,
 -40.29911;31.34250;11.99904;,
 40.33532;31.34250;11.99904;,
 40.33532;31.31570;14.52310;,
 -40.29911;31.31570;14.52310;,
 40.33532;37.98470;12.04675;,
 40.33532;37.95792;14.57089;,
 -40.29911;37.98470;12.04675;,
 -40.29911;37.95792;14.57089;,
 -40.29911;38.90033;11.99904;,
 40.33532;38.90033;11.99904;,
 40.33532;38.87366;14.52310;,
 -40.29911;38.87366;14.52310;,
 40.33532;45.54270;12.04675;,
 40.33532;45.51592;14.57089;,
 -40.29911;45.54270;12.04675;,
 -40.29911;45.51592;14.57089;,
 -40.29911;19.77514;-14.29776;,
 40.33532;19.77514;-14.29776;,
 40.33532;17.06786;-13.11267;,
 -40.29911;17.06786;-13.11267;,
 40.33532;22.89354;-9.46948;,
 40.33532;20.18637;-8.28447;,
 -40.29911;22.89354;-9.46948;,
 -40.29911;20.18637;-8.28447;,
 -32.73441;11.05828;-4.44390;,
 35.11641;11.05828;-4.44390;,
 35.11641;11.04965;0.24103;,
 -32.73441;11.04965;0.24103;,
 35.11641;11.05828;-4.44390;,
 35.11641;13.17801;-4.35537;,
 35.11641;13.16939;0.32953;,
 35.11641;11.04965;0.24103;,
 35.11641;13.17801;-4.35537;,
 -32.73441;13.17801;-4.35537;,
 -32.73441;13.16939;0.32953;,
 35.11641;13.16939;0.32953;,
 -32.73441;13.17801;-4.35537;,
 -32.73441;11.05828;-4.44390;,
 -32.73441;11.04965;0.24103;,
 -32.73441;13.16939;0.32953;,
 35.11641;11.05828;-4.44390;,
 -32.73441;11.05828;-4.44390;,
 -32.73441;11.04965;0.24103;,
 35.11641;11.04965;0.24103;,
 -45.28966;35.62820;-2.32611;,
 -43.37105;35.62820;-2.32611;,
 -43.37105;34.82527;-2.32611;,
 -45.28966;34.82527;-2.32611;,
 -43.37105;33.26279;15.31873;,
 -45.28966;33.26279;15.31873;,
 -45.28966;32.10985;15.26790;,
 -43.37105;32.10985;15.26790;,
 -45.28966;37.58065;0.01197;,
 -45.28966;35.80927;0.01197;,
 -45.28966;35.80927;4.66178;,
 -45.28966;37.58065;4.66178;,
 -45.28966;37.58065;0.01197;,
 -45.28966;37.58065;4.66178;,
 -43.37105;37.58065;4.66178;,
 -43.37105;37.58065;0.01197;,
 -45.28966;35.80927;0.01197;,
 -43.37105;35.80927;0.01197;,
 -43.37105;35.80927;4.66178;,
 -45.28966;35.80927;4.66178;,
 -43.37105;37.58065;0.01197;,
 -43.37105;37.58065;4.66178;,
 -43.37105;35.80927;4.66178;,
 -43.37105;35.80927;0.01197;,
 -45.28966;36.56646;-1.20259;,
 -45.28966;35.62820;-2.32611;,
 -45.28966;34.82527;-2.32611;,
 -45.28966;34.79499;-1.20259;,
 -45.28966;36.56646;-1.20259;,
 -43.37105;36.56646;-1.20259;,
 -43.37105;35.62820;-2.32611;,
 -45.28966;35.62820;-2.32611;,
 -45.28966;34.79499;-1.20259;,
 -43.37105;34.79499;-1.20259;,
 -43.37105;36.56646;-1.20259;,
 -43.37105;34.79499;-1.20259;,
 -43.37105;34.82527;-2.32611;,
 -43.37105;35.62820;-2.32611;,
 -45.28966;30.23711;-1.21684;,
 -45.28966;30.78657;-2.34027;,
 -43.37105;30.78657;-2.34027;,
 -43.37105;30.23711;-1.21684;,
 -45.28966;31.96343;-1.21296;,
 -45.28966;34.82527;-2.32611;,
 -45.28966;31.99367;-2.33647;,
 -43.37105;31.96343;-1.21296;,
 -43.37105;34.82527;-2.32611;,
 -43.37105;31.99367;-2.33647;,
 -45.28966;30.00432;-0.58634;,
 -45.28966;31.66141;-0.23327;,
 -43.37105;30.00432;-0.58634;,
 -43.37105;31.66141;-0.23327;,
 -45.28966;29.99928;0.74919;,
 -45.28966;31.67531;0.64262;,
 -43.37105;31.67531;0.64262;,
 -43.37105;29.99928;0.74919;,
 -43.37105;18.35638;0.42879;,
 -45.28966;18.35638;0.42879;,
 -45.28966;18.35979;-0.90681;,
 -43.37105;18.35979;-0.90681;,
 -45.29031;31.34466;2.77645;,
 -45.28899;32.60743;2.04899;,
 -43.37185;31.34328;2.77702;,
 -43.37041;32.60601;2.04954;,
 -43.37105;19.57604;0.47552;,
 -45.28966;19.57604;0.47552;,
 -43.37105;19.57951;-0.85996;,
 -45.28966;19.57951;-0.85996;,
 -35.43463;18.35638;0.42879;,
 -35.43463;19.57604;0.47552;,
 -35.43463;18.35979;-0.90681;,
 -35.43463;19.57951;-0.85996;,
 -45.28966;33.15573;13.98790;,
 -45.28966;32.01366;14.01254;,
 -45.28966;32.10985;15.26790;,
 -45.28966;33.26279;15.31873;,
 -45.28966;33.15573;13.98790;,
 -43.37105;33.26279;15.31873;,
 -43.37105;33.15573;13.98790;,
 -45.28966;32.01366;14.01254;,
 -43.37105;32.01366;14.01254;,
 -43.37105;32.10985;15.26790;,
 -43.37105;33.15573;13.98790;,
 -43.37105;32.01366;14.01254;,
 -35.00817;33.26279;15.31873;,
 -35.00817;33.15573;13.98790;,
 -35.00817;32.10985;15.26790;,
 -35.00817;32.01366;14.01254;,
 44.95443;34.82527;-2.32611;,
 43.03583;34.82527;-2.32611;,
 43.03583;35.62820;-2.32611;,
 44.95443;35.62820;-2.32611;,
 43.03583;32.10985;15.26790;,
 44.95443;32.10985;15.26790;,
 44.95443;33.26279;15.31873;,
 43.03583;33.26279;15.31873;,
 44.95443;37.58065;4.66178;,
 44.95443;35.80927;4.66178;,
 44.95443;35.80927;0.01197;,
 44.95443;37.58065;0.01197;,
 43.03583;37.58065;0.01197;,
 43.03583;37.58065;4.66178;,
 44.95443;37.58065;4.66178;,
 44.95443;37.58065;0.01197;,
 44.95443;35.80927;4.66178;,
 43.03583;35.80927;4.66178;,
 43.03583;35.80927;0.01197;,
 44.95443;35.80927;0.01197;,
 43.03583;35.80927;0.01197;,
 43.03583;35.80927;4.66178;,
 43.03583;37.58065;4.66178;,
 43.03583;37.58065;0.01197;,
 44.95443;34.79499;-1.20259;,
 44.95443;34.82527;-2.32611;,
 44.95443;35.62820;-2.32611;,
 44.95443;36.56646;-1.20259;,
 43.03583;36.56646;-1.20259;,
 44.95443;36.56646;-1.20259;,
 44.95443;35.62820;-2.32611;,
 43.03583;35.62820;-2.32611;,
 43.03583;34.79499;-1.20259;,
 44.95443;34.79499;-1.20259;,
 43.03583;34.79499;-1.20259;,
 43.03583;36.56646;-1.20259;,
 43.03583;35.62820;-2.32611;,
 43.03583;34.82527;-2.32611;,
 43.03583;30.23711;-1.21684;,
 43.03583;30.78657;-2.34027;,
 44.95443;30.78657;-2.34027;,
 44.95443;30.23711;-1.21684;,
 44.95443;31.99367;-2.33647;,
 44.95443;34.82527;-2.32611;,
 44.95443;31.96343;-1.21296;,
 43.03583;31.96343;-1.21296;,
 43.03583;31.99367;-2.33647;,
 43.03583;34.82527;-2.32611;,
 44.95443;31.66141;-0.23327;,
 44.95443;30.00432;-0.58634;,
 43.03583;30.00432;-0.58634;,
 43.03583;31.66141;-0.23327;,
 44.95443;31.67531;0.64262;,
 44.95443;29.99928;0.74919;,
 43.03583;29.99928;0.74919;,
 43.03583;31.67531;0.64262;,
 43.03583;18.35979;-0.90681;,
 44.95443;18.35979;-0.90681;,
 44.95443;18.35638;0.42879;,
 43.03583;18.35638;0.42879;,
 44.95376;32.60743;2.04899;,
 44.95508;31.34466;2.77645;,
 43.03662;31.34328;2.77702;,
 43.03507;32.60601;2.04954;,
 44.95443;19.57604;0.47552;,
 43.03583;19.57604;0.47552;,
 43.03583;19.57951;-0.85996;,
 44.95443;19.57951;-0.85996;,
 33.93743;19.57604;0.47552;,
 33.93743;18.35638;0.42879;,
 33.93743;18.35979;-0.90681;,
 33.93743;19.57951;-0.85996;,
 44.95443;32.01366;14.01254;,
 44.95443;33.15573;13.98790;,
 44.95443;33.26279;15.31873;,
 44.95443;32.10985;15.26790;,
 43.03583;33.15573;13.98790;,
 43.03583;33.26279;15.31873;,
 44.95443;33.15573;13.98790;,
 43.03583;32.01366;14.01254;,
 44.95443;32.01366;14.01254;,
 43.03583;32.10985;15.26790;,
 43.03583;32.01366;14.01254;,
 43.03583;33.15573;13.98790;,
 33.51101;33.15573;13.98790;,
 33.51101;33.26279;15.31873;,
 33.51101;32.10985;15.26790;,
 33.51101;32.01366;14.01254;;
 
 232;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;8,1,12,13;,
 4;14,15,2,11;,
 4;16,17,18,19;,
 4;20,16,19,21;,
 4;22,20,21,23;,
 4;17,22,23,18;,
 4;24,25,17,16;,
 4;26,24,16,20;,
 4;27,26,20,22;,
 4;25,27,22,17;,
 4;28,29,25,24;,
 4;30,28,24,26;,
 4;31,30,26,27;,
 4;29,31,27,25;,
 4;32,33,29,28;,
 4;34,32,28,30;,
 4;33,35,31,29;,
 4;36,37,33,32;,
 4;38,36,32,34;,
 4;39,38,34,35;,
 4;37,39,35,33;,
 4;37,36,38,39;,
 4;40,41,35,34;,
 4;42,40,34,30;,
 4;43,42,30,31;,
 4;41,43,31,35;,
 4;44,45,41,40;,
 4;46,44,40,42;,
 4;47,46,42,43;,
 4;45,47,43,41;,
 4;45,44,46,47;,
 4;48,49,50,51;,
 4;52,53,54,55;,
 4;56,57,58,59;,
 4;60,61,50,59;,
 4;56,49,62,63;,
 4;64,65,66,67;,
 4;68,64,67,69;,
 4;70,68,69,71;,
 4;65,70,71,66;,
 4;67,66,72,73;,
 4;69,67,73,74;,
 4;71,69,74,75;,
 4;66,71,75,72;,
 4;73,72,76,77;,
 4;74,73,77,78;,
 4;75,74,78,79;,
 4;72,75,79,76;,
 4;77,76,80,81;,
 4;78,77,81,82;,
 4;76,79,83,80;,
 4;81,80,84,85;,
 4;82,81,85,86;,
 4;83,82,86,87;,
 4;80,83,87,84;,
 4;87,86,85,84;,
 4;82,83,88,89;,
 4;78,82,89,90;,
 4;79,78,90,91;,
 4;83,79,91,88;,
 4;89,88,92,93;,
 4;90,89,93,94;,
 4;91,90,94,95;,
 4;88,91,95,92;,
 4;95,94,93,92;,
 4;96,97,98,99;,
 4;97,100,101,98;,
 4;100,102,103,101;,
 4;102,96,99,103;,
 4;102,100,97,96;,
 4;99,98,101,103;,
 4;104,105,106,107;,
 4;105,108,109,106;,
 4;108,110,111,109;,
 4;110,104,107,111;,
 4;110,108,105,104;,
 4;107,106,109,111;,
 4;112,113,114,115;,
 4;113,116,117,114;,
 4;116,118,119,117;,
 4;118,112,115,119;,
 4;118,116,113,112;,
 4;115,114,117,119;,
 4;120,121,122,123;,
 4;121,124,125,122;,
 4;124,126,127,125;,
 4;126,120,123,127;,
 4;126,124,121,120;,
 4;123,122,125,127;,
 4;128,129,130,131;,
 4;129,132,133,130;,
 4;132,134,135,133;,
 4;134,128,131,135;,
 4;134,132,129,128;,
 4;131,130,133,135;,
 4;136,137,138,139;,
 4;137,140,141,138;,
 4;140,142,143,141;,
 4;142,136,139,143;,
 4;142,140,137,136;,
 4;139,138,141,143;,
 4;144,145,146,147;,
 4;145,148,149,146;,
 4;148,150,151,149;,
 4;150,144,147,151;,
 4;150,148,145,144;,
 4;147,146,149,151;,
 4;152,153,154,155;,
 4;156,157,158,159;,
 4;160,161,162,163;,
 4;164,165,166,167;,
 4;164,157,168,169;,
 4;170,171,158,167;,
 4;172,173,174,175;,
 4;176,177,178,179;,
 4;180,181,182,183;,
 4;184,185,186,187;,
 4;188,189,190,191;,
 4;192,193,194,195;,
 4;196,197,198,199;,
 4;196,199,181,180;,
 4;200,184,187,201;,
 4;200,201,202,203;,
 4;204,205,189,188;,
 4;206,192,195,207;,
 4;206,207,208,209;,
 4;210,211,212,213;,
 4;214,204,215,216;,
 4;214,216,211,210;,
 4;214,217,205,204;,
 4;216,215,218,219;,
 4;216,219,212,211;,
 4;217,213,212,219;,
 4;217,219,218,205;,
 4;220,221,214,210;,
 4;222,220,210,213;,
 4;223,222,213,217;,
 4;221,223,217,214;,
 4;224,225,221,220;,
 4;226,227,222,223;,
 4;225,226,223,221;,
 4;228,229,230,231;,
 4;232,233,225,224;,
 4;234,232,224,227;,
 4;235,234,227,226;,
 4;233,235,226,225;,
 4;233,232,234,235;,
 4;236,227,224,237;,
 4;236,237,229,228;,
 4;236,238,222,227;,
 4;237,224,220,239;,
 4;237,239,230,229;,
 4;238,231,230,239;,
 4;238,239,220,222;,
 4;240,241,236,228;,
 4;242,240,228,231;,
 4;243,242,231,238;,
 4;241,243,238,236;,
 4;241,240,242,243;,
 4;244,183,182,245;,
 4;244,245,246,247;,
 4;248,247,249,250;,
 4;248,250,186,185;,
 4;251,191,190,252;,
 4;251,252,253,246;,
 4;254,255,194,193;,
 4;256,257,254,249;,
 4;258,256,249,253;,
 4;259,258,253,255;,
 4;257,259,255,254;,
 4;257,256,258,259;,
 4;260,261,262,263;,
 4;264,265,266,267;,
 4;268,269,270,271;,
 4;272,273,274,275;,
 4;276,277,278,279;,
 4;280,281,282,283;,
 4;284,285,286,287;,
 4;271,270,284,287;,
 4;288,272,275,289;,
 4;290,291,288,289;,
 4;279,278,292,293;,
 4;294,280,283,295;,
 4;296,297,294,295;,
 4;298,299,300,301;,
 4;302,303,293,304;,
 4;301,300,302,304;,
 4;293,292,305,304;,
 4;306,307,303,302;,
 4;300,299,306,302;,
 4;306,299,298,305;,
 4;292,307,306,305;,
 4;301,304,308,309;,
 4;298,301,309,310;,
 4;305,298,310,311;,
 4;304,305,311,308;,
 4;309,308,312,313;,
 4;311,310,314,315;,
 4;308,311,315,312;,
 4;316,317,318,319;,
 4;313,312,320,321;,
 4;314,313,321,322;,
 4;315,314,322,323;,
 4;312,315,323,320;,
 4;323,322,321,320;,
 4;324,313,314,325;,
 4;319,318,324,325;,
 4;314,310,326,325;,
 4;327,309,313,324;,
 4;318,317,327,324;,
 4;327,317,316,326;,
 4;310,309,327,326;,
 4;319,325,328,329;,
 4;316,319,329,330;,
 4;326,316,330,331;,
 4;325,326,331,328;,
 4;331,330,329,328;,
 4;332,269,268,333;,
 4;334,335,332,333;,
 4;336,337,334,338;,
 4;274,273,336,338;,
 4;339,277,276,340;,
 4;335,341,339,340;,
 4;282,281,342,343;,
 4;337,343,344,345;,
 4;341,337,345,346;,
 4;342,341,346,347;,
 4;343,342,347,344;,
 4;347,346,345,344;;
 
 MeshMaterialList {
  2;
  232;
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
  1;;
  Material {
   0.552157;0.501961;0.464314;1.000000;;
   39.000000;
   0.400000;0.400000;0.400000;;
   0.434824;0.395294;0.365647;;
   TextureFilename {
    "data\\TEXTURE\\bench000.jpg";
   }
  }
  Material {
   0.149020;0.230980;0.278667;1.000000;;
   39.000000;
   0.400000;0.400000;0.400000;;
   0.149020;0.230980;0.278667;;
   TextureFilename {
    "data\\TEXTURE\\wood000.jpg";
   }
  }
 }
 MeshNormals {
  159;
  -1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.999026;0.044122;,
  0.000000;0.571801;-0.820393;,
  0.000000;-0.559173;0.829051;,
  0.000000;0.775822;-0.630952;,
  0.000000;-0.756058;0.654505;,
  0.000000;0.973563;-0.228419;,
  0.000000;-0.611986;0.790868;,
  0.999991;-0.004194;-0.000027;,
  0.000000;0.971528;-0.236924;,
  -0.999991;-0.004189;-0.000027;,
  0.000000;0.884742;-0.466082;,
  0.000000;-0.884740;0.466085;,
  0.000000;-0.283084;0.959095;,
  0.999980;-0.006291;-0.000041;,
  0.000000;-0.281299;-0.959620;,
  0.000000;0.839502;0.543357;,
  0.000000;0.839991;-0.542600;,
  0.000000;0.999026;0.044122;,
  0.000000;0.571801;-0.820393;,
  0.000000;0.775822;-0.630952;,
  0.000000;0.973563;-0.228419;,
  0.000000;-0.611986;0.790868;,
  -0.999991;-0.004191;-0.000027;,
  0.999991;-0.004191;-0.000027;,
  -0.999980;-0.006287;-0.000041;,
  0.000000;0.001724;-0.999999;,
  0.000000;0.269871;-0.962896;,
  0.000000;-0.249385;0.968405;,
  0.000000;-0.001720;0.999999;,
  0.000000;0.041609;-0.999134;,
  -0.999980;-0.006284;-0.000041;,
  0.000000;-0.999999;-0.001116;,
  0.000000;0.269871;-0.962896;,
  0.000000;0.001724;-0.999999;,
  0.000000;-0.001720;0.999999;,
  0.000000;-0.249385;0.968405;,
  0.000000;0.041609;-0.999134;,
  0.999980;-0.006286;-0.000041;,
  0.000000;-0.999999;-0.001116;,
  0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  0.000000;-0.478491;-0.878092;,
  1.000000;0.000000;0.000000;,
  0.000000;0.478456;0.878111;,
  -1.000000;0.000000;0.000000;,
  0.000000;0.779345;-0.626595;,
  0.000000;-0.779343;0.626597;,
  0.000000;-0.834787;-0.550572;,
  1.000000;0.000000;0.000000;,
  0.000000;0.834803;0.550548;,
  -1.000000;0.000000;0.000000;,
  0.000000;0.626926;-0.779079;,
  0.000000;-0.626918;0.779085;,
  0.000000;-0.999944;-0.010620;,
  1.000000;0.000000;0.000000;,
  0.000000;0.999944;0.010611;,
  -1.000000;0.000000;0.000000;,
  0.000000;0.007182;-0.999974;,
  0.000000;-0.007195;0.999974;,
  0.000000;-0.999944;-0.010565;,
  1.000000;0.000000;-0.000000;,
  0.000000;0.999944;0.010609;,
  -1.000000;0.000000;0.000000;,
  0.000000;0.007182;-0.999974;,
  0.000000;-0.007195;0.999974;,
  0.000000;-0.401005;-0.916076;,
  1.000000;0.000000;0.000000;,
  0.000000;0.400995;0.916081;,
  -1.000000;0.000000;0.000000;,
  0.000000;0.840029;-0.542542;,
  0.000000;-0.840016;0.542562;,
  0.000000;-0.999998;-0.001843;,
  1.000000;0.000000;-0.000000;,
  0.000000;0.999998;0.001840;,
  -1.000000;0.000000;0.000000;,
  0.000000;0.041727;-0.999129;,
  0.000000;-0.041712;0.999130;,
  0.000000;0.423679;-0.905812;,
  0.000000;0.001830;-0.999998;,
  0.000000;-0.044043;0.999030;,
  0.000000;-0.044043;0.999030;,
  -1.000000;0.000000;0.000000;,
  0.000000;0.975568;0.219699;,
  0.000000;-0.981472;-0.191605;,
  0.000000;0.940102;-0.340893;,
  0.000000;-0.940094;0.340914;,
  0.000000;0.767566;-0.640970;,
  0.000000;-0.425341;0.905033;,
  0.000000;-0.898313;-0.439355;,
  0.000000;-0.919384;-0.393361;,
  0.000000;-0.003660;0.999993;,
  0.000000;0.003404;-0.999994;,
  0.000000;-0.938102;-0.346360;,
  1.000000;0.000000;0.000000;,
  -1.000000;0.000157;-0.000077;,
  1.000000;-0.000165;0.000098;,
  -1.000000;0.000236;-0.000116;,
  1.000000;-0.000248;0.000147;,
  0.000000;-0.999997;-0.002555;,
  0.000000;-0.999997;-0.002555;,
  -1.000000;0.000471;-0.000232;,
  -0.000382;-0.833378;0.552703;,
  1.000000;-0.000496;0.000295;,
  0.000000;-0.034275;0.999412;,
  0.000000;-0.032268;0.999479;,
  0.000000;-0.999997;-0.002555;,
  0.000000;-0.038289;0.999267;,
  0.000000;0.038384;-0.999263;,
  0.000000;0.995739;0.092213;,
  0.000000;-0.997090;-0.076231;,
  0.000000;0.996780;-0.080188;,
  0.000000;-0.044043;0.999030;,
  0.000000;-0.997077;0.076405;,
  0.000000;-0.044043;0.999030;,
  1.000000;0.000157;-0.000077;,
  -1.000000;-0.000182;0.000096;,
  1.000000;0.000236;-0.000116;,
  -1.000000;-0.000273;0.000143;,
  0.000000;-0.999997;-0.002555;,
  1.000000;0.000471;-0.000232;,
  0.000382;-0.833378;0.552703;,
  -1.000000;-0.000546;0.000287;,
  0.000000;-0.999997;-0.002555;,
  0.000000;0.038384;-0.999263;,
  0.000000;-0.997077;0.076405;,
  0.000000;0.003147;-0.999995;,
  0.000000;0.989994;0.141111;,
  0.000000;0.955622;0.294595;,
  0.000203;0.955228;-0.295871;,
  -0.000215;-0.484438;0.874826;,
  0.000389;0.833784;-0.552090;,
  0.000111;0.499185;0.866495;,
  0.000000;-0.038289;0.999267;,
  0.000000;0.034335;-0.999410;,
  0.000000;0.038384;-0.999263;,
  0.000000;0.032311;-0.999478;,
  0.000000;0.026237;-0.999656;,
  0.000000;0.999997;0.002602;,
  0.000000;0.983598;0.180376;,
  0.000000;0.996780;-0.080188;,
  0.000000;-0.988080;-0.153943;,
  0.000000;-0.997077;0.076405;,
  0.000000;-0.021568;-0.999767;,
  -0.000203;0.955228;-0.295871;,
  0.000215;-0.484438;0.874826;,
  -0.000389;0.833784;-0.552090;,
  -0.000111;0.499185;0.866495;;
  232;
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;0,0,0,0;,
  4;27,27,28,28;,
  4;29,29,30,30;,
  4;3,3,28,28;,
  4;1,1,1,1;,
  4;4,4,29,29;,
  4;0,0,0,0;,
  4;5,5,3,3;,
  4;1,1,1,1;,
  4;6,6,4,4;,
  4;0,0,0,0;,
  4;7,7,5,5;,
  4;9,1,1,1;,
  4;8,8,6,6;,
  4;0,11,0,0;,
  4;10,10,7,7;,
  4;9,1,1,9;,
  4;0,11,11,0;,
  4;12,12,10,10;,
  4;1,1,1,9;,
  4;13,13,13,13;,
  4;0,0,11,0;,
  4;31,31,31,31;,
  4;16,16,16,16;,
  4;15,15,9,9;,
  4;14,14,8,8;,
  4;32,32,11,11;,
  4;18,18,18,18;,
  4;1,1,15,15;,
  4;17,17,17,17;,
  4;0,0,32,32;,
  4;33,33,33,33;,
  4;0,0,0,0;,
  4;19,19,19,19;,
  4;1,1,1,1;,
  4;34,34,35,35;,
  4;36,36,37,37;,
  4;34,34,20,20;,
  4;0,0,0,0;,
  4;37,37,4,4;,
  4;1,1,1,1;,
  4;20,20,21,21;,
  4;0,0,0,0;,
  4;4,4,6,6;,
  4;1,1,1,1;,
  4;21,21,22,22;,
  4;0,0,0,24;,
  4;6,6,23,23;,
  4;1,1,25,1;,
  4;22,22,10,10;,
  4;24,0,0,24;,
  4;1,25,25,1;,
  4;10,10,12,12;,
  4;24,0,0,0;,
  4;13,13,13,13;,
  4;1,25,1,1;,
  4;38,38,38,38;,
  4;16,16,16,16;,
  4;24,24,26,26;,
  4;23,23,14,14;,
  4;25,25,39,39;,
  4;18,18,18,18;,
  4;26,26,0,0;,
  4;17,17,17,17;,
  4;39,39,1,1;,
  4;40,40,40,40;,
  4;41,41,41,41;,
  4;42,42,42,42;,
  4;43,43,43,43;,
  4;44,44,44,44;,
  4;45,45,45,45;,
  4;46,46,46,46;,
  4;47,47,47,47;,
  4;48,48,48,48;,
  4;49,49,49,49;,
  4;50,50,50,50;,
  4;51,51,51,51;,
  4;52,52,52,52;,
  4;53,53,53,53;,
  4;54,54,54,54;,
  4;55,55,55,55;,
  4;56,56,56,56;,
  4;57,57,57,57;,
  4;58,58,58,58;,
  4;59,59,59,59;,
  4;60,60,60,60;,
  4;61,61,61,61;,
  4;62,62,62,62;,
  4;63,63,63,63;,
  4;64,64,64,64;,
  4;65,65,65,65;,
  4;66,66,66,66;,
  4;67,67,67,67;,
  4;68,68,68,68;,
  4;69,69,69,69;,
  4;70,70,70,70;,
  4;71,71,71,71;,
  4;72,72,72,72;,
  4;73,73,73,73;,
  4;74,74,74,74;,
  4;75,75,75,75;,
  4;76,76,76,76;,
  4;77,77,77,77;,
  4;78,78,78,78;,
  4;79,79,79,79;,
  4;80,80,80,80;,
  4;81,81,81,81;,
  4;82,82,82,82;,
  4;83,83,83,83;,
  4;84,84,84,84;,
  4;85,85,85,85;,
  4;86,86,86,86;,
  4;87,87,87,87;,
  4;88,88,88,88;,
  4;89,89,90,90;,
  4;91,92,92,91;,
  4;93,93,93,93;,
  4;96,94,94,96;,
  4;97,97,95,95;,
  4;105,105,105,105;,
  4;93,93,93,93;,
  4;93,93,93,93;,
  4;98,96,96,98;,
  4;98,98,89,89;,
  4;99,99,97,97;,
  4;105,105,105,105;,
  4;105,105,105,105;,
  4;101,100,100,101;,
  4;93,93,93,93;,
  4;93,93,93,93;,
  4;102,102,99,99;,
  4;103,90,90,103;,
  4;103,103,137,137;,
  4;105,105,105,105;,
  4;105,105,105,105;,
  4;93,93,93,93;,
  4;104,104,101,101;,
  4;105,105,105,105;,
  4;138,138,139,139;,
  4;106,108,93,93;,
  4;109,107,105,105;,
  4;140,140,138,138;,
  4;111,110,110,111;,
  4;112,112,108,106;,
  4;113,113,141,141;,
  4;114,114,107,109;,
  4;142,142,140,140;,
  4;143,143,143,143;,
  4;115,141,141,116;,
  4;115,116,118,144;,
  4;105,105,105,107;,
  4;93,106,93,93;,
  4;93,93,93,93;,
  4;145,146,146,147;,
  4;145,147,148,148;,
  4;118,118,115,144;,
  4;117,117,111,111;,
  4;119,119,146,145;,
  4;149,149,149,149;,
  4;105,105,105,105;,
  4;93,93,93,93;,
  4;93,93,93,93;,
  4;150,151,122,120;,
  4;150,120,94,94;,
  4;152,95,95,121;,
  4;152,121,124,153;,
  4;105,105,105,105;,
  4;122,122,120,122;,
  4;123,123,91,91;,
  4;124,124,124,121;,
  4;154,154,154,154;,
  4;105,105,105,105;,
  4;90,90,89,89;,
  4;125,92,92,125;,
  4;105,105,105,105;,
  4;96,94,94,96;,
  4;95,95,97,97;,
  4;93,93,93,93;,
  4;105,105,105,105;,
  4;105,105,105,105;,
  4;98,96,96,98;,
  4;89,89,98,98;,
  4;97,97,99,99;,
  4;93,93,93,93;,
  4;93,93,93,93;,
  4;101,100,100,101;,
  4;105,105,105,105;,
  4;105,105,105,105;,
  4;99,99,102,102;,
  4;103,90,90,103;,
  4;137,137,103,103;,
  4;93,93,93,93;,
  4;93,93,93,93;,
  4;105,105,105,105;,
  4;101,101,104,104;,
  4;93,93,93,93;,
  4;139,139,138,138;,
  4;105,105,128,126;,
  4;93,93,127,129;,
  4;138,138,155,155;,
  4;130,110,110,130;,
  4;126,128,131,131;,
  4;156,156,132,132;,
  4;129,127,133,133;,
  4;155,155,157,157;,
  4;158,158,158,158;,
  4;116,156,156,115;,
  4;144,118,116,115;,
  4;127,93,93,93;,
  4;105,105,126,105;,
  4;105,105,105,105;,
  4;147,146,146,145;,
  4;148,148,147,145;,
  4;144,115,118,118;,
  4;130,130,134,134;,
  4;145,146,135,135;,
  4;149,149,149,149;,
  4;93,93,93,93;,
  4;105,105,105,105;,
  4;105,105,105,105;,
  4;120,122,151,150;,
  4;94,94,120,150;,
  4;121,95,95,152;,
  4;153,136,121,152;,
  4;93,93,93,93;,
  4;122,120,122,122;,
  4;125,125,92,92;,
  4;121,136,136,136;,
  4;154,154,154,154;,
  4;93,93,93,93;;
 }
 MeshTextureCoords {
  348;
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
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
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
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.096666;-0.667302;,
  0.096666;-0.667302;,
  0.096666;-0.513995;,
  0.096666;-0.513995;,
  0.370082;-0.667302;,
  0.370082;-0.513995;,
  0.370082;-0.667302;,
  0.370082;-0.513995;,
  0.422132;-0.667302;,
  0.422132;-0.667302;,
  0.422132;-0.513995;,
  0.422132;-0.513995;,
  0.695548;-0.667302;,
  0.695548;-0.513995;,
  0.695548;-0.667302;,
  0.695548;-0.513995;,
  0.724442;-0.660314;,
  0.724442;-0.660314;,
  0.794103;-0.532476;,
  0.794103;-0.532476;,
  0.952441;-0.843625;,
  1.022097;-0.715785;,
  0.952441;-0.843625;,
  1.022097;-0.715785;,
  0.970229;-0.871006;,
  0.970229;-0.871006;,
  1.081141;-0.797855;,
  1.081141;-0.797855;,
  1.100692;-1.033132;,
  1.211605;-0.959985;,
  1.100692;-1.033132;,
  1.211605;-0.959985;,
  1.099952;-1.067125;,
  1.099952;-1.067125;,
  1.226155;-1.065785;,
  1.226155;-1.065785;,
  1.102337;-1.399235;,
  1.228544;-1.397896;,
  1.102337;-1.399235;,
  1.228544;-1.397896;,
  1.099952;-1.445017;,
  1.099952;-1.445017;,
  1.226155;-1.443683;,
  1.226155;-1.443683;,
  1.102337;-1.777135;,
  1.228544;-1.775796;,
  1.102337;-1.777135;,
  1.228544;-1.775796;,
  -0.214888;-0.488757;,
  -0.214888;-0.488757;,
  -0.155634;-0.353393;,
  -0.155634;-0.353393;,
  0.026526;-0.644677;,
  0.085776;-0.509318;,
  0.026526;-0.644677;,
  0.085776;-0.509318;,
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
  0.751250;0.000000;,
  0.751250;1.000000;,
  0.136370;1.000000;,
  0.136370;0.000000;,
  0.000000;0.751250;,
  0.000000;0.136370;,
  1.000000;0.136370;,
  1.000000;0.751250;,
  0.000000;0.248750;,
  1.000000;0.248750;,
  1.000000;0.863630;,
  0.000000;0.863630;,
  0.248750;0.000000;,
  0.863630;0.000000;,
  0.863630;1.000000;,
  0.248750;1.000000;,
  0.880470;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.880470;1.000000;,
  0.000000;0.880470;,
  1.000000;0.880470;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.119530;,
  1.000000;0.119530;,
  0.119530;0.000000;,
  0.119530;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;0.119530;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.119530;,
  0.000000;0.119530;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.119530;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.119530;,
  0.000000;0.119530;,
  1.000000;0.119530;,
  1.000000;0.119530;,
  0.000000;0.119530;,
  0.000000;0.119530;,
  1.000000;0.119530;,
  1.000000;0.119530;,
  1.000000;0.119530;,
  0.000000;0.119530;,
  0.000000;0.119530;,
  1.000000;0.119530;,
  0.000000;0.119530;,
  0.000000;0.119530;,
  1.000000;0.119530;,
  1.000000;0.119530;,
  1.000000;0.119530;,
  0.000000;0.119530;,
  1.000000;0.119530;,
  0.000000;0.119530;,
  1.000000;0.119530;,
  1.000000;0.119530;,
  1.000000;0.119530;,
  1.000000;0.119530;,
  0.016930;0.000000;,
  0.016930;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;0.016930;,
  1.000000;0.000000;,
  1.000000;0.016930;,
  0.000000;0.983070;,
  1.000000;0.983070;,
  1.000000;1.000000;,
  0.983070;0.000000;,
  0.983070;1.000000;,
  1.000000;0.000000;,
  0.983070;0.000000;,
  1.000000;1.000000;,
  0.983070;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.136370;0.000000;,
  0.136370;1.000000;,
  0.751250;1.000000;,
  0.751250;0.000000;,
  1.000000;0.751250;,
  1.000000;0.136370;,
  0.000000;0.136370;,
  0.000000;0.751250;,
  0.000000;0.863630;,
  1.000000;0.863630;,
  1.000000;0.248750;,
  0.000000;0.248750;,
  0.248750;1.000000;,
  0.863630;1.000000;,
  0.863630;0.000000;,
  0.248750;0.000000;,
  0.880470;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.880470;0.000000;,
  1.000000;0.880470;,
  0.000000;0.880470;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.119530;,
  0.000000;0.119530;,
  0.119530;1.000000;,
  0.119530;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;0.119530;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.119530;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.119530;,
  1.000000;0.119530;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.119530;,
  0.000000;0.119530;,
  1.000000;0.119530;,
  1.000000;0.119530;,
  0.000000;0.119530;,
  0.000000;0.119530;,
  1.000000;0.119530;,
  1.000000;0.119530;,
  1.000000;0.119530;,
  0.000000;0.119530;,
  0.000000;0.119530;,
  1.000000;0.119530;,
  0.000000;0.119530;,
  0.000000;0.119530;,
  1.000000;0.119530;,
  1.000000;0.119530;,
  0.000000;0.119530;,
  1.000000;0.119530;,
  1.000000;0.119530;,
  0.000000;0.119530;,
  1.000000;0.119530;,
  1.000000;0.119530;,
  1.000000;0.119530;,
  1.000000;0.119530;,
  0.016930;1.000000;,
  0.016930;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;0.016930;,
  1.000000;0.000000;,
  0.000000;0.016930;,
  1.000000;0.983070;,
  0.000000;0.983070;,
  1.000000;1.000000;,
  0.983070;1.000000;,
  0.983070;0.000000;,
  0.983070;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.983070;1.000000;;
 }
}