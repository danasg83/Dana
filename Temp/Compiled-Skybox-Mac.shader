// Compiled shader for PC, Mac & Linux Standalone, uncompressed size: 5.5KB

Shader "RenderFX/Skybox" {
Properties {
 _Tint ("Tint Color", Color) = (0.5,0.5,0.5,0.5)
 _FrontTex ("Front (+Z)", 2D) = "white" {}
 _BackTex ("Back (-Z)", 2D) = "white" {}
 _LeftTex ("Left (+X)", 2D) = "white" {}
 _RightTex ("Right (-X)", 2D) = "white" {}
 _UpTex ("Up (+Y)", 2D) = "white" {}
 _DownTex ("Down (-Y)", 2D) = "white" {}
}
SubShader { 
 Tags { "QUEUE"="Background" "RenderType"="Background" }
 Pass {
  Tags { "QUEUE"="Background" "RenderType"="Background" }
  ZWrite Off
  Cull Off
  Fog { Mode Off }
Program "vp" {
SubProgram "opengl " {
Bind "vertex" Vertex
Bind "texcoord" TexCoord0
"!!ARBvp1.0
PARAM c[5] = { program.local[0],
		state.matrix.mvp };
MOV result.texcoord[0].xy, vertex.texcoord[0];
DP4 result.position.w, vertex.position, c[4];
DP4 result.position.z, vertex.position, c[3];
DP4 result.position.y, vertex.position, c[2];
DP4 result.position.x, vertex.position, c[1];
END
# 5 instructions, 0 R-regs
"
}
}
Program "fp" {
SubProgram "opengl " {
Vector 0 [unity_ColorSpaceGrey]
Vector 1 [_Tint]
SetTexture 0 [_FrontTex] 2D 0
"!!ARBfp1.0
PARAM c[2] = { program.local[0..1] };
TEMP R0;
TEX R0, fragment.texcoord[0], texture[0], 2D;
ADD R0.xyz, R0, c[1];
MUL result.color.w, R0, c[1];
ADD result.color.xyz, R0, -c[0];
END
# 4 instructions, 1 R-regs
"
}
}
 }
 Pass {
  Tags { "QUEUE"="Background" "RenderType"="Background" }
  ZWrite Off
  Cull Off
  Fog { Mode Off }
Program "vp" {
SubProgram "opengl " {
Bind "vertex" Vertex
Bind "texcoord" TexCoord0
"!!ARBvp1.0
PARAM c[5] = { program.local[0],
		state.matrix.mvp };
MOV result.texcoord[0].xy, vertex.texcoord[0];
DP4 result.position.w, vertex.position, c[4];
DP4 result.position.z, vertex.position, c[3];
DP4 result.position.y, vertex.position, c[2];
DP4 result.position.x, vertex.position, c[1];
END
# 5 instructions, 0 R-regs
"
}
}
Program "fp" {
SubProgram "opengl " {
Vector 0 [unity_ColorSpaceGrey]
Vector 1 [_Tint]
SetTexture 0 [_BackTex] 2D 0
"!!ARBfp1.0
PARAM c[2] = { program.local[0..1] };
TEMP R0;
TEX R0, fragment.texcoord[0], texture[0], 2D;
ADD R0.xyz, R0, c[1];
MUL result.color.w, R0, c[1];
ADD result.color.xyz, R0, -c[0];
END
# 4 instructions, 1 R-regs
"
}
}
 }
 Pass {
  Tags { "QUEUE"="Background" "RenderType"="Background" }
  ZWrite Off
  Cull Off
  Fog { Mode Off }
Program "vp" {
SubProgram "opengl " {
Bind "vertex" Vertex
Bind "texcoord" TexCoord0
"!!ARBvp1.0
PARAM c[5] = { program.local[0],
		state.matrix.mvp };
MOV result.texcoord[0].xy, vertex.texcoord[0];
DP4 result.position.w, vertex.position, c[4];
DP4 result.position.z, vertex.position, c[3];
DP4 result.position.y, vertex.position, c[2];
DP4 result.position.x, vertex.position, c[1];
END
# 5 instructions, 0 R-regs
"
}
}
Program "fp" {
SubProgram "opengl " {
Vector 0 [unity_ColorSpaceGrey]
Vector 1 [_Tint]
SetTexture 0 [_LeftTex] 2D 0
"!!ARBfp1.0
PARAM c[2] = { program.local[0..1] };
TEMP R0;
TEX R0, fragment.texcoord[0], texture[0], 2D;
ADD R0.xyz, R0, c[1];
MUL result.color.w, R0, c[1];
ADD result.color.xyz, R0, -c[0];
END
# 4 instructions, 1 R-regs
"
}
}
 }
 Pass {
  Tags { "QUEUE"="Background" "RenderType"="Background" }
  ZWrite Off
  Cull Off
  Fog { Mode Off }
Program "vp" {
SubProgram "opengl " {
Bind "vertex" Vertex
Bind "texcoord" TexCoord0
"!!ARBvp1.0
PARAM c[5] = { program.local[0],
		state.matrix.mvp };
MOV result.texcoord[0].xy, vertex.texcoord[0];
DP4 result.position.w, vertex.position, c[4];
DP4 result.position.z, vertex.position, c[3];
DP4 result.position.y, vertex.position, c[2];
DP4 result.position.x, vertex.position, c[1];
END
# 5 instructions, 0 R-regs
"
}
}
Program "fp" {
SubProgram "opengl " {
Vector 0 [unity_ColorSpaceGrey]
Vector 1 [_Tint]
SetTexture 0 [_RightTex] 2D 0
"!!ARBfp1.0
PARAM c[2] = { program.local[0..1] };
TEMP R0;
TEX R0, fragment.texcoord[0], texture[0], 2D;
ADD R0.xyz, R0, c[1];
MUL result.color.w, R0, c[1];
ADD result.color.xyz, R0, -c[0];
END
# 4 instructions, 1 R-regs
"
}
}
 }
 Pass {
  Tags { "QUEUE"="Background" "RenderType"="Background" }
  ZWrite Off
  Cull Off
  Fog { Mode Off }
Program "vp" {
SubProgram "opengl " {
Bind "vertex" Vertex
Bind "texcoord" TexCoord0
"!!ARBvp1.0
PARAM c[5] = { program.local[0],
		state.matrix.mvp };
MOV result.texcoord[0].xy, vertex.texcoord[0];
DP4 result.position.w, vertex.position, c[4];
DP4 result.position.z, vertex.position, c[3];
DP4 result.position.y, vertex.position, c[2];
DP4 result.position.x, vertex.position, c[1];
END
# 5 instructions, 0 R-regs
"
}
}
Program "fp" {
SubProgram "opengl " {
Vector 0 [unity_ColorSpaceGrey]
Vector 1 [_Tint]
SetTexture 0 [_UpTex] 2D 0
"!!ARBfp1.0
PARAM c[2] = { program.local[0..1] };
TEMP R0;
TEX R0, fragment.texcoord[0], texture[0], 2D;
ADD R0.xyz, R0, c[1];
MUL result.color.w, R0, c[1];
ADD result.color.xyz, R0, -c[0];
END
# 4 instructions, 1 R-regs
"
}
}
 }
 Pass {
  Tags { "QUEUE"="Background" "RenderType"="Background" }
  ZWrite Off
  Cull Off
  Fog { Mode Off }
Program "vp" {
SubProgram "opengl " {
Bind "vertex" Vertex
Bind "texcoord" TexCoord0
"!!ARBvp1.0
PARAM c[5] = { program.local[0],
		state.matrix.mvp };
MOV result.texcoord[0].xy, vertex.texcoord[0];
DP4 result.position.w, vertex.position, c[4];
DP4 result.position.z, vertex.position, c[3];
DP4 result.position.y, vertex.position, c[2];
DP4 result.position.x, vertex.position, c[1];
END
# 5 instructions, 0 R-regs
"
}
}
Program "fp" {
SubProgram "opengl " {
Vector 0 [unity_ColorSpaceGrey]
Vector 1 [_Tint]
SetTexture 0 [_DownTex] 2D 0
"!!ARBfp1.0
PARAM c[2] = { program.local[0..1] };
TEMP R0;
TEX R0, fragment.texcoord[0], texture[0], 2D;
ADD R0.xyz, R0, c[1];
MUL result.color.w, R0, c[1];
ADD result.color.xyz, R0, -c[0];
END
# 4 instructions, 1 R-regs
"
}
}
 }
}
}