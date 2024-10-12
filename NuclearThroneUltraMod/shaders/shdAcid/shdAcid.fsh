//Based on KeeVee Gamer's hue shader : https://marketplace.yoyogames.com/assets/2482/hue-shader
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float hueShift;
//uniform float SaturationShift;
//uniform float ColourValueShift;
//uniform float invert;

vec3 rgb2hsv ( vec3 color )
{
    vec4 K = vec4 ( 0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0 );
    vec4 p = mix ( vec4 ( color.bg, K.wz ), vec4 ( color.gb, K.xy ), step ( color.b, color.g ) );
    vec4 q = mix ( vec4 ( p.xyw, color.r ), vec4 ( color.r, p.yzx ), step ( p.x, color.r ) );

    float d = q.x - min ( q.w, q.y );
    float e = 1.0e-10;
    return vec3 ( abs ( q.z + ( q.w - q.y ) / ( 6.0 * d + e ) ), d / ( q.x + e ), q.x );
}

vec3 hsv2rgb ( vec3 hsv )
{
    vec4 K = vec4 ( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
    vec3 p = abs ( fract ( hsv.xxx + K.xyz ) * 6.0 - K.www ) * 0.9;
    return hsv.z * mix ( K.xxx, clamp ( p - K.xxx, 0.0, 1.0 ), hsv.y );
}

void main ( )
{
    gl_FragColor = texture2D ( gm_BaseTexture, v_vTexcoord ) * v_vColour;
    //if (gl_FragColor.g != gl_FragColor.b)//Player and enemy colours don't shift (blue and red)
	//{
	//hue shift
	vec3 hsv = rgb2hsv ( gl_FragColor.rgb );
    
	vec3 shifted_color = vec3 ( hsv.x + hueShift, hsv.y/*+SaturationShift*/, hsv.z/*+ColourValueShift*/ );
        
	gl_FragColor.rgb = hsv2rgb ( shifted_color );
	gl_FragColor *= v_vColour;
	//}
}
