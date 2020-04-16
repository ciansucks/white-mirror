//Maya ASCII 2018 scene
//Name: DesktopPC.ma
//Last modified: Fri, Apr 10, 2020 09:05:37 PM
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
	rename -uid "DC14FFCE-42F7-6C66-0B55-C4A98F75F1A7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.2461481097439719 9.2849836750881121 -3.158350359707967 ;
	setAttr ".r" -type "double3" -53.138352729566982 116.99999999990639 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "69598630-4DE5-FBE0-0050-4BAB7632C1A2";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 9.7241430984262713;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 1.475514452967168 -0.82808640978413106 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "E47515C5-4313-0215-1FDB-7695817B22A2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "2158E11D-46C1-B756-B570-5AAE00999BD2";
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
	rename -uid "EB50639B-4808-807F-8065-AEB04E11B83F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "AB3C47A4-4889-3F5B-F9E6-3499E4DCD0BF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "C814E295-4F40-ED98-5207-47B5D8F8AAED";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "58F78488-495A-F1FF-3FC9-1EA99B14AAE2";
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
	rename -uid "BCA9E99D-41D5-20A1-2282-468305387BB5";
	setAttr ".t" -type "double3" 0 1.2695239705679628 0 ;
	setAttr ".s" -type "double3" 1 2.0613191137239157 1.6561728195682621 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "48F5699F-4C00-37A2-18D4-A4A67D93731A";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 2.8026456832885742 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube2";
	rename -uid "A1E1A029-4F6B-3301-B20B-8EB28EAAA678";
	setAttr ".t" -type "double3" -0.25043723216215802 1.2264455078065932 -0.82393451720820199 ;
	setAttr ".s" -type "double3" 0.079996171352462148 0.079996171352462148 0.026314010918167492 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "92B142E4-4087-BED1-FC9D-CB9D40583496";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube3";
	rename -uid "91B425A0-4EF0-BDA7-73E9-EEB72FFDA29D";
	setAttr ".t" -type "double3" -0.13467382735053696 1.2264455078065932 -0.82393451720820199 ;
	setAttr ".s" -type "double3" 0.079996171352462148 0.079996171352462148 0.026314010918167492 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "E0562AD4-4626-1B9C-0410-73AAC8E2D3F8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.082111925 3.75037766
		 2.9802322e-08 3.75037766 0 3.24962616 0.082111873 2.2351742e-08 0.082111955 0.082111359
		 1 3.75037766 0.91788805 3.75037766 1 3.24962616 1.24962234 0.082111359 0 1.24962234
		 2.9802322e-08 1.75037384 0.082111925 0.91788673 0.91788805 0.91788673 1 1.24962234
		 0 2.082113266 2.9802322e-08 2.91788864 0.082111925 1.75037384 0.91788805 1.75037384
		 1 2.082113266 1 2.91788864 0.082111955 2.91788864 0.91788805 2.9178884 0.91788805
		 3.24962616 0.91788805 0.082111359 0.082111955 1.24962234 0.91788805 1.24962234 0.082111955
		 2.082113266 0.91788805 2.082113266 0.082111955 3.24962616 1.75037384 0.082111359
		 1.75037384 0.91788673 -0.75037384 0.082111359 -0.24962234 0.082111359 -0.24962234
		 0.91788673 -0.75037384 0.91788673 0.91788715 2.2351742e-08 1.24962234 0.91788673
		 1 1.75037384;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.41788805 -0.50000191 0.25038147 -0.41788805 -0.4178896 0.50000763
		 -0.49999991 -0.4178896 0.25038147 0.49999991 -0.4178896 0.25038147 0.41788805 -0.4178896 0.50000763
		 0.41788805 -0.50000191 0.25038147 -0.49999991 0.41788673 0.25038147 -0.41788805 0.41788673 0.50000763
		 -0.41788805 0.49999619 0.25038147 0.41788805 0.49999619 0.25038147 0.41788805 0.41788673 0.50000763
		 0.49999991 0.41788673 0.25038147 -0.49999991 0.41788673 -0.25037003 -0.41788805 0.49999619 -0.25037003
		 -0.41788805 0.41788673 -0.49999237 0.41788805 0.41788673 -0.49999237 0.41788805 0.49999619 -0.25037003
		 0.49999991 0.41788673 -0.25037003 -0.49999991 -0.4178896 -0.25037003 -0.41788805 -0.4178896 -0.49999237
		 -0.41788805 -0.50000191 -0.25037003 0.41788805 -0.50000191 -0.25037003 0.41788805 -0.4178896 -0.49999237
		 0.49999991 -0.4178896 -0.25037003;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube4";
	rename -uid "217963EA-4B5D-9BA4-D618-7BBADE1EF818";
	setAttr ".t" -type "double3" -0.3894443372143559 1.9205550930365403 -0.82393451720820199 ;
	setAttr ".s" -type "double3" 0.079996171352462148 0.079996171352462148 0.026314010918167492 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "B24A4BF3-4B5E-0BA4-2968-19A9CFB95D17";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.082111925 3.75037766
		 2.9802322e-08 3.75037766 0 3.24962616 0.082111873 2.2351742e-08 0.082111955 0.082111359
		 1 3.75037766 0.91788805 3.75037766 1 3.24962616 1.24962234 0.082111359 0 1.24962234
		 2.9802322e-08 1.75037384 0.082111925 0.91788673 0.91788805 0.91788673 1 1.24962234
		 0 2.082113266 2.9802322e-08 2.91788864 0.082111925 1.75037384 0.91788805 1.75037384
		 1 2.082113266 1 2.91788864 0.082111955 2.91788864 0.91788805 2.9178884 0.91788805
		 3.24962616 0.91788805 0.082111359 0.082111955 1.24962234 0.91788805 1.24962234 0.082111955
		 2.082113266 0.91788805 2.082113266 0.082111955 3.24962616 1.75037384 0.082111359
		 1.75037384 0.91788673 -0.75037384 0.082111359 -0.24962234 0.082111359 -0.24962234
		 0.91788673 -0.75037384 0.91788673 0.91788715 2.2351742e-08 1.24962234 0.91788673
		 1 1.75037384;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.41788805 -0.50000191 0.25038147 -0.41788805 -0.4178896 0.50000763
		 -0.49999991 -0.4178896 0.25038147 0.49999991 -0.4178896 0.25038147 0.41788805 -0.4178896 0.50000763
		 0.41788805 -0.50000191 0.25038147 -0.49999991 0.41788673 0.25038147 -0.41788805 0.41788673 0.50000763
		 -0.41788805 0.49999619 0.25038147 0.41788805 0.49999619 0.25038147 0.41788805 0.41788673 0.50000763
		 0.49999991 0.41788673 0.25038147 -0.49999991 0.41788673 -0.25037003 -0.41788805 0.49999619 -0.25037003
		 -0.41788805 0.41788673 -0.49999237 0.41788805 0.41788673 -0.49999237 0.41788805 0.49999619 -0.25037003
		 0.49999991 0.41788673 -0.25037003 -0.49999991 -0.4178896 -0.25037003 -0.41788805 -0.4178896 -0.49999237
		 -0.41788805 -0.50000191 -0.25037003 0.41788805 -0.50000191 -0.25037003 0.41788805 -0.4178896 -0.49999237
		 0.49999991 -0.4178896 -0.25037003;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5";
	rename -uid "D801956A-4F0D-74F0-45A4-F58E40109DC5";
	setAttr ".t" -type "double3" -0.27738828169885377 1.9205550930365403 -0.82393451720820199 ;
	setAttr ".s" -type "double3" 0.079996171352462148 0.079996171352462148 0.026314010918167492 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	rename -uid "64FABC30-4C10-C64F-9A6A-9C9BDCB37719";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.082111925 3.75037766
		 2.9802322e-08 3.75037766 0 3.24962616 0.082111873 2.2351742e-08 0.082111955 0.082111359
		 1 3.75037766 0.91788805 3.75037766 1 3.24962616 1.24962234 0.082111359 0 1.24962234
		 2.9802322e-08 1.75037384 0.082111925 0.91788673 0.91788805 0.91788673 1 1.24962234
		 0 2.082113266 2.9802322e-08 2.91788864 0.082111925 1.75037384 0.91788805 1.75037384
		 1 2.082113266 1 2.91788864 0.082111955 2.91788864 0.91788805 2.9178884 0.91788805
		 3.24962616 0.91788805 0.082111359 0.082111955 1.24962234 0.91788805 1.24962234 0.082111955
		 2.082113266 0.91788805 2.082113266 0.082111955 3.24962616 1.75037384 0.082111359
		 1.75037384 0.91788673 -0.75037384 0.082111359 -0.24962234 0.082111359 -0.24962234
		 0.91788673 -0.75037384 0.91788673 0.91788715 2.2351742e-08 1.24962234 0.91788673
		 1 1.75037384;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.41788805 -0.50000191 0.25038147 -0.41788805 -0.4178896 0.50000763
		 -0.49999991 -0.4178896 0.25038147 0.49999991 -0.4178896 0.25038147 0.41788805 -0.4178896 0.50000763
		 0.41788805 -0.50000191 0.25038147 -0.49999991 0.41788673 0.25038147 -0.41788805 0.41788673 0.50000763
		 -0.41788805 0.49999619 0.25038147 0.41788805 0.49999619 0.25038147 0.41788805 0.41788673 0.50000763
		 0.49999991 0.41788673 0.25038147 -0.49999991 0.41788673 -0.25037003 -0.41788805 0.49999619 -0.25037003
		 -0.41788805 0.41788673 -0.49999237 0.41788805 0.41788673 -0.49999237 0.41788805 0.49999619 -0.25037003
		 0.49999991 0.41788673 -0.25037003 -0.49999991 -0.4178896 -0.25037003 -0.41788805 -0.4178896 -0.49999237
		 -0.41788805 -0.50000191 -0.25037003 0.41788805 -0.50000191 -0.25037003 0.41788805 -0.4178896 -0.49999237
		 0.49999991 -0.4178896 -0.25037003;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6";
	rename -uid "4AA49BB0-471D-B4F7-F458-8CBA9B5B76E3";
	setAttr ".t" -type "double3" -0.16985129808889646 1.9205550930365403 -0.82393451720820199 ;
	setAttr ".s" -type "double3" 0.079996171352462148 0.079996171352462148 0.026314010918167492 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	rename -uid "B226E918-43DC-7FA6-D9A3-3D8C0DAE78FF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.082111925 3.75037766
		 2.9802322e-08 3.75037766 0 3.24962616 0.082111873 2.2351742e-08 0.082111955 0.082111359
		 1 3.75037766 0.91788805 3.75037766 1 3.24962616 1.24962234 0.082111359 0 1.24962234
		 2.9802322e-08 1.75037384 0.082111925 0.91788673 0.91788805 0.91788673 1 1.24962234
		 0 2.082113266 2.9802322e-08 2.91788864 0.082111925 1.75037384 0.91788805 1.75037384
		 1 2.082113266 1 2.91788864 0.082111955 2.91788864 0.91788805 2.9178884 0.91788805
		 3.24962616 0.91788805 0.082111359 0.082111955 1.24962234 0.91788805 1.24962234 0.082111955
		 2.082113266 0.91788805 2.082113266 0.082111955 3.24962616 1.75037384 0.082111359
		 1.75037384 0.91788673 -0.75037384 0.082111359 -0.24962234 0.082111359 -0.24962234
		 0.91788673 -0.75037384 0.91788673 0.91788715 2.2351742e-08 1.24962234 0.91788673
		 1 1.75037384;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.41788805 -0.50000191 0.25038147 -0.41788805 -0.4178896 0.50000763
		 -0.49999991 -0.4178896 0.25038147 0.49999991 -0.4178896 0.25038147 0.41788805 -0.4178896 0.50000763
		 0.41788805 -0.50000191 0.25038147 -0.49999991 0.41788673 0.25038147 -0.41788805 0.41788673 0.50000763
		 -0.41788805 0.49999619 0.25038147 0.41788805 0.49999619 0.25038147 0.41788805 0.41788673 0.50000763
		 0.49999991 0.41788673 0.25038147 -0.49999991 0.41788673 -0.25037003 -0.41788805 0.49999619 -0.25037003
		 -0.41788805 0.41788673 -0.49999237 0.41788805 0.41788673 -0.49999237 0.41788805 0.49999619 -0.25037003
		 0.49999991 0.41788673 -0.25037003 -0.49999991 -0.4178896 -0.25037003 -0.41788805 -0.4178896 -0.49999237
		 -0.41788805 -0.50000191 -0.25037003 0.41788805 -0.50000191 -0.25037003 0.41788805 -0.4178896 -0.49999237
		 0.49999991 -0.4178896 -0.25037003;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube7";
	rename -uid "9471D231-4D6D-8008-A0CA-1AB800E18159";
	setAttr ".t" -type "double3" -0.406146739358065 0.32746459379713655 -0.82393451720820199 ;
	setAttr ".s" -type "double3" 0.052341153964309592 0.052341153964309592 0.017217145190835899 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	rename -uid "EDDCEEA4-4E39-C784-D4BF-6387D7AE6D44";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.082111925 3.75037766
		 2.9802322e-08 3.75037766 0 3.24962616 0.082111873 2.2351742e-08 0.082111955 0.082111359
		 1 3.75037766 0.91788805 3.75037766 1 3.24962616 1.24962234 0.082111359 0 1.24962234
		 2.9802322e-08 1.75037384 0.082111925 0.91788673 0.91788805 0.91788673 1 1.24962234
		 0 2.082113266 2.9802322e-08 2.91788864 0.082111925 1.75037384 0.91788805 1.75037384
		 1 2.082113266 1 2.91788864 0.082111955 2.91788864 0.91788805 2.9178884 0.91788805
		 3.24962616 0.91788805 0.082111359 0.082111955 1.24962234 0.91788805 1.24962234 0.082111955
		 2.082113266 0.91788805 2.082113266 0.082111955 3.24962616 1.75037384 0.082111359
		 1.75037384 0.91788673 -0.75037384 0.082111359 -0.24962234 0.082111359 -0.24962234
		 0.91788673 -0.75037384 0.91788673 0.91788715 2.2351742e-08 1.24962234 0.91788673
		 1 1.75037384;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.41788805 -0.50000191 0.25038147 -0.41788805 -0.4178896 0.50000763
		 -0.49999991 -0.4178896 0.25038147 0.49999991 -0.4178896 0.25038147 0.41788805 -0.4178896 0.50000763
		 0.41788805 -0.50000191 0.25038147 -0.49999991 0.41788673 0.25038147 -0.41788805 0.41788673 0.50000763
		 -0.41788805 0.49999619 0.25038147 0.41788805 0.49999619 0.25038147 0.41788805 0.41788673 0.50000763
		 0.49999991 0.41788673 0.25038147 -0.49999991 0.41788673 -0.25037003 -0.41788805 0.49999619 -0.25037003
		 -0.41788805 0.41788673 -0.49999237 0.41788805 0.41788673 -0.49999237 0.41788805 0.49999619 -0.25037003
		 0.49999991 0.41788673 -0.25037003 -0.49999991 -0.4178896 -0.25037003 -0.41788805 -0.4178896 -0.49999237
		 -0.41788805 -0.50000191 -0.25037003 0.41788805 -0.50000191 -0.25037003 0.41788805 -0.4178896 -0.49999237
		 0.49999991 -0.4178896 -0.25037003;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "01F22840-421C-BD00-2734-4F854F6F3445";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "6A2648D6-4143-7E94-8AE2-94B9EC4593A9";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "55314CAB-4E20-6308-96EF-149C5ECFCB56";
