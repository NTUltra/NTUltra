//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D distortTex;
uniform float strength;
uniform float aspect;
uniform float blur;

uniform float borderR;
uniform float borderG;
uniform float borderB;
uniform float borderA;

void main()
{

   vec2 distort = (texture2D(distortTex, v_vTexcoord).rg - 0.5) * 2.0 * strength;
   distort.x /= aspect;
   
   vec4 blurColour = texture2D(gm_BaseTexture, v_vTexcoord + distort);
   
   blurColour += texture2D(gm_BaseTexture, v_vTexcoord + distort * (1.0 - blur))*0.4;
   blurColour += texture2D(gm_BaseTexture, v_vTexcoord + distort * (1.0 - blur * 0.5))*0.2;
   blurColour += texture2D(gm_BaseTexture, v_vTexcoord + distort * (1.0 - blur * 1.5))*0.2;
   blurColour += texture2D(gm_BaseTexture, v_vTexcoord + distort * (1.0 - blur * 2.0))*0.2;
   
   vec4 outColour = v_vColour * blurColour * 0.5;
   
   float border = step(abs(v_vTexcoord.x + distort.x - 0.5), 0.5) * step(abs(v_vTexcoord.y + distort.y - 0.5), 0.5);
   outColour.rgba = outColour.rgba * border + (1.0 - border) * vec4(borderR ,borderG, borderB, borderA); /*border colour*/
   gl_FragColor = outColour;
}

