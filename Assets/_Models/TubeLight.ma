//Maya ASCII 2018 scene
//Name: TubeLight.ma
//Last modified: Fri, Apr 10, 2020 06:40:41 PM
//Codeset: 1252
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "C763DF27-47E2-2892-12C4-998F563BE7AA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 13.53607314566997 7.3939790204803728 1.3605034365525608 ;
	setAttr ".r" -type "double3" -28.538352729797342 84.200000000000259 -4.7209646060538482e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "54994299-4C12-D0C8-1412-66A08B3645AD";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 15.32483209175993;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.1421663723886013 0.072587732725269305 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "0A8303B7-404C-5BD5-B682-ADA19105AB69";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "19990718-43C0-2C7C-3A2B-41B8FB2D4ADF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "95661C5E-4F16-5C0A-EFAC-7B9393438757";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.20606057457161561 1.5333334152508453 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "6421B20A-4327-96C6-8272-4597D27B7082";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 0.25255878008113591;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "5DBD021E-4A44-8EBE-54E4-5BA2EC942D9F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "F39DDD27-468B-8F18-4B7F-1FB84832F07A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	rename -uid "2E09F9E4-43EC-6476-5368-94A9E3720C94";
	setAttr ".t" -type "double3" 0 1.4669523835992089 0 ;
	setAttr ".s" -type "double3" 0.29663888876326966 0.29663888876326966 4.1289163595636058 ;
createNode transform -n "transform1" -p "pCube1";
	rename -uid "8B5B7B5E-4020-BC88-6090-81ADCE873150";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform1";
	rename -uid "777885EE-425E-1FED-8FB3-EEA5DFD39B53";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.25 0.57200002670288086 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder1";
	rename -uid "6C54B6BA-4129-948F-E17D-20A7462B7B26";
	setAttr ".t" -type "double3" 0.17321618423356538 1.3922516745602376 0 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 0.045524477676308385 2.0603621033403741 0.045524477676308385 ;
createNode transform -n "transform3" -p "pCylinder1";
	rename -uid "73E2B66E-4859-230F-5BC5-C3A63EF5602D";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape1" -p "transform3";
	rename -uid "92554C5D-4A78-2FE8-F15E-199CC0A2F960";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder2";
	rename -uid "70A370B8-4103-DA1F-8EE8-7C93109334FC";
	setAttr ".t" -type "double3" 0.17321618423356538 1.5124270681121259 0 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 0.045524477676308385 2.0603621033403741 0.045524477676308385 ;
createNode transform -n "transform2" -p "pCylinder2";
	rename -uid "719C8305-4548-ACA9-EEF0-6385A3C71AD2";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape2" -p "transform2";
	rename -uid "B7070128-4B76-FE7C-0D7C-4CA8347800E7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:35]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0.63531649 0.078125
		 0.578125 0.020933539 0.5 0 0.421875 0.020933539 0.36468354 0.078125 0.34375 0.15625
		 0.36468354 0.234375 0.421875 0.29156646 0.5 0.3125 0.578125 0.29156646 0.63531649
		 0.234375 0.65625 0.15625 0.375 0.3125 0.39583334 0.3125 0.41666669 0.3125 0.43750003
		 0.3125 0.45833337 0.3125 0.47916672 0.3125 0.50000006 0.3125 0.52083337 0.3125 0.54166669
		 0.3125 0.5625 0.3125 0.58333331 0.3125 0.60416663 0.3125 0.62499994 0.3125 0.375
		 0.68843985 0.39583334 0.68843985 0.41666669 0.68843985 0.43750003 0.68843985 0.45833337
		 0.68843985 0.47916672 0.68843985 0.50000006 0.68843985 0.52083337 0.68843985 0.54166669
		 0.68843985 0.5625 0.68843985 0.58333331 0.68843985 0.60416663 0.68843985 0.62499994
		 0.68843985 0.63531649 0.765625 0.578125 0.70843351 0.5 0.6875 0.421875 0.70843351
		 0.36468354 0.765625 0.34375 0.84375 0.36468354 0.921875 0.421875 0.97906649 0.5 1
		 0.578125 0.97906649 0.63531649 0.921875 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".vt[0:25]"  0.86602539 -1 -0.5 0.5 -1 -0.86602539 0 -1 -1
		 -0.5 -1 -0.86602539 -0.86602539 -1 -0.5 -1 -1 0 -0.86602539 -1 0.5 -0.5 -1 0.86602539
		 0 -1 1 0.5 -1 0.86602539 0.86602539 -1 0.5 1 -1 0 0.86602539 1 -0.5 0.5 1 -0.86602539
		 0 1 -1 -0.5 1 -0.86602539 -0.86602539 1 -0.5 -1 1 0 -0.86602539 1 0.5 -0.5 1 0.86602539
		 0 1 1 0.5 1 0.86602539 0.86602539 1 0.5 1 1 0 0 -1 0 0 1 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 1 1 13 1 2 14 1 3 15 1 4 16 1
		 5 17 1 6 18 1 7 19 1 8 20 1 9 21 1 10 22 1 11 23 1 24 0 1 24 1 1 24 2 1 24 3 1 24 4 1
		 24 5 1 24 6 1 24 7 1 24 8 1 24 9 1 24 10 1 24 11 1 12 25 1 13 25 1 14 25 1 15 25 1
		 16 25 1 17 25 1 18 25 1 19 25 1 20 25 1 21 25 1 22 25 1 23 25 1;
	setAttr -s 36 -ch 120 ".fc[0:35]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 3 -1 -37 37
		mu 0 3 1 0 50
		f 3 -2 -38 38
		mu 0 3 2 1 50
		f 3 -3 -39 39
		mu 0 3 3 2 50
		f 3 -4 -40 40
		mu 0 3 4 3 50
		f 3 -5 -41 41
		mu 0 3 5 4 50
		f 3 -6 -42 42
		mu 0 3 6 5 50
		f 3 -7 -43 43
		mu 0 3 7 6 50
		f 3 -8 -44 44
		mu 0 3 8 7 50
		f 3 -9 -45 45
		mu 0 3 9 8 50
		f 3 -10 -46 46
		mu 0 3 10 9 50
		f 3 -11 -47 47
		mu 0 3 11 10 50
		f 3 -12 -48 36
		mu 0 3 0 11 50
		f 3 12 49 -49
		mu 0 3 48 47 51
		f 3 13 50 -50
		mu 0 3 47 46 51
		f 3 14 51 -51
		mu 0 3 46 45 51
		f 3 15 52 -52
		mu 0 3 45 44 51
		f 3 16 53 -53
		mu 0 3 44 43 51
		f 3 17 54 -54
		mu 0 3 43 42 51
		f 3 18 55 -55
		mu 0 3 42 41 51
		f 3 19 56 -56
		mu 0 3 41 40 51
		f 3 20 57 -57
		mu 0 3 40 39 51
		f 3 21 58 -58
		mu 0 3 39 38 51
		f 3 22 59 -59
		mu 0 3 38 49 51
		f 3 23 48 -60
		mu 0 3 49 48 51;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder3";
	rename -uid "BB7786A3-45B0-9021-CE6D-B896B9EFF761";
	setAttr ".rp" -type "double3" 0.14969499956479079 1.4522798657031011 0 ;
	setAttr ".sp" -type "double3" 0.14969499956479079 1.4522798657031011 0 ;