createNode displayLayerManager -n "layerManager";
	rename -uid "8B5DCE8E-490E-B022-21CE-8C8F41839862";
createNode displayLayer -n "defaultLayer";
	rename -uid "207F227D-451F-2466-D4DF-088BDC65E2F5";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "8FA48068-42A8-5195-27B3-208DC8F526D4";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "89C302C4-4C0B-9D62-8472-ACB58F88688D";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "2091FDF9-425C-71C2-C7F2-88B881C3012E";
	setAttr ".cuv" 1;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "232E9346-42D4-9962-B2AB-FCB9D00FE98B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.0613191137239157 0 0 0 0 1.6561728195682621 0
		 0 1.2695239705679628 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.087628865777754902;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polySplit -n "polySplit1";
	rename -uid "6167087A-4D2D-C02F-6800-DC9C8BC72AFC";
	setAttr -s 13 ".e[0:12]"  0.95363301 0.95363301 0.046367399 0.95363301
		 0.95363301 0.046367399 0.046367399 0.95363301 0.046367399 0.046367399 0.95363301
		 0.046367399 0.95363301;
	setAttr -s 13 ".d[0:12]"  -2147483633 -2147483629 -2147483617 -2147483619 -2147483615 -2147483573 
		-2147483577 -2147483575 -2147483587 -2147483591 -2147483589 -2147483631 -2147483633;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "E2A4F938-4551-016F-0F9E-A196242D7431";
	setAttr -s 13 ".e[0:12]"  0.99882501 0.99882501 0.00117511 0.99882501
		 0.99882501 0.00117511 0.00117511 0.99882501 0.00117511 0.00117511 0.99882501 0.00117511
		 0.99882501;
	setAttr -s 13 ".d[0:12]"  -2147483633 -2147483629 -2147483538 -2147483619 -2147483615 -2147483535 
		-2147483534 -2147483575 -2147483532 -2147483531 -2147483589 -2147483529 -2147483633;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "4696F072-4BAC-6FD5-2755-3CB624A039B1";
	setAttr -s 13 ".e[0:12]"  0.95268101 0.95268101 0.047318801 0.95268101
		 0.95268101 0.047318801 0.047318801 0.95268101 0.047318801 0.047318801 0.95268101
		 0.047318801 0.95268101;
	setAttr -s 13 ".d[0:12]"  -2147483633 -2147483629 -2147483514 -2147483619 -2147483615 -2147483511 
		-2147483510 -2147483575 -2147483508 -2147483507 -2147483589 -2147483505 -2147483633;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "6A1286D5-445D-FBBF-72D2-A694B0BF92D8";
	setAttr -s 13 ".e[0:12]"  0.99812198 0.99812198 0.00187755 0.99812198
		 0.99812198 0.00187755 0.00187755 0.99812198 0.00187755 0.00187755 0.99812198 0.00187755
		 0.99812198;
	setAttr -s 13 ".d[0:12]"  -2147483633 -2147483629 -2147483490 -2147483619 -2147483615 -2147483487 
		-2147483486 -2147483575 -2147483484 -2147483483 -2147483589 -2147483481 -2147483633;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "32928111-4ACA-6E0A-6ACB-848003B522F3";
	setAttr -s 13 ".e[0:12]"  0.94812399 0.94812399 0.0518758 0.94812399
		 0.94812399 0.0518758 0.0518758 0.94812399 0.0518758 0.0518758 0.94812399 0.0518758
		 0.94812399;
	setAttr -s 13 ".d[0:12]"  -2147483633 -2147483629 -2147483466 -2147483619 -2147483615 -2147483463 
		-2147483462 -2147483575 -2147483460 -2147483459 -2147483589 -2147483457 -2147483633;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "F60C699D-41E7-3730-AACD-358468CBE7EF";
	setAttr -s 13 ".e[0:12]"  0.99870098 0.99870098 0.00129873 0.99870098
		 0.99870098 0.00129873 0.00129873 0.99870098 0.00129873 0.00129873 0.99870098 0.00129873
		 0.99870098;
	setAttr -s 13 ".d[0:12]"  -2147483633 -2147483629 -2147483442 -2147483619 -2147483615 -2147483439 
		-2147483438 -2147483575 -2147483436 -2147483435 -2147483589 -2147483433 -2147483633;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "49529EFB-431B-D507-BE5E-84A490B10BC5";
	setAttr ".ics" -type "componentList" 1 "f[26]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.0613191137239157 0 0 0 0 1.6561728195682621 0
		 0 1.2695239705679628 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.2106156 -0.82808644 ;
	setAttr ".rs" 48667;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.45618996024131775 2.1648580787860494 -0.82808640978413106 ;
	setAttr ".cbx" -type "double3" 0.45618996024131775 2.2563733504817911 -0.82808640978413106 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "CEDD067E-424A-8A36-4037-A0B529C9F0E7";
	setAttr ".ics" -type "componentList" 1 "f[73]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.0613191137239157 0 0 0 0 1.6561728195682621 0
		 0 1.2695239705679628 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.1181679 -0.82808644 ;
	setAttr ".rs" 47583;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.45618996024131775 2.0736883012025484 -0.82808640978413106 ;
	setAttr ".cbx" -type "double3" 0.45618996024131775 2.162647383351644 -0.82808640978413106 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "131DF95C-46C0-F3FF-0E8A-F4B92D7F4739";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[128]" -type "float3" 0 0 0.0076598912 ;
	setAttr ".tk[129]" -type "float3" 0 0 0.0076598912 ;
	setAttr ".tk[130]" -type "float3" 0 0 0.0076598912 ;
	setAttr ".tk[131]" -type "float3" 0 0 0.0076598912 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "ACA09131-49E4-EC41-7E87-C5A8EB1F3A94";
	setAttr ".ics" -type "componentList" 1 "f[97]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.0613191137239157 0 0 0 0 1.6561728195682621 0
		 0 1.2695239705679628 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.0239573 -0.82808644 ;
	setAttr ".rs" 60317;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.45618996024131775 1.9775890893099395 -0.82808640978413106 ;
	setAttr ".cbx" -type "double3" 0.45618996024131775 2.0703255082252974 -0.82808640978413106 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "32597B39-4171-7A5B-28CD-4AA995610BFB";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[132]" -type "float3" 0 0 0.0078872694 ;
	setAttr ".tk[133]" -type "float3" 0 0 0.0078872694 ;
	setAttr ".tk[134]" -type "float3" 0 0 0.0078872694 ;
	setAttr ".tk[135]" -type "float3" 0 0 0.0078872694 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "91197965-4406-EB0B-E9DF-DAB769D0A27F";
	setAttr ".ics" -type "componentList" 7 "f[28]" "f[58]" "f[70]" "f[82]" "f[94]" "f[106]" "f[118]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.0613191137239157 0 0 0 0 1.6561728195682621 0
		 0 1.2695239705679628 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.5 1.2695239 -2.4678899e-08 ;
	setAttr ".rs" 61951;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.5 0.2826744677899411 -0.78427647914736842 ;
	setAttr ".cbx" -type "double3" 0.5 2.2563733504817911 0.78427642978957213 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "4AB26966-4B16-1209-39DB-408BDA33C5A2";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[61]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[73]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[84]" -type "float3" 0 -1.8626451e-09 0 ;
	setAttr ".tk[85]" -type "float3" 0 -1.8626451e-09 0 ;
	setAttr ".tk[96]" -type "float3" 0 1.8626451e-09 0 ;
	setAttr ".tk[97]" -type "float3" 0 1.8626451e-09 0 ;
	setAttr ".tk[108]" -type "float3" 0 -1.8626451e-09 0 ;
	setAttr ".tk[109]" -type "float3" 0 1.8626451e-09 0 ;
	setAttr ".tk[120]" -type "float3" 0 -1.8626451e-09 0 ;
	setAttr ".tk[121]" -type "float3" 0 1.8626451e-09 0 ;
	setAttr ".tk[136]" -type "float3" 0 0 0.0088009657 ;
	setAttr ".tk[137]" -type "float3" 0 0 0.0088009657 ;
	setAttr ".tk[138]" -type "float3" 0 0 0.0088009657 ;
	setAttr ".tk[139]" -type "float3" 0 0 0.0088009657 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "2DFAEDC3-4FD9-8859-7419-BC84FD4358BE";
	setAttr ".ics" -type "componentList" 7 "f[28]" "f[58]" "f[70]" "f[82]" "f[94]" "f[106]" "f[118]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.0613191137239157 0 0 0 0 1.6561728195682621 0
		 0 1.2695239705679628 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.5 1.2695239 -2.4678899e-08 ;
	setAttr ".rs" 48466;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.5 0.34056991874994624 -0.73826538822687726 ;
	setAttr ".cbx" -type "double3" 0.5 2.198477899521786 0.73826533886908097 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "07022F29-4562-B2AC-9D90-B297847615BC";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[140:155]" -type "float3"  0 -0.02548201 -0.027781568
		 0 -0.025482005 0.027781567 0 -0.028086595 0.027781567 0 -0.028086595 -0.027781568
		 0 -0.025419064 -0.027781568 0 -0.025419047 0.027781567 0 -0.022887241 -0.027781568
		 0 -0.022887211 0.027781567 0 -0.022791503 -0.027781568 0 -0.022791503 0.027781568
		 0 -0.020152148 -0.027781568 0 -0.020152166 0.027781568 0 -0.020089483 -0.027781568
		 0 -0.020089516 0.027781568 0 0.028086595 0.027781567 0 0.028086595 -0.027781568;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "BAB30E29-412B-0A2E-B537-FCBAE4B19D09";
	setAttr ".ics" -type "componentList" 1 "f[121]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.0613191137239157 0 0 0 0 1.6561728195682621 0
		 0 1.2695239705679628 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.1290315 -0.82808644 ;
	setAttr ".rs" 34864;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.45618996024131775 0.2826744677899411 -0.82808640978413106 ;
	setAttr ".cbx" -type "double3" 0.45618996024131775 1.9753885916035978 -0.82808640978413106 ;
