//
// Set all colours to white but keep the alpha the same
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	float index = (gl_FragCoord.x + gl_FragCoord.y);
	vec4 theColour = vec4(texture2D( gm_BaseTexture, v_vTexcoord ).r, texture2D( gm_BaseTexture, v_vTexcoord ).g, texture2D( gm_BaseTexture, v_vTexcoord ).b, max(0.0,texture2D( gm_BaseTexture, v_vTexcoord ).a - mod(index, 2.0)));	
    gl_FragColor = theColour;
}