createNode transform -n "polySurface1" -p "pCylinder3";
	rename -uid "460E9928-4C2B-2D7C-3A09-6ABB0510D52C";
	setAttr ".t" -type "double3" -0.086283412342102184 -1.3796921926211052 0 ;
	setAttr ".rp" -type "double3" 0.11589305475134881 1.4476829140887464 0 ;
	setAttr ".sp" -type "double3" 0.11589305475134881 1.4476829140887464 0 ;
createNode mesh -n "polySurfaceShape1" -p "polySurface1";
	rename -uid "673B31F1-4D7E-E01E-0C86-51B0A7AD6A90";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface2" -p "pCylinder3";
	rename -uid "7487BB38-45EE-7560-704B-AAB288A40358";
createNode transform -n "polySurface3" -p "polySurface2";
	rename -uid "FCADA4B9-420B-0F16-E633-57AA523898C0";
	setAttr ".t" -type "double3" -0.086283412342102184 -1.3796921926211052 0 ;
	setAttr ".rp" -type "double3" 0.11589305475134881 1.4476829140887464 0 ;
	setAttr ".sp" -type "double3" 0.11589305475134881 1.4476829140887464 0 ;
createNode mesh -n "polySurfaceShape3" -p "polySurface3";
	rename -uid "8A52C64A-4A1C-4E37-33D2-2885C81B3808";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface4" -p "polySurface2";
	rename -uid "D6CCC5E9-4847-5B05-9A58-D9B4E67038AC";
	setAttr ".t" -type "double3" -0.069572729082390872 -1.3796921926211052 0 ;
	setAttr ".rp" -type "double3" 0.11589305475134881 1.4476829140887464 0 ;
	setAttr ".sp" -type "double3" 0.11589305475134881 1.4476829140887464 0 ;
createNode mesh -n "polySurfaceShape4" -p "polySurface4";
	rename -uid "084DD3BE-49AE-A949-67B2-E487BF2A66C9";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.25019027304369956 0.78335151076316833 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 140 ".pt";
	setAttr ".pt[3]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[4]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[5]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[6]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[7]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[12]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[13]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[14]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[15]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[16]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[17]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[18]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[19]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[20]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[21]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[22]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[23]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[24]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[54]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[55]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[56]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[57]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[58]" -type "float3" -0.015057346 -8.1490725e-09 -1.7462298e-10 ;
	setAttr ".pt[59]" -type "float3" -0.015057417 8.1781764e-09 3.3178367e-09 ;
	setAttr ".pt[60]" -type "float3" -0.015057419 -8.3819032e-09 -1.2223609e-09 ;
	setAttr ".pt[61]" -type "float3" -0.015057338 -5.1222742e-09 4.0745363e-09 ;
	setAttr ".pt[62]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[63]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[64]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[65]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[66]" -type "float3" -0.015057342 -3.5797711e-08 -2.4447218e-09 ;
	setAttr ".pt[67]" -type "float3" -0.015057338 1.5832484e-08 -2.9976945e-09 ;
	setAttr ".pt[68]" -type "float3" -0.015057364 1.5366822e-08 -2.0081643e-09 ;
	setAttr ".pt[69]" -type "float3" -0.015057334 -2.6542693e-08 -8.7311491e-10 ;
	setAttr ".pt[70]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[71]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[72]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[73]" -type "float3" -0.015057266 7.4505806e-09 0 ;
	setAttr ".pt[74]" -type "float3" -0.015057258 3.7252903e-08 0 ;
	setAttr ".pt[75]" -type "float3" -0.015057256 2.6077032e-08 0 ;
	setAttr ".pt[76]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[77]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[78]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[79]" -type "float3" -0.015057256 2.9802322e-08 0 ;
	setAttr ".pt[80]" -type "float3" -0.015057255 3.9115548e-08 0 ;
	setAttr ".pt[81]" -type "float3" -0.015057253 2.9802322e-08 0 ;
	setAttr ".pt[131]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[132]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[133]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[134]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[135]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[136]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[137]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[138]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[139]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[140]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[141]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[142]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[147]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[148]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[149]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[150]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[151]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[152]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[153]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[154]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[155]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[156]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[157]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[158]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[159]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[160]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[161]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[162]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[180]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[181]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[182]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[183]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[184]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[195]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[196]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[197]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[198]" -type "float3" -0.015057253 2.6077032e-08 0 ;
	setAttr ".pt[199]" -type "float3" -0.015057256 2.6077032e-08 0 ;
	setAttr ".pt[200]" -type "float3" -0.015057258 3.7252903e-08 0 ;
	setAttr ".pt[201]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[202]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[203]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[204]" -type "float3" -0.015057245 1.6763806e-08 0 ;
	setAttr ".pt[205]" -type "float3" -0.01505726 2.7939677e-08 0 ;
	setAttr ".pt[206]" -type "float3" -0.015057256 1.8626451e-08 0 ;
	setAttr ".pt[207]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[208]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[209]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[210]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[211]" -type "float3" 3.7252903e-08 -1.1641532e-10 0 ;
	setAttr ".pt[217]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[218]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[219]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[220]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[221]" -type "float3" -0.015057318 -2.9336661e-08 -3.9581209e-09 ;
	setAttr ".pt[222]" -type "float3" -0.015057405 -1.641456e-08 -1.9208528e-09 ;
	setAttr ".pt[223]" -type "float3" -0.015057452 -5.151378e-09 1.2805685e-09 ;
	setAttr ".pt[224]" -type "float3" -0.015057353 -1.1874363e-08 4.802132e-09 ;
	setAttr ".pt[225]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[226]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[227]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[228]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[229]" -type "float3" -0.015057337 1.9092113e-08 -2.3283064e-10 ;
	setAttr ".pt[230]" -type "float3" -0.01505737 -3.0267984e-09 -1.8044375e-09 ;
	setAttr ".pt[231]" -type "float3" -0.015057352 -1.816079e-08 7.5669959e-10 ;
	setAttr ".pt[232]" -type "float3" -0.015057301 -1.344597e-08 4.9476512e-10 ;
	setAttr ".pt[257]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[258]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[259]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[260]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[261]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[262]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[263]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[264]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[265]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[266]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[267]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[268]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[279]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[280]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[281]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[282]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[283]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[284]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[285]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[286]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[287]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[288]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[289]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[290]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[291]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[292]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[293]" -type "float3" -0.015057307 0 0 ;
	setAttr ".pt[294]" -type "float3" -0.015057307 0 0 ;