createNode polyTweak -n "polyTweak5";
	rename -uid "71BBB919-48F9-D527-8605-9D905EAE90B9";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[156]" -type "float3" -0.030921318 0 0 ;
	setAttr ".tk[157]" -type "float3" -0.030921318 0 0 ;
	setAttr ".tk[158]" -type "float3" -0.030921318 0 0 ;
	setAttr ".tk[159]" -type "float3" -0.030921318 0 0 ;
	setAttr ".tk[160]" -type "float3" -0.030921318 0 0 ;
	setAttr ".tk[161]" -type "float3" -0.030921318 0 0 ;
	setAttr ".tk[162]" -type "float3" -0.030921318 0 0 ;
	setAttr ".tk[163]" -type "float3" -0.030921318 0 0 ;
	setAttr ".tk[164]" -type "float3" -0.030921318 0 0 ;
	setAttr ".tk[165]" -type "float3" -0.030921318 0 0 ;
	setAttr ".tk[166]" -type "float3" -0.030921318 0 0 ;
	setAttr ".tk[167]" -type "float3" -0.030921318 0 0 ;
	setAttr ".tk[168]" -type "float3" -0.030921318 0 0 ;
	setAttr ".tk[169]" -type "float3" -0.030921318 0 0 ;
	setAttr ".tk[170]" -type "float3" -0.030921318 0 0 ;
	setAttr ".tk[171]" -type "float3" -0.030921318 0 0 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "024546AB-4EBD-4A0B-4FF6-1BB5BAB9E25B";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[172:175]" -type "float3"  -0.1519511 -0.1686697 0 0.1519511
		 -0.16867024 0 -0.1519511 0.50484616 0 0.1519511 0.50484616 0;
createNode polySplit -n "polySplit7";
	rename -uid "8348C939-49F0-91D4-12EB-B1B2AFC0B482";
	setAttr -s 19 ".e[0:18]"  0.59469301 0.59469301 0.40530699 0.59469301
		 0.59469301 0.59469301 0.59469301 0.40530699 0.40530699 0.40530699 0.40530699 0.59469301
		 0.59469301 0.40530699 0.40530699 0.40530699 0.59469301 0.40530699 0.59469301;
	setAttr -s 19 ".d[0:18]"  -2147483633 -2147483629 -2147483423 -2147483619 -2147483615 -2147483347 
		-2147483309 -2147483310 -2147483348 -2147483420 -2147483419 -2147483575 -2147483304 -2147483301 -2147483417 -2147483416 -2147483589 -2147483414 
		-2147483633;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "D5E69FF6-4916-F71B-BE42-F3B5BC99C066";
	setAttr -s 19 ".e[0:18]"  0.72120798 0.72120798 0.27879199 0.72120798
		 0.72120798 0.72120798 0.72120798 0.27879199 0.27879199 0.27879199 0.27879199 0.72120798
		 0.72120798 0.27879199 0.27879199 0.27879199 0.72120798 0.27879199 0.72120798;
	setAttr -s 19 ".d[0:18]"  -2147483633 -2147483629 -2147483298 -2147483619 -2147483615 -2147483347 
		-2147483309 -2147483293 -2147483292 -2147483291 -2147483290 -2147483575 -2147483304 -2147483287 -2147483286 -2147483285 -2147483589 -2147483283 
		-2147483633;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "7A4AD342-4D93-4453-D9D2-F190B05DE479";
	setAttr ".ics" -type "componentList" 2 "f[121]" "f[204]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.0613191137239157 0 0 0 0 1.6561728195682621 0
		 0 1.2695239705679628 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.4755144 -0.82808644 ;
	setAttr ".rs" 56117;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.30423885583877563 1.3233234979078505 -0.82808640978413106 ;
	setAttr ".cbx" -type "double3" 0.30423885583877563 1.6277054080264854 -0.82808640978413106 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "A593F3B2-49D9-0A4E-48A2-8DA46470947E";
	setAttr ".ics" -type "componentList" 1 "f[121]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.0613191137239157 0 0 0 0 1.6561728195682621 0
		 0 1.2695239705679628 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.5660213 -0.83732134 ;
	setAttr ".rs" 50274;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.30423885583877563 1.5043372255623382 -0.83732135218717518 ;
	setAttr ".cbx" -type "double3" 0.30423885583877563 1.6277054080264854 -0.83732135218717518 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "3AA272DE-4816-9010-F0F0-25B8A03272FB";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[212:219]" -type "float3"  9.3132257e-10 1.1641532e-10
		 -0.0055760751 -9.3132257e-10 1.1641532e-10 -0.0055760751 9.3132257e-10 -1.1641532e-10
		 -0.0055760751 -9.3132257e-10 -1.1641532e-10 -0.0055760751 0 0 -0.0055760751 0 0 -0.0055760751
		 0 0 -0.0055760751 0 0 -0.0055760751;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "274AEAA1-43A2-F77D-73DF-ED8679179A0C";
	setAttr ".ics" -type "componentList" 1 "f[121]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.0613191137239157 0 0 0 0 1.6561728195682621 0
		 0 1.2695239705679628 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.5660213 -0.83732146 ;
	setAttr ".rs" 46508;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.29455971717834473 1.5122867538968596 -0.83732145090276777 ;
	setAttr ".cbx" -type "double3" 0.29455971717834473 1.619755879691964 -0.83732145090276777 ;
createNode polyTweak -n "polyTweak8";
	rename -uid "8794EA69-4274-3655-6651-94A675883B6F";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[220:223]" -type "float3"  -0.0096791368 -0.0038565176
		 0 0.0096791368 -0.0038565269 0 -0.0096791368 0.0038565267 0 0.0096791368 0.0038565176
		 0;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "58B63E72-4727-AA20-40A5-BF80F6AA88BD";
	setAttr ".ics" -type "componentList" 1 "f[204]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.0613191137239157 0 0 0 0 1.6561728195682621 0
		 0 1.2695239705679628 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.3885978 -0.83732146 ;
	setAttr ".rs" 56333;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.30423885583877563 1.3233234979078505 -0.83732145090276777 ;
	setAttr ".cbx" -type "double3" 0.30423885583877563 1.4538721095709932 -0.83732145090276777 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "9FBED1B3-418E-09E4-4DA2-F78936A0D5A2";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[224]" -type "float3" 0 0 0.013520073 ;
	setAttr ".tk[225]" -type "float3" 0 0 0.013520073 ;
	setAttr ".tk[226]" -type "float3" 0 0 0.013520073 ;
	setAttr ".tk[227]" -type "float3" 0 0 0.013520073 ;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "5F505431-47D2-A312-8202-0A859F03B75C";
	setAttr ".ics" -type "componentList" 1 "f[204]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.0613191137239157 0 0 0 0 1.6561728195682621 0
		 0 1.2695239705679628 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.3885978 -0.83732146 ;
	setAttr ".rs" 33882;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.29483672976493835 1.3338954664658798 -0.83732145090276777 ;
	setAttr ".cbx" -type "double3" 0.29483672976493835 1.443300137173458 -0.83732145090276777 ;
createNode polyTweak -n "polyTweak10";
	rename -uid "04EAF496-4075-1E4B-FCB5-08B8B77BB8FF";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[228:231]" -type "float3"  -0.009402114 -0.0051287389
		 0 0.009402114 -0.0051287389 0 -0.009402114 0.0051287389 0 0.009402114 0.0051287389
		 0;
createNode polyCube -n "polyCube2";
	rename -uid "56455EBA-4088-E2F4-95C6-BCACA5395E03";
	setAttr ".cuv" 1;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "01BCD3D6-4602-1166-504A-DBA256DF2C30";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.079996171352462148 0 0 0 0 0.079996171352462148 0 0
		 0 0 0.026314010918167492 0 0 1.2464846601944268 -0.85901534289822523 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.4993;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyMirror -n "polyMirror1";
	rename -uid "B485DF5A-4A75-A95D-9D0C-518ED5ADD484";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.0613191137239157 0 0 0 0 1.6561728195682621 0
		 0 1.2695239705679628 0 1;
	setAttr ".ws" yes;
	setAttr ".mtt" 1;
	setAttr ".mt" 0.44277450442314148;
	setAttr ".cm" yes;
	setAttr ".fnf" 161;
	setAttr ".lnf" 321;
createNode polyTweak -n "polyTweak11";
	rename -uid "424CC5F3-42C9-95FD-C015-20B2B7A84647";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[232:235]" -type "float3"  0 0 0.014325569 0 0 0.014325569
		 0 0 0.014325569 0 0 0.014325569;
