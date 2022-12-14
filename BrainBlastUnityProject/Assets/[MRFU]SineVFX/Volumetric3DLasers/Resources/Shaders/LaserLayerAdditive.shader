// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:33151,y:32682,varname:node_4795,prsc:2|emission-6277-OUT,voffset-7186-OUT;n:type:ShaderForge.SFN_Vector4Property,id:792,x:28236,y:32045,ptovrint:False,ptlb:_StartPosition,ptin:_StartPosition,varname:node_792,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5,v2:0.5,v3:0.5,v4:1;n:type:ShaderForge.SFN_Vector4Property,id:2626,x:28236,y:32284,ptovrint:False,ptlb:_EndPosition,ptin:_EndPosition,varname:node_2626,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5,v2:0.5,v3:0.5,v4:1;n:type:ShaderForge.SFN_FragmentPosition,id:4411,x:28236,y:31859,varname:node_4411,prsc:2;n:type:ShaderForge.SFN_FragmentPosition,id:1578,x:28236,y:32448,varname:node_1578,prsc:2;n:type:ShaderForge.SFN_Distance,id:3971,x:28474,y:31959,varname:node_3971,prsc:2|A-4411-XYZ,B-792-XYZ;n:type:ShaderForge.SFN_OneMinus,id:5425,x:28637,y:31959,varname:node_5425,prsc:2|IN-3971-OUT;n:type:ShaderForge.SFN_Distance,id:5558,x:28477,y:32360,varname:node_5558,prsc:2|A-2626-XYZ,B-1578-XYZ;n:type:ShaderForge.SFN_OneMinus,id:4674,x:28640,y:32360,varname:node_4674,prsc:2|IN-5558-OUT;n:type:ShaderForge.SFN_Multiply,id:2603,x:32375,y:32006,varname:node_2603,prsc:2|A-1809-RGB,B-2951-OUT,C-6826-OUT,D-5597-R,E-9465-OUT;n:type:ShaderForge.SFN_Color,id:1809,x:32064,y:31835,ptovrint:False,ptlb:Final Color,ptin:_FinalColor,varname:node_1809,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Slider,id:2951,x:31907,y:32007,ptovrint:False,ptlb:Final Power,ptin:_FinalPower,varname:node_2951,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:10;n:type:ShaderForge.SFN_Multiply,id:7186,x:32518,y:32915,varname:node_7186,prsc:2|A-1036-OUT,B-7732-OUT,C-3884-OUT,D-8238-OUT;n:type:ShaderForge.SFN_NormalVector,id:7732,x:32263,y:32933,prsc:2,pt:False;n:type:ShaderForge.SFN_ValueProperty,id:3884,x:32263,y:33097,ptovrint:False,ptlb:Vertex Offset Power,ptin:_VertexOffsetPower,varname:node_3884,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Add,id:9766,x:28827,y:31957,varname:node_9766,prsc:2|A-5425-OUT,B-606-OUT;n:type:ShaderForge.SFN_Add,id:1789,x:28829,y:32358,varname:node_1789,prsc:2|A-4674-OUT,B-5873-OUT;n:type:ShaderForge.SFN_ValueProperty,id:606,x:28637,y:31896,ptovrint:False,ptlb:Shape Add Start Position,ptin:_ShapeAddStartPosition,varname:node_606,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_ValueProperty,id:5873,x:28640,y:32517,ptovrint:False,ptlb:Shape Add End Position,ptin:_ShapeAddEndPosition,varname:_StartPositionMaskAdd_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_Vector1,id:3731,x:28637,y:31814,varname:node_3731,prsc:2,v1:0.75;n:type:ShaderForge.SFN_Add,id:8102,x:28827,y:31814,varname:node_8102,prsc:2|A-3090-OUT,B-606-OUT;n:type:ShaderForge.SFN_Vector1,id:7098,x:28637,y:31741,varname:node_7098,prsc:2,v1:0;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:3003,x:29139,y:31730,varname:node_3003,prsc:2|IN-5892-OUT,IMIN-7098-OUT,IMAX-8102-OUT,OMIN-7098-OUT,OMAX-4749-OUT;n:type:ShaderForge.SFN_Vector1,id:4749,x:28637,y:31670,varname:node_4749,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:1036,x:32263,y:32789,varname:node_1036,prsc:2|A-908-OUT,B-629-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1715,x:30648,y:33142,ptovrint:False,ptlb:Shape Size,ptin:_ShapeSize,varname:node_1715,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.25;n:type:ShaderForge.SFN_Add,id:281,x:28829,y:32483,varname:node_281,prsc:2|A-5873-OUT,B-3090-OUT;n:type:ShaderForge.SFN_Vector1,id:4286,x:28640,y:32588,varname:node_4286,prsc:2,v1:0.75;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:2178,x:29113,y:32545,varname:node_2178,prsc:2|IN-4456-OUT,IMIN-6106-OUT,IMAX-281-OUT,OMIN-6106-OUT,OMAX-2006-OUT;n:type:ShaderForge.SFN_Vector1,id:6106,x:28640,y:32661,varname:node_6106,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:2006,x:28640,y:32727,varname:node_2006,prsc:2,v1:1;n:type:ShaderForge.SFN_Clamp,id:5892,x:29051,y:31957,varname:node_5892,prsc:2|IN-9766-OUT,MIN-7098-OUT,MAX-8102-OUT;n:type:ShaderForge.SFN_Max,id:5465,x:29530,y:32119,varname:node_5465,prsc:2|A-2204-OUT,B-4289-OUT;n:type:ShaderForge.SFN_Clamp,id:4456,x:29113,y:32364,varname:node_4456,prsc:2|IN-1789-OUT,MIN-6106-OUT,MAX-281-OUT;n:type:ShaderForge.SFN_Distance,id:6174,x:31701,y:33505,varname:node_6174,prsc:2|A-1970-OUT,B-1178-XYZ;n:type:ShaderForge.SFN_FragmentPosition,id:1178,x:31480,y:33545,varname:node_1178,prsc:2;n:type:ShaderForge.SFN_If,id:4345,x:31978,y:33560,varname:node_4345,prsc:2|A-6174-OUT,B-5958-OUT,GT-9078-OUT,EQ-9078-OUT,LT-9450-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5958,x:31701,y:33649,ptovrint:False,ptlb:_Distance,ptin:_Distance,varname:node_5958,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:9078,x:31701,y:33710,varname:node_9078,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:9450,x:31701,y:33764,varname:node_9450,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:6115,x:28956,y:32695,ptovrint:False,ptlb:Shape End Round,ptin:_ShapeEndRound,varname:node_6115,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:6,max:10;n:type:ShaderForge.SFN_Multiply,id:629,x:31931,y:33015,varname:node_629,prsc:2|A-8524-OUT,B-4109-OUT;n:type:ShaderForge.SFN_OneMinus,id:8524,x:31694,y:32960,varname:node_8524,prsc:2|IN-5145-OUT;n:type:ShaderForge.SFN_Set,id:2805,x:30390,y:32202,varname:OffsetMask,prsc:2|IN-1953-OUT;n:type:ShaderForge.SFN_Get,id:5145,x:31521,y:32960,varname:node_5145,prsc:2|IN-2805-OUT;n:type:ShaderForge.SFN_Get,id:908,x:32085,y:32789,varname:node_908,prsc:2|IN-2805-OUT;n:type:ShaderForge.SFN_Set,id:6752,x:28474,y:32091,varname:StartPos,prsc:2|IN-792-XYZ;n:type:ShaderForge.SFN_Get,id:1970,x:31459,y:33484,varname:node_1970,prsc:2|IN-6752-OUT;n:type:ShaderForge.SFN_Fresnel,id:6826,x:32064,y:32086,varname:node_6826,prsc:2|EXP-1332-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1332,x:31907,y:32105,ptovrint:False,ptlb:Final Rim Exp,ptin:_FinalRimExp,varname:node_1332,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:4518,x:31266,y:33901,ptovrint:False,ptlb:_Progress,ptin:_Progress,varname:node_4518,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_OneMinus,id:616,x:31709,y:33990,varname:node_616,prsc:2|IN-8135-OUT;n:type:ShaderForge.SFN_Tex2d,id:4168,x:31441,y:34075,ptovrint:False,ptlb:Opacity Cutoff,ptin:_OpacityCutoff,varname:node_6065,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3688-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:5028,x:31709,y:34142,varname:node_5028,prsc:2|IN-4168-R,IMIN-2660-OUT,IMAX-8246-OUT,OMIN-2930-OUT,OMAX-2003-OUT;n:type:ShaderForge.SFN_Vector1,id:2660,x:31441,y:34243,varname:node_2660,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:8246,x:31441,y:34483,varname:node_8246,prsc:2,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:2930,x:31441,y:34327,ptovrint:False,ptlb:Opacity Remap 1,ptin:_OpacityRemap1,varname:node_714,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:2003,x:31441,y:34418,ptovrint:False,ptlb:Opacity Remap 2,ptin:_OpacityRemap2,varname:_OpacityRemap2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Clamp01,id:8135,x:31441,y:33901,varname:node_8135,prsc:2|IN-4518-OUT;n:type:ShaderForge.SFN_Subtract,id:8881,x:31970,y:33941,varname:node_8881,prsc:2|A-5028-OUT,B-616-OUT;n:type:ShaderForge.SFN_Multiply,id:7003,x:32323,y:33756,varname:node_7003,prsc:2|A-4345-OUT,B-8881-OUT;n:type:ShaderForge.SFN_TexCoord,id:426,x:28495,y:32167,varname:node_426,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Append,id:7918,x:28714,y:32143,varname:node_7918,prsc:2|A-9641-OUT,B-426-V;n:type:ShaderForge.SFN_Set,id:5549,x:28866,y:32143,varname:UV,prsc:2|IN-7918-OUT;n:type:ShaderForge.SFN_Get,id:3688,x:31266,y:34075,varname:node_3688,prsc:2|IN-5549-OUT;n:type:ShaderForge.SFN_Tex2d,id:5597,x:32064,y:32239,ptovrint:False,ptlb:Noise 01,ptin:_Noise01,varname:node_5597,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9464-OUT;n:type:ShaderForge.SFN_Get,id:261,x:31302,y:32236,varname:node_261,prsc:2|IN-5549-OUT;n:type:ShaderForge.SFN_Panner,id:9095,x:31485,y:32236,varname:node_9095,prsc:2,spu:1,spv:0|UVIN-261-OUT,DIST-1805-OUT;n:type:ShaderForge.SFN_Time,id:1299,x:31128,y:32244,varname:node_1299,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1805,x:31323,y:32298,varname:node_1805,prsc:2|A-1299-T,B-3210-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3210,x:31128,y:32378,ptovrint:False,ptlb:Noise 01 Scroll Speed,ptin:_Noise01ScrollSpeed,varname:node_3210,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-2;n:type:ShaderForge.SFN_Clamp01,id:8608,x:32491,y:33756,varname:node_8608,prsc:2|IN-7003-OUT;n:type:ShaderForge.SFN_Set,id:990,x:32281,y:32311,varname:Noise01,prsc:2|IN-5597-R;n:type:ShaderForge.SFN_Get,id:6000,x:29792,y:32409,varname:node_6000,prsc:2|IN-990-OUT;n:type:ShaderForge.SFN_Multiply,id:2557,x:29999,y:32385,varname:node_2557,prsc:2|A-6760-OUT,B-6000-OUT,C-4041-OUT;n:type:ShaderForge.SFN_Slider,id:4041,x:29656,y:32481,ptovrint:False,ptlb:Noise 01 Offset Power,ptin:_Noise01OffsetPower,varname:node_4041,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0.1,max:1;n:type:ShaderForge.SFN_Add,id:1953,x:30225,y:32202,varname:node_1953,prsc:2|A-5465-OUT,B-2557-OUT;n:type:ShaderForge.SFN_OneMinus,id:6760,x:29813,y:32287,varname:node_6760,prsc:2|IN-5465-OUT;n:type:ShaderForge.SFN_OneMinus,id:3842,x:31049,y:33318,varname:node_3842,prsc:2|IN-1527-OUT;n:type:ShaderForge.SFN_Add,id:4109,x:31480,y:33318,varname:node_4109,prsc:2|A-1527-OUT,B-8242-OUT,C-6274-OUT;n:type:ShaderForge.SFN_Multiply,id:8242,x:31229,y:33318,varname:node_8242,prsc:2|A-3842-OUT,B-616-OUT;n:type:ShaderForge.SFN_If,id:121,x:32752,y:33650,varname:node_121,prsc:2|A-8608-OUT,B-5524-OUT,GT-304-OUT,EQ-304-OUT,LT-5820-OUT;n:type:ShaderForge.SFN_Vector1,id:5524,x:32491,y:33554,varname:node_5524,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:304,x:32491,y:33623,varname:node_304,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:5820,x:32491,y:33689,varname:node_5820,prsc:2,v1:0;n:type:ShaderForge.SFN_Set,id:5189,x:32922,y:33650,varname:HackedOpacity,prsc:2|IN-121-OUT;n:type:ShaderForge.SFN_Get,id:9465,x:32043,y:32407,varname:node_9465,prsc:2|IN-5189-OUT;n:type:ShaderForge.SFN_Tex2d,id:553,x:31334,y:32494,ptovrint:False,ptlb:Noise 01 Distortion,ptin:_Noise01Distortion,varname:node_553,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:23f4a866d0be60d41b95476d64084176,ntxv:0,isnm:False|UVIN-6098-UVOUT;n:type:ShaderForge.SFN_RemapRange,id:2157,x:31496,y:32494,varname:node_2157,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-553-R;n:type:ShaderForge.SFN_Add,id:9464,x:31773,y:32277,varname:node_9464,prsc:2|A-9095-UVOUT,B-9435-OUT;n:type:ShaderForge.SFN_Multiply,id:9435,x:31700,y:32531,varname:node_9435,prsc:2|A-2157-OUT,B-2589-OUT;n:type:ShaderForge.SFN_Slider,id:2589,x:31309,y:32711,ptovrint:False,ptlb:Noise 01 Distortion Power,ptin:_Noise01DistortionPower,varname:node_2589,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:1;n:type:ShaderForge.SFN_Get,id:8862,x:30980,y:32501,varname:node_8862,prsc:2|IN-5549-OUT;n:type:ShaderForge.SFN_Panner,id:6098,x:31170,y:32501,varname:node_6098,prsc:2,spu:1,spv:0|UVIN-8862-OUT,DIST-3481-OUT;n:type:ShaderForge.SFN_Time,id:7398,x:30817,y:32516,varname:node_7398,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3481,x:31001,y:32564,varname:node_3481,prsc:2|A-7398-T,B-1235-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1235,x:30817,y:32651,ptovrint:False,ptlb:Noise 01 Distortion Scroll Speed,ptin:_Noise01DistortionScrollSpeed,varname:node_1235,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-6;n:type:ShaderForge.SFN_Power,id:2204,x:29315,y:31730,varname:node_2204,prsc:2|VAL-3003-OUT,EXP-4736-OUT;n:type:ShaderForge.SFN_Power,id:4289,x:29283,y:32545,varname:node_4289,prsc:2|VAL-2178-OUT,EXP-6115-OUT;n:type:ShaderForge.SFN_Slider,id:4736,x:28982,y:31653,ptovrint:False,ptlb:Shape Start Round,ptin:_ShapeStartRound,varname:_EndShape_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:6,max:10;n:type:ShaderForge.SFN_ValueProperty,id:1655,x:28720,y:33178,ptovrint:False,ptlb:_MaxDist,ptin:_MaxDist,varname:node_9685,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Get,id:6818,x:28472,y:33322,varname:node_6818,prsc:2|IN-6752-OUT;n:type:ShaderForge.SFN_Distance,id:6754,x:28720,y:33244,varname:node_6754,prsc:2|A-9792-XYZ,B-6818-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:9792,x:28482,y:33190,varname:node_9792,prsc:2;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:2789,x:28967,y:33244,varname:node_2789,prsc:2|IN-6754-OUT,IMIN-2107-OUT,IMAX-1655-OUT,OMIN-6614-OUT,OMAX-8045-OUT;n:type:ShaderForge.SFN_Vector1,id:2107,x:28720,y:33084,varname:node_2107,prsc:2,v1:0.25;n:type:ShaderForge.SFN_Vector1,id:6614,x:28720,y:33372,varname:node_6614,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:8045,x:28720,y:33436,varname:node_8045,prsc:2,v1:1;n:type:ShaderForge.SFN_OneMinus,id:8391,x:29130,y:33244,varname:node_8391,prsc:2|IN-2789-OUT;n:type:ShaderForge.SFN_OneMinus,id:6725,x:31113,y:32981,varname:node_6725,prsc:2|IN-3616-OUT;n:type:ShaderForge.SFN_Set,id:5527,x:29297,y:33244,varname:MaxDistMask,prsc:2|IN-8391-OUT;n:type:ShaderForge.SFN_Get,id:3616,x:30938,y:32981,varname:node_3616,prsc:2|IN-5527-OUT;n:type:ShaderForge.SFN_Multiply,id:6274,x:31300,y:32996,varname:node_6274,prsc:2|A-6725-OUT,B-4928-OUT;n:type:ShaderForge.SFN_Slider,id:4928,x:30956,y:32907,ptovrint:False,ptlb:Shape Cone Form,ptin:_ShapeConeForm,varname:node_4928,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_ValueProperty,id:8238,x:29090,y:32257,ptovrint:False,ptlb:_FinalSize,ptin:_FinalSize,varname:node_8238,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:4111,x:27813,y:31651,varname:node_4111,prsc:2,v1:0.25;n:type:ShaderForge.SFN_Vector1,id:4431,x:27950,y:31449,varname:node_4431,prsc:2,v1:1;n:type:ShaderForge.SFN_Subtract,id:3090,x:28206,y:31556,varname:node_3090,prsc:2|A-4431-OUT,B-6411-OUT;n:type:ShaderForge.SFN_Multiply,id:6411,x:28003,y:31673,varname:node_6411,prsc:2|A-4111-OUT,B-8238-OUT;n:type:ShaderForge.SFN_Divide,id:9641,x:29090,y:32107,varname:node_9641,prsc:2|A-3971-OUT,B-8238-OUT;n:type:ShaderForge.SFN_Subtract,id:1527,x:30853,y:33152,varname:node_1527,prsc:2|A-1715-OUT,B-8472-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8472,x:30648,y:33221,ptovrint:False,ptlb:_ImpactProgress,ptin:_ImpactProgress,varname:node_8472,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:6277,x:32778,y:32396,varname:node_6277,prsc:2|A-2603-OUT,B-6189-OUT;n:type:ShaderForge.SFN_Slider,id:6189,x:32215,y:32556,ptovrint:False,ptlb:GammaLinear,ptin:_GammaLinear,varname:node_6189,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.2,cur:1,max:1;proporder:3884-1809-2951-1332-1715-4736-6115-606-5873-4928-4168-2930-2003-5597-3210-4041-553-1235-2589-6189;pass:END;sub:END;*/