createNode transform -n "transform5" -p "polySurface2";
	rename -uid "4BE20515-4FC2-5F88-AD45-50B05E5447D6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform5";
	rename -uid "7884CE56-432C-F12B-D361-5DA6FE0DB59C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform4" -p "pCylinder3";
	rename -uid "9FBC02A2-4D2E-19D9-771E-17805C657111";
	setAttr ".v" no;
createNode mesh -n "pCylinder3Shape" -p "transform4";
	rename -uid "ED385F6C-4C10-1917-B705-01B276188371";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 299 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[1]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[2]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[3]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[4]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[5]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[6]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[7]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[8]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[9]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[10]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[11]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[12]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[13]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[14]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[15]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[16]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[17]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[18]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[19]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[20]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[21]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[22]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[23]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[24]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[25]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[26]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[27]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[28]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[29]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[30]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[31]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[32]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[33]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[34]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[35]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[36]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[37]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[38]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[39]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[40]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[41]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[42]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[43]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[44]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[45]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[46]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[47]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[48]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[49]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[50]" -type "float3" 0 0 0.56868064 ;
	setAttr ".pt[51]" -type "float3" 0 0 -0.56868064 ;
	setAttr ".pt[52]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[53]" -type "float3" 0 0 -0.56833041 ;
	setAttr ".pt[54]" -type "float3" 0 0 -0.56833041 ;
	setAttr ".pt[55]" -type "float3" 0 0 -0.56812209 ;
	setAttr ".pt[56]" -type "float3" 0 0 -0.56651884 ;
	setAttr ".pt[57]" -type "float3" 0 0 -0.56838518 ;
	setAttr ".pt[58]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[59]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[68]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[69]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[70]" -type "float3" 0 0 -0.56385493 ;
	setAttr ".pt[71]" -type "float3" 0 0 -0.56466764 ;
	setAttr ".pt[72]" -type "float3" 0 0 -0.56605583 ;
	setAttr ".pt[77]" -type "float3" 0 0 -0.56382114 ;
	setAttr ".pt[78]" -type "float3" 0 0 -0.56382746 ;
	setAttr ".pt[79]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[84]" -type "float3" 0 0 -0.56833041 ;
	setAttr ".pt[85]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[86]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[87]" -type "float3" 0 0 -0.56833041 ;
	setAttr ".pt[88]" -type "float3" 0 0 -0.56836867 ;
	setAttr ".pt[89]" -type "float3" 0 0 -0.56850791 ;
	setAttr ".pt[90]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[91]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[92]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[93]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[94]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[95]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[96]" -type "float3" 0 0 -0.56686366 ;
	setAttr ".pt[97]" -type "float3" 0 0 -0.56678939 ;
	setAttr ".pt[98]" -type "float3" 0 0 -0.56382114 ;
	setAttr ".pt[99]" -type "float3" 0 0 -0.56382114 ;
	setAttr ".pt[100]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[101]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[106]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[107]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[108]" -type "float3" 0 0 -0.56842256 ;
	setAttr ".pt[109]" -type "float3" 0 0 -0.56841141 ;
	setAttr ".pt[110]" -type "float3" 0 0 -0.5678913 ;
	setAttr ".pt[111]" -type "float3" 0 0 -0.56793833 ;
	setAttr ".pt[112]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[113]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[114]" -type "float3" 0 0 -0.56685948 ;
	setAttr ".pt[115]" -type "float3" 0 0 -0.56687629 ;
	setAttr ".pt[116]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[117]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[118]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[119]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[120]" -type "float3" 0 0 -0.56614763 ;
	setAttr ".pt[121]" -type "float3" 0 0 -0.56622785 ;
	setAttr ".pt[122]" -type "float3" 0 0 -0.56829494 ;
	setAttr ".pt[123]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[124]" -type "float3" 0 0 -0.5683347 ;
	setAttr ".pt[125]" -type "float3" 0 0 -0.56808752 ;
	setAttr ".pt[126]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[127]" -type "float3" 0 0 -0.56820959 ;
	setAttr ".pt[128]" -type "float3" 0 0 -0.56681645 ;
	setAttr ".pt[129]" -type "float3" 0 0 -0.56686985 ;
	setAttr ".pt[130]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[131]" -type "float3" 0 0 -0.56677157 ;
	setAttr ".pt[132]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[133]" -type "float3" 0 0 -0.56648082 ;
	setAttr ".pt[134]" -type "float3" 0 0 -0.56833041 ;
	setAttr ".pt[135]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[136]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[137]" -type "float3" 0 0 -0.56833041 ;
	setAttr ".pt[138]" -type "float3" 0 0 -0.56847769 ;
	setAttr ".pt[139]" -type "float3" 0 0 -0.56837577 ;
	setAttr ".pt[140]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[141]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[142]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[143]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[144]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[145]" -type "float3" 0 0 -0.56835783 ;
	setAttr ".pt[146]" -type "float3" 0 0 -0.56635642 ;
	setAttr ".pt[147]" -type "float3" 0 0 -0.56812209 ;
	setAttr ".pt[148]" -type "float3" 0 0 -0.56833041 ;
	setAttr ".pt[149]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[150]" -type "float3" 0 0 -0.56833041 ;
	setAttr ".pt[159]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[160]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[161]" -type "float3" 0 0 -0.56382114 ;
	setAttr ".pt[162]" -type "float3" 0 0 -0.56382114 ;
	setAttr ".pt[167]" -type "float3" 0 0 -0.56382746 ;
	setAttr ".pt[168]" -type "float3" 0 0 -0.56382746 ;
	setAttr ".pt[169]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[174]" -type "float3" 0 0 -0.56605583 ;
	setAttr ".pt[175]" -type "float3" 0 0 -0.56466001 ;
	setAttr ".pt[176]" -type "float3" 0 0 -0.56388211 ;
	setAttr ".pt[177]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[178]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[183]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[184]" -type "float3" 0 0 -0.56831771 ;
	setAttr ".pt[185]" -type "float3" 0 0 -0.56834877 ;
	setAttr ".pt[186]" -type "float3" 0 0 -0.56814289 ;
	setAttr ".pt[187]" -type "float3" 0 0 -0.56820959 ;
	setAttr ".pt[188]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[189]" -type "float3" 0 0 -0.56684399 ;
	setAttr ".pt[190]" -type "float3" 0 0 -0.56683302 ;
	setAttr ".pt[191]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[192]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[193]" -type "float3" 0 0 -0.56674719 ;
	setAttr ".pt[194]" -type "float3" 0 0 -0.5664829 ;
	setAttr ".pt[195]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[196]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[197]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[198]" -type "float3" 0 0 -0.56686366 ;
	setAttr ".pt[199]" -type "float3" 0 0 -0.56841141 ;
	setAttr ".pt[200]" -type "float3" 0 0 -0.5684247 ;
	setAttr ".pt[201]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[202]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[203]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[204]" -type "float3" 0 0 -0.56981117 ;
	setAttr ".pt[205]" -type "float3" 0 0 -0.56798208 ;
	setAttr ".pt[206]" -type "float3" 0 0 -0.5678913 ;
	setAttr ".pt[207]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[208]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[209]" -type "float3" 0 0 -0.56687284 ;
	setAttr ".pt[210]" -type "float3" 0 0 -0.56685948 ;
	setAttr ".pt[211]" -type "float3" 0 0 -0.56622785 ;
	setAttr ".pt[212]" -type "float3" 0 0 -0.56614226 ;
	setAttr ".pt[213]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[214]" -type "float3" 0 0 -0.56530815 ;
	setAttr ".pt[223]" -type "float3" 0 0 0.56833041 ;
	setAttr ".pt[224]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[225]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[226]" -type "float3" 0 0 0.56833041 ;
	setAttr ".pt[227]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[228]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[229]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[230]" -type "float3" 0 0 0.56847769 ;
	setAttr ".pt[231]" -type "float3" 0 0 0.56836867 ;
	setAttr ".pt[232]" -type "float3" 0 0 0.56801236 ;
	setAttr ".pt[233]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[234]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[235]" -type "float3" 0 0 0.56835783 ;
	setAttr ".pt[236]" -type "float3" 0 0 0.56651884 ;
	setAttr ".pt[237]" -type "float3" 0 0 0.56833041 ;
	setAttr ".pt[238]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[239]" -type "float3" 0 0 0.56833041 ;
	setAttr ".pt[240]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[241]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[242]" -type "float3" 0 0 0.56382114 ;
	setAttr ".pt[243]" -type "float3" 0 0 0.56382114 ;
	setAttr ".pt[244]" -type "float3" 0 0 0.56382746 ;
	setAttr ".pt[245]" -type "float3" 0 0 0.56382746 ;
	setAttr ".pt[246]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[247]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[248]" -type "float3" 0 0 0.56831771 ;
	setAttr ".pt[249]" -type "float3" 0 0 0.56834877 ;
	setAttr ".pt[250]" -type "float3" 0 0 0.56814289 ;
	setAttr ".pt[251]" -type "float3" 0 0 0.56820959 ;
	setAttr ".pt[252]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[253]" -type "float3" 0 0 0.56684399 ;
	setAttr ".pt[254]" -type "float3" 0 0 0.56683302 ;
	setAttr ".pt[255]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[256]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[257]" -type "float3" 0 0 0.56674719 ;
	setAttr ".pt[258]" -type "float3" 0 0 0.5664829 ;
	setAttr ".pt[259]" -type "float3" 0 0 0.56388211 ;
	setAttr ".pt[260]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[261]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[262]" -type "float3" 0 0 0.56605583 ;
	setAttr ".pt[263]" -type "float3" 0 0 0.56466764 ;
	setAttr ".pt[264]" -type "float3" 0 0 0.56678939 ;
	setAttr ".pt[265]" -type "float3" 0 0 0.56685495 ;
	setAttr ".pt[266]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[267]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[268]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[269]" -type "float3" 0 0 0.56841141 ;
	setAttr ".pt[270]" -type "float3" 0 0 0.5684247 ;
	setAttr ".pt[271]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[272]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[273]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[274]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[275]" -type "float3" 0 0 0.56798208 ;
	setAttr ".pt[276]" -type "float3" 0 0 0.5678913 ;
	setAttr ".pt[277]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[278]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[279]" -type "float3" 0 0 0.56687284 ;
	setAttr ".pt[280]" -type "float3" 0 0 0.56685948 ;
	setAttr ".pt[281]" -type "float3" 0 0 0.56622785 ;
	setAttr ".pt[282]" -type "float3" 0 0 0.56614226 ;
	setAttr ".pt[283]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[284]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[285]" -type "float3" 0 0 0.56833041 ;
	setAttr ".pt[286]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[287]" -type "float3" 0 0 0.56833041 ;
	setAttr ".pt[288]" -type "float3" 0 0 0.56833041 ;
	setAttr ".pt[289]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[290]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[291]" -type "float3" 0 0 0.56833041 ;
	setAttr ".pt[292]" -type "float3" 0 0 0.56651884 ;
	setAttr ".pt[293]" -type "float3" 0 0 0.56838518 ;
	setAttr ".pt[294]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[295]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[296]" -type "float3" 0 0 0.56801236 ;
	setAttr ".pt[297]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[298]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[299]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[300]" -type "float3" 0 0 0.56836867 ;
	setAttr ".pt[301]" -type "float3" 0 0 0.56847769 ;
	setAttr ".pt[302]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[303]" -type "float3" 0 0 0.56382114 ;
	setAttr ".pt[304]" -type "float3" 0 0 0.56382746 ;
	setAttr ".pt[305]" -type "float3" 0 0 0.56382114 ;
	setAttr ".pt[306]" -type "float3" 0 0 0.56382114 ;
	setAttr ".pt[307]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[308]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[309]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[310]" -type "float3" 0 0 0.56822187 ;
	setAttr ".pt[311]" -type "float3" 0 0 0.56814289 ;
	setAttr ".pt[312]" -type "float3" 0 0 0.5664829 ;
	setAttr ".pt[313]" -type "float3" 0 0 0.56677157 ;
	setAttr ".pt[314]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[315]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[316]" -type "float3" 0 0 0.56681645 ;
	setAttr ".pt[317]" -type "float3" 0 0 0.56684399 ;
	setAttr ".pt[318]" -type "float3" 0 0 0.56834877 ;
	setAttr ".pt[319]" -type "float3" 0 0 0.56829494 ;
	setAttr ".pt[320]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[321]" -type "float3" 0 0 0.56466764 ;
	setAttr ".pt[322]" -type "float3" 0 0 0.56603509 ;
	setAttr ".pt[323]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[324]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[325]" -type "float3" 0 0 0.56388211 ;
	setAttr ".pt[326]" -type "float3" 0 0 0.56686366 ;
	setAttr ".pt[327]" -type "float3" 0 0 0.56676286 ;
	setAttr ".pt[328]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[329]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[330]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[331]" -type "float3" 0 0 0.5678913 ;
	setAttr ".pt[332]" -type "float3" 0 0 0.56793833 ;
	setAttr ".pt[333]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[334]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[335]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[336]" -type "float3" 0 0 0.56981117 ;
	setAttr ".pt[337]" -type "float3" 0 0 0.56842256 ;
	setAttr ".pt[338]" -type "float3" 0 0 0.56841141 ;
	setAttr ".pt[339]" -type "float3" 0 0 0.56685948 ;
	setAttr ".pt[340]" -type "float3" 0 0 0.56687629 ;
	setAttr ".pt[341]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[342]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[343]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[344]" -type "float3" 0 0 0.56530815 ;
	setAttr ".pt[345]" -type "float3" 0 0 0.56614763 ;
	setAttr ".pt[346]" -type "float3" 0 0 0.56622785 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A9394EF7-40E4-2A78-76E2-CDB1D1049B1D";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "63D0FD22-455F-5505-FD91-B286F752800F";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "B78C5A59-4083-BA13-B994-29A3A90D4A2E";