createNode lambert -n "lambert2";
	rename -uid "40674FA3-4E1D-96B8-5397-228EAE28A41F";
createNode shadingEngine -n "lambert2SG";
	rename -uid "4727DDEE-41CC-EA44-3680-E195DF1BFCF6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "E7527B94-4DCB-37E2-C759-008A0D7E802A";
createNode groupId -n "groupId1";
	rename -uid "B722F103-4DB9-F24F-789D-778F2F988C9E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "D5CD46AF-4E1B-2F47-3A29-D4BBFA54E64C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 11 "f[0:132]" "f[134:137]" "f[139:141]" "f[143:145]" "f[147:153]" "f[155:293]" "f[295:298]" "f[300:302]" "f[304:306]" "f[308:314]" "f[316:321]";
	setAttr ".irc" -type "componentList" 10 "f[133]" "f[138]" "f[142]" "f[146]" "f[154]" "f[294]" "f[299]" "f[303]" "f[307]" "f[315]";
createNode groupId -n "groupId2";
	rename -uid "ACF8043D-4095-F444-A817-34B142BD994B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "96D51E14-4844-5FC7-4957-8BB7C8FDAF85";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "631D898A-446A-115E-A729-1EBF08E9A09A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 10 "f[133]" "f[138]" "f[142]" "f[146]" "f[154]" "f[294]" "f[299]" "f[303]" "f[307]" "f[315]";