Shader "Sine VFX/V3DLasers/LaserLayerAdditive" {
    Properties {
        _VertexOffsetPower ("Vertex Offset Power", Float ) = 0
        _FinalColor ("Final Color", Color) = (0.5,0.5,0.5,1)
        _FinalPower ("Final Power", Range(0, 10)) = 2
        _FinalRimExp ("Final Rim Exp", Float ) = 0
        _ShapeSize ("Shape Size", Float ) = 0.25
        _ShapeStartRound ("Shape Start Round", Range(1, 10)) = 6
        _ShapeEndRound ("Shape End Round", Range(1, 10)) = 6
        _ShapeAddStartPosition ("Shape Add Start Position", Float ) = 4
        _ShapeAddEndPosition ("Shape Add End Position", Float ) = 4
        _ShapeConeForm ("Shape Cone Form", Range(0, 1)) = 0
        _OpacityCutoff ("Opacity Cutoff", 2D) = "white" {}
        _OpacityRemap1 ("Opacity Remap 1", Float ) = 0
        _OpacityRemap2 ("Opacity Remap 2", Float ) = 0
        _Noise01 ("Noise 01", 2D) = "white" {}
        _Noise01ScrollSpeed ("Noise 01 Scroll Speed", Float ) = -2
        _Noise01OffsetPower ("Noise 01 Offset Power", Range(-1, 1)) = 0.1
        _Noise01Distortion ("Noise 01 Distortion", 2D) = "white" {}
        _Noise01DistortionScrollSpeed ("Noise 01 Distortion Scroll Speed", Float ) = -6
        _Noise01DistortionPower ("Noise 01 Distortion Power", Range(0, 1)) = 0.1
        _GammaLinear ("GammaLinear", Range(0.2, 1)) = 1
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _StartPosition;
            uniform float4 _EndPosition;
            uniform float4 _FinalColor;
            uniform float _FinalPower;
            uniform float _VertexOffsetPower;
            uniform float _ShapeAddStartPosition;
            uniform float _ShapeAddEndPosition;
            uniform float _ShapeSize;
            uniform float _Distance;
            uniform float _ShapeEndRound;
            uniform float _FinalRimExp;
            uniform float _Progress;
            uniform sampler2D _OpacityCutoff; uniform float4 _OpacityCutoff_ST;
            uniform float _OpacityRemap1;
            uniform float _OpacityRemap2;
            uniform sampler2D _Noise01; uniform float4 _Noise01_ST;
            uniform float _Noise01ScrollSpeed;
            uniform float _Noise01OffsetPower;
            uniform sampler2D _Noise01Distortion; uniform float4 _Noise01Distortion_ST;
            uniform float _Noise01DistortionPower;
            uniform float _Noise01DistortionScrollSpeed;
            uniform float _ShapeStartRound;
            uniform float _MaxDist;
            uniform float _ShapeConeForm;
            uniform float _FinalSize;
            uniform float _ImpactProgress;
            uniform float _GammaLinear;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float node_3971 = distance(mul(unity_ObjectToWorld, v.vertex).rgb,_StartPosition.rgb);
                float node_7098 = 0.0;
                float node_3090 = (1.0-(0.25*_FinalSize));
                float node_8102 = (node_3090+_ShapeAddStartPosition);
                float node_6106 = 0.0;
                float node_281 = (_ShapeAddEndPosition+node_3090);
                float node_5465 = max(pow((node_7098 + ( (clamp(((1.0 - node_3971)+_ShapeAddStartPosition),node_7098,node_8102) - node_7098) * (1.0 - node_7098) ) / (node_8102 - node_7098)),_ShapeStartRound),pow((node_6106 + ( (clamp(((1.0 - distance(_EndPosition.rgb,mul(unity_ObjectToWorld, v.vertex).rgb))+_ShapeAddEndPosition),node_6106,node_281) - node_6106) * (1.0 - node_6106) ) / (node_281 - node_6106)),_ShapeEndRound));
                float4 node_1299 = _Time;
                float2 UV = float2((node_3971/_FinalSize),o.uv0.g);
                float4 node_7398 = _Time;
                float2 node_6098 = (UV+(node_7398.g*_Noise01DistortionScrollSpeed)*float2(1,0));
                float4 _Noise01Distortion_var = tex2Dlod(_Noise01Distortion,float4(TRANSFORM_TEX(node_6098, _Noise01Distortion),0.0,0));
                float2 node_9464 = ((UV+(node_1299.g*_Noise01ScrollSpeed)*float2(1,0))+((_Noise01Distortion_var.r*2.0+-1.0)*_Noise01DistortionPower));
                float4 _Noise01_var = tex2Dlod(_Noise01,float4(TRANSFORM_TEX(node_9464, _Noise01),0.0,0));
                float Noise01 = _Noise01_var.r;
                float OffsetMask = (node_5465+((1.0 - node_5465)*Noise01*_Noise01OffsetPower));
                float node_1527 = (_ShapeSize-_ImpactProgress);
                float node_616 = (1.0 - saturate(_Progress));
                float3 StartPos = _StartPosition.rgb;
                float node_2107 = 0.25;
                float node_6614 = 0.0;
                float MaxDistMask = (1.0 - (node_6614 + ( (distance(mul(unity_ObjectToWorld, v.vertex).rgb,StartPos) - node_2107) * (1.0 - node_6614) ) / (_MaxDist - node_2107)));
                v.vertex.xyz += ((OffsetMask+((1.0 - OffsetMask)*(node_1527+((1.0 - node_1527)*node_616)+((1.0 - MaxDistMask)*_ShapeConeForm))))*v.normal*_VertexOffsetPower*_FinalSize);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 node_1299 = _Time;
                float node_3971 = distance(i.posWorld.rgb,_StartPosition.rgb);
                float2 UV = float2((node_3971/_FinalSize),i.uv0.g);
                float4 node_7398 = _Time;
                float2 node_6098 = (UV+(node_7398.g*_Noise01DistortionScrollSpeed)*float2(1,0));
                float4 _Noise01Distortion_var = tex2D(_Noise01Distortion,TRANSFORM_TEX(node_6098, _Noise01Distortion));
                float2 node_9464 = ((UV+(node_1299.g*_Noise01ScrollSpeed)*float2(1,0))+((_Noise01Distortion_var.r*2.0+-1.0)*_Noise01DistortionPower));
                float4 _Noise01_var = tex2D(_Noise01,TRANSFORM_TEX(node_9464, _Noise01));
                float3 StartPos = _StartPosition.rgb;
                float node_4345_if_leA = step(distance(StartPos,i.posWorld.rgb),_Distance);
                float node_4345_if_leB = step(_Distance,distance(StartPos,i.posWorld.rgb));
                float node_9078 = 0.0;
                float2 node_3688 = UV;
                float4 _OpacityCutoff_var = tex2D(_OpacityCutoff,TRANSFORM_TEX(node_3688, _OpacityCutoff));
                float node_2660 = 0.0;
                float node_616 = (1.0 - saturate(_Progress));
                float node_121_if_leA = step(saturate((lerp((node_4345_if_leA*1.0)+(node_4345_if_leB*node_9078),node_9078,node_4345_if_leA*node_4345_if_leB)*((_OpacityRemap1 + ( (_OpacityCutoff_var.r - node_2660) * (_OpacityRemap2 - _OpacityRemap1) ) / (1.0 - node_2660))-node_616))),0.5);
                float node_121_if_leB = step(0.5,saturate((lerp((node_4345_if_leA*1.0)+(node_4345_if_leB*node_9078),node_9078,node_4345_if_leA*node_4345_if_leB)*((_OpacityRemap1 + ( (_OpacityCutoff_var.r - node_2660) * (_OpacityRemap2 - _OpacityRemap1) ) / (1.0 - node_2660))-node_616))));
                float node_304 = 1.0;
                float HackedOpacity = lerp((node_121_if_leA*0.0)+(node_121_if_leB*node_304),node_304,node_121_if_leA*node_121_if_leB);
                float3 emissive = ((_FinalColor.rgb*_FinalPower*pow(1.0-max(0,dot(normalDirection, viewDirection)),_FinalRimExp)*_Noise01_var.r*HackedOpacity)*_GammaLinear);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0,0,0,1));
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