createNode displayLayerManager -n "layerManager";
	rename -uid "B0F8D6F5-440D-EFA7-F471-3180D9E81D85";
createNode displayLayer -n "defaultLayer";
	rename -uid "C7C88BBC-4489-5702-EEFF-278BEE042CC4";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "54E743E6-43C0-AEAF-D7D3-3BA8BA6F8BAA";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "C7B71934-4B21-3965-E729-09AEB02468D6";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "1773BD46-4E94-7557-1904-D6A48FAA99F7";
	setAttr ".cuv" 1;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "E5868926-4DF0-298D-4507-D99336A76CAB";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.29663888876326966 0 0 0 0 0.29663888876326966 0 0
		 0 0 4.1289163595636058 0 0 1.4669523835992089 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.14831944 1.4669524 0 ;
	setAttr ".rs" 56721;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.14831944438163483 1.318632939217574 -2.0644581797818029 ;
	setAttr ".cbx" -type "double3" 0.14831944438163483 1.6152718279808438 2.0644581797818029 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "9410856F-4AB4-56D2-98A5-7FA0D9A466B7";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.29663888876326966 0 0 0 0 0.29663888876326966 0 0
		 0 0 4.1289163595636058 0 0 1.4669523835992089 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.14831944 1.4669524 0 ;
	setAttr ".rs" 38000;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.14831943554110705 1.3373937945548917 -2.0481436697433071 ;
	setAttr ".cbx" -type "double3" 0.14831943554110705 1.5965111140919708 2.0481436697433071 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "2D0F3771-43AA-D53D-E6C9-4B97172F03A5";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  -3.8857806e-16 0.063244745
		 0.0039512459 -3.8857806e-16 0.063244745 -0.0039512459 -3.8857806e-16 -0.063244745
		 0.0039512459 -3.8857806e-16 -0.063244745 -0.0039512459;
createNode polyTweak -n "polyTweak2";
	rename -uid "5B4F09FD-4C6B-D417-24F1-0AAF6156A152";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[0]" -type "float3" 0.62543595 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.62543595 0 0 ;
	setAttr ".tk[4]" -type "float3" 0.62543595 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.62543595 0 0 ;
	setAttr ".tk[12]" -type "float3" -0.20439246 0 0 ;
	setAttr ".tk[13]" -type "float3" -0.20439246 0 0 ;
	setAttr ".tk[14]" -type "float3" -0.20439246 0 0 ;
	setAttr ".tk[15]" -type "float3" -0.20439246 0 0 ;
createNode polySplit -n "polySplit1";
	rename -uid "3D07AF00-45D6-FF1C-4878-36BAA3415E0C";
	setAttr -s 9 ".e[0:8]"  0.57200003 0.57200003 0.57200003 0.57200003
		 0.428 0.428 0.428 0.428 0.57200003;
	setAttr -s 9 ".d[0:8]"  -2147483644 -2147483643 -2147483629 -2147483621 -2147483624 -2147483632 
		-2147483639 -2147483640 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "C1FB3C62-4B37-EDF0-A0BC-58B7CE4FC6E9";
	setAttr ".ics" -type "componentList" 1 "f[9]";
	setAttr ".ix" -type "matrix" 0.29663888876326966 0 0 0 0 0.29663888876326966 0 0
		 0 0 4.1289163595636058 0 0 1.4669523835992089 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.14831941 1.5504405 2.0563006 ;
	setAttr ".rs" 58828;
	setAttr ".lt" -type "double3" -2.0965668525263953e-16 4.9534526873691193e-17 0.055790229738504477 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.14831940901952365 1.4856089649111768 2.0481435466920108 ;
	setAttr ".cbx" -type "double3" 0.14831941786005146 1.6152721108777333 2.0644578106279137 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "40D5CC3A-4435-DB04-93F1-8BBBF3770C9B";
	setAttr ".ics" -type "componentList" 1 "f[9]";
	setAttr ".ix" -type "matrix" 0.29663888876326966 0 0 0 0 0.29663888876326966 0 0
		 0 0 4.1289163595636058 0 0 1.4669523835992089 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.20410962 1.5504405 2.0563004 ;
	setAttr ".rs" 64488;
	setAttr ".lt" -type "double3" 5.2809451750872886e-18 -2.1913199526836938e-16 0.023783262722687132 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.20410962835748125 1.4999916240021849 2.0481433005894178 ;
	setAttr ".cbx" -type "double3" 0.20410962835748125 1.6008894915691003 2.064457687576617 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "57A4AA42-4DB5-7745-AC75-C981E99AAC76";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[24:27]" -type "float3"  0 0.046464894 0 0 -0.04848529
		 0 0 0.048485268 0 0 -0.034454558 0;