createNode lambert -n "lambert3";
	rename -uid "5A5B35D7-4BCA-F3B4-09AD-9C9E05BDC0E4";
createNode shadingEngine -n "lambert3SG";
	rename -uid "3068C991-4B4F-D3DC-811A-1299F9D50390";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "CCF6AE32-4B42-A318-E097-A5A1A15EDF1A";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "8205BE3E-4547-0A6D-74DB-3A9BAC631745";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
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
	rename -uid "36664F2B-4A4E-88CF-B1B2-BD90D560EC5F";
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
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId1.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupId3.id" "pCubeShape1.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "pCubeShape1.iog.og[1].gco";
connectAttr "groupParts2.og" "pCubeShape1.i";
connectAttr "groupId2.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "polyBevel2.out" "pCubeShape2.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polyBevel1.ip";
connectAttr "pCubeShape1.wm" "polyBevel1.mp";
connectAttr "polyBevel1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak5.ip";
connectAttr "polyExtrudeFace6.out" "polyTweak6.ip";
connectAttr "polyTweak6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyTweak7.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak10.ip";
connectAttr "polyCube2.out" "polyBevel2.ip";
connectAttr "pCubeShape2.wm" "polyBevel2.mp";
connectAttr "polyTweak11.out" "polyMirror1.ip";
connectAttr "pCube1.sp" "polyMirror1.sp";
connectAttr "pCubeShape1.wm" "polyMirror1.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak11.ip";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "groupId3.msg" "lambert2SG.gn" -na;
connectAttr "pCubeShape1.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "polyMirror1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "pCubeShape2.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape3.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape4.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape5.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape6.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
// End of DesktopPC.ma