createNode polyMirror -n "polyMirror1";
	rename -uid "C8FAA2AE-46AB-DB77-7D79-F2AEC8A5FCB9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 0.29663888876326966 0 0 0 0 0.29663888876326966 0 0
		 0 0 4.1289163595636058 0 0 1.4669523835992089 0 1;
	setAttr ".a" 1;
	setAttr ".ma" 1;
	setAttr ".mtt" 1;
	setAttr ".cm" yes;
	setAttr ".fnf" 27;
	setAttr ".lnf" 53;
createNode polyTweak -n "polyTweak4";
	rename -uid "14936AB2-4E75-633B-E526-BF913D55264A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[28:31]" -type "float3"  0 0.068469673 0 0 -0.071447074
		 0 0 0.071447074 0 0 -0.050771572 0;
createNode polyMirror -n "polyMirror2";
	rename -uid "77FB93F8-4C23-68DA-CE52-289B189F6F33";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 0.29663888876326966 0 0 0 0 0.29663888876326966 0 0
		 0 0 4.1289163595636058 0 0 1.4669523835992089 0 1;
	setAttr ".a" 2;
	setAttr ".ma" 1;
	setAttr ".mtt" 1;
	setAttr ".cm" yes;
	setAttr ".fnf" 42;
	setAttr ".lnf" 83;
createNode polyTweak -n "polyTweak5";
	rename -uid "192C1959-44D7-4008-4D6D-18B50EE41BF9";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[0]" -type "float3" 0.11558806 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.11558806 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.11558806 0 0 ;
	setAttr ".tk[8]" -type "float3" 0.11558806 0 0 ;
	setAttr ".tk[12]" -type "float3" 0.11558806 0 0 ;
	setAttr ".tk[15]" -type "float3" 0.11558806 0 0 ;
	setAttr ".tk[24]" -type "float3" 0.11558806 0 0 ;
	setAttr ".tk[28]" -type "float3" 0.11558806 0 0 ;
	setAttr ".tk[31]" -type "float3" 0.11558806 0 0 ;
	setAttr ".tk[32]" -type "float3" 0.11558806 0 0 ;
	setAttr ".tk[34]" -type "float3" 0.11558806 0 0 ;
	setAttr ".tk[38]" -type "float3" 0.11558806 0 0 ;
	setAttr ".tk[40]" -type "float3" 0.11558806 0 0 ;
	setAttr ".tk[44]" -type "float3" 0.11558806 0 0 ;
	setAttr ".tk[47]" -type "float3" 0.11558806 0 0 ;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "70CBC5A7-4803-094D-95E2-9CBCCEB77186";
	setAttr ".sa" 12;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "A776EB34-4EBA-6B9E-71C1-F5877265D83C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
	setAttr ".ix" -type "matrix" 0.067297590226074386 0 0 0 0 -2.9886133668310671e-17 0.067297590226074386 0
		 0 -0.067297590226074386 -2.9886133668310671e-17 0 0.24533270319114681 1.4737264464280562 0 1;
	setAttr ".a" 180;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "340A4E66-498F-D27B-76A7-8DA7341C34E6";
	setAttr ".ics" -type "componentList" 7 "e[35:38]" "e[75]" "e[109]" "e[111]" "e[126]" "e[128]" "e[165]";
	setAttr ".cv" yes;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "9F2D9F37-4645-5209-E7D1-B6A51983A7C7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.29663888876326966 0 0 0 0 0.29663888876326966 0 0
		 0 0 4.1289163595636058 0 0 1.4669523835992089 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 1;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak6";
	rename -uid "E6B16C37-4C29-5A1E-FE1E-B685930872ED";
	setAttr ".uopa" yes;
	setAttr -s 41 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[1]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[2]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[3]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[4]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[5]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[6]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[7]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[8]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[9]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[10]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[11]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[12]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[13]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[32]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[33]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[34]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[35]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[36]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[37]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[44]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[45]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[46]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[47]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[48]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[49]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[50]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[51]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[52]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[53]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[54]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[55]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[56]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[57]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[58]" -type "float3" 0 -0.098926432 0 ;
	setAttr ".tk[59]" -type "float3" 0 -0.098926432 0 ;
createNode lambert -n "lambert2";
	rename -uid "388B53D1-45F0-AA0C-2123-2BB3BD1C1F66";
createNode shadingEngine -n "lambert2SG";
	rename -uid "156BFAFC-4817-B345-5854-BCB3EAEFA88F";
	setAttr ".ihi" 0;
	setAttr -s 8 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 8 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "D00BFAD7-47BD-2A0E-C7DF-499ADB5F8FDA";
createNode polyUnite -n "polyUnite1";
	rename -uid "B5D50512-4230-6BE8-FFBA-7BB994AB4244";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId1";
	rename -uid "6A05D9E6-4D33-F788-084A-57828D8E697B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "A5EEBCD4-4EF4-4627-330E-9AA7126AE2D4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:35]";
createNode groupId -n "groupId2";
	rename -uid "FF51809F-408C-2F82-2C42-75A175084B6D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "287C29B0-4A34-5DA2-F1BC-D2AF8710043B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "4CEBDD28-4B21-D517-CA3D-7CAE7E251194";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "98D2A81E-4683-DB59-F5A7-F58480C7ED31";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "CE2960FC-431A-ABB5-647C-32BA71C099E4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:297]";
createNode groupId -n "groupId6";
	rename -uid "9E34FA7F-4EF1-1D35-A85B-478BEF44135F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "EB4C0B7C-48F5-B502-A465-C7941C2843EF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "EFE47AD0-4822-EC61-A3F3-A0865FFBDD65";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:71]";
createNode groupId -n "groupId8";
	rename -uid "21C713DD-474E-B137-95CB-308629245FC9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "DF19590C-46F4-3E47-4C18-93895D0452B9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[72:369]";
createNode polySeparate -n "polySeparate1";
	rename -uid "16062C88-48E6-F6C7-C1C9-0CAA3BFB814C";
	setAttr ".ic" 3;
	setAttr ".rs" -type "Int32Array" 1 1 ;
	setAttr -s 2 ".out";
createNode groupId -n "groupId9";
	rename -uid "1AB7E722-4455-E6AA-90A1-899B46B842A5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "B4296E07-4B95-6798-B127-CFB53B0FD5F7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 36 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]";
createNode groupId -n "groupId10";
	rename -uid "62196202-4562-7AEB-A1E2-03AAAC1B0B11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "F0A39059-45B8-6F2E-3D00-C5A2A94DDD3E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:35]";
createNode groupId -n "groupId11";
	rename -uid "C2C8CD01-4682-482F-C691-91B9CA35F894";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "AB486877-47B5-2568-214C-A092283B7D5C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[36:333]";
createNode polySeparate -n "polySeparate2";
	rename -uid "A2998AB4-4E6E-5023-FE5D-77AFFBF953AB";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId12";
	rename -uid "5B92391F-4BAB-4552-CB09-0195C1D458E8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "FD686F40-4142-4196-E00F-F382D644C776";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 36 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]";
createNode groupId -n "groupId13";
	rename -uid "6EBADAA2-4106-2DDC-29F6-4DB3C807BA5B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "EACB4063-4CA4-43FC-32A4-74AFD38C777B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 298 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]" "f[66]" "f[67]" "f[68]" "f[69]" "f[70]" "f[71]" "f[72]" "f[73]" "f[74]" "f[75]" "f[76]" "f[77]" "f[78]" "f[79]" "f[80]" "f[81]" "f[82]" "f[83]" "f[84]" "f[85]" "f[86]" "f[87]" "f[88]" "f[89]" "f[90]" "f[91]" "f[92]" "f[93]" "f[94]" "f[95]" "f[96]" "f[97]" "f[98]" "f[99]" "f[100]" "f[101]" "f[102]" "f[103]" "f[104]" "f[105]" "f[106]" "f[107]" "f[108]" "f[109]" "f[110]" "f[111]" "f[112]" "f[113]" "f[114]" "f[115]" "f[116]" "f[117]" "f[118]" "f[119]" "f[120]" "f[121]" "f[122]" "f[123]" "f[124]" "f[125]" "f[126]" "f[127]" "f[128]" "f[129]" "f[130]" "f[131]" "f[132]" "f[133]" "f[134]" "f[135]" "f[136]" "f[137]" "f[138]" "f[139]" "f[140]" "f[141]" "f[142]" "f[143]" "f[144]" "f[145]" "f[146]" "f[147]" "f[148]" "f[149]" "f[150]" "f[151]" "f[152]" "f[153]" "f[154]" "f[155]" "f[156]" "f[157]" "f[158]" "f[159]" "f[160]" "f[161]" "f[162]" "f[163]" "f[164]" "f[165]" "f[166]" "f[167]" "f[168]" "f[169]" "f[170]" "f[171]" "f[172]" "f[173]" "f[174]" "f[175]" "f[176]" "f[177]" "f[178]" "f[179]" "f[180]" "f[181]" "f[182]" "f[183]" "f[184]" "f[185]" "f[186]" "f[187]" "f[188]" "f[189]" "f[190]" "f[191]" "f[192]" "f[193]" "f[194]" "f[195]" "f[196]" "f[197]" "f[198]" "f[199]" "f[200]" "f[201]" "f[202]" "f[203]" "f[204]" "f[205]" "f[206]" "f[207]" "f[208]" "f[209]" "f[210]" "f[211]" "f[212]" "f[213]" "f[214]" "f[215]" "f[216]" "f[217]" "f[218]" "f[219]" "f[220]" "f[221]" "f[222]" "f[223]" "f[224]" "f[225]" "f[226]" "f[227]" "f[228]" "f[229]" "f[230]" "f[231]" "f[232]" "f[233]" "f[234]" "f[235]" "f[236]" "f[237]" "f[238]" "f[239]" "f[240]" "f[241]" "f[242]" "f[243]" "f[244]" "f[245]" "f[246]" "f[247]" "f[248]" "f[249]" "f[250]" "f[251]" "f[252]" "f[253]" "f[254]" "f[255]" "f[256]" "f[257]" "f[258]" "f[259]" "f[260]" "f[261]" "f[262]" "f[263]" "f[264]" "f[265]" "f[266]" "f[267]" "f[268]" "f[269]" "f[270]" "f[271]" "f[272]" "f[273]" "f[274]" "f[275]" "f[276]" "f[277]" "f[278]" "f[279]" "f[280]" "f[281]" "f[282]" "f[283]" "f[284]" "f[285]" "f[286]" "f[287]" "f[288]" "f[289]" "f[290]" "f[291]" "f[292]" "f[293]" "f[294]" "f[295]" "f[296]" "f[297]";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F30502AD-4E71-0382-6709-0D811AB3D616";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1017\n            -height 516\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1016\n            -height 516\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1017\n            -height 516\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2040\n            -height 1076\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2040\\n    -height 1076\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2040\\n    -height 1076\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "4C13946C-42D1-C927-93D2-448D3AF15892";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId5.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupParts2.og" "pCubeShape1.i";
connectAttr "groupId6.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupId1.id" "pCylinderShape1.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCylinderShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pCylinderShape1.i";
connectAttr "groupId2.id" "pCylinderShape1.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pCylinderShape2.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCylinderShape2.iog.og[0].gco";
connectAttr "groupId4.id" "pCylinderShape2.ciog.cog[0].cgid";
connectAttr "groupParts5.og" "polySurfaceShape1.i";
connectAttr "groupId9.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "groupParts8.og" "polySurfaceShape3.i";
connectAttr "groupId12.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupParts9.og" "polySurfaceShape4.i";
connectAttr "groupId13.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "groupParts7.og" "polySurfaceShape2.i";
connectAttr "groupId10.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupId11.id" "polySurfaceShape2.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[1].gco";
connectAttr "groupParts4.og" "pCylinder3Shape.i";
connectAttr "groupId7.id" "pCylinder3Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCylinder3Shape.iog.og[0].gco";
connectAttr "groupId8.id" "pCylinder3Shape.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinder3Shape.iog.og[1].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace2.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyTweak3.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyMirror1.ip";
connectAttr "pCube1.sp" "polyMirror1.sp";
connectAttr "pCubeShape1.wm" "polyMirror1.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyMirror2.ip";
connectAttr "pCube1.sp" "polyMirror2.sp";
connectAttr "pCubeShape1.wm" "polyMirror2.mp";
connectAttr "polyMirror1.out" "polyTweak5.ip";
connectAttr "polyCylinder1.out" "polySoftEdge1.ip";
connectAttr "pCylinderShape1.wm" "polySoftEdge1.mp";
connectAttr "polyMirror2.out" "polyDelEdge1.ip";
connectAttr "polyTweak6.out" "polyBevel1.ip";
connectAttr "pCubeShape1.wm" "polyBevel1.mp";
connectAttr "polyDelEdge1.out" "polyTweak6.ip";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "pCylinderShape1.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCylinderShape1.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "pCylinderShape2.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCylinderShape2.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "pCylinder3Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "groupId1.msg" "lambert2SG.gn" -na;
connectAttr "groupId2.msg" "lambert2SG.gn" -na;
connectAttr "groupId3.msg" "lambert2SG.gn" -na;
connectAttr "groupId4.msg" "lambert2SG.gn" -na;
connectAttr "groupId7.msg" "lambert2SG.gn" -na;
connectAttr "groupId9.msg" "lambert2SG.gn" -na;
connectAttr "groupId10.msg" "lambert2SG.gn" -na;
connectAttr "groupId12.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "pCylinderShape1.o" "polyUnite1.ip[0]";
connectAttr "pCylinderShape2.o" "polyUnite1.ip[1]";
connectAttr "pCubeShape1.o" "polyUnite1.ip[2]";
connectAttr "pCylinderShape1.wm" "polyUnite1.im[0]";
connectAttr "pCylinderShape2.wm" "polyUnite1.im[1]";
connectAttr "pCubeShape1.wm" "polyUnite1.im[2]";
connectAttr "polySoftEdge1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyBevel1.out" "groupParts2.ig";
connectAttr "groupId5.id" "groupParts2.gi";
connectAttr "polyUnite1.out" "groupParts3.ig";
connectAttr "groupId7.id" "groupParts3.gi";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId8.id" "groupParts4.gi";
connectAttr "pCylinder3Shape.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[0]" "groupParts5.ig";
connectAttr "groupId9.id" "groupParts5.gi";
connectAttr "polySeparate1.out[1]" "groupParts6.ig";
connectAttr "groupId10.id" "groupParts6.gi";
connectAttr "groupParts6.og" "groupParts7.ig";
connectAttr "groupId11.id" "groupParts7.gi";
connectAttr "polySurfaceShape2.o" "polySeparate2.ip";
connectAttr "polySeparate2.out[0]" "groupParts8.ig";
connectAttr "groupId12.id" "groupParts8.gi";
connectAttr "polySeparate2.out[1]" "groupParts9.ig";
connectAttr "groupId13.id" "groupParts9.gi";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinder3Shape.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
// End of TubeLight.ma